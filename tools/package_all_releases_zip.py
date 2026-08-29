import os, sys, shutil, zipfile, time, hashlib
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path

PROJECT_ROOT = Path(r'E:\HOME_')
BUILD_DIR = PROJECT_ROOT / 'build-releases'
RELEASES_DIR = BUILD_DIR / 'releases'
PC_FULL_DIR = BUILD_DIR / 'HOME_Vietnamese_PC_Full'
ANDROID_FULL_DIR = BUILD_DIR / 'HOME_Vietnamese_Android_Full'
IOS_IPA_PATH = RELEASES_DIR / 'HOME_Vietnamese_v1.0.ipa'

RELEASES_DIR.mkdir(parents=True, exist_ok=True)

print("=" * 65)
print("  🚀 TẠO ĐẦY ĐỦ TRỌN GÓI 3 FILE PHÁT HÀNH FULL STANDALONE")
print("=" * 65)

# 1. ĐÓNG GÓI BẢN PC FULL THÀNH FILE .ZIP (8.19 GB)
pc_zip_path = RELEASES_DIR / 'HOME_Vietnamese_v1.0_PC.zip'
print(f"\n[1/3] Đang nén file PC Full: {pc_zip_path}...")
t0 = time.time()
with zipfile.ZipFile(pc_zip_path, 'w', zipfile.ZIP_DEFLATED, compresslevel=1) as zipf:
    for root, dirs, files in os.walk(PC_FULL_DIR):
        for file in files:
            full_path = Path(root) / file
            rel_path = Path('HOME_Vietnamese_PC') / full_path.relative_to(PC_FULL_DIR)
            zipf.write(full_path, rel_path)
print(f"  🎉 [HOÀN TẤT PC] {pc_zip_path} ({pc_zip_path.stat().st_size / (1024**3):.2f} GB) - {time.time() - t0:.2f}s")

# 2. ĐÓNG GÓI BẢN ANDROID FULL THÀNH FILE .ZIP (KÈM APK VÀ 8GB GAME DATA)
print("\n[2/3] Đang hoàn thiện trọn bộ Android Full (APK + Game Data 8GB)...")
apk_src = RELEASES_DIR / 'HOME_Vietnamese_v1.0.apk'
if apk_src.exists():
    shutil.copy2(apk_src, ANDROID_FULL_DIR / 'HOME_Vietnamese_v1.0.apk')

android_zip_path = RELEASES_DIR / 'HOME_Vietnamese_v1.0_Android.zip'
print(f"  -> Đang nén file Android Full: {android_zip_path}...")
t0 = time.time()
with zipfile.ZipFile(android_zip_path, 'w', zipfile.ZIP_DEFLATED, compresslevel=1) as zipf:
    for root, dirs, files in os.walk(ANDROID_FULL_DIR):
        for file in files:
            full_path = Path(root) / file
            rel_path = Path('HOME_Vietnamese_Android') / full_path.relative_to(ANDROID_FULL_DIR)
            zipf.write(full_path, rel_path)
print(f"  🎉 [HOÀN TẤT ANDROID] {android_zip_path} ({android_zip_path.stat().st_size / (1024**3):.2f} GB) - {time.time() - t0:.2f}s")

# 3. KIỂM TRA FILE IOS .IPA (7.98 GB)
print(f"\n[3/3] Kiểm tra file iOS Full IPA: {IOS_IPA_PATH}...")
if IOS_IPA_PATH.exists():
    print(f"  🎉 [HOÀN TẤT IOS] {IOS_IPA_PATH} ({IOS_IPA_PATH.stat().st_size / (1024**3):.2f} GB)")

# 4. TẠO BẢNG CHECKSUM SHA256
print("\n[4/4] Đang tạo bảng mã kiểm tra SHA256...")
sha256_file = RELEASES_DIR / "SHA256SUMS.txt"
lines = []
for f in [pc_zip_path, android_zip_path, IOS_IPA_PATH, apk_src]:
    if f.exists():
        h = hashlib.sha256()
        with open(f, 'rb') as fp:
            while chunk := fp.read(1024 * 1024 * 8):
                h.update(chunk)
        lines.append(f"{h.hexdigest()}  {f.name}")
        print(f"  SHA256: {f.name} -> {h.hexdigest()[:16]}...")

sha256_file.write_text('\n'.join(lines) + '\n', encoding='utf-8')

print("\n" + "=" * 65)
print("  🎉 HOÀN TẤT ĐÓNG GÓI 3 FILE PHÁT HÀNH FULL TẠI:")
print(f"  📁 {RELEASES_DIR}")
print("=" * 65)
