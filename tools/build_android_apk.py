#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
ANDROID APK BUILDER — TỰ ĐỘNG BIÊN DỊCH BẢN GAME THÀNH FILE .APK CHO ANDROID
Dự án: HOME (ROOM) [RJ01556529] - Engine: TyranoScript / Capacitor Native WebView
"""

import os
import sys
import shutil
import subprocess
from pathlib import Path

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = Path(__file__).resolve().parent.parent
TOOLS_DIR = PROJECT_ROOT / 'tools'
BUILD_OUTPUT_DIR = PROJECT_ROOT / 'build-releases'
RELEASES_DIR = BUILD_OUTPUT_DIR / 'releases'
ANDROID_PROJECT_DIR = PROJECT_ROOT / 'build-android-project'
EXTRACTED_SCRIPTS = PROJECT_ROOT / 'extracted_scripts'
PATCH_DIR = PROJECT_ROOT / 'patch'
ANDROID_SDK_PATH = Path(r"C:\Users\Shimakaze\AppData\Local\Android\Sdk")

# Import local tools
sys.path.insert(0, str(TOOLS_DIR))
import setup_fonts
import import_text
import validate_translation


def run_command_strict(cmd, cwd=None, env=None):
    """Chạy lệnh terminal với kiểm tra lỗi nghiêm ngặt."""
    print(f"  [RUN] {cmd}")
    res = subprocess.run(
        cmd,
        shell=True,
        cwd=cwd,
        env=env,
        capture_output=True,
        text=True,
        encoding='utf-8',
        errors='replace'
    )
    if res.returncode != 0:
        print(f"  [LỖI STDOUT] {res.stdout}")
        print(f"  [LỖI STDERR] {res.stderr}")
        raise RuntimeError(f"Lệnh thất bại (Exit code {res.returncode}): {cmd}")
    return res.stdout


def build_apk():
    print("=" * 65)
    print("  🤖 ANDROID APK NATIVE BUILDER (CAPACITOR + GRADLE)")
    print("=" * 65)

    # 1. Kiểm tra Android SDK
    if not ANDROID_SDK_PATH.exists():
        print(f"[LỖI] Không tìm thấy Android SDK tại: {ANDROID_SDK_PATH}")
        sys.exit(1)
    print(f"[OK] Android SDK: {ANDROID_SDK_PATH}")

    # 2. QA & Cài đặt Font tiếng Việt
    print("\n[BƯỚC 1/5] Kiểm tra QA & Chuẩn bị kịch bản tiếng Việt...")
    setup_fonts.deploy_fonts()
    records = import_text.load_translations()
    import_text.reimport_and_patch(records)
    validate_translation.validate_all()

    # 3. Chuẩn bị thư mục Web Assets (www)
    print("\n[BƯỚC 2/5] Tạo thư mục Web Assets sạch...")
    www_dir = ANDROID_PROJECT_DIR / 'www'
    if www_dir.exists(): shutil.rmtree(www_dir)
    www_dir.mkdir(parents=True, exist_ok=True)

    if EXTRACTED_SCRIPTS.exists():
        for item in os.listdir(EXTRACTED_SCRIPTS):
            s = EXTRACTED_SCRIPTS / item
            d = www_dir / item
            if s.is_dir():
                shutil.copytree(s, d, dirs_exist_ok=True)
            else:
                shutil.copy2(s, d)

    if PATCH_DIR.exists():
        for root, dirs, files in os.walk(PATCH_DIR):
            rel = Path(root).relative_to(PATCH_DIR)
            target_root = www_dir / rel
            os.makedirs(target_root, exist_ok=True)
            for f in files:
                shutil.copy2(Path(root) / f, target_root / f)

    # Cập nhật index.html chuẩn bị cho Android WebView (khử lỗi doctype và kích hoạt touch)
    index_file = www_dir / 'index.html'
    if index_file.exists():
        txt = index_file.read_text(encoding='utf-8', errors='replace')
        if txt.startswith('ix<!DOCTYPE'):
            txt = txt.replace('ix<!DOCTYPE', '<!DOCTYPE', 1)
        index_file.write_text(txt, encoding='utf-8')

    # 4. Tạo hoặc cấu hình dự án Capacitor Android
    print("\n[BƯỚC 3/5] Khởi tạo dự án Android Native qua Capacitor...")
    package_json = ANDROID_PROJECT_DIR / 'package.json'
    if not package_json.exists():
        pkg_content = {
            "name": "home-vietnamese-apk",
            "version": "1.0.0",
            "private": True,
            "dependencies": {
                "@capacitor/android": "^7.0.0",
                "@capacitor/core": "^7.0.0"
            },
            "devDependencies": {
                "@capacitor/cli": "^7.0.0"
            }
        }
        import json
        with open(package_json, 'w', encoding='utf-8') as f:
            json.dump(pkg_content, f, indent=2)

        print("  -> Đang cài đặt thư viện Capacitor Android...")
        run_command_strict("npm install", cwd=ANDROID_PROJECT_DIR)

    cap_config = ANDROID_PROJECT_DIR / 'capacitor.config.json'
    cap_cfg_data = {
        "appId": "com.sorarevo.home.vn",
        "appName": "HOME VN",
        "webDir": "www",
        "android": {
            "allowMixedContent": True,
            "captureInput": True,
            "webContentsDebuggingEnabled": False
        },
        "server": {
            "androidScheme": "https",
            "cleartext": True
        }
    }
    import json
    with open(cap_config, 'w', encoding='utf-8') as f:
        json.dump(cap_cfg_data, f, indent=2)

    android_dir = ANDROID_PROJECT_DIR / 'android'
    if not android_dir.exists():
        print("  -> Đang thêm nền tảng Android (cap add android)...")
        run_command_strict("npx cap add android", cwd=ANDROID_PROJECT_DIR)
    else:
        print("  -> Đồng bộ tài nguyên Web sang Android (cap sync android)...")
        run_command_strict("npx cap sync android", cwd=ANDROID_PROJECT_DIR)

    # 5. Cấu hình local.properties với đường dẫn Android SDK
    print("\n[BƯỚC 4/5] Cấu hình SDK & Màn hình ngang Fullscreen...")
    local_props = android_dir / 'local.properties'
    sdk_escaped = str(ANDROID_SDK_PATH).replace('\\', '/')
    local_props.write_text(f"sdk.dir={sdk_escaped}\n", encoding='utf-8')

    # Khóa màn hình ngang (Landscape) trong AndroidManifest.xml
    manifest_path = android_dir / 'app' / 'src' / 'main' / 'AndroidManifest.xml'
    if manifest_path.exists():
        manifest_content = manifest_path.read_text(encoding='utf-8')
        if 'android:screenOrientation=' not in manifest_content:
            manifest_content = manifest_content.replace(
                '<activity',
                '<activity android:screenOrientation="sensorLandscape"',
                1
            )
            manifest_path.write_text(manifest_content, encoding='utf-8')

    # Đảm bảo tương thích Java 17 cho Gradle
    for r, dirs, files in os.walk(ANDROID_PROJECT_DIR):
        for f in files:
            if f.endswith('.gradle'):
                p = Path(r) / f
                try:
                    c = p.read_text(encoding='utf-8')
                    if 'JavaVersion.VERSION_21' in c:
                        p.write_text(c.replace('JavaVersion.VERSION_21', 'JavaVersion.VERSION_17'), encoding='utf-8')
                except Exception:
                    pass

    # 6. Biên dịch APK bằng Gradle Wrapper
    print("\n[BƯỚC 5/5] Biên dịch APK bằng Gradle (assembleDebug)...")
    gradlew_cmd = "gradlew.bat assembleDebug" if os.name == 'nt' else "./gradlew assembleDebug"
    
    # Thiết lập biến môi trường JAVA_HOME & ANDROID_HOME
    custom_env = os.environ.copy()
    custom_env['ANDROID_HOME'] = str(ANDROID_SDK_PATH)
    custom_env['ANDROID_SDK_ROOT'] = str(ANDROID_SDK_PATH)

    print("  -> Đang chạy Gradle Wrapper...")
    run_command_strict(gradlew_cmd, cwd=android_dir, env=custom_env)

    # 7. Thu thập file APK xuất xưởng
    apk_src = android_dir / 'app' / 'build' / 'outputs' / 'apk' / 'debug' / 'app-debug.apk'
    if not apk_src.exists():
        print(f"[LỖI] Không tìm thấy file APK sau khi build tại: {apk_src}")
        sys.exit(1)

    RELEASES_DIR.mkdir(parents=True, exist_ok=True)
    apk_dst = RELEASES_DIR / 'HOME_Vietnamese_v1.0.apk'
    shutil.copy2(apk_src, apk_dst)
    apk_size_mb = apk_dst.stat().st_size / (1024 * 1024)

    print("\n" + "=" * 65)
    print("  🎉 BIÊN DỊCH FILE APK THÀNH CÔNG RỰC RỠ!")
    print(f"  📁 File APK: {apk_dst}")
    print(f"  📦 Dung lượng: {apk_size_mb:.2f} MB")
    print("  📱 Bạn có thể chép thẳng file .APK này vào điện thoại Android để cài đặt!")
    print("=" * 65)


if __name__ == '__main__':
    build_apk()
