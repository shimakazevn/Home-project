import os, sys
sys.stdout.reconfigure(encoding='utf-8')
from PIL import Image, ImageDraw, ImageFilter, ImageFont

PROJECT_ROOT = r'E:\HOME_'
TITLE_BG = os.path.join(PROJECT_ROOT, 'full_web_assets', 'data', 'bgimage', 'title_bg.png')
LOGO_PATH = os.path.join(PROJECT_ROOT, 'full_web_assets', 'data', 'fgimage', 'default', 'title_logo.png')
LAUNCHER_DIR = os.path.join(PROJECT_ROOT, 'launcher')

os.makedirs(LAUNCHER_DIR, exist_ok=True)

print("=" * 65)
print("  🎨 THIẾT KẾ FAVICON VÀ APPLE TOUCH ICON (IOS PWA) CHUYÊN NGHIỆP")
print("=" * 65)

# 1. Mở ảnh gốc title_bg (1280x720)
bg = Image.open(TITLE_BG).convert('RGBA')

# Crop phần chân dung nhân vật chính Nagi / trung tâm (512x512)
# Tọa độ trung tâm đẹp nhất: từ x=384 đến 896, y=50 đến 562
crop_box = (384, 50, 896, 562)
icon_base = bg.crop(crop_box).resize((512, 512), Image.Resampling.LANCZOS)

# 2. Tạo hiệu ứng bo góc mượt mà và viền phát sáng (Glow border)
mask = Image.new('L', (512, 512), 0)
draw_mask = ImageDraw.Draw(mask)
# Bo góc chuẩn Apple iOS (Squircle / Rounded rectangle)
draw_mask.rounded_rectangle([(0, 0), (512, 512)], radius=110, fill=255)

# Tạo nền biểu tượng chính
final_icon = Image.new('RGBA', (512, 512), (15, 23, 42, 255))
final_icon.paste(icon_base, (0, 0), mask)

# Vẽ thêm viền gradient tinh tế quanh icon
overlay = Image.new('RGBA', (512, 512), (0, 0, 0, 0))
draw_overlay = ImageDraw.Draw(overlay)
draw_overlay.rounded_rectangle([(2, 2), (510, 510)], radius=110, outline=(59, 130, 246, 200), width=6)
draw_overlay.rounded_rectangle([(8, 8), (504, 504)], radius=106, outline=(6, 182, 212, 120), width=3)

# Nếu có file logo thì ghép huy hiệu nhỏ "VN" ở góc dưới
draw_overlay.rounded_rectangle([(320, 420), (480, 480)], radius=20, fill=(30, 58, 138, 230), outline=(59, 130, 246, 255), width=2)
# Vẽ chữ VN
draw_overlay.text((360, 432), "VIỆT HÓA", fill=(255, 255, 255, 255))

final_icon = Image.alpha_composite(final_icon, overlay)

# 3. Xuất tất cả các định dạng icon cho iOS, Android, và Web
# A. Apple Touch Icon 512x512
icon_512_path = os.path.join(LAUNCHER_DIR, 'apple-touch-icon.png')
final_icon.save(icon_512_path, 'PNG')
print(f"  [OK] Đã tạo: {icon_512_path} (512x512)")

# B. Apple Touch Icon 180x180 (iPhone chuẩn)
icon_180 = final_icon.resize((180, 180), Image.Resampling.LANCZOS)
icon_180_path = os.path.join(LAUNCHER_DIR, 'apple-touch-icon-180x180.png')
icon_180.save(icon_180_path, 'PNG')
print(f"  [OK] Đã tạo: {icon_180_path} (180x180)")

# C. Web Manifest Icon 192x192
icon_192 = final_icon.resize((192, 192), Image.Resampling.LANCZOS)
icon_192_path = os.path.join(LAUNCHER_DIR, 'icon-192.png')
icon_192.save(icon_192_path, 'PNG')
print(f"  [OK] Đã tạo: {icon_192_path} (192x192)")

# D. Favicon PNG & ICO
fav_png = final_icon.resize((64, 64), Image.Resampling.LANCZOS)
fav_png_path = os.path.join(LAUNCHER_DIR, 'favicon.png')
fav_png.save(fav_png_path, 'PNG')

fav_ico_path = os.path.join(LAUNCHER_DIR, 'favicon.ico')
final_icon.save(fav_ico_path, format='ICO', sizes=[(16, 16), (32, 32), (48, 48), (64, 64)])
print(f"  [OK] Đã tạo: {fav_ico_path}")

# Sao chép favicon sang root để GitHub Pages phục vụ toàn trang
root_fav_path = os.path.join(PROJECT_ROOT, 'favicon.ico')
final_icon.save(root_fav_path, format='ICO', sizes=[(16, 16), (32, 32), (48, 48)])
root_touch_path = os.path.join(PROJECT_ROOT, 'apple-touch-icon.png')
final_icon.save(root_touch_path, 'PNG')

print("\n" + "=" * 65)
print("  🎉 HOÀN TẤT! FAVICON VÀ ICON IPHONE PWA ĐÃ ĐƯỢC TẠO HOÀN HẢO!")
print("=" * 65)
