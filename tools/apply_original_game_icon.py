import os, sys, shutil
from PIL import Image
sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = r"E:\HOME_"
LAUNCHER_DIR = os.path.join(PROJECT_ROOT, "launcher")
RAW_ICON_3 = os.path.join(PROJECT_ROOT, "raw_icon_3.png")

print("=" * 65)
print("  🎨 ÁP DỤNG ICON GỐC 100% CỦA GAME VÀO TẤT CẢ BIỂU TƯỢNG VÀ FAVICON")
print("=" * 65)

im_orig = Image.open(RAW_ICON_3).convert("RGBA")
print(f"Ảnh icon gốc: {im_orig.size} {im_orig.mode}")

# 1. apple-touch-icon.png (512x512)
icon_512 = im_orig.resize((512, 512), Image.Resampling.LANCZOS)
icon_512.save(os.path.join(LAUNCHER_DIR, "apple-touch-icon.png"), "PNG")
icon_512.save(os.path.join(PROJECT_ROOT, "apple-touch-icon.png"), "PNG")
print("  [OK] Đã tạo apple-touch-icon.png (512x512)")

# 2. apple-touch-icon-180x180.png (180x180)
icon_180 = im_orig.resize((180, 180), Image.Resampling.LANCZOS)
icon_180.save(os.path.join(LAUNCHER_DIR, "apple-touch-icon-180x180.png"), "PNG")
print("  [OK] Đã tạo apple-touch-icon-180x180.png (180x180)")

# 3. icon-192.png (192x192)
icon_192 = im_orig.resize((192, 192), Image.Resampling.LANCZOS)
icon_192.save(os.path.join(LAUNCHER_DIR, "icon-192.png"), "PNG")
print("  [OK] Đã tạo icon-192.png (192x192)")

# 4. favicon.png (64x64)
icon_64 = im_orig.resize((64, 64), Image.Resampling.LANCZOS)
icon_64.save(os.path.join(LAUNCHER_DIR, "favicon.png"), "PNG")
print("  [OK] Đã tạo favicon.png (64x64)")

# 5. favicon.ico
fav_ico_launcher = os.path.join(LAUNCHER_DIR, "favicon.ico")
fav_ico_root = os.path.join(PROJECT_ROOT, "favicon.ico")
im_orig.save(fav_ico_launcher, format="ICO", sizes=[(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)])
shutil.copy2(fav_ico_launcher, fav_ico_root)
print("  [OK] Đã tạo favicon.ico chuẩn đa kích thước")

# Dọn các file raw_icon tạm
for i in range(4):
    p = os.path.join(PROJECT_ROOT, f"raw_icon_{i}.png")
    if os.path.exists(p): os.remove(p)

print("\n" + "=" * 65)
print("  🎉 HOÀN TẤT CẬP NHẬT BIỂU TƯỢNG GỐC 100% CỦA GAME!")
print("=" * 65)
