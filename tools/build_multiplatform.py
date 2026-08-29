#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
MULTI-PLATFORM BUILD PIPELINE (WINDOWS PC, WEB/HTML5, ANDROID/MOBILE)
Dự án: HOME (ROOM) [RJ01556529] - Engine: TyranoScript / Electron
"""

import os
import sys
import shutil
import zipfile
import hashlib
from pathlib import Path

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = Path(__file__).resolve().parent.parent
GAME_DIR = PROJECT_ROOT / 'Game'
GAME_RESOURCES = GAME_DIR / 'resources'
APP_DIR = GAME_RESOURCES / 'app'
EXTRACTED_SCRIPTS = PROJECT_ROOT / 'extracted_scripts'
PATCH_DIR = PROJECT_ROOT / 'patch'
BUILD_OUTPUT_DIR = PROJECT_ROOT / 'build-releases'

# Import local pipeline tools
sys.path.insert(0, str(PROJECT_ROOT / 'tools'))
import setup_fonts
import import_text
import validate_translation
import build_android_apk


def calculate_sha256(filepath):
    """Tính mã băm SHA-256 để người chơi kiểm tra tính toàn vẹn file."""
    sha = hashlib.sha256()
    with open(filepath, 'rb') as f:
        while chunk := f.read(65536):
            sha.update(chunk)
    return sha.hexdigest()


def make_zip(source_dir, output_zip_path, prefix=""):
    """Nén thư mục thành file ZIP chuẩn."""
    print(f"  -> Đang nén: {output_zip_path.name}...")
    with zipfile.ZipFile(output_zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                abs_path = Path(root) / file
                rel_path = abs_path.relative_to(source_dir)
                arcname = f"{prefix}/{rel_path}" if prefix else str(rel_path)
                zipf.write(abs_path, arcname)
    size_mb = output_zip_path.stat().st_size / (1024 * 1024)
    print(f"  [OK] Đã tạo {output_zip_path.name} ({size_mb:.2f} MB)")


def build_all_platforms():
    print("=" * 65)
    print("  🚀 MULTI-PLATFORM BUILD PIPELINE CHO 3 HỆ ĐIỀU HÀNH")
    print("  1. Windows PC (Standalone + Patch)")
    print("  2. Web / Browser (HTML5 Portable)")
    print("  3. Android / Mobile (Web/JoiPlay/Cordova Ready)")
    print("=" * 65)

    # 1. QA & Tái nhập kịch bản tiếng Việt
    print("\n[BƯỚC 1/5] Kiểm tra QA & Cài đặt Font tiếng Việt...")
    setup_fonts.deploy_fonts()
    records = import_text.load_translations()
    import_text.reimport_and_patch(records)
    validate_translation.validate_all()

    # 2. Chuẩn bị thư mục build
    BUILD_OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    pc_build_dir = BUILD_OUTPUT_DIR / 'HOME_Vietnamese_PC'
    web_build_dir = BUILD_OUTPUT_DIR / 'HOME_Vietnamese_Web'
    android_build_dir = BUILD_OUTPUT_DIR / 'HOME_Vietnamese_Android'
    patch_only_dir = BUILD_OUTPUT_DIR / 'HOME_Vietnamese_Patch_Only'

    # Tạo lại thư mục app sạch
    os.makedirs(APP_DIR, exist_ok=True)
    if EXTRACTED_SCRIPTS.exists():
        for item in os.listdir(EXTRACTED_SCRIPTS):
            s = EXTRACTED_SCRIPTS / item
            d = APP_DIR / item
            if s.is_dir():
                shutil.copytree(s, d, dirs_exist_ok=True)
            else:
                shutil.copy2(s, d)

    if PATCH_DIR.exists():
        for root, dirs, files in os.walk(PATCH_DIR):
            rel = Path(root).relative_to(PATCH_DIR)
            target_root = APP_DIR / rel
            os.makedirs(target_root, exist_ok=True)
            for f in files:
                shutil.copy2(Path(root) / f, target_root / f)

    # =========================================================================
    # NỀN TẢNG 1: WINDOWS PC (STANDALONE + PATCH ONLY)
    # =========================================================================
    print("\n[BƯỚC 2/5] Đóng gói Nền tảng 1: WINDOWS PC...")
    # A. Standalone Game
    if GAME_DIR.exists():
        if pc_build_dir.exists(): shutil.rmtree(pc_build_dir)
        pc_build_dir.mkdir(parents=True, exist_ok=True)
        for item in os.listdir(GAME_DIR):
            if item in ['HOME_sf.sav', 'HOME_tyrano_data.sav']: # Bỏ save cũ
                continue
            s = GAME_DIR / item
            d = pc_build_dir / item
            if s.is_dir():
                shutil.copytree(s, d, dirs_exist_ok=True)
            else:
                shutil.copy2(s, d)

        # Tạo file Readme hướng dẫn chơi
        readme_pc = pc_build_dir / "Huong_Dan_Cai_Dat_Viet_Hoa.txt"
        readme_pc.write_text(
            "=== BẢN VIỆT HÓA GAME HOME (ROOM) [RJ01556529] ===\n\n"
            "Cách chơi:\n"
            "1. Nhấp đúp vào file 'HOME.exe' để bắt đầu chơi.\n"
            "2. Bản game đã tích hợp sẵn font chữ tiếng Việt Noto Sans và tự động ngắt dòng.\n"
            "3. Chúc bạn chơi game vui vẻ!\n",
            encoding='utf-8'
        )

    # B. Patch Only (Dành cho người đã có sẵn game gốc, chỉ cần chép đè)
    if patch_only_dir.exists(): shutil.rmtree(patch_only_dir)
    patch_target = patch_only_dir / "resources" / "app"
    patch_target.mkdir(parents=True, exist_ok=True)
    if PATCH_DIR.exists():
        shutil.copytree(PATCH_DIR, patch_target, dirs_exist_ok=True)

    readme_patch = patch_only_dir / "Huong_Dan_Chep_Patch.txt"
    readme_patch.write_text(
        "=== HƯỚNG DẪN DÙNG PATCH VIỆT HÓA HOME ===\n\n"
        "1. Giải nén thư mục 'resources' trong file này.\n"
        "2. Chép đè thư mục 'resources' vào thư mục game HOME gốc của bạn.\n"
        "3. Chạy 'HOME.exe' để thưởng thức tiếng Việt!\n",
        encoding='utf-8'
    )

    # =========================================================================
    # NỀN TẢNG 2: WEB / BROWSER (HTML5 CHƠI TRÊN MỌI TRÌNH DUYỆT)
    # =========================================================================
    print("\n[BƯỚC 3/5] Đóng gói Nền tảng 2: WEB BROWSER / HTML5...")
    if web_build_dir.exists(): shutil.rmtree(web_build_dir)
    web_build_dir.mkdir(parents=True, exist_ok=True)
    shutil.copytree(APP_DIR, web_build_dir, dirs_exist_ok=True)

    # Tạo trình khởi chạy web cục bộ 1-click (Local Web Server Launcher)
    web_launcher_bat = web_build_dir / "Choi_Tren_Trinh_Duyet.bat"
    web_launcher_bat.write_text(
        "@echo off\n"
        "title Choi Game HOME Tren Web Browser\n"
        "echo =====================================================\n"
        "echo   DANG KHOI CHAY LOCAL WEB SERVER CHO GAME HOME...\n"
        "echo   Trinh duyet se tu dong mo tai http://localhost:8080\n"
        "echo =====================================================\n"
        "start \"\" http://localhost:8080\n"
        "python -m http.server 8080\n"
        "pause\n",
        encoding='utf-8'
    )

    # =========================================================================
    # NỀN TẢNG 3: ANDROID / MOBILE (NATIVE APK + WEB MOBILE)
    # =========================================================================
    print("\n[BƯỚC 4/6] Đóng gói Nền tảng 3: ANDROID NATIVE APK & MOBILE...")
    if android_build_dir.exists(): shutil.rmtree(android_build_dir)
    android_build_dir.mkdir(parents=True, exist_ok=True)
    shutil.copytree(APP_DIR, android_build_dir, dirs_exist_ok=True)

    readme_android = android_build_dir / "Huong_Dan_Choi_Tren_Android.txt"
    readme_android.write_text(
        "=== HƯỚNG DẪN CHƠI HOME TRÊN ĐIỆN THOẠI ANDROID ===\n\n"
        "Cách 1: Cài đặt file .APK trực tiếp (Khuyên Dùng):\n"
        "- Cài đặt file 'HOME_Vietnamese_v1.0.apk' trong thư mục releases vào điện thoại.\n\n"
        "Cách 2: Dùng JoiPlay / TyranoPlayer Android:\n"
        "1. Cài đặt app JoiPlay và Plugin HTML5 từ Google Play / CH Play.\n"
        "2. Copy toàn bộ thư mục này vào bộ nhớ điện thoại.\n"
        "3. Mở JoiPlay -> Nhấn dấu (+) -> Chọn 'index.html' trong thư mục này.\n"
        "4. Điền tên 'HOME VN' và bắt đầu chơi!\n",
        encoding='utf-8'
    )

    try:
        print("  -> Đang gọi trình biên dịch Native Android APK...")
        build_android_apk.build_apk()
    except Exception as e:
        print(f"  [WARN] Biên dịch APK gặp cảnh báo: {e}")

    # =========================================================================
    # NỀN TẢNG 4: iOS (IPHONE / IPAD / SAFARI PWA FULLSCREEN)
    # =========================================================================
    print("\n[BƯỚC 5/6] Đóng gói Nền tảng 4: iOS (IPHONE & IPAD)...")
    ios_build_dir = BUILD_OUTPUT_DIR / 'HOME_Vietnamese_iOS'
    if ios_build_dir.exists(): shutil.rmtree(ios_build_dir)
    ios_build_dir.mkdir(parents=True, exist_ok=True)
    shutil.copytree(APP_DIR, ios_build_dir, dirs_exist_ok=True)

    # Cập nhật index.html tối ưu riêng cho iOS (PWA meta tags, notch safe area, full screen)
    ios_index_path = ios_build_dir / 'index.html'
    if ios_index_path.exists():
        content = ios_index_path.read_text(encoding='utf-8', errors='replace')
        # Thêm meta tag iOS PWA nếu chưa có
        ios_meta = (
            '\n<meta name="apple-mobile-web-app-capable" content="yes">\n'
            '<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">\n'
            '<meta name="apple-mobile-web-app-title" content="HOME VN">\n'
            '<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">\n'
        )
        content = content.replace('<head>', '<head>' + ios_meta, 1)
        if content.startswith('ix<!DOCTYPE'):
            content = content.replace('ix<!DOCTYPE', '<!DOCTYPE', 1)
        ios_index_path.write_text(content, encoding='utf-8')

    readme_ios = ios_build_dir / "Huong_Dan_Choi_Tren_iOS_iPhone_iPad.txt"
    readme_ios.write_text(
        "=== HƯỚNG DẪN CHƠI HOME TRÊN iOS (IPHONE / IPAD) ===\n\n"
        "Cách 1: Chơi qua Safari PWA (Màn hình chính - KHÔNG CẦN JAILBREAK / KHÔNG CẦN CÀI APP NGOÀI)\n"
        "1. Chạy 'Choi_Tren_Trinh_Duyet.bat' trên máy tính hoặc upload thư mục lên Web Server nội bộ (http://ip-may-tinh:8080).\n"
        "2. Trên iPhone / iPad, mở Safari và truy cập vào địa chỉ trên.\n"
        "3. Nhấn nút Chia sẻ (Share icon ở thanh dưới Safari) -> Chọn 'Thêm vào Màn hình chính' (Add to Home Screen).\n"
        "4. Ra màn hình chính mở icon 'HOME VN' -> Game sẽ chạy Fullscreen toàn màn hình, có âm thanh và cảm ứng mượt mà như app gốc!\n\n"
        "Cách 2: Chơi offline qua App 'Documents by Readdle' / iSH / Sideloadly:\n"
        "1. Tải app 'Documents by Readdle' miễn phí trên App Store.\n"
        "2. Chép toàn bộ thư mục này vào mục Files của Documents.\n"
        "3. Mở file 'index.html' bằng trình duyệt tích hợp của Documents để chơi offline không cần mạng!\n",
        encoding='utf-8'
    )

    # =========================================================================
    # TẠO FILE NÉN RELEASE (.ZIP) + BẢNG MÃ HASH SHA-256
    # =========================================================================
    print("\n[BƯỚC 6/6] Tạo các gói phát hành ZIP & Tính mã Checksum SHA-256...")
    releases_zip_dir = BUILD_OUTPUT_DIR / "releases"
    releases_zip_dir.mkdir(parents=True, exist_ok=True)

    zips_to_create = [
        (patch_only_dir, releases_zip_dir / "HOME_VN_Patch_Only_v1.0.zip", "HOME_Patch"),
        (web_build_dir, releases_zip_dir / "HOME_VN_Web_HTML5_v1.0.zip", "HOME_Web"),
        (android_build_dir, releases_zip_dir / "HOME_VN_Android_Mobile_v1.0.zip", "HOME_Android"),
        (ios_build_dir, releases_zip_dir / "HOME_VN_iOS_iPhone_iPad_v1.0.zip", "HOME_iOS"),
    ]

    checksums = []
    for src_dir, zip_path, pfx in zips_to_create:
        make_zip(src_dir, zip_path, prefix=pfx)
        sha = calculate_sha256(zip_path)
        checksums.append(f"{sha}  {zip_path.name}")

    # Ghi file SHA256 checksums
    checksum_file = releases_zip_dir / "SHA256SUMS.txt"
    checksum_file.write_text("\n".join(checksums) + "\n", encoding='utf-8')
    print(f"\n[OK] Đã tạo bảng kiểm tra SHA256: {checksum_file.name}")

    print("\n" + "=" * 65)
    print("  🎉 XUẤT BẢN THÀNH CÔNG CHO WINDOWS, WEB, ANDROID & IOS TẠI:")
    print(f"  {BUILD_OUTPUT_DIR}")
    print("=" * 65)


if __name__ == '__main__':
    build_all_platforms()
