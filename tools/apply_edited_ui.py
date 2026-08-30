#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
tools/apply_edited_ui.py
Tự động sao chép các ảnh UI đã chỉnh sửa từ EXPORT_UI_PHOTOSHOP
vào thư mục patch/ và unpacked_game_app/, sau đó repack vào game PC.
"""

import os
import shutil
import sys
import subprocess

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
EXPORT_MIRROR = os.path.join(ROOT_DIR, 'EXPORT_UI_PHOTOSHOP', '04_FULL_UI_MIRROR_FOR_GAME_REPLACE')
PATCH_DIR = os.path.join(ROOT_DIR, 'patch')
UNPACKED_APP = os.path.join(ROOT_DIR, 'unpacked_game_app')

def apply_edited_ui():
    print("=" * 60)
    print("  ÁP DỤNG CÁC ẢNH UI ĐÃ CHỈNH SỬA VÀO GAME PC")
    print("=" * 60)

    if not os.path.exists(EXPORT_MIRROR):
        print(f"[!] Không tìm thấy thư mục: {EXPORT_MIRROR}")
        return

    copied = 0
    image_exts = ('.png', '.jpg', '.jpeg', '.gif', '.webp', '.bmp')

    for root, dirs, files in os.walk(EXPORT_MIRROR):
        for f in files:
            if not f.lower().endswith(image_exts):
                continue
            src_file = os.path.join(root, f)
            rel_path = os.path.relpath(src_file, EXPORT_MIRROR)

            # Copy sang patch/ và unpacked_game_app/
            for dst_base in [PATCH_DIR, UNPACKED_APP]:
                dst_file = os.path.join(dst_base, rel_path)
                os.makedirs(os.path.dirname(dst_file), exist_ok=True)
                shutil.copy2(src_file, dst_file)
            copied += 1

    print(f"[OK] Đã đồng bộ {copied} tệp ảnh UI vào thư mục patch và engine.")
    print("[*] Đang tiến hành Repack lại game PC...")
    repack_script = os.path.join(ROOT_DIR, 'tools', 'repack_pc_game.py')
    subprocess.run([sys.executable, repack_script], check=True)

if __name__ == '__main__':
    apply_edited_ui()
