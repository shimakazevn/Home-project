import os
import sys
import json
import struct
import time
import requests
import sqlite3
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed
from PIL import Image

sys.stdout.reconfigure(encoding='utf-8')

# Bỏ proxy rác hệ thống
os.environ['NO_PROXY'] = '*'
for k in ['HTTP_PROXY', 'HTTPS_PROXY', 'ALL_PROXY', 'http_proxy', 'https_proxy', 'all_proxy']:
    os.environ.pop(k, None)

# Import module
sys.path.append(os.path.dirname(__file__))
from audio_stego_encoder import encode_audio_to_png
from blogger_cdn_uploader import BloggerCDNUploader

# Load .env
env_vars = {}
with open(r'E:\HOME_\.env', 'r', encoding='utf-8') as f:
    for l in f:
        l = l.strip()
        if l and not l.startswith('#') and '=' in l:
            k, v = l.split('=', 1)
            env_vars[k.strip()] = v.strip().strip('"').strip("'")

uploader = BloggerCDNUploader(
    client_id=env_vars['GOOGLE_CLIENT_ID'],
    client_secret=env_vars['GOOGLE_CLIENT_SECRET'],
    refresh_token=env_vars['GOOGLE_REFRESH_TOKEN'],
    post_blog_id=env_vars['POST_BLOG_ID'],
    album_ids=env_vars['ALBUM_IDS']
)

asar_path = r'E:\HOME_\Game\resources\app.asar'
with open(asar_path, 'rb') as f:
    f.read(12)
    hs = struct.unpack('<I', f.read(4))[0]
    header = json.loads(f.read(hs).decode('utf-8'))
    data_offset = 16 + hs + ((4 - (hs % 4)) % 4)

def collect_media(node, prefix=''):
    items = []
    if 'files' in node:
        for k, v in node['files'].items():
            p = f'{prefix}/{k}' if prefix else k
            items.extend(collect_media(v, p))
    else:
        ext = os.path.splitext(prefix)[1].lower()
        if ext in ('.png', '.jpg', '.jpeg', '.gif', '.webp', '.ogg', '.mp3', '.wav', '.mp4'):
            items.append((prefix, int(node['offset']), int(node['size']), ext))
    return items

media_items = collect_media(header)
cached_urls = {}
with sqlite3.connect('upload_cache.db') as conn:
    for p, u in conn.execute("SELECT rel_path, cdn_url FROM uploads"):
        cached_urls[p] = u

missing = [m for m in media_items if m[0] not in cached_urls]
print(f"[*] Tìm thấy {len(missing)} files cần upload bổ sung (Retry pass)...")

def process_retry(item):
    rel_path, offset, size, ext = item
    with open(asar_path, 'rb') as af:
        af.seek(data_offset + offset)
        raw_bytes = af.read(size)

    # Nếu là Audio hoặc Video -> Mã hóa sang PNG Stego để Google Photos chấp nhận 100%
    if ext in ('.ogg', '.mp3', '.wav', '.mp4'):
        upload_bytes = encode_audio_to_png(raw_bytes)
        upload_filename = os.path.basename(rel_path) + ".png"
        mime_type = "image/png"
    else:
        upload_bytes = raw_bytes
        upload_filename = os.path.basename(rel_path)
        mime_type = "image/jpeg" if ext in ('.jpg', '.jpeg') else "image/png" if ext == '.png' else "image/gif"

    for attempt in range(8):
        try:
            cdn_url = uploader.upload_bytes(upload_bytes, upload_filename, mime_type, max_retries=3)
            uploader.save_cached_url(rel_path, cdn_url, len(upload_bytes), mime_type)
            print(f"[OK] {rel_path} -> {cdn_url}")
            return rel_path, cdn_url
        except Exception as e:
            time.sleep(2 * (attempt + 1))
            if attempt == 7:
                print(f"[FAIL] {rel_path}: {e}")
                raise e

with ThreadPoolExecutor(max_workers=6) as executor:
    futures = [executor.submit(process_retry, item) for item in missing]
    for f in as_completed(futures):
        try:
            rel_path, url = f.result()
            cached_urls[rel_path] = url
        except Exception:
            pass

# Xuất lại asset_manifest.json hoàn chỉnh
manifest_out = r"E:\HOME_\patch\data\asset_manifest.json"
os.makedirs(os.path.dirname(manifest_out), exist_ok=True)
with open(manifest_out, 'w', encoding='utf-8') as mf:
    json.dump(cached_urls, mf, ensure_ascii=False, indent=2)

print(f"\n[DONE] Manifest tổng hợp: {len(cached_urls)}/2,715 files.")
print(f"Đã lưu: {manifest_out}")
