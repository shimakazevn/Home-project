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

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ASAR_PATH = r'E:\HOME_\HOME_\resources\app.asar'
UNPACKED_APP = r'E:\HOME_\unpacked_game_app'
PATCH_DIR = r'E:\HOME_\patch'
WEB_DIST_DIR = r'E:\HOME_\dist_web'


def build_web_distribution():
    print("==================================================")
    print("   HOME - XÂY DỰNG BẢN WEB (GITHUB PAGES)")
    print("==================================================")

    def remove_readonly(func, path, excinfo):
        import stat
        os.chmod(path, stat.S_IWRITE)
        func(path)

    if os.path.exists(WEB_DIST_DIR):
        for item in os.listdir(WEB_DIST_DIR):
            if item == '.git':
                continue
            p = os.path.join(WEB_DIST_DIR, item)
            if os.path.isdir(p):
                shutil.rmtree(p, onexc=remove_readonly)
            else:
                try:
                    os.unlink(p)
                except Exception:
                    remove_readonly(os.unlink, p, None)
    os.makedirs(WEB_DIST_DIR, exist_ok=True)

    # 0. Đồng bộ và nhúng CDN manifest vào cdn_interceptor/init.js
    print("[0/4] Đồng bộ và nhúng CDN manifest vào cdn_interceptor/init.js...")
    import build_web_cdn_interceptor
    build_web_cdn_interceptor.update_cdn_interceptor()

    # 1. Trích xuất các file tĩnh thiết yếu từ unpacked_game_app (hoặc app.asar)
    print("[1/4] Trích xuất khung engine TyranoScript từ unpacked_game_app...")
    media_dirs = ('data/bgimage', 'data/sound', 'data/bgm', 'data/video', 'data/fgimage', 'data/image')
    for root, dirs, files in os.walk(UNPACKED_APP):
        rel = os.path.relpath(root, UNPACKED_APP).replace('\\', '/')
        if rel != '.' and any(rel.startswith(md) for md in media_dirs):
            continue
        for f in files:
            src_f = os.path.join(root, f)
            rel_f = os.path.relpath(src_f, UNPACKED_APP).replace('\\', '/')
            if any(rel_f.startswith(md) for md in media_dirs):
                continue
            dst_f = os.path.join(WEB_DIST_DIR, rel_f)
            os.makedirs(os.path.dirname(dst_f), exist_ok=True)
            shutil.copy2(src_f, dst_f)

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
    
    # Đảm bảo Config.tjs trên bản Web luôn dùng configSave=webstorage
    web_config_tjs = os.path.join(WEB_DIST_DIR, 'data', 'system', 'Config.tjs')
    if os.path.exists(web_config_tjs):
        with open(web_config_tjs, 'r', encoding='utf-8') as f:
            cfg = f.read()
        cfg = cfg.replace(';configSave=file', ';configSave=webstorage')
        with open(web_config_tjs, 'w', encoding='utf-8') as f:
            f.write(cfg)

    # Đảm bảo asset_manifest.json có mặt tại dist_web/data/
    shutil.copy2(
        os.path.join(ROOT_DIR, 'data', 'asset_manifest.json'),
        os.path.join(WEB_DIST_DIR, 'data', 'asset_manifest.json')
    )

    print(f"  [OK] Đã tích hợp {copied_patch} files từ patch/ và cấu hình webstorage.")

    # 3. Tạo/Cập nhật file index.html chuẩn cho Web
    print("[3/4] Tối ưu hóa index.html cho Web & Mobile...")
    index_html_path = os.path.join(WEB_DIST_DIR, 'index.html')
    
    with open(index_html_path, 'r', encoding='utf-8') as f:
        html = f.read()

    # Chèn meta referrer no-referrer, iOS PWA/Fullscreen, Mobile stylesheet & Plugins vào thẻ <head>
    import time
    v_tag = int(time.time())
    injections = f"""
<meta name="referrer" content="no-referrer" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta name="apple-mobile-web-app-title" content="HOME" />
<meta name="mobile-web-app-capable" content="yes" />
<!-- HOME Web CDN & Save Extensions -->
<link href="./tyrano/css/web_mobile.css?v={v_tag}" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="./data/others/plugin/cdn_interceptor/init.js?v={v_tag}"></script>
<script type="text/javascript" src="./data/others/plugin/web_save/init.js?v={v_tag}"></script>
"""
    if "cdn_interceptor" not in html:
        html = html.replace('<head>', f'<head>\n{injections}')
    else:
        # Replace existing injection block with latest version tag
        import re
        html = re.sub(r'<!-- HOME Web CDN & Save Extensions -->.*?(<title>)', f'{injections}\n  \\1', html, flags=re.DOTALL)

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
