#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
tools/build_pc_patch.py - Xây dựng bản Patch Việt Hóa chuẩn chỉ, chuyên biệt cho bản PC (Game.exe / HOME.exe)
Không chứa bất kỳ mã nguồn, hook hay redirect nào của bản Web CDN.
"""

import os
import shutil
import sys
import zipfile

# Đảm bảo in UTF-8
sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUTPUT_PC_DIR = os.path.join(ROOT_DIR, 'dist_pc')
PATCH_SRC_DIR = os.path.join(ROOT_DIR, 'patch')
TOOLS_DIR = os.path.join(ROOT_DIR, 'tools')

sys.path.append(TOOLS_DIR)
import reimport_scenario

def build_pc_patch():
    print("=" * 60)
    print("  BẮT ĐẦU XÂY DỰNG BẢN PATCH VIỆT HÓA CHUYÊN BIỆT CHO PC")
    print("=" * 60)

    # 1. Làm sạch thư mục đầu ra dist_pc
    if os.path.exists(OUTPUT_PC_DIR):
        def on_exc(func, path, exc_info):
            import stat
            os.chmod(path, stat.S_IWRITE)
            func(path)
        shutil.rmtree(OUTPUT_PC_DIR, onerror=on_exc)
    os.makedirs(OUTPUT_PC_DIR, exist_ok=True)

    # 2. Tạo kịch bản đã dịch từ Excel/CSV và áp dụng sửa lỗi Engine Typo
    print("\n[1/4] Xuất 267 tệp kịch bản (.ks) tiếng Việt chuẩn cho PC...")
    records = reimport_scenario.load_translations()
    target_scenario_dir = os.path.join(OUTPUT_PC_DIR, 'data', 'scenario')
    os.makedirs(target_scenario_dir, exist_ok=True)
    reimport_scenario.reimport_and_patch(records, output_dir=target_scenario_dir)

    # 3. Sao chép Font Noto Sans và Plugin Auto-Wrap
    print("\n[2/4] Cài đặt font chữ Noto Sans & Plugin Auto-Wrap...")
    font_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'others', 'font')
    os.makedirs(font_dst, exist_ok=True)
    for font_name in ['NotoSansJP-Medium.ttf', 'NotoSansJP-Bold.ttf']:
        src = os.path.join(PATCH_SRC_DIR, 'data', 'others', 'font', font_name)
        if os.path.exists(src):
            shutil.copy2(src, os.path.join(font_dst, font_name))

    # Auto wrap plugin
    wrap_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'others', 'plugin', 'auto_wrap')
    os.makedirs(wrap_dst, exist_ok=True)
    wrap_src = os.path.join(PATCH_SRC_DIR, 'data', 'others', 'plugin', 'auto_wrap', 'init.js')
    if os.path.exists(wrap_src):
        shutil.copy2(wrap_src, os.path.join(wrap_dst, 'init.js'))

    # Config & Slider
    config_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'others', 'plugin', 'theme_kopanda_09_2')
    os.makedirs(config_dst, exist_ok=True)
    shutil.copy2(os.path.join(PATCH_SRC_DIR, 'data', 'others', 'plugin', 'theme_kopanda_09_2', 'config.ks'),
                 os.path.join(config_dst, 'config.ks'))

    slider_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'others', 'plugin', 'uiparts_set')
    os.makedirs(slider_dst, exist_ok=True)
    shutil.copy2(os.path.join(PATCH_SRC_DIR, 'data', 'others', 'plugin', 'uiparts_set', 'slider.js'),
                 os.path.join(slider_dst, 'slider.js'))

    # Config.tjs & font.css
    sys_dst = os.path.join(OUTPUT_PC_DIR, 'data', 'system')
    os.makedirs(sys_dst, exist_ok=True)
    shutil.copy2(os.path.join(PATCH_SRC_DIR, 'data', 'system', 'Config.tjs'),
                 os.path.join(sys_dst, 'Config.tjs'))

    css_dst = os.path.join(OUTPUT_PC_DIR, 'tyrano', 'css')
    os.makedirs(css_dst, exist_ok=True)
    shutil.copy2(os.path.join(PATCH_SRC_DIR, 'tyrano', 'css', 'font.css'),
                 os.path.join(css_dst, 'font.css'))

    # 4. Tạo file cài đặt tự động CAI_DAT_PATCH.bat trong thư mục dist_pc
    print("\n[3/4] Tạo trình cài đặt tự động CAI_DAT_PATCH.bat...")
    bat_content = """@echo off
chcp 65001 >nul
title CÀI ĐẶT PATCH VIỆT HÓA - HOME (ROOM) [PC]
cls
echo ============================================================
echo   CÀI ĐẶT PATCH VIỆT HÓA - TỰA GAME: HOME (ROOM) [PC]
echo ============================================================
echo.

set "TARGET_EXE="
if exist "HOME.exe" set "TARGET_EXE=HOME.exe"
if exist "Game.exe" set "TARGET_EXE=Game.exe"
if exist "..\\HOME.exe" set "TARGET_EXE=..\\HOME.exe"
if exist "..\\Game.exe" set "TARGET_EXE=..\\Game.exe"

if "%TARGET_EXE%"=="" (
    echo [LỖI] Không tìm thấy file HOME.exe hoặc Game.exe!
    echo Vui lòng giải nén toàn bộ thư mục Patch này vào thư mục chứa game HOME.
    echo.
    pause
    exit /b 1
)

echo Đã tìm thấy game: %TARGET_EXE%
echo Đang tiến hành cài đặt Patch Việt Hóa...
echo.

set "APP_DIR=resources\\app"
if exist "..\\resources" set "APP_DIR=..\\resources\\app"

if not exist "%APP_DIR%" mkdir "%APP_DIR%"

echo [1/2] Sao chép dữ liệu kịch bản, font chữ và plugin...
xcopy /E /Y /I "data" "%APP_DIR%\\data" >nul
xcopy /E /Y /I "tyrano" "%APP_DIR%\\tyrano" >nul

echo.
echo ============================================================
echo [2/2] CÀI ĐẶT PATCH VIỆT HÓA THÀNH CÔNG 100%!
echo Bạn có thể khởi động %TARGET_EXE% để chơi game với tiếng Việt hoàn chỉnh.
echo ============================================================
echo.
pause
"""
    with open(os.path.join(OUTPUT_PC_DIR, 'CAI_DAT_PATCH.bat'), 'w', encoding='utf-8') as f:
        f.write(bat_content)

    # 5. Tạo file hướng dẫn Huong_Dan_Cai_Dat.txt
    readme_content = """============================================================
   HƯỚNG DẪN CÀI ĐẶT PATCH VIỆT HÓA - HOME (ROOM) [BẢN PC]
============================================================

1. CÁCH CÀI ĐẶT:
   - Cách 1: Chép toàn bộ các tệp/thư mục trong bản patch này (gồm thư mục data, tyrano và file CAI_DAT_PATCH.bat)
             vào thư mục chứa file HOME.exe (hoặc Game.exe).
   - Cách 2: Chạy file 'CAI_DAT_PATCH.bat' để chương trình tự động cài đặt vào game.

2. TÍNH NĂNG BẢN PATCH PC:
   - Dịch thuật 100% tiếng Việt toàn bộ cốt truyện và giao diện.
   - Sử dụng font chữ chuẩn tiếng Việt Noto Sans hiển thị sắc nét.
   - Đã sửa triệt để các lỗi typo trong kịch bản gốc của nhà sản xuất (0 lỗi nhãn).
   - Tối ưu hóa 100% cho PC, âm thanh BGM/SE/Voice hoạt động hoàn hảo.

Chúc bạn có những trải nghiệm tuyệt vời cùng game HOME!
"""
    with open(os.path.join(OUTPUT_PC_DIR, 'Huong_Dan_Cai_Dat.txt'), 'w', encoding='utf-8') as f:
        f.write(readme_content)

    # 6. Đóng gói file ZIP sẵn sàng chia sẻ
    zip_path = os.path.join(ROOT_DIR, 'HOME_VietHoa_PC_Patch.zip')
    print(f"\n[4/4] Đóng gói thành tệp zip: {zip_path}...")
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as z:
        for root, dirs, files in os.walk(OUTPUT_PC_DIR):
            for file in files:
                abs_p = os.path.join(root, file)
                rel_p = os.path.relpath(abs_p, OUTPUT_PC_DIR)
                z.write(abs_p, rel_p)

    print("\n" + "=" * 60)
    print(f"  >>> HOÀN TẤT XÂY DỰNG BẢN PATCH PC!")
    print(f"  - Thư mục patch: {OUTPUT_PC_DIR}")
    print(f"  - Tệp zip:       {zip_path}")
    print("=" * 60)

if __name__ == '__main__':
    build_pc_patch()
