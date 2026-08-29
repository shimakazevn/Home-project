# -*- coding: utf-8 -*-
"""
blogger_cdn_uploader.py
Công cụ tự động hóa quét toàn bộ tài nguyên game HOME từ app.asar (hoặc thư mục),
mã hóa Audio sang PNG Steganography và upload lên Google Blogger / Photos CDN.

Tạo ra file: patch/data/asset_manifest.json (Bảng định tuyến CDN)
"""

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

# Bỏ proxy rác hệ thống để kết nối thẳng tới Google APIs
os.environ['NO_PROXY'] = '*'
for k in ['HTTP_PROXY', 'HTTPS_PROXY', 'ALL_PROXY', 'http_proxy', 'https_proxy', 'all_proxy']:
    os.environ.pop(k, None)

# Helper nạp .env nếu có
def load_env_file(env_path=r"E:\HOME_\.env"):
    if os.path.exists(env_path):
        with open(env_path, "r", encoding="utf-8") as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith("#") or "=" not in line:
                    continue
                k, v = line.split("=", 1)
                k = k.strip()
                v = v.strip().strip('"').strip("'")
                os.environ[k] = v

load_env_file()

# Import module mã hóa audio
sys.path.append(os.path.dirname(__file__))
from audio_stego_encoder import encode_audio_to_png


class BloggerCDNUploader:
    def __init__(self, client_id, client_secret, refresh_token, post_blog_id, album_ids, db_path="upload_cache.db"):
        self.client_id = client_id
        self.client_secret = client_secret
        self.refresh_token = refresh_token
        self.post_blog_id = post_blog_id
        self.album_ids = album_ids if isinstance(album_ids, list) else [a.strip() for a in album_ids.split(',') if a.strip()]
        self.current_album_idx = 0
        self.access_token = None
        self.token_expiry = 0
        self.token_lock = threading.Lock()
        
        self.db_path = db_path
        self._init_db()
        self.local_thread = threading.local()
        self.album_lock = threading.Lock()

    def _get_session(self):
        if not hasattr(self.local_thread, 'session'):
            s = requests.Session()
            s.trust_env = False
            self.local_thread.session = s
        return self.local_thread.session

    def _init_db(self):
        """Khởi tạo SQLite cache lưu trữ tiến trình upload đã hoàn thành"""
        with sqlite3.connect(self.db_path) as conn:
            conn.execute("""
                CREATE TABLE IF NOT EXISTS uploads (
                    rel_path TEXT PRIMARY KEY,
                    cdn_url TEXT,
                    file_size INTEGER,
                    mime_type TEXT,
                    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                )
            """)
            conn.commit()

    def get_cached_url(self, rel_path):
        with sqlite3.connect(self.db_path) as conn:
            cur = conn.execute("SELECT cdn_url FROM uploads WHERE rel_path = ?", (rel_path,))
            row = cur.fetchone()
            return row[0] if row else None

    def save_cached_url(self, rel_path, cdn_url, file_size, mime_type):
        with sqlite3.connect(self.db_path) as conn:
            conn.execute("""
                INSERT OR REPLACE INTO uploads (rel_path, cdn_url, file_size, mime_type)
                VALUES (?, ?, ?, ?)
            """, (rel_path, cdn_url, file_size, mime_type))
            conn.commit()

    def refresh_access_token(self):
        with self.token_lock:
            if self.access_token and time.time() < self.token_expiry:
                return self.access_token

            sess = self._get_session()
            url = "https://oauth2.googleapis.com/token"
            data = {
                "client_id": self.client_id,
                "client_secret": self.client_secret,
                "refresh_token": self.refresh_token,
                "grant_type": "refresh_token"
            }
            resp = sess.post(url, data=data, timeout=30)
            if resp.status_code != 200:
                raise RuntimeError(f"Lỗi xác thực Google OAuth2: {resp.text}")
            
            res_json = resp.json()
            self.access_token = res_json["access_token"]
            expires_in = res_json.get("expires_in", 3600)
            self.token_expiry = time.time() + expires_in - 120 # Buffer 2 mins
            return self.access_token

    def upload_bytes(self, data_bytes: bytes, filename: str, mime_type: str = "image/png", max_retries: int = 6) -> str:
        """Upload raw bytes lên Google Docs/Blogger Resumable endpoint và nhận link lh3.googleusercontent.com"""
        sess = self._get_session()
        for attempt in range(max_retries):
            try:
                token = self.refresh_access_token()
                with self.album_lock:
                    album_id = self.album_ids[self.current_album_idx % len(self.album_ids)]
                
                # 1. Tạo session upload
                session_url = f"https://docs.google.com/upload/blogger/photos/resumable?authuser=0&blogId={self.post_blog_id}"
                headers = {
                    "Authorization": f"Bearer {token}",
                    "X-Goog-Upload-Protocol": "resumable",
                    "X-Goog-Upload-Command": "start",
                    "X-Goog-Upload-Header-Content-Type": mime_type,
                    "X-Goog-Upload-Header-Content-Length": str(len(data_bytes)),
                    "Origin": "https://docs.google.com",
                    "Referer": "https://docs.google.com/"
                }
                payload = {
                    "protocolVersion": "0.8",
                    "createSessionRequest": {
                        "fields": [
                            {"external": {"name": "file", "filename": filename, "put": {}, "size": len(data_bytes)}},
                            {"inlined": {"name": "title", "content": filename, "contentType": "text/plain"}},
                            {"inlined": {"name": "album_id", "content": album_id, "contentType": "text/plain"}}
                        ]
                    }
                }
                
                init_resp = sess.post(session_url, headers=headers, json=payload, timeout=30)
                if init_resp.status_code == 401:
                    with self.token_lock:
                        self.access_token = None
                    continue
                
                if init_resp.status_code in (400, 403) or "REQUEST_REJECTED" in init_resp.text:
                    # Chuyển sang Album tiếp theo nếu album hiện tại đầy/lỗi
                    with self.album_lock:
                        self.current_album_idx = (self.current_album_idx + 1) % len(self.album_ids)
                    time.sleep(0.5)
                    continue

                upload_endpoint = init_resp.headers.get("X-Goog-Upload-URL")
                if not upload_endpoint:
                    raise RuntimeError(f"Không nhận được Upload URL: {init_resp.text}")

                # 2. Đẩy raw bytes lên upload_endpoint
                upload_headers = {
                    "X-Goog-Upload-Command": "upload, finalize",
                    "X-Goog-Upload-Offset": "0",
                    "Content-Type": "application/octet-stream"
                }
                
                up_resp = sess.post(upload_endpoint, headers=upload_headers, data=data_bytes, timeout=90)
                if up_resp.status_code == 200:
                    up_json = up_resp.json()
                    # Trích xuất url
                    raw_url = None
                    try:
                        raw_url = up_json["sessionStatus"]["additionalInfo"]["uploader_service.GoogleRupioAdditionalInfo"]["completionInfo"]["customerSpecificInfo"]["url"]
                    except Exception:
                        # Fallback deep search
                        def search_url(obj):
                            if isinstance(obj, str) and "lh3.googleusercontent.com" in obj:
                                return obj
                            if isinstance(obj, dict):
                                for v in obj.values():
                                    res = search_url(v)
                                    if res: return res
                            if isinstance(obj, list):
                                for item in obj:
                                    res = search_url(item)
                                    if res: return res
                            return None
                        raw_url = search_url(up_json)

                    if raw_url:
                        # Chèn /s0/ vào trước filename để lấy raw 100% gốc không nén
                        clean_u = raw_url.split('=s0')[0].rstrip('/')
                        parts = clean_u.rsplit('/', 1)
                        if len(parts) == 2 and parts[1]:
                            return f"{parts[0]}/s0/{parts[1]}"
                        return clean_u + "=s0"
                    
                    raise RuntimeError(f"Không trích xuất được URL ảnh: {up_resp.text}")

                time.sleep(2)
            except Exception as e:
                if attempt == max_retries - 1:
                    raise e
                time.sleep(2 ** attempt)

        raise RuntimeError(f"Upload thất bại sau {max_retries} lần thử: {filename}")


def scan_and_upload_all(asar_path: str, uploader: BloggerCDNUploader, manifest_output_path: str, max_workers: int = 6):
    """Quét toàn bộ ASAR game và upload các file media (ảnh, sound, bgm) lên CDN"""
    if not os.path.exists(asar_path):
        print(f"[LỖI] Không tìm thấy ASAR: {asar_path}")
        return

    print("==================================================")
    print("   HOME - BATCH CDN ASSET UPLOADER")
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
                # Chỉ upload media: ảnh, audio, video (không upload .ks kịch bản vì .ks nằm trên GitHub Pages)
                if ext in ('.png', '.jpg', '.jpeg', '.gif', '.webp', '.ogg', '.mp3', '.wav', '.mp4'):
                    items.append((prefix, int(node['offset']), int(node['size']), ext))
            return items

        media_items = collect_media(header)

    print(f"[*] Tìm thấy tổng cộng {len(media_items):,} media files trong game.")

    # 2. Xử lý và Upload song song
    manifest = {}
    items_to_upload = []

    for rel_path, offset, size, ext in media_items:
        cached_url = uploader.get_cached_url(rel_path)
        if cached_url:
            manifest[rel_path] = cached_url
        else:
            items_to_upload.append((rel_path, offset, size, ext))

    print(f"[*] Đã cache trước đó: {len(manifest):,} files.")
    print(f"[*] Cần upload mới: {len(items_to_upload):,} files.")

    if not items_to_upload:
        print("[*] Toàn bộ files đã được upload xong từ trước!")
        with open(manifest_output_path, 'w', encoding='utf-8') as mf:
            json.dump(manifest, mf, ensure_ascii=False, indent=2)
        print(f"[*] Đã xuất manifest ra: {manifest_output_path}")
        return

    # Helper đọc byte từ file asar an toàn (mỗi thread mở file handle riêng)
    def process_item(item):
        rel_path, offset, size, ext = item
        with open(asar_path, 'rb') as f_read:
            f_read.seek(data_offset + offset)
            raw_bytes = f_read.read(size)

        # Nếu là Audio -> Mã hóa sang PNG Stego
        if ext in ('.ogg', '.mp3', '.wav'):
            upload_bytes = encode_audio_to_png(raw_bytes)
            upload_filename = os.path.basename(rel_path) + ".png"
            mime_type = "image/png"
        else:
            upload_bytes = raw_bytes
            upload_filename = os.path.basename(rel_path)
            mime_type = "image/jpeg" if ext in ('.jpg', '.jpeg') else "image/png" if ext == '.png' else "image/gif"

        cdn_url = uploader.upload_bytes(upload_bytes, upload_filename, mime_type)
        uploader.save_cached_url(rel_path, cdn_url, len(upload_bytes), mime_type)
        return rel_path, cdn_url

    print(f"[*] Khởi chạy tiến trình upload đa luồng ({max_workers} workers)...")
    completed = len(manifest)
    total = len(media_items)
    start_time = time.time()
    uploaded_new = 0

    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        futures = {executor.submit(process_item, item): item for item in items_to_upload}
        for future in as_completed(futures):
            try:
                rel_path, cdn_url = future.result()
                manifest[rel_path] = cdn_url
                completed += 1
                uploaded_new += 1
                pct = (completed / total) * 100
                elapsed = time.time() - start_time
                speed = uploaded_new / elapsed if elapsed > 0 else 0
                remaining = len(items_to_upload) - uploaded_new
                eta_s = remaining / speed if speed > 0 else 0

                sys.stdout.write(f"\r  Progress: [{completed:,}/{total:,}] {pct:5.1f}% | {speed:.1f} f/s | ETA: {int(eta_s)}s | {os.path.basename(rel_path)[:25]}".ljust(100))
                sys.stdout.flush()
            except Exception as ex:
                item = futures[future]
                print(f"\n[LỖI] Upload thất bại cho {item[0]}: {ex}")

    sys.stdout.write("\n")
    # Xuất file asset_manifest.json
    os.makedirs(os.path.dirname(manifest_output_path), exist_ok=True)
    with open(manifest_output_path, 'w', encoding='utf-8') as mf:
        json.dump(manifest, mf, ensure_ascii=False, indent=2)

    print("==================================================")
    print(f"   HOÀN TẤT UPLOAD TOÀN BỘ ASSET! ({len(manifest)} files)")
    print(f"   Đã tạo file: {manifest_output_path}")
    print("==================================================")


if __name__ == '__main__':
    asar_input = r"E:\HOME_\Game\resources\app.asar"
    manifest_out = r"E:\HOME_\patch\data\asset_manifest.json"
    workers = 20

    if len(sys.argv) > 1 and sys.argv[1].endswith('.asar'):
        asar_input = sys.argv[1]
    if len(sys.argv) > 2 and sys.argv[2].endswith('.json'):
        manifest_out = sys.argv[2]

    cid = os.environ.get("GOOGLE_CLIENT_ID", "")
    csec = os.environ.get("GOOGLE_CLIENT_SECRET", "")
    rtok = os.environ.get("GOOGLE_REFRESH_TOKEN", "")
    blog = os.environ.get("POST_BLOG_ID", "5603145815846388386")
    albums = os.environ.get("ALBUM_IDS", "7625247545492055521,7625247664534735937,7648132436102765169,7645099798651155937,7652714830743122225,7652715109721514913,7652715263749318033,7649021495335468129,7648132784060485841")

    if not cid or not csec or not rtok:
        print("[LỖI] Thiếu Google credentials trong .env!")
        sys.exit(1)

    uploader_instance = BloggerCDNUploader(cid, csec, rtok, blog, albums)
    scan_and_upload_all(asar_input, uploader_instance, manifest_out, max_workers=workers)
