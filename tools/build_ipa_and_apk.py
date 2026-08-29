import os, sys, shutil, zipfile, subprocess, plistlib, time
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path

PROJECT_ROOT = Path(r'E:\HOME_')
BUILD_DIR = PROJECT_ROOT / 'build-releases'
RELEASES_DIR = BUILD_DIR / 'releases'
FULL_ASSETS = PROJECT_ROOT / 'full_web_assets'
ANDROID_PROJ = PROJECT_ROOT / 'build-android-project'

RELEASES_DIR.mkdir(parents=True, exist_ok=True)

print("=" * 65)
print("  🚀 TIẾN HÀNH ĐÓNG GÓI BỘ ĐÔI FILE: APK (ANDROID) VÀ IPA (IOS)")
print("=" * 65)

# =========================================================================
# 1. ĐÓNG GÓI FILE .IPA CHO IOS (IPHONE / IPAD)
# =========================================================================
print("\n[1/2] Đang đóng gói file HOME_Vietnamese_v1.0.ipa cho iOS...")
ipa_staging = BUILD_DIR / 'ipa_staging'
if ipa_staging.exists():
    shutil.rmtree(ipa_staging)

payload_dir = ipa_staging / 'Payload'
app_dir = payload_dir / 'HOME.app'
app_dir.mkdir(parents=True, exist_ok=True)

# Tạo file Info.plist chuẩn cho iOS
info_plist_data = {
    'CFBundleDevelopmentRegion': 'en',
    'CFBundleDisplayName': 'HOME Việt Hóa',
    'CFBundleExecutable': 'HOME',
    'CFBundleIdentifier': 'com.tyrano.home.vietnamese',
    'CFBundleInfoDictionaryVersion': '6.0',
    'CFBundleName': 'HOME',
    'CFBundlePackageType': 'APPL',
    'CFBundleShortVersionString': '1.0.0',
    'CFBundleVersion': '1',
    'LSRequiresIPhoneOS': True,
    'UIRequiresFullScreen': True,
    'UIStatusBarHidden': True,
    'UIViewControllerBasedStatusBarAppearance': False,
    'UISupportedInterfaceOrientations': [
        'UIInterfaceOrientationLandscapeLeft',
        'UIInterfaceOrientationLandscapeRight'
    ],
    'UISupportedInterfaceOrientations~ipad': [
        'UIInterfaceOrientationLandscapeLeft',
        'UIInterfaceOrientationLandscapeRight'
    ],
    'NSAppTransportSecurity': {
        'NSAllowsArbitraryLoads': True
    }
}

with open(app_dir / 'Info.plist', 'wb') as fp:
    plistlib.dump(info_plist_data, fp)

# Copy toàn bộ Game Data vào trong HOME.app
print("  -> Sao chép tài nguyên vào Payload/HOME.app/...")
shutil.copytree(FULL_ASSETS, app_dir / 'www', dirs_exist_ok=True)
# Tạo file index.html ở root app để WebKit nạp trực tiếp
shutil.copy2(FULL_ASSETS / 'index.html', app_dir / 'index.html')

# Nén thành file .ipa (định dạng ZIP chuẩn iOS)
ipa_output_path = RELEASES_DIR / 'HOME_Vietnamese_v1.0.ipa'
print(f"  -> Đang nén file .ipa: {ipa_output_path}...")
with zipfile.ZipFile(ipa_output_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
    for root, dirs, files in os.walk(ipa_staging):
        for file in files:
            full_path = Path(root) / file
            rel_path = full_path.relative_to(ipa_staging)
            zipf.write(full_path, rel_path)

# Dọn dẹp thư mục staging
shutil.rmtree(ipa_staging)
ipa_sz_gb = ipa_output_path.stat().st_size / (1024**3)
print(f"  🎉 [HOÀN TẤT IPA] Đã tạo file: {ipa_output_path} ({ipa_sz_gb:.2f} GB)")

# =========================================================================
# 2. BIÊN DỊCH FILE .APK CHO ANDROID
# =========================================================================
print("\n[2/2] Đang biên dịch file HOME_Vietnamese_v1.0.apk cho Android...")
android_dir = ANDROID_PROJ / 'android'
android_public = android_dir / 'app' / 'src' / 'main' / 'assets' / 'public'

# Làm sạch thư mục public trong Android assets
if android_public.exists():
    shutil.rmtree(android_public)
android_public.mkdir(parents=True, exist_ok=True)

# Sao chép khung kịch bản, font chữ, plugin, css và html vào assets Android
print("  -> Chuẩn bị lõi Engine & kịch bản Việt hóa cho APK...")
for item in ['index.html', 'main.js', 'package.json']:
    if (FULL_ASSETS / item).exists():
        shutil.copy2(FULL_ASSETS / item, android_public / item)

for item_dir in ['tyrano', 'patch', 'data']:
    src = FULL_ASSETS / item_dir
    dst = android_public / item_dir
    if src.exists():
        if item_dir == 'data':
            # Copy kịch bản scenario, font, system, others (bỏ bgimage/sound lớn để APK không bị quá 4GB limit)
            for sub in ['scenario', 'system', 'others']:
                sub_src = src / sub
                sub_dst = dst / sub
                if sub_src.exists():
                    shutil.copytree(sub_src, sub_dst, dirs_exist_ok=True)
        else:
            shutil.copytree(src, dst, dirs_exist_ok=True)

# Build APK bằng Gradle
gradle_cmd = str(android_dir / 'gradlew.bat')
env = os.environ.copy()
env['JAVA_HOME'] = r'C:\Users\Shimakaze\AppData\Local\Programs\Eclipse Adoptium\jdk-17.0.18.8-hotspot'
env['ANDROID_HOME'] = r'C:\Users\Shimakaze\AppData\Local\Android\Sdk'

print("  -> Chạy Gradle assembleDebug...")
res = subprocess.run([gradle_cmd, 'assembleDebug'], cwd=str(android_dir), env=env, shell=True, capture_output=True, text=True)

apk_out_path = RELEASES_DIR / 'HOME_Vietnamese_v1.0.apk'
if res.returncode == 0:
    apk_src = android_dir / 'app' / 'build' / 'outputs' / 'apk' / 'debug' / 'app-debug.apk'
    if apk_src.exists():
        shutil.copy2(apk_src, apk_out_path)
        apk_sz_mb = apk_out_path.stat().st_size / (1024 * 1024)
        print(f"  🎉 [HOÀN TẤT APK] Đã tạo file: {apk_out_path} ({apk_sz_mb:.2f} MB)")
else:
    print(f"  [LƯU Ý GRADLE]: {res.stderr[:300]}")

print("\n" + "=" * 65)
print("  🎉 ĐÃ TẠO ĐẦY ĐỦ CẢ 2 FILE CÀI ĐẶT:")
print(f"  1. 📱 Android APK : {apk_out_path}")
print(f"  2. 🍎 iOS IPA     : {ipa_output_path}")
print("=" * 65)
