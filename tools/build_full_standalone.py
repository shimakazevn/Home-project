import os, sys, shutil, struct, json, time, subprocess
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path

PROJECT_ROOT = Path(r'E:\HOME_')
GAME_DIR = PROJECT_ROOT / 'Game'
ASAR_PATH = GAME_DIR / 'resources' / 'app.asar'
PATCH_DIR = PROJECT_ROOT / 'patch'
EXTRACTED_SCRIPTS = PROJECT_ROOT / 'extracted_scripts'
FULL_ASSETS_DIR = PROJECT_ROOT / 'full_web_assets'
RELEASE_DIR = PROJECT_ROOT / 'build-releases' / 'releases'

RELEASE_DIR.mkdir(parents=True, exist_ok=True)

print("=" * 65)
print("  🚀 TIẾN TRÌNH BUILD BẢN FULL STANDALONE (8.3 GB ĐẦY ĐỦ)")
print("=" * 65)

# BƯỚC 1: CHUẨN BỊ PATCH VÀ FONT
print("\n[BƯỚC 1/5] Đồng bộ Font, Patch và kịch bản Việt Hóa...")
subprocess.run([sys.executable, str(PROJECT_ROOT / 'tools' / 'setup_fonts.py')], check=True)
subprocess.run([sys.executable, str(PROJECT_ROOT / 'tools' / 'reimport_scenario.py')], check=True)

# BƯỚC 2: BUILD BẢN WINDOWS PC FULL STANDALONE (KHÔNG CẦN CÀI PATCH)
print("\n[BƯỚC 2/5] Đóng gói Windows PC Full Standalone (Chơi ngay)...")
pc_full_dir = PROJECT_ROOT / 'build-releases' / 'HOME_Vietnamese_PC_Full'
if pc_full_dir.exists():
    shutil.rmtree(pc_full_dir)
pc_full_dir.mkdir(parents=True, exist_ok=True)

# Sao chép toàn bộ thư mục Game
print("  -> Sao chép bộ cài gốc Game sang PC Standalone...")
for item in os.listdir(GAME_DIR):
    if item in ['HOME_sf.sav', 'HOME_tyrano_data.sav']: # Bỏ save cũ
        continue
    src_item = GAME_DIR / item
    dst_item = pc_full_dir / item
    if src_item.is_dir():
        shutil.copytree(src_item, dst_item, dirs_exist_ok=True)
    else:
        shutil.copy2(src_item, dst_item)

# Áp dụng patch vào resources/app của PC Full
app_dst = pc_full_dir / 'resources' / 'app'
os.makedirs(app_dst, exist_ok=True)
if EXTRACTED_SCRIPTS.exists():
    for item in os.listdir(EXTRACTED_SCRIPTS):
        s = EXTRACTED_SCRIPTS / item
        d = app_dst / item
        if s.is_dir():
            shutil.copytree(s, d, dirs_exist_ok=True)
        else:
            shutil.copy2(s, d)

if PATCH_DIR.exists():
    for root, dirs, files in os.walk(PATCH_DIR):
        rel = Path(root).relative_to(PATCH_DIR)
        t_root = app_dst / rel
        os.makedirs(t_root, exist_ok=True)
        for f in files:
            shutil.copy2(Path(root) / f, t_root / f)

# Tạo file hướng dẫn chơi PC
(pc_full_dir / "Huong_Dan_Choi_Game.txt").write_text(
    "============================================================\n"
    "   BẢN VIỆT HÓA FULL STANDALONE - HOME (ROOM) [RJ01556529]\n"
    "============================================================\n\n"
    "HƯỚNG DẪN CHƠI:\n"
    "1. Nhấp đúp vào file 'HOME.exe' để bắt đầu chơi ngay lập tức.\n"
    "2. Đây là bản Full hoàn chỉnh (8.3 GB), KHÔNG CẦN cài đặt thêm bất cứ patch nào.\n"
    "3. Game đã tích hợp sẵn Font tiếng Việt Noto Sans và tự động xuống dòng.\n\n"
    "Chúc bạn có những giây phút trải nghiệm tuyệt vời!\n",
    encoding='utf-8'
)
print(f"  [OK] Đã tạo thư mục Windows PC Full: {pc_full_dir}")

# BƯỚC 3: BÓC TÁCH TOÀN BỘ 8.03 GB TÀI NGUYÊN TỪ APP.ASAR CHO WEB/MOBILE
print("\n[BƯỚC 3/5] Bóc tách 8.03 GB tài nguyên gốc (Ảnh H-Scene, Voice, BGM) từ app.asar...")
t_start = time.time()
FULL_ASSETS_DIR.mkdir(parents=True, exist_ok=True)

with open(ASAR_PATH, 'rb') as f:
    f.seek(4)
    header_size = struct.unpack('<I', f.read(4))[0]
    f.seek(12)
    header_len = struct.unpack('<I', f.read(4))[0]
    header_json = f.read(header_len).decode('utf-8')
    header = json.loads(header_json)
    base_offset = 8 + header_size

def walk_files(tree, prefix=''):
    files = []
    for k, v in tree.get('files', {}).items():
        curr = f"{prefix}/{k}" if prefix else k
        if 'files' in v:
            files.extend(walk_files(v, curr))
        else:
            files.append((curr, v.get('size', 0), int(v.get('offset', 0))))
    return files

all_files = walk_files(header)
print(f"  -> Đang bóc tách {len(all_files)} files (8.03 GB)...")

with open(ASAR_PATH, 'rb') as asar_f:
    for idx, (rel_path, size, offset) in enumerate(all_files, 1):
        out_file = FULL_ASSETS_DIR / rel_path.replace('/', os.sep)
        # Bỏ qua nếu file đã tồn tại và đủ dung lượng để tăng tốc độ nếu chạy lại
        if out_file.exists() and out_file.stat().st_size == size:
            continue
        os.makedirs(out_file.parent, exist_ok=True)
        asar_f.seek(base_offset + offset)
        data = asar_f.read(size)
        with open(out_file, 'wb') as out_fp:
            out_fp.write(data)
        if idx % 500 == 0 or idx == len(all_files):
            print(f"     Đã giải nén: {idx}/{len(all_files)} files...")

# Ghi đè toàn bộ kịch bản Việt hóa, Font Noto Sans và CSS vào FULL_ASSETS_DIR
print("  -> Ghi đè kịch bản Việt hóa và Font chữ vào Full Assets...")
if EXTRACTED_SCRIPTS.exists():
    for item in os.listdir(EXTRACTED_SCRIPTS):
        s = EXTRACTED_SCRIPTS / item
        d = FULL_ASSETS_DIR / item
        if s.is_dir():
            shutil.copytree(s, d, dirs_exist_ok=True)
        else:
            shutil.copy2(s, d)

if PATCH_DIR.exists():
    for root, dirs, files in os.walk(PATCH_DIR):
        rel = Path(root).relative_to(PATCH_DIR)
        t_root = FULL_ASSETS_DIR / rel
        os.makedirs(t_root, exist_ok=True)
        for f in files:
            shutil.copy2(Path(root) / f, t_root / f)

print(f"  [OK] Đã hoàn tất bóc tách Full Assets ({time.time() - t_start:.2f}s) tại: {FULL_ASSETS_DIR}")

# BƯỚC 4: TẠO GÓI WEB/HTML5 & IOS FULL STANDALONE
print("\n[BƯỚC 4/5] Chuẩn bị bản Web/HTML5 & iOS Full Standalone...")
web_full_dir = PROJECT_ROOT / 'build-releases' / 'HOME_Vietnamese_Web_Full'
if web_full_dir.exists():
    shutil.rmtree(web_full_dir)
web_full_dir.mkdir(parents=True, exist_ok=True)

# Tạo launcher 1-click cho Web
launcher_bat = web_full_dir / "CHAY_GAME_WEB.bat"
launcher_bat.write_text(
    "@echo off\n"
    "chcp 65001 > nul\n"
    "title HOME - Vietnamese Full Web Player\n"
    "echo Đang khởi động máy chủ Web cục bộ cho game HOME Việt Hóa...\n"
    "start http://localhost:8080/index.html\n"
    "python -m http.server 8080 --directory \"%~dp0assets\"\n"
    "pause\n",
    encoding='utf-8'
)

# Tạo junction/copy sang web_full_dir/assets
web_assets = web_full_dir / "assets"
if web_assets.exists():
    shutil.rmtree(web_assets)
shutil.copytree(FULL_ASSETS_DIR, web_assets, dirs_exist_ok=True)
print(f"  [OK] Đã tạo bản Web HTML5 Full Standalone: {web_full_dir}")

# BƯỚC 5: BIÊN DỊCH BẢN ANDROID NATIVE APK FULL
print("\n[BƯỚC 5/5] Biên dịch Android Native APK Full...")
android_proj = PROJECT_ROOT / 'build-android-project'
android_dir = android_proj / 'android'
android_public = android_dir / 'app' / 'src' / 'main' / 'assets' / 'public'

if android_public.exists():
    shutil.rmtree(android_public)
android_public.mkdir(parents=True, exist_ok=True)

print(f"  -> Sao chép tài nguyên Full vào Android Assets...")
shutil.copytree(FULL_ASSETS_DIR, android_public, dirs_exist_ok=True)

# Build APK bằng Gradle
print("  -> Đang chạy Gradle Wrapper để build APK Full...")
gradle_cmd = str(android_dir / 'gradlew.bat')
env = os.environ.copy()
env['JAVA_HOME'] = r'C:\Users\Shimakaze\AppData\Local\Programs\Eclipse Adoptium\jdk-17.0.18.8-hotspot'
env['ANDROID_HOME'] = r'C:\Users\Shimakaze\AppData\Local\Android\Sdk'

res = subprocess.run([gradle_cmd, 'assembleDebug'], cwd=str(android_dir), env=env, shell=True, capture_output=True, text=True)
if res.returncode == 0:
    apk_src = android_dir / 'app' / 'build' / 'outputs' / 'apk' / 'debug' / 'app-debug.apk'
    apk_dest = RELEASE_DIR / 'HOME_Vietnamese_Full_v1.0.apk'
    if apk_src.exists():
        shutil.copy2(apk_src, apk_dest)
        apk_mb = apk_dest.stat().st_size / (1024 * 1024)
        print(f"  🎉 Biên dịch APK Full thành công: {apk_dest} ({apk_mb:.2f} MB)")
else:
    print(f"  [LƯU Ý] Gradle APK: {res.stderr[:300]}")

print("\n" + "=" * 65)
print("  🎉 HOÀN TẤT BUILD TOÀN BỘ CÁC BẢN FULL STANDALONE!")
print(f"  1. Windows PC Full: {pc_full_dir}")
print(f"  2. Web HTML5 Full:  {web_full_dir}")
print(f"  3. Android APK Full: {RELEASE_DIR / 'HOME_Vietnamese_Full_v1.0.apk'}")
print("=" * 65)
