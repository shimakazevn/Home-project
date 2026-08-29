# -*- coding: utf-8 -*-
"""
build_web_release.py
Đóng gói phiên bản Web nhẹ (~20MB) sẵn sàng deploy lên GitHub Pages hoặc Cloudflare Pages.

Bao gồm:
  - index.html (tích hợp CDN Interceptor, Web Save, Mobile UI)
  - 276 file kịch bản tiếng Việt (.ks)
  - TyranoScript Engine JS & CSS
  - Font tiếng Việt Noto Sans JP
  - asset_manifest.json (chỉ đường tới Blogger CDN)
"""

import os
import sys
import json
import struct
import shutil

sys.stdout.reconfigure(encoding='utf-8')

ASAR_PATH = r'E:\HOME_\Game\resources\app.asar'
PATCH_DIR = r'E:\HOME_\patch'
WEB_DIST_DIR = r'E:\HOME_\dist_web'


def build_web_distribution():
    print("==================================================")
    print("   HOME - XÂY DỰNG BẢN WEB (GITHUB PAGES)")
    print("==================================================")

    if os.path.exists(WEB_DIST_DIR):
        shutil.rmtree(WEB_DIST_DIR)
    os.makedirs(WEB_DIST_DIR, exist_ok=True)

    # 1. Trích xuất các file tĩnh thiết yếu từ app.asar (JS engine, CSS, system)
    print("[1/4] Trích xuất khung engine TyranoScript từ app.asar...")
    with open(ASAR_PATH, 'rb') as f:
        f.read(12)
        hs = struct.unpack('<I', f.read(4))[0]
        header = json.loads(f.read(hs).decode('utf-8'))
        data_offset = 16 + hs + ((4 - (hs % 4)) % 4)

        def extract_matching_files(node, prefix=""):
            for k, v in node.get('files', {}).items():
                curr_path = f"{prefix}/{k}" if prefix else k
                if 'files' in v:
                    extract_matching_files(v, curr_path)
                else:
                    # Lấy toàn bộ code, kịch bản, scenario hệ thống, HTML, CSS, JS
                    # CHỈ BỎ QUA các folder media nặng (đã đẩy lên Blogger CDN)
                    media_dirs = ('data/bgimage/', 'data/sound/', 'data/bgm/', 'data/video/', 'data/fgimage/', 'data/image/')
                    should_extract = (
                        curr_path.startswith(('tyrano/', 'data/system/', 'data/others/', 'data/scenario/'))
                        or curr_path in ('index.html', 'package.json')
                    ) and not curr_path.startswith(media_dirs)

                    if should_extract:
                        off = int(v['offset'])
                        sz = int(v['size'])
                        f.seek(data_offset + off)
                        data = f.read(sz)

                        dest = os.path.join(WEB_DIST_DIR, curr_path)
                        os.makedirs(os.path.dirname(dest), exist_ok=True)
                        with open(dest, 'wb') as out_f:
                            out_f.write(data)

        extract_matching_files(header)

    print("  [OK] Đã trích xuất cấu trúc Web Engine cơ sở.")

    # 2. Đè các file Việt hóa từ thư mục patch/
    print("[2/4] Đè toàn bộ 278 file patch Việt hóa & Plugin...")
    copied_patch = 0
    for root, _, files in os.walk(PATCH_DIR):
        for f in files:
            src = os.path.join(root, f)
            rel = os.path.relpath(src, PATCH_DIR)
            dst = os.path.join(WEB_DIST_DIR, rel)
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            shutil.copy2(src, dst)
            copied_patch += 1
    print(f"  [OK] Đã tích hợp {copied_patch} files từ patch/.")

    # 3. Tạo/Cập nhật file index.html chuẩn cho Web
    print("[3/4] Tối ưu hóa index.html cho Web & Mobile...")
    index_html_path = os.path.join(WEB_DIST_DIR, 'index.html')
    
    with open(index_html_path, 'r', encoding='utf-8') as f:
        html = f.read()

    # Chèn meta referrer no-referrer, iOS PWA/Fullscreen, Mobile stylesheet & Plugins vào thẻ <head>
    injections = """
<meta name="referrer" content="no-referrer" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta name="apple-mobile-web-app-title" content="HOME" />
<meta name="mobile-web-app-capable" content="yes" />
<!-- HOME Web CDN & Save Extensions -->
<link href="./tyrano/css/web_mobile.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="./data/others/plugin/cdn_interceptor/init.js"></script>
<script type="text/javascript" src="./data/others/plugin/web_save/init.js"></script>
"""
    if "cdn_interceptor" not in html:
        html = html.replace('<head>', f'<head>\n{injections}')
    elif 'name="apple-mobile-web-app-capable"' not in html:
        html = html.replace('<head>', f'<head>\n{injections}')

    html = html.replace('user-scalable=no">', 'user-scalable=no,viewport-fit=cover">')

    with open(index_html_path, 'w', encoding='utf-8') as f:
        f.write(html)
    
    # Tạo file .nojekyll để GitHub Pages không bỏ qua các file _preview.ks, _system.ks
    with open(os.path.join(WEB_DIST_DIR, '.nojekyll'), 'w', encoding='utf-8') as f:
        f.write("# Disable Jekyll\n")
    print("  [OK] Đã cấu hình index.html và .nojekyll hoàn chỉnh.")

    # 4. Kiểm tra tổng dung lượng bản Web
    total_size = sum(
        os.path.getsize(os.path.join(r, f))
        for r, _, files in os.walk(WEB_DIST_DIR)
        for f in files
    )
    size_mb = total_size / (1024 * 1024)

    print("==================================================")
    print(f"   XÂY DỰNG BẢN WEB THÀNH CÔNG!")
    print(f"   Thư mục output: {WEB_DIST_DIR}")
    print(f"   Tổng dung lượng: {size_mb:.2f} MB (Cực kỳ nhẹ so với 8GB gốc!)")
    print("==================================================")
    print("   👉 Bạn chỉ cần đẩy thư mục dist_web này lên nhánh 'gh-pages' của GitHub!")


if __name__ == '__main__':
    build_web_distribution()
