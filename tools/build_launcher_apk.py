import os, sys, shutil, subprocess
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path

PROJECT_ROOT = Path(r'E:\HOME_')
LAUNCHER_DIR = PROJECT_ROOT / 'launcher'
ANDROID_PROJ = PROJECT_ROOT / 'build-android-project'
ANDROID_PUBLIC = ANDROID_PROJ / 'android' / 'app' / 'src' / 'main' / 'assets' / 'public'
RELEASES_DIR = PROJECT_ROOT / 'build-releases' / 'releases'

print("=" * 65)
print("  🚀 BIÊN DỊCH ANDROID AUTO-DOWNLOAD LAUNCHER APK")
print("=" * 65)

# 1. Làm sạch và chép toàn bộ code Launcher vào Android Assets
if ANDROID_PUBLIC.exists():
    shutil.rmtree(ANDROID_PUBLIC)
ANDROID_PUBLIC.mkdir(parents=True, exist_ok=True)

for item in os.listdir(LAUNCHER_DIR):
    s = LAUNCHER_DIR / item
    d = ANDROID_PUBLIC / item
    if s.is_dir():
        shutil.copytree(s, d, dirs_exist_ok=True)
    else:
        shutil.copy2(s, d)

# 2. Biên dịch APK bằng Gradle
gradle_cmd = str(ANDROID_PROJ / 'android' / 'gradlew.bat')
env = os.environ.copy()
env['JAVA_HOME'] = r'C:\Users\Shimakaze\AppData\Local\Programs\Eclipse Adoptium\jdk-17.0.18.8-hotspot'
env['ANDROID_HOME'] = r'C:\Users\Shimakaze\AppData\Local\Android\Sdk'

print("  -> Đang chạy Gradle để build Launcher APK...")
res = subprocess.run([gradle_cmd, 'assembleDebug'], cwd=str(ANDROID_PROJ / 'android'), env=env, shell=True, capture_output=True, text=True)

if res.returncode == 0:
    apk_src = ANDROID_PROJ / 'android' / 'app' / 'build' / 'outputs' / 'apk' / 'debug' / 'app-debug.apk'
    apk_dst = RELEASES_DIR / 'HOME_Vietnamese_AutoUpdater_v1.0.apk'
    if apk_src.exists():
        shutil.copy2(apk_src, apk_dst)
        print(f"  🎉 [HOÀN TẤT] File APK Launcher: {apk_dst} ({apk_dst.stat().st_size / (1024*1024):.2f} MB)")
else:
    print(f"  [LƯU Ý] {res.stderr[:300]}")
