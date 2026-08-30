# -*- coding: utf-8 -*-
"""
tools/build_pc_patch.py
=======================
Xây dựng gói cài đặt Patch Việt Hóa Hoàn Chỉnh cho PC (Dành cho End User)
Tựa game: HOME (ROOM) - SORAREVO [RJ01556529]

Quy trình tự động hóa khép kín:
1. Nạp bản dịch mới nhất từ translation/text_export.xlsx & translation/ui_export.csv.
2. Xuất 267 tệp kịch bản .ks chuẩn PC kèm bộ lọc Code Guard.
3. Cài đặt font chữ Noto Sans tiếng Việt, CSS Auto-Wrap và bản sửa lỗi Text Preview CONFIG.
4. Chạy bộ kiểm thử tự động (verify_patch_integrity): Đảm bảo 0 lỗi tag & 0 điểm mù.
5. Đóng gói payload nén patch_payload.zip.
6. Biên dịch Standalone EXE (CAI_DAT_PATCH_VIET_HOA.exe) bằng PyInstaller với giao diện Tkinter High-DPI.
7. Đóng gói tệp phân phối chính thức: HOME_VietHoa_PC_Patch.zip và dọn sạch build cache.
"""

import os
import sys
import shutil
import zipfile
import subprocess
import time

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUTPUT_PC_DIR = os.path.join(ROOT_DIR, 'dist_pc')
PATCH_SRC_DIR = os.path.join(ROOT_DIR, 'patch')
TOOLS_DIR = os.path.join(ROOT_DIR, 'tools')

sys.path.append(TOOLS_DIR)
import reimport_scenario
import setup_fonts
import verify_patch_integrity

def build_pc_patch():
    t_start = time.time()
    print("=" * 65)
    print("  BẮT ĐẦU XÂY DỰNG BẢN PATCH VIỆT HÓA CHUẨN 100% CHO END USER")
    print("=" * 65)

    # 1. Làm sạch thư mục đầu ra dist_pc
    if os.path.exists(OUTPUT_PC_DIR):
        shutil.rmtree(OUTPUT_PC_DIR, ignore_errors=True)
    os.makedirs(OUTPUT_PC_DIR, exist_ok=True)

    # 2. Cài đặt Font Noto Sans & CSS Auto-Wrap & Plugin Config Fix
    print("\n[1/7] Cập nhật font chữ Noto Sans, CSS Auto-Wrap & Plugin Fixes...")
    setup_fonts.deploy_fonts()

    # 3. Tái xuất 267 tệp kịch bản .ks từ bản dịch nguồn trong translation/
    print("\n[2/7] Xuất toàn bộ 267 tệp kịch bản (.ks) tiếng Việt từ translation/...")
    records = reimport_scenario.load_translations()
    target_scenario_dir = os.path.join(OUTPUT_PC_DIR, 'data', 'scenario')
    os.makedirs(target_scenario_dir, exist_ok=True)
    reimport_scenario.reimport_and_patch(records, output_dir=target_scenario_dir)

    # Đồng bộ các tài nguyên cần thiết khác từ patch/ vào dist_pc
    print("\n[3/7] Đồng bộ plugin giao diện, font chữ, nút bấm...")
    font_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'others', 'font')
    os.makedirs(font_dst, exist_ok=True)
    for font_name in ['NotoSansJP-Medium.ttf', 'NotoSansJP-Bold.ttf']:
        src = os.path.join(PATCH_SRC_DIR, 'data', 'others', 'font', font_name)
        if os.path.exists(src):
            shutil.copy2(src, os.path.join(font_dst, font_name))

    for p_name in ['auto_wrap', 'theme_kopanda_09_2', 'uiparts_set', 'button_ex']:
        src_p = os.path.join(PATCH_SRC_DIR, 'data', 'others', 'plugin', p_name)
        dst_p = os.path.join(OUTPUT_PC_DIR, 'data', 'others', 'plugin', p_name)
        if os.path.exists(src_p):
            shutil.copytree(src_p, dst_p, dirs_exist_ok=True)

    img_src = os.path.join(PATCH_SRC_DIR, 'data', 'image')
    img_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'image')
    if os.path.exists(img_src):
        shutil.copytree(img_src, img_dst, dirs_exist_ok=True)

    sys_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'system')
    os.makedirs(sys_dst, exist_ok=True)
    cfg_src = os.path.join(PATCH_SRC_DIR, 'data', 'system', 'Config.tjs')
    if os.path.exists(cfg_src):
        shutil.copy2(cfg_src, os.path.join(sys_dst, 'Config.tjs'))

    css_dst = os.path.join(OUTPUT_PC_DIR, 'tyrano', 'css')
    os.makedirs(css_dst, exist_ok=True)
    shutil.copy2(os.path.join(PATCH_SRC_DIR, 'tyrano', 'css', 'font.css'),
                 os.path.join(css_dst, 'font.css'))

    lang_src = os.path.join(PATCH_SRC_DIR, 'tyrano', 'lang.js')
    if os.path.exists(lang_src):
        os.makedirs(os.path.join(OUTPUT_PC_DIR, 'tyrano'), exist_ok=True)
        shutil.copy2(lang_src, os.path.join(OUTPUT_PC_DIR, 'tyrano', 'lang.js'))

    tp_src = os.path.join(PATCH_SRC_DIR, 'tyrano', 'plugins')
    tp_dst = os.path.join(OUTPUT_PC_DIR, 'tyrano', 'plugins')
    if os.path.exists(tp_src):
        shutil.copytree(tp_src, tp_dst, dirs_exist_ok=True)

    # 4. Kiểm thử tự động tính toàn vẹn (0 lỗi tag, 0 điểm mù)
    print("\n[4/7] Chạy bộ kiểm thử tự động toàn diện (verify_patch_integrity)...")
    is_valid = verify_patch_integrity.run_full_verification(OUTPUT_PC_DIR)
    if not is_valid:
        raise RuntimeError("Phát hiện lỗi trong dữ liệu patch! Tiến trình đóng gói bị dừng để đảm bảo an toàn.")

    # 5. Biên dịch Trình cài đặt Online 1-Click (CAI_DAT_PATCH_VIET_HOA.exe)
    print("\n[5/6] Biên dịch Trình cài đặt Online 1-Click (CAI_DAT_PATCH_VIET_HOA.exe)...")
    icon_candidates = [
        os.path.join(PATCH_SRC_DIR, 'tyrano.ico'),
        os.path.join(TOOLS_DIR, 'tyrano.ico'),
        os.path.join(ROOT_DIR, 'unpacked_game_app', 'tyrano.ico')
    ]
    icon_path = next((p for p in icon_candidates if os.path.exists(p)), None)
    pyinstaller_cmd = [
        'pyinstaller',
        '--onefile',
        '--clean',
        '--noconsole',
        '--name', 'CAI_DAT_PATCH_VIET_HOA',
        os.path.join(TOOLS_DIR, 'unified_patch_installer.py')
    ]
    if icon_path:
        pyinstaller_cmd.extend(['--icon', icon_path])

    subprocess.run(pyinstaller_cmd, cwd=ROOT_DIR, check=True)
    
    compiled_exe = os.path.join(ROOT_DIR, 'dist', 'CAI_DAT_PATCH_VIET_HOA.exe')
    if os.path.exists(compiled_exe):
        dst_exe = os.path.join(OUTPUT_PC_DIR, 'CAI_DAT_PATCH_VIET_HOA.exe')
        for _ in range(5):
            try:
                shutil.copy2(compiled_exe, dst_exe)
                break
            except Exception:
                time.sleep(0.5)
        print(f"  [OK] Đã xuất CAI_DAT_PATCH_VIET_HOA.exe ({os.path.getsize(compiled_exe)/(1024*1024):.2f} MB) vào dist_pc/")

    # Tạo file batch dự phòng
    bat_content = """@echo off
chcp 65001 >nul
title CÀI ĐẶT PATCH VIỆT HÓA - HOME (ROOM) [PC]
cd /d "%~dp0"
if exist "CAI_DAT_PATCH_VIET_HOA.exe" (
    start "" "CAI_DAT_PATCH_VIET_HOA.exe"
    exit /b 0
)
echo [LỖI] Không tìm thấy file CAI_DAT_PATCH_VIET_HOA.exe!
pause
"""
    with open(os.path.join(OUTPUT_PC_DIR, 'CAI_DAT_NHANH.bat'), 'w', encoding='utf-8') as f:
        f.write(bat_content)

    # Tạo file hướng dẫn Huong_Dan_Cai_Dat.txt
    readme_content = """============================================================
   HƯỚNG DẪN CÀI ĐẶT PATCH VIỆT HÓA - HOME (ROOM) [PC]
   Phát triển bởi: Shimakaze VN Translation Team
============================================================

1. CÁCH CÀI ĐẶT CỰC KỲ ĐƠN GIẢN (1-CLICK):
   ----------------------------------------------------------
   - Cách 1 (Khuyên dùng):
     Chỉ cần mở tệp 'CAI_DAT_PATCH_VIET_HOA.exe' (hoặc 'CAI_DAT_NHANH.bat').
     Chương trình sẽ tự động nhận diện game và bạn chỉ cần bấm nút:
     ⚡ [CÀI ĐẶT PATCH VIỆT HÓA]
     Sau 5 giây quá trình hoàn tất, bấm [KHỞI ĐỘNG GAME] để chơi!

   - Cách 2:
     Nếu chương trình không tự tìm thấy game, bấm nút [Duyệt...] 
     và chọn thư mục chứa tệp HOME.exe của bạn.

2. TÍNH NĂNG NỔI BẬT:
   - Dịch thuật 100% tiếng Việt toàn bộ cốt truyện và giao diện.
   - Font chữ Noto Sans rõ nét, hỗ trợ chống tràn viền và xuống dòng chuẩn.
   - Tự động sao lưu bản gốc vào 'resources/app.asar.original.bak'.
   - Tích hợp nút 'Khôi phục bản gốc' để gỡ patch bất cứ lúc nào.
   - Không yêu cầu cài đặt Python hay bất kỳ phần mềm trung gian nào.

Chúc bạn có những trải nghiệm tuyệt vời cùng game HOME!
"""
    with open(os.path.join(OUTPUT_PC_DIR, 'Huong_Dan_Cai_Dat.txt'), 'w', encoding='utf-8') as f:
        f.write(readme_content)

    # 6. Đóng gói ZIP phát hành siêu nén chỉ chứa duy nhất 1 file CAI_DAT_PATCH_VIET_HOA.exe
    zip_path = os.path.join(ROOT_DIR, 'HOME_VietHoa_PC_Patch.zip')
    print(f"\n[6/6] Đóng gói tệp zip phát hành siêu nén (chỉ chứa 1 file EXE duy nhất): {zip_path}...")
    exe_file = os.path.join(OUTPUT_PC_DIR, 'CAI_DAT_PATCH_VIET_HOA.exe')
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        z.write(exe_file, 'CAI_DAT_PATCH_VIET_HOA.exe')

    # Dọn dẹp build cache PyInstaller
    for p in ['build', 'dist', 'CAI_DAT_PATCH_VIET_HOA.spec', 'patch_payload.zip']:
        target_p = os.path.join(ROOT_DIR, p)
        if os.path.exists(target_p):
            if os.path.isdir(target_p):
                shutil.rmtree(target_p, ignore_errors=True)
            else:
                os.remove(target_p)

    total_time = round(time.time() - t_start, 2)
    print("\n" + "=" * 65)
    print(f"  >>> HOÀN TẤT XÂY DỰNG BẢN PATCH CHO END USER TRONG {total_time}s!")
    print(f"  - Thư mục patch: {OUTPUT_PC_DIR}")
    print(f"  - Tệp zip:       {zip_path} ({os.path.getsize(zip_path)/(1024*1024):.2f} MB)")
    print(f"  - Tệp EXE 1-Click: {os.path.join(OUTPUT_PC_DIR, 'CAI_DAT_PATCH_VIET_HOA.exe')}")
    print("=" * 65)

if __name__ == '__main__':
    build_pc_patch()
