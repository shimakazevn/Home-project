#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
tools/export_ui_for_photoshop.py
Trích xuất toàn bộ ảnh giao diện (UI, nút bấm, khung thoại, HUD, thanh trạng thái, menu, icon)
vào thư mục riêng E:\HOME_\EXPORT_UI_PHOTOSHOP để chỉnh sửa bằng Photoshop.
"""

import os
import shutil
import sys

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
UNPACKED_APP = os.path.join(ROOT_DIR, 'unpacked_game_app')
EXPORT_ROOT = os.path.join(ROOT_DIR, 'EXPORT_UI_PHOTOSHOP')

def export_ui_images():
    print("=" * 60)
    print("  BẮT ĐẦU TRÍCH XUẤT TOÀN BỘ ẢNH UI RA THƯ MỤC PHOTOSHOP")
    print("=" * 60)

    if os.path.exists(EXPORT_ROOT):
        shutil.rmtree(EXPORT_ROOT, ignore_errors=True)
    os.makedirs(EXPORT_ROOT, exist_ok=True)

    # Các thư mục phân loại cho Photoshop
    cat_buttons = os.path.join(EXPORT_ROOT, '01_Buttons_and_Menu_Icons')
    cat_hud = os.path.join(EXPORT_ROOT, '02_HUD_Status_and_Gauges')
    cat_frames = os.path.join(EXPORT_ROOT, '03_Frames_Dialogs_and_Config')
    cat_mirror = os.path.join(EXPORT_ROOT, '04_FULL_UI_MIRROR_FOR_GAME_REPLACE')

    for p in [cat_buttons, cat_hud, cat_frames, cat_mirror]:
        os.makedirs(p, exist_ok=True)

    image_exts = ('.png', '.jpg', '.jpeg', '.gif', '.webp', '.bmp')
    exported_count = 0
    mirror_count = 0

    # Danh sách các thư mục chứa UI trong game
    ui_sources = [
        os.path.join(UNPACKED_APP, 'data', 'image'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', 'button'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '136'), # ui_base
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '137'), # ui_para
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '138'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '139'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '140'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '141'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '142'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '143'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '144'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '157'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '162'), # para_rank
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '165'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '166'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '167'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '168'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '169'), # jobs
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '170'), # weeks
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '171'), # months
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '182'),
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'chara', '183'), # relationship cards
        os.path.join(UNPACKED_APP, 'data', 'fgimage', 'default'),
        os.path.join(UNPACKED_APP, 'data', 'others', 'plugin', 'theme_kopanda_09_2', 'image'),
        os.path.join(UNPACKED_APP, 'data', 'others', 'plugin', 'uiparts_set', 'image'),
        os.path.join(UNPACKED_APP, 'data', 'others', 'plugin', 'button_ex'),
        os.path.join(UNPACKED_APP, 'tyrano', 'images', 'system'),
    ]

    for src_dir in ui_sources:
        if not os.path.exists(src_dir):
            continue
        for root, dirs, files in os.walk(src_dir):
            # Bỏ qua các folder CG người lớn (H-CG) và Event CG lớn nếu có nằm trong folder image
            rel_unpacked = os.path.relpath(root, UNPACKED_APP).replace('\\', '/')
            if 'image/H' in rel_unpacked or 'image/EVCG' in rel_unpacked or 'image/kaisou' in rel_unpacked:
                continue

            for f in files:
                if not f.lower().endswith(image_exts):
                    continue
                src_file = os.path.join(root, f)

                # 1. Lưu vào thư mục Mirror (giữ nguyên cấu trúc đường dẫn game)
                rel_from_unpacked = os.path.relpath(src_file, UNPACKED_APP)
                dst_mirror = os.path.join(cat_mirror, rel_from_unpacked)
                os.makedirs(os.path.dirname(dst_mirror), exist_ok=True)
                shutil.copy2(src_file, dst_mirror)
                mirror_count += 1

                # 2. Phân loại vào các folder chức năng thuận tiện cho Photoshop
                fname_lower = f.lower()
                if any(k in fname_lower for k in ['btn', 'button', 'title_', 'b_job', 'kettei', 'ui_menu', 'rokuga', 'profile', 'save', 'rest', 'yasumu', 'icon', 'on.png', 'off.png', 'click', 'enter']):
                    dst_cat = os.path.join(cat_buttons, f)
                    shutil.copy2(src_file, dst_cat)
                    exported_count += 1
                elif any(k in fname_lower for k in ['gauge', 'para_', 'ui_base', 'ui_para', 'rank', 'tension', 'kankei', 'month', 'week', 'status', 'ac_', 'koudou']):
                    dst_cat = os.path.join(cat_hud, f)
                    shutil.copy2(src_file, dst_cat)
                    exported_count += 1
                elif any(k in fname_lower for k in ['frame', 'config', 'window', 'dialog', 'slot', 'backlog', 'msg', 'message', 'menu', 'bg']):
                    dst_cat = os.path.join(cat_frames, f)
                    shutil.copy2(src_file, dst_cat)
                    exported_count += 1
                else:
                    dst_cat = os.path.join(cat_buttons, f)
                    shutil.copy2(src_file, dst_cat)
                    exported_count += 1

    # Tạo file Hướng dẫn sử dụng
    readme_export = os.path.join(EXPORT_ROOT, 'HUONG_DAN_SUA_UI_PHOTOSHOP.txt')
    with open(readme_export, 'w', encoding='utf-8') as f:
        f.write("""======================================================================
  HƯỚNG DẪN CHỈNH SỬA GIAO DIỆN (UI) BẰNG PHOTOSHOP CHO GAME HOME
======================================================================

1. CẤU TRÚC THƯ MỤC NÀY:
----------------------------------------------------------------------
📁 01_Buttons_and_Menu_Icons/
   -> Chứa toàn bộ nút bấm Title, Menu phòng ban đêm (Ghi hình, Hồ sơ, Lưu, Nghỉ ngơi), nút công việc, nút xác nhận.

📁 02_HUD_Status_and_Gauges/
   -> Chứa thanh trạng thái trên cùng, các huy hiệu Rank E/D/C/B/A/S, thanh tâm trạng, ngày tháng, quan hệ nhân vật.

📁 03_Frames_Dialogs_and_Config/
   -> Chứa khung hội thoại thoại, thanh trượt cài đặt âm lượng Config, màn hình Save/Load, thanh cuộn Backlog.

📁 04_FULL_UI_MIRROR_FOR_GAME_REPLACE/
   -> Thư mục CHÍNH có cấu trúc đường dẫn y hệt trong game.

2. CÁCH CHỈNH SỬA VÀ ÁP DỤNG VÀO GAME:
----------------------------------------------------------------------
Bước 1: Mở ảnh bạn muốn việt hóa/vẽ lại bằng Photoshop.
Bước 2: Chỉnh sửa và Lưu (Export/Save as PNG) đè vào file tương ứng trong:
        👉 04_FULL_UI_MIRROR_FOR_GAME_REPLACE/
Bước 3: Sau khi sửa xong, chỉ cần chạy file:
        👉 E:\\HOME_\\APPLY_EDITED_UI.bat
        (Hoặc chạy REPACK_GAME_PC.bat)
Bước 4: Mở E:\\HOME_\\HOME_\\HOME.exe để xem giao diện mới ngay lập tức!
======================================================================
""")

    print(f"\n[OK] Đã trích xuất thành công {mirror_count} tệp ảnh UI vào: {EXPORT_ROOT}")
    print(f"  - 01_Buttons_and_Menu_Icons:            Nút bấm & Menu")
    print(f"  - 02_HUD_Status_and_Gauges:             HUD, Rank & Thanh trạng thái")
    print(f"  - 03_Frames_Dialogs_and_Config:         Khung thoại, Save/Load, Config")
    print(f"  - 04_FULL_UI_MIRROR_FOR_GAME_REPLACE:   Cấu trúc chuẩn để áp dụng thẳng vào game")
    print("\n" + "=" * 60)

if __name__ == '__main__':
    export_ui_images()
