#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script xây dựng bản game Việt Hóa hoàn chỉnh & sẵn sàng chạy thử (Build Vietnamese Game)
Dự án: HOME (ROOM) - RJ01556529
"""

import os
import sys
import shutil
from pathlib import Path

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = Path(__file__).resolve().parent.parent
GAME_DIR = PROJECT_ROOT / 'Game'
GAME_RESOURCES = GAME_DIR / 'resources'
APP_DIR = GAME_RESOURCES / 'app'
PATCH_DIR = PROJECT_ROOT / 'patch'
EXTRACTED_SCRIPTS = PROJECT_ROOT / 'extracted_scripts'

# Import local tools
sys.path.insert(0, str(PROJECT_ROOT / 'tools'))
import setup_fonts
import import_text
import validate_translation


def build_game():
    print("=" * 60)
    print("  BẮT ĐẦU XÂY DỰNG BẢN GAME TIẾNG VIỆT HOÀN CHỈNH")
    print("=" * 60)

    # Bước 1: Thiết lập font & Auto-wrap
    print("\n[BƯỚC 1/4] Thiết lập font tiếng Việt & CSS Auto-Wrap...")
    setup_fonts.deploy_fonts()

    # Bước 2: Tái nhập bản dịch vào patch
    print("\n[BƯỚC 2/4] Tái nhập bản dịch từ Excel/CSV vào file .ks...")
    records = import_text.load_translations()
    import_text.reimport_and_patch(records)

    # Bước 3: Kiểm tra chất lượng (QA Validation)
    print("\n[BƯỚC 3/4] Kiểm tra chất lượng và toàn vẹn mã tag...")
    validate_translation.validate_all()

    # Bước 4: Đồng bộ vào thư mục Game/resources/app để chạy thử
    print("\n[BƯỚC 4/4] Đồng bộ patch vào thư mục Game để sẵn sàng chơi...")
    os.makedirs(APP_DIR, exist_ok=True)

    # Copy base extracted structure if app directory is empty
    if not (APP_DIR / 'index.html').exists() and EXTRACTED_SCRIPTS.exists():
        print("  Đang khởi tạo cấu trúc game cơ sở từ extracted_scripts...")
        for item in os.listdir(EXTRACTED_SCRIPTS):
            s = EXTRACTED_SCRIPTS / item
            d = APP_DIR / item
            if s.is_dir():
                shutil.copytree(s, d, dirs_exist_ok=True)
            else:
                shutil.copy2(s, d)

    # Copy patch over app
    if PATCH_DIR.exists():
        print("  Đang áp dụng toàn bộ file vá từ patch/ vào Game/resources/app/...")
        for root, dirs, files in os.walk(PATCH_DIR):
            rel = Path(root).relative_to(PATCH_DIR)
            target_root = APP_DIR / rel
            os.makedirs(target_root, exist_ok=True)
            for f in files:
                shutil.copy2(Path(root) / f, target_root / f)

    print("\n" + "=" * 60)
    print("  >>> XÂY DỰNG HOÀN TẤT! BẠN CÓ THỂ CHẠY Game/Game.exe ĐỂ THỬ NGHIỆM.")
    print("=" * 60)


if __name__ == '__main__':
    build_game()
