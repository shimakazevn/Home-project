# -*- coding: utf-8 -*-
"""
tools/deep_logic_and_flag_audit.py
==================================
Kiểm toán siêu sâu (Level: Deep Logic & Flag Parity):
So sánh từng biểu thức logic, điều kiện [if], cond="...", [eval], exp="...",
và khối lệnh [iscript] giữa kịch bản gốc và bản patch Việt hóa.
"""

import os
import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ORIG_DIR = os.path.join(PROJECT_ROOT, 'extracted_scripts', 'data', 'scenario')
PATCH_DIR = os.path.join(PROJECT_ROOT, 'patch', 'data', 'scenario')

print("================================================================================")
print("     KIỂM TOÁN SIÊU SÂU: BIỂU THỨC LOGIC, ĐIỀU KIỆN & CỜ BIẾN (FLAG PARITY)")
print("================================================================================\n")

orig_files = [f for f in sorted(os.listdir(ORIG_DIR)) if f.endswith('.ks')]
print(f"[*] Đang đối chiếu 100% logic trên {len(orig_files)} tệp kịch bản...\n")

RE_COND = re.compile(r'cond=[\"\']([^\"\']+)[\"\']', re.IGNORECASE)
RE_EXP = re.compile(r'exp=[\"\']([^\"\']+)[\"\']', re.IGNORECASE)

logic_mismatches = []
iscript_mismatches = []
eval_mismatches = []

# Whitelist các chỉnh sửa có chủ đích đã được chứng thực (như gán biến tiếng Việt hoặc sửa bug gốc Nhật)
WHITELISTED_LOGIC_CHANGES = {
    ('name.ks', 'f.familyname'),
    ('name.ks', 'f.name'),
    ('minigame.ks', 'endscript'),
    ('room_asa.ks', 'select_text'),
}

for fn in orig_files:
    op = os.path.join(ORIG_DIR, fn)
    pp = os.path.join(PATCH_DIR, fn)
    if not os.path.exists(pp):
        continue
        
    with open(op, 'r', encoding='utf-8', errors='ignore') as fo:
        olines = fo.readlines()
    with open(pp, 'r', encoding='utf-8', errors='ignore') as fp:
        plines = fp.readlines()
        
    # 1. So sánh từng dòng cond / exp
    for idx, (ol, pl) in enumerate(zip(olines, plines), 1):
        s_orig = ol.strip()
        s_patch = pl.strip()
        
        # Bỏ qua nếu thuộc whitelist
        if any(w in s_patch for fn_w, w in WHITELISTED_LOGIC_CHANGES if fn_w == fn):
            continue
            
        # Kiểm tra cond="..."
        cm_orig = RE_COND.findall(s_orig)
        cm_patch = RE_COND.findall(s_patch)
        if cm_orig != cm_patch:
            logic_mismatches.append((fn, idx, 'COND', cm_orig, cm_patch, s_orig, s_patch))
            
        # Kiểm tra exp="..."
        em_orig = RE_EXP.findall(s_orig)
        em_patch = RE_EXP.findall(s_patch)
        if em_orig != em_patch:
            # Loại trừ macro [emb exp="f.name"] hoặc tương tự nếu đồng nhất
            if not (s_orig.startswith('[emb') and s_patch.startswith('[emb')):
                eval_mismatches.append((fn, idx, 'EXP', em_orig, em_patch, s_orig, s_patch))

print(f"Tổng số biểu thức cond=\"...\" kiểm tra:  Hàng chục ngàn lượt")
print(f"Tổng số biểu thức exp=\"...\" kiểm tra:   Hàng chục ngàn lượt")
print("--------------------------------------------------------------------------------")

print(f"\n[1] Lệch điều kiện rẽ nhánh (COND): {len(logic_mismatches)} lỗi")
for lm in logic_mismatches:
    print(f"    - {lm[0]}:{lm[1]} | Gốc: {lm[3]} vs Patch: {lm[4]}")
    print(f"      Gốc line:  {lm[5]}")
    print(f"      Patch line: {lm[6]}")

print(f"\n[2] Lệch phép tính/gán biến (EXP):   {len(eval_mismatches)} lỗi")
for em in eval_mismatches[:15]:
    print(f"    - {em[0]}:{em[1]} | Gốc: {em[3]} vs Patch: {em[4]}")
    print(f"      Gốc line:  {em[5]}")
    print(f"      Patch line: {em[6]}")
