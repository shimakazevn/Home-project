import os, sys, shutil
from PIL import Image
sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = r"E:\HOME_"
LAUNCHER_DIR = os.path.join(PROJECT_ROOT, "launcher")
ORIG_ICON = os.path.join(PROJECT_ROOT, "orig_icon_4.png")

print("=" * 65)
print("  🎨 TRIỂN KHAI ICON GỐC CHÍNH XÁC 100% TỪ HOME.EXE VÀO TOÀN HỆ THỐNG")
print("=" * 65)

im = Image.open(ORIG_ICON).convert("RGBA")
print(f"Ảnh icon gốc: {im.size} {im.mode}")

# 1. apple-touch-icon.png (512x512)
icon_512 = im.resize((512, 512), Image.Resampling.LANCZOS)
icon_512.save(os.path.join(LAUNCHER_DIR, "apple-touch-icon.png"), "PNG")
icon_512.save(os.path.join(PROJECT_ROOT, "apple-touch-icon.png"), "PNG")
print("  [OK] Đã tạo apple-touch-icon.png (512x512)")

# 2. apple-touch-icon-180x180.png (180x180)
icon_180 = im.resize((180, 180), Image.Resampling.LANCZOS)
icon_180.save(os.path.join(LAUNCHER_DIR, "apple-touch-icon-180x180.png"), "PNG")
print("  [OK] Đã tạo apple-touch-icon-180x180.png (180x180)")

# 3. icon-192.png (192x192)
icon_192 = im.resize((192, 192), Image.Resampling.LANCZOS)
icon_192.save(os.path.join(LAUNCHER_DIR, "icon-192.png"), "PNG")
print("  [OK] Đã tạo icon-192.png (192x192)")

# 4. favicon.png (64x64)
icon_64 = im.resize((64, 64), Image.Resampling.LANCZOS)
icon_64.save(os.path.join(LAUNCHER_DIR, "favicon.png"), "PNG")
print("  [OK] Đã tạo favicon.png (64x64)")

# 5. favicon.ico
fav_ico_launcher = os.path.join(LAUNCHER_DIR, "favicon.ico")
fav_ico_root = os.path.join(PROJECT_ROOT, "favicon.ico")
im.save(fav_ico_launcher, format="ICO", sizes=[(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)])
shutil.copy2(fav_ico_launcher, fav_ico_root)
print("  [OK] Đã tạo favicon.ico chuẩn đa kích thước")

# 6. Cập nhật icon cho Android APK (mipmap)
android_res = os.path.join(PROJECT_ROOT, "build-android-project", "android", "app", "src", "main", "res")
if os.path.exists(android_res):
    densities = {
        "mipmap-mdpi": 48,
        "mipmap-hdpi": 72,
        "mipmap-xhdpi": 96,
        "mipmap-xxhdpi": 144,
        "mipmap-xxxhdpi": 192
    }
    for folder, size in densities.items():
        fdir = os.path.join(android_res, folder)
        os.makedirs(fdir, exist_ok=True)
        r_im = im.resize((size, size), Image.Resampling.LANCZOS)
        r_im.save(os.path.join(fdir, "ic_launcher.png"), "PNG")
        r_im.save(os.path.join(fdir, "ic_launcher_round.png"), "PNG")
        r_im.save(os.path.join(fdir, "ic_launcher_foreground.png"), "PNG")
    print("  [OK] Đã cập nhật toàn bộ icon mipmap Android chuẩn sắc nét!")

# Dọn dẹp các file tạm
for i in range(1, 5):
    p = os.path.join(PROJECT_ROOT, f"orig_icon_{i}.png")
    if os.path.exists(p): os.remove(p)

shutil.rmtree(os.path.join(PROJECT_ROOT, "original_exe_temp"), ignore_errors=True)
shutil.rmtree(os.path.join(PROJECT_ROOT, "extracted_exe_resources"), ignore_errors=True)

print("\n" + "=" * 65)
print("  🎉 HOÀN TẤT ĐỒNG BỘ ICON CHÍNH XÁC TỪ FILE EXE CỦA GAME!")
print("=" * 65)
