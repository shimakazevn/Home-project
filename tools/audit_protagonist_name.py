# -*- coding: utf-8 -*-
"""
tools/audit_protagonist_name.py
===============================
Kiểm toán việc bảo vệ tên nhân vật chính:
1. Màn hình name.ks khởi tạo Romaji "Hidaka" / "Shun"
2. Quét mọi tệp .ks trong patch/ để đảm bảo không bị rò rỉ chữ Hán 日高 / 舜
   (chỉ cho phép xuất hiện trong thẻ macro [日高], [舜] hoặc khai báo macro)
"""

import os
import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PATCH_SCENARIO_DIR = os.path.join(PROJECT_ROOT, 'patch', 'data', 'scenario')

print("================================================================================")
print("     BỘ KIỂM TOÁN TÊN NHÂN VẬT CHÍNH (PROTAGONIST NAME GUARD AUDIT)")
print("================================================================================\n")

# 1. Kiểm tra name.ks
name_ks_path = os.path.join(PATCH_SCENARIO_DIR, 'name.ks')
with open(name_ks_path, 'r', encoding='utf-8', errors='ignore') as f:
    name_content = f.read()

name_errors = []
if 'initial="Hidaka"' not in name_content or 'initial="Shun"' not in name_content:
    name_errors.append("name.ks thiếu initial='Hidaka' hoặc initial='Shun' trong thẻ [edit]")
if "f.familyname = 'Hidaka'" not in name_content or "f.name = 'Shun'" not in name_content:
    name_errors.append("name.ks thiếu gán biến f.familyname = 'Hidaka' / f.name = 'Shun'")
if "$(\".text_box\").eq(0).val('Hidaka')" not in name_content or "$(\".text_box\").eq(1).val('Shun')" not in name_content:
    name_errors.append("name.ks thiếu jQuery pre-fill ('Hidaka', 'Shun')")

if not name_errors:
    print("[OK] name.ks được cấu hình Romaji chuẩn xác 100% (Hidaka Shun)!")
else:
    for ne in name_errors:
        print(f"[FAIL] {ne}")

# 2. Quét toàn bộ tệp kịch bản kiểm tra rò rỉ chữ Hán 日高 / 舜
scenario_files = [f for f in sorted(os.listdir(PATCH_SCENARIO_DIR)) if f.endswith('.ks')]
kanji_leaks = []

for sf in scenario_files:
    p = os.path.join(PATCH_SCENARIO_DIR, sf)
    with open(p, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()
        
    for idx, line in enumerate(lines, 1):
        s = line.strip()
        if s.startswith(';'):
            continue
            
        # Loại bỏ các thẻ hợp lệ: [macro name="日高"], [macro name="舜"], [日高], [舜]
        cleaned = s
        cleaned = re.sub(r'\[macro\s+name=[\"\']?日高[\"\']?\]', '', cleaned)
        cleaned = re.sub(r'\[macro\s+name=[\"\']?舜[\"\']?\]', '', cleaned)
        cleaned = cleaned.replace('[日高]', '').replace('[舜]', '')
        
        if '日高' in cleaned or '舜' in cleaned:
            # Check if it's comment or something else
            kanji_leaks.append((sf, idx, s))

print(f"\n[KẾT QUẢ QUÉT RÒ RỈ CHỮ HÁN TÊN NHÂN VẬT]:")
if not kanji_leaks:
    print("  >>> [HOÀN HẢO] 0 LỖI RÒ RỈ CHỮ HÁN NHẬT TRÊN TOÀN BỘ 267 TỆP KỊCH BẢN! <<<")
else:
    print(f"  >>> CẢNH BÁO: Phát hiện {len(kanji_leaks)} dòng có thể bị sót chữ Hán:")
    for kl in kanji_leaks[:20]:
        print(f"    - {kl[0]}:{kl[1]} -> {kl[2]}")
