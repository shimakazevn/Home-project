import os
import sys
import json
import struct
import time
import mimetypes
import sqlite3
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed

sys.stdout.reconfigure(encoding='utf-8')

# Bỏ proxy rác để kết nối trực tiếp
os.environ['NO_PROXY'] = '*'
for k in ['HTTP_PROXY', 'HTTPS_PROXY', 'ALL_PROXY', 'http_proxy', 'https_proxy', 'all_proxy']:
    os.environ.pop(k, None)

import boto3
from botocore.config import Config

# Cấu hình R2 từ my-blogger-react
R2_ENDPOINT = "https://df256eed13ab9e27ece60bc30a22c60b.r2.cloudflarestorage.com"
R2_ACCESS_KEY = "1c282a824a5b7c48b16feaae87eda21b"
R2_SECRET_KEY = "18be97a9998219fe03ddfa9f3fb6348c12cd4a71aad366fb62547b0259fe4742"
R2_BUCKET = "seikowo-assets"
R2_PUBLIC_URL = "https://pub-64f241cabb6b44ebb9cec1aa012781bb.r2.dev"
R2_PREFIX = "home_assets"

CACHE_DB_PATH = r"E:\HOME_\upload_cache_r2.db"


class R2CDNUploader:
    def __init__(self, endpoint=R2_ENDPOINT, access_key=R2_ACCESS_KEY, secret_key=R2_SECRET_KEY, bucket=R2_BUCKET, public_url=R2_PUBLIC_URL, prefix=R2_PREFIX):
        self.endpoint = endpoint
        self.access_key = access_key
        self.secret_key = secret_key
        self.bucket = bucket
        self.public_url = public_url.rstrip('/')
        self.prefix = prefix.strip('/')
        
        self.local_thread = threading.local()
        self.db_lock = threading.Lock()
        self._init_db()

    def _get_s3_client(self):
        if not hasattr(self.local_thread, 's3'):
            session = boto3.session.Session()
            self.local_thread.s3 = session.client(
                's3',
                endpoint_url=self.endpoint,
                aws_access_key_id=self.access_key,
                aws_secret_access_key=self.secret_key,
                region_name='auto',
                config=Config(signature_version='s3v4', proxies={'http': None, 'https': None})
            )
        return self.local_thread.s3

    def _init_db(self):
        with sqlite3.connect(CACHE_DB_PATH) as conn:
            conn.execute("""
                CREATE TABLE IF NOT EXISTS upload_cache (
                    rel_path TEXT PRIMARY KEY,
                    size INTEGER,
                    r2_key TEXT,
                    cdn_url TEXT,
                    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                )
            """)
            conn.commit()

    def get_cached_url(self, rel_path):
        with self.db_lock:
            with sqlite3.connect(CACHE_DB_PATH) as conn:
                cur = conn.cursor()
                cur.execute("SELECT cdn_url FROM upload_cache WHERE rel_path = ?", (rel_path,))
                row = cur.fetchone()
                return row[0] if row else None

    def save_cache(self, rel_path, size, r2_key, cdn_url):
        with self.db_lock:
            with sqlite3.connect(CACHE_DB_PATH) as conn:
                conn.execute("""
                    INSERT OR REPLACE INTO upload_cache (rel_path, size, r2_key, cdn_url)
                    VALUES (?, ?, ?, ?)
                """, (rel_path, size, r2_key, cdn_url))
                conn.commit()

    def upload_data(self, rel_path, data_bytes, ext):
        cached = self.get_cached_url(rel_path)
        if cached:
            return cached

        clean_path = rel_path.replace('\\', '/').lstrip('/')
        r2_key = f"{self.prefix}/{clean_path}" if self.prefix else clean_path
        
        # Determine content type
        content_type, _ = mimetypes.guess_type(rel_path)
        if not content_type:
            ext_l = ext.lower()
            if ext_l == '.ogg':
                content_type = 'audio/ogg'
            elif ext_l == '.mp3':
                content_type = 'audio/mpeg'
            elif ext_l == '.wav':
                content_type = 'audio/wav'
            elif ext_l == '.mp4':
                content_type = 'video/mp4'
            elif ext_l == '.png':
                content_type = 'image/png'
            elif ext_l in ('.jpg', '.jpeg'):
                content_type = 'image/jpeg'
            elif ext_l == '.webp':
                content_type = 'image/webp'
            elif ext_l == '.gif':
                content_type = 'image/gif'
            else:
                content_type = 'application/octet-stream'

        s3 = self._get_s3_client()
        for attempt in range(5):
            try:
                s3.put_object(
                    Bucket=self.bucket,
                    Key=r2_key,
                    Body=data_bytes,
                    ContentType=content_type,
                    CacheControl="public, max-age=31536000, immutable"
                )
                cdn_url = f"{self.public_url}/{r2_key}"
                self.save_cache(rel_path, len(data_bytes), r2_key, cdn_url)
                return cdn_url
            except Exception as e:
                time.sleep(1 * (attempt + 1))
                if attempt == 4:
                    raise RuntimeError(f"Lỗi upload R2 sau 5 lần thử ({rel_path}): {e}")


def scan_and_upload_asar_to_r2(asar_path, uploader, manifest_output_path, max_workers=25):
    if not os.path.exists(asar_path):
        print(f"[LỖI] Không tìm thấy ASAR: {asar_path}")
        return

    print("==================================================")
    print("   HOME - CLOUDFLARE R2 CDN ASSET UPLOADER")
    print(f"   Bucket: {uploader.bucket} | Prefix: {uploader.prefix}")
    print("==================================================")

    # 1. Đọc header ASAR
    with open(asar_path, 'rb') as f:
        f.read(12)
        hs = struct.unpack('<I', f.read(4))[0]
        header = json.loads(f.read(hs).decode('utf-8'))
        data_offset = 16 + hs + ((4 - (hs % 4)) % 4)

        def collect_media(node, prefix=""):
            items = []
            if 'files' in node:
                for k, v in node['files'].items():
                    p = f"{prefix}/{k}" if prefix else k
                    items.extend(collect_media(v, p))
            else:
                ext = os.path.splitext(prefix)[1].lower()
                if ext in ('.png', '.jpg', '.jpeg', '.gif', '.webp', '.ogg', '.mp3', '.wav', '.mp4'):
                    items.append((prefix, int(node['offset']), int(node['size']), ext))
            return items

        media_items = collect_media(header)

    print(f"[*] Tìm thấy tổng cộng {len(media_items):,} media files trong game ASAR.")

    # 2. Xử lý và Upload
    manifest = {}
    items_to_upload = []

    for rel_path, offset, size, ext in media_items:
        cached_url = uploader.get_cached_url(rel_path)
        if cached_url:
            manifest[rel_path] = cached_url
        else:
            items_to_upload.append((rel_path, offset, size, ext))

    print(f"[*] Đã upload từ trước (cached): {len(manifest):,} files.")
    print(f"[*] Cần upload mới lên Cloudflare R2: {len(items_to_upload):,} files.")

    if not items_to_upload:
        print("[*] Toàn bộ files đã được upload xong!")
        with open(manifest_output_path, 'w', encoding='utf-8') as mf:
            json.dump(manifest, mf, ensure_ascii=False, indent=2)
        print(f"[*] Đã xuất manifest ra: {manifest_output_path}")
        return

    # Worker đọc byte từ ASAR
    def process_item(item):
        rel_path, offset, size, ext = item
        with open(asar_path, 'rb') as af:
            af.seek(data_offset + offset)
            raw_bytes = af.read(size)

        url = uploader.upload_data(rel_path, raw_bytes, ext)
        return rel_path, url

    total = len(items_to_upload)
    completed = 0
    start_time = time.time()

    print(f"[*] Bắt đầu upload song song {max_workers} luồng...")
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {executor.submit(process_item, it): it for it in items_to_upload}
        for future in as_completed(futures):
            try:
                rel_path, url = future.result()
                manifest[rel_path] = url
                completed += 1
                pct = (completed / total) * 100
                elapsed = time.time() - start_time
                speed = completed / elapsed if elapsed > 0 else 0
                eta_s = (total - completed) / speed if speed > 0 else 0
                
                sys.stdout.write(f"\r  Progress: [{completed:,}/{total:,}] {pct:5.1f}% | {speed:.1f} f/s | ETA: {int(eta_s)}s | {os.path.basename(rel_path)[:25]}".ljust(100))
                sys.stdout.flush()
            except Exception as ex:
                item = futures[future]
                print(f"\n[LỖI] Upload thất bại cho {item[0]}: {ex}")

    sys.stdout.write("\n")
    os.makedirs(os.path.dirname(manifest_output_path), exist_ok=True)
    with open(manifest_output_path, 'w', encoding='utf-8') as mf:
        json.dump(manifest, mf, ensure_ascii=False, indent=2)

    print("==================================================")
    print(f"   HOÀN TẤT UPLOAD TOÀN BỘ ASSET! ({len(manifest):,} files)")
    print(f"   Manifest đã lưu tại: {manifest_output_path}")
    print("==================================================")


if __name__ == '__main__':
    asar_input = sys.argv[1] if len(sys.argv) > 1 else r"E:\HOME_\Game\resources\app.asar"
    manifest_out = sys.argv[2] if len(sys.argv) > 2 else r"E:\HOME_\patch\data\asset_manifest.json"
    workers = int(sys.argv[3]) if len(sys.argv) > 3 else 30

    uploader_inst = R2CDNUploader()
    scan_and_upload_asar_to_r2(asar_input, uploader_inst, manifest_out, max_workers=workers)
