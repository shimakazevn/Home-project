import os, sys, shutil
from PIL import Image
sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = r"E:\HOME_"
LAUNCHER_DIR = os.path.join(PROJECT_ROOT, "launcher")
TITLE_BG = os.path.join(PROJECT_ROOT, "full_web_assets", "data", "bgimage", "title_bg.png")
TITLE_LOGO = os.path.join(PROJECT_ROOT, "full_web_assets", "data", "fgimage", "default", "title_logo.png")

print("=" * 65)
print("  🎨 THIẾT KẾ BIỂU TƯỢNG GAME CHÍNH THỨC (HEROINE + LOGO GỐC)")
print("=" * 65)

bg = Image.open(TITLE_BG).convert("RGBA")
logo = Image.open(TITLE_LOGO).convert("RGBA")

# 1. Cắt khung hình Nagi chính diện đẹp nhất (512x512)
# Center Nagi: x từ 384 đến 896, y từ 0 đến 512
crop_box = (384, 0, 896, 512)
icon_art = bg.crop(crop_box).resize((512, 512), Image.Resampling.LANCZOS)

# 2. Thu nhỏ logo HOME gốc và đặt cân đối ở góc dưới icon
logo_w = 400
logo_h = int(logo.height * (logo_w / logo.width))
logo_resized = logo.resize((logo_w, logo_h), Image.Resampling.LANCZOS)

# Đặt logo ở phần dưới (y = 512 - logo_h - 20)
logo_x = (512 - logo_w) // 2
logo_y = 512 - logo_h - 15

# Tạo một lớp gradient đổ bóng nhẹ dưới logo để nổi bật
shadow = Image.new("RGBA", (512, 512), (0, 0, 0, 0))
# Dán logo
icon_art.paste(logo_resized, (logo_x, logo_y), logo_resized)

# 3. Xuất tất cả các icon
# apple-touch-icon 512x512
out_512 = os.path.join(LAUNCHER_DIR, "apple-touch-icon.png")
icon_art.save(out_512, "PNG")
icon_art.save(os.path.join(PROJECT_ROOT, "apple-touch-icon.png"), "PNG")
print(f"  [OK] Đã tạo: {out_512} (512x512)")

# apple-touch-icon 180x180
icon_180 = icon_art.resize((180, 180), Image.Resampling.LANCZOS)
out_180 = os.path.join(LAUNCHER_DIR, "apple-touch-icon-180x180.png")
icon_180.save(out_180, "PNG")
print(f"  [OK] Đã tạo: {out_180} (180x180)")

# icon-192.png
icon_192 = icon_art.resize((192, 192), Image.Resampling.LANCZOS)
out_192 = os.path.join(LAUNCHER_DIR, "icon-192.png")
icon_192.save(out_192, "PNG")
print(f"  [OK] Đã tạo: {out_192} (192x192)")

# favicon.png
icon_64 = icon_art.resize((64, 64), Image.Resampling.LANCZOS)
out_64 = os.path.join(LAUNCHER_DIR, "favicon.png")
icon_64.save(out_64, "PNG")
print(f"  [OK] Đã tạo: {out_64} (64x64)")

# favicon.ico
fav_ico_launcher = os.path.join(LAUNCHER_DIR, "favicon.ico")
fav_ico_root = os.path.join(PROJECT_ROOT, "favicon.ico")
icon_art.save(fav_ico_launcher, format="ICO", sizes=[(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)])
shutil.copy2(fav_ico_launcher, fav_ico_root)
print(f"  [OK] Đã tạo: {fav_ico_launcher}")

print("\n" + "=" * 65)
print("  🎉 ĐÃ TẠO BIỂU TƯỢNG GAME CHÍNH THỨC HOÀN HẢO!")
print("=" * 65)
