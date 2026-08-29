import os, sys, shutil
sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = r'E:\HOME_'

print("=" * 65)
print("  🧹 TIẾN HÀNH DỌN DẸP RÁC VÀ DỮ LIỆU TRÙNG LẶP AN TOÀN")
print("=" * 65)

freed_bytes = 0

def safe_remove_dir(path, desc):
    global freed_bytes
    if os.path.exists(path):
        size = sum(sum(os.path.getsize(os.path.join(r, f)) for f in files) for r, _, files in os.walk(path))
        shutil.rmtree(path)
        freed_bytes += size
        print(f"  [ĐÃ XÓA THƯ MỤC] {desc:<40} ({size / (1024*1024):.2f} MB)")

def safe_remove_file(path, desc):
    global freed_bytes
    if os.path.exists(path):
        size = os.path.getsize(path)
        os.remove(path)
        freed_bytes += size
        print(f"  [ĐÃ XÓA FILE]    {desc:<40} ({size / (1024*1024):.2f} MB)")

# 1. Xóa thư mục test giải nén tạm thời (14 MB)
safe_remove_dir(os.path.join(PROJECT_ROOT, 'full_assets_unpacked'), 'Thư mục test unpack (full_assets_unpacked)')

# 2. Xóa các thư mục build trung gian / trùng lặp trong build-releases (~8.25 GB)
build_rel = os.path.join(PROJECT_ROOT, 'build-releases')
safe_remove_dir(os.path.join(build_rel, 'HOME_Vietnamese_PC'), 'Bản PC trùng lặp (đã có PC_Full)')
safe_remove_dir(os.path.join(build_rel, 'HOME_Vietnamese_Patch_Only'), 'Thư mục staging Patch cũ')
safe_remove_dir(os.path.join(build_rel, 'HOME_Vietnamese_Android'), 'Thư mục staging Android cũ')
safe_remove_dir(os.path.join(build_rel, 'HOME_Vietnamese_iOS'), 'Thư mục staging iOS cũ')
safe_remove_dir(os.path.join(build_rel, 'HOME_Vietnamese_Web'), 'Thư mục staging Web cũ')

# 3. Dọn dẹp build cache khổng lồ trong Android Gradle (~24 GB)
android_dir = os.path.join(PROJECT_ROOT, 'build-android-project')
safe_remove_dir(os.path.join(android_dir, 'android', 'app', 'build'), 'Gradle Intermediate Build Cache')
safe_remove_dir(os.path.join(android_dir, 'android', 'build'), 'Gradle Root Build Cache')
safe_remove_dir(os.path.join(android_dir, 'app'), 'Bản copy app/ trùng lặp trong Android')

# 4. Xóa các file script thử nghiệm trung gian trong tools/
tools_dir = os.path.join(PROJECT_ROOT, 'tools')
safe_remove_file(os.path.join(tools_dir, 'test_unpack.py'), 'Script test_unpack.py')
safe_remove_file(os.path.join(tools_dir, 'translate_ui_clean.py'), 'Script translate_ui_clean.py (cũ)')
safe_remove_file(os.path.join(tools_dir, 'translate_ui_complete.py'), 'Script translate_ui_complete.py (cũ)')
safe_remove_file(os.path.join(tools_dir, 'translate_ui_final.py'), 'Script translate_ui_final.py (cũ)')
safe_remove_file(os.path.join(PROJECT_ROOT, 'translation', 'all_323_real_text.json'), 'JSON dump tạm thời')

# 5. Dọn dẹp toàn bộ __pycache__
for root, dirs, files in os.walk(PROJECT_ROOT):
    if '__pycache__' in dirs:
        pycache_path = os.path.join(root, '__pycache__')
        safe_remove_dir(pycache_path, f'Python Cache tại {os.path.relpath(pycache_path, PROJECT_ROOT)}')

print("\n" + "=" * 65)
print(f"  🎉 HOÀN TẤT DỌN DẸP! TỔNG DUNG LƯỢNG ĐÃ GIẢI PHÓNG: {freed_bytes / (1024**3):.2f} GB")
print("=" * 65)
