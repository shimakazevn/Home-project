import os, sys, time, shutil
from concurrent.futures import ThreadPoolExecutor
sys.stdout.reconfigure(encoding='utf-8')
from PIL import Image

PROJECT_ROOT = r'E:\HOME_'
SRC_DIR = os.path.join(PROJECT_ROOT, 'full_web_assets')
MOBILE_ASSETS_DIR = os.path.join(PROJECT_ROOT, 'mobile_optimized_assets')

os.makedirs(MOBILE_ASSETS_DIR, exist_ok=True)

print("=" * 65)
print("  🚀 TỐI ƯU HÓA TOÀN BỘ TÀI NGUYÊN GAME CHO MOBILE (WEBP)")
print("=" * 65)

t0 = time.time()

# 1. Thu thập danh sách file cần xử lý
tasks = []
for root, dirs, files in os.walk(SRC_DIR):
    rel_root = os.path.relpath(root, SRC_DIR)
    target_root = os.path.join(MOBILE_ASSETS_DIR, rel_root)
    os.makedirs(target_root, exist_ok=True)
    
    for f in files:
        src_path = os.path.join(root, f)
        tasks.append((src_path, target_root, f, rel_root))

print(f"Tổng số file cần xử lý: {len(tasks)}")

def process_file(task):
    src_path, target_root, f, rel_root = task
    orig_sz = os.path.getsize(src_path)
    
    # Chuyển đổi PNG/JPG trong bgimage, fgimage, image sang WebP (giữ gif nguyên bản)
    is_img = f.lower().endswith(('.png', '.jpg')) and any(k in rel_root for k in ['bgimage', 'fgimage', 'image']) and not f.lower().endswith('.gif')
    
    if is_img:
        webp_name = os.path.splitext(f)[0] + '.webp'
        dst_path = os.path.join(target_root, webp_name)
        if not os.path.exists(dst_path):
            try:
                img = Image.open(src_path)
                img.save(dst_path, 'WEBP', quality=88, method=3)
                return 'webp', orig_sz, os.path.getsize(dst_path)
            except Exception:
                shutil.copy2(src_path, os.path.join(target_root, f))
                return 'copy', orig_sz, orig_sz
        else:
            return 'cached', orig_sz, os.path.getsize(dst_path)
    else:
        dst_path = os.path.join(target_root, f)
        if not os.path.exists(dst_path) or os.path.getsize(dst_path) != orig_sz:
            shutil.copy2(src_path, dst_path)
        return 'copy', orig_sz, orig_sz

# 2. Xử lý đa luồng (12 workers)
with ThreadPoolExecutor(max_workers=12) as executor:
    results = list(executor.map(process_file, tasks))

webp_count = sum(1 for r in results if r[0] in ['webp', 'cached'])
total_orig = sum(r[1] for r in results)
total_opt = sum(r[2] for r in results)

print("\n" + "-" * 65)
print(f"Thời gian xử lý: {time.time() - t0:.2f}s")
print(f"Tổng dung lượng gốc:     {total_orig / (1024**3):.2f} GB")
print(f"Tổng dung lượng Mobile:  {total_opt / (1024**3):.2f} GB (Giảm {(1 - total_opt/total_orig)*100:.1f}%)")
print(f"Đã chuyển đổi thành công {webp_count} ảnh sang WebP!")
print("-" * 65)
