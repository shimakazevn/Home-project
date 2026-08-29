# -*- coding: utf-8 -*-
"""
Tự động áp dụng các sửa đổi UI (dấu cách, nút Xác nhận, sampletext) vào app.asar
"""
import os
import subprocess
import shutil
import sys

sys.stdout.reconfigure(encoding='utf-8')

app_asar = r'E:\HOME_\build-releases\HOME_Vietnamese_PC_Full\resources\app.asar'
temp_dir = r'E:\HOME_\temp_asar_build'
patch_dir = r'E:\HOME_\patch'

print("1. Đang giải nén app.asar...")
if os.path.exists(temp_dir):
    shutil.rmtree(temp_dir)
os.makedirs(temp_dir, exist_ok=True)

subprocess.run(f'npx asar extract "{app_asar}" "{temp_dir}"', shell=True, check=True)

print("2. Đang sao chép các bản vá mới nhất (Parser dấu cách, nút Xác nhận, sampletext, name.ks)...")
for root, dirs, files in os.walk(patch_dir):
    for f in files:
        if f.endswith('.zip'): continue
        src_p = os.path.join(root, f)
        rel_p = os.path.relpath(src_p, patch_dir)
        dst_p = os.path.join(temp_dir, rel_p)
        os.makedirs(os.path.dirname(dst_p), exist_ok=True)
        shutil.copy2(src_p, dst_p)

print("3. Đang đóng gói lại app.asar hoàn chỉnh...")
subprocess.run(f'npx asar pack "{temp_dir}" "{app_asar}"', shell=True, check=True)

# Đồng bộ sang thư mục Game
game_asar = r'E:\HOME_\Game\resources\app.asar'
shutil.copy2(app_asar, game_asar)

print("4. Dọn dẹp thư mục tạm...")
shutil.rmtree(temp_dir)

print("🎉 HOÀN TẤT ĐỒNG BỘ BẢN VÁ MỚI NHẤT VÀO APP.ASAR!")
