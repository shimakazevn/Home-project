import os, sys, shutil, zipfile
sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = r'E:\HOME_'
UI_PACKAGE_DIR = os.path.join(PROJECT_ROOT, 'UI_TRANSLATION_PACKAGE')
ZIP_OUT_PATH = os.path.join(PROJECT_ROOT, 'UI_Graphics_For_Editor.zip')
ZIP_OLD_PATH = os.path.join(PROJECT_ROOT, 'UI_Translation_And_Graphics_Package.zip')

# 1. Xóa bỏ hoàn toàn thư mục UI_Text_To_Translate trong gói gửi Editor
text_dir = os.path.join(UI_PACKAGE_DIR, 'UI_Text_To_Translate')
if os.path.exists(text_dir):
    shutil.rmtree(text_dir)
    print(f"[OK] Đã xóa thư mục text UI: {text_dir}")

# Xóa file readme cũ nếu có
old_readme = os.path.join(UI_PACKAGE_DIR, 'README_HUONG_DAN_UI.md')
if os.path.exists(old_readme):
    os.remove(old_readme)

# 2. Đóng gói ZIP siêu sạch chỉ dành riêng 100% cho Editor hình ảnh
print(f"Đang nén lại file ZIP siêu sạch: {ZIP_OUT_PATH}...")
with zipfile.ZipFile(ZIP_OUT_PATH, 'w', zipfile.ZIP_DEFLATED) as zipf:
    for root, dirs, files in os.walk(UI_PACKAGE_DIR):
        for file in files:
            full_path = os.path.join(root, file)
            rel_path = os.path.relpath(full_path, UI_PACKAGE_DIR)
            zipf.write(full_path, rel_path)

# Đồng bộ luôn vào file tên cũ để nếu user click link cũ vẫn ra bản sạch
shutil.copy(ZIP_OUT_PATH, ZIP_OLD_PATH)

print(f"\n>>> HOÀN TẤT ĐÓNG GÓI CHUYÊN BIỆT CHO EDITOR (ĐÃ LOẠI BỎ TOÀN BỘ FILE TEXT THỪA)!")
print(f"    File ZIP: {ZIP_OUT_PATH} ({os.path.getsize(ZIP_OUT_PATH) / (1024*1024):.2f} MB)")
