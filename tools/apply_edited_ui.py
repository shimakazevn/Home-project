#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
tools/apply_edited_ui.py
Tự động đồng bộ toàn bộ ảnh đã chỉnh sửa từ ALL_GAME_IMAGES hoặc EXPORT_UI_PHOTOSHOP
vào patch/ và unpacked_game_app/, sau đó repack trực tiếp vào app.asar của PC.
"""

import os
import shutil
import sys
import subprocess

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ALL_IMAGES_DIR = os.path.join(ROOT_DIR, 'ALL_GAME_IMAGES')
EXPORT_MIRROR = os.path.join(ROOT_DIR, 'EXPORT_UI_PHOTOSHOP', '04_FULL_UI_MIRROR_FOR_GAME_REPLACE')
PATCH_DIR = os.path.join(ROOT_DIR, 'patch')
UNPACKED_APP = os.path.join(ROOT_DIR, 'unpacked_game_app')

def apply_images():
    print("=" * 60)
    print("  ĐỒNG BỘ ẢNH ĐÃ CHỈNH SỬA VÀO GAME PC VÀ TIẾN HÀNH REPACK")
    print("=" * 60)

    image_exts = ('.png', '.jpg', '.jpeg', '.gif', '.webp', '.bmp', '.ico')
    synced_count = 0

    # 1. Quét từ ALL_GAME_IMAGES nếu tồn tại
    if os.path.exists(ALL_IMAGES_DIR):
        print(f"[*] Đang quét thay đổi từ: {ALL_IMAGES_DIR}...")
        for root, dirs, files in os.walk(ALL_IMAGES_DIR):
            for f in files:
                if not f.lower().endswith(image_exts):
                    continue
                src_file = os.path.join(root, f)
                rel_path = os.path.relpath(src_file, ALL_IMAGES_DIR)

                target_unpacked = os.path.join(UNPACKED_APP, rel_path)
                
                # Kiểm tra nếu file có sự thay đổi (kích thước hoặc thời gian sửa đổi)
                is_modified = True
                if os.path.exists(target_unpacked):
                    src_stat = os.stat(src_file)
                    tgt_stat = os.stat(target_unpacked)
                    if src_stat.st_mtime <= tgt_stat.st_mtime and src_stat.st_size == tgt_stat.st_size:
                        is_modified = False

                if is_modified:
                    # Ghi đè vào unpacked_game_app và patch
                    for dst_base in [UNPACKED_APP, PATCH_DIR]:
                        dst_file = os.path.join(dst_base, rel_path)
                        os.makedirs(os.path.dirname(dst_file), exist_ok=True)
                        shutil.copy2(src_file, dst_file)
                    synced_count += 1

    # 2. Quét thêm từ EXPORT_UI_PHOTOSHOP nếu có
    if os.path.exists(EXPORT_MIRROR):
        for root, dirs, files in os.walk(EXPORT_MIRROR):
            for f in files:
                if not f.lower().endswith(image_exts):
                    continue
                src_file = os.path.join(root, f)
                rel_path = os.path.relpath(src_file, EXPORT_MIRROR)
                for dst_base in [UNPACKED_APP, PATCH_DIR]:
                    dst_file = os.path.join(dst_base, rel_path)
                    os.makedirs(os.path.dirname(dst_file), exist_ok=True)
                    shutil.copy2(src_file, dst_file)

    print(f"[OK] Đã đồng bộ {synced_count} tệp ảnh vào engine game.")
    print("[*] Đang tiến hành Repack app.asar...")
    repack_script = os.path.join(ROOT_DIR, 'tools', 'repack_pc_game.py')
    subprocess.run([sys.executable, repack_script], check=True)

if __name__ == '__main__':
    apply_images()
