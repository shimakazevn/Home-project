# -*- coding: utf-8 -*-
"""
tools/audit_choice_branches.py
==============================
Kiểm toán toàn bộ 100% các nút lựa chọn rẽ nhánh ([glink], [button], [jump], [call])
trên 267 tệp kịch bản .ks để đảm bảo không có nhãn đích (*target) nào bị gãy hoặc mất tích.
"""

import os
import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PATCH_SCENARIO_DIR = os.path.join(PROJECT_ROOT, 'patch', 'data', 'scenario')

print("================================================================================")
print("     BỘ KIỂM TOÁN PHÂN NHÁNH LỰA CHỌN & NHÃN ĐÍCH (CHOICE BRANCH AUDIT)")
print("================================================================================\n")

scenario_files = [f for f in sorted(os.listdir(PATCH_SCENARIO_DIR)) if f.endswith('.ks')]
print(f"[*] Đang quét {len(scenario_files)} tệp kịch bản trong patch/...\n")

# 1. Thu thập tất cả các nhãn *label trong từng tệp
file_labels = {}
for sf in scenario_files:
    p = os.path.join(PATCH_SCENARIO_DIR, sf)
    with open(p, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()
    labels = set()
    for l in lines:
        s = l.strip()
        if s.startswith('*'):
            label_name = s.split()[0].lstrip('*')
            labels.add(label_name)
    file_labels[sf] = labels

# 2. Kiểm tra tất cả các lệnh rẽ nhánh [glink], [button], [jump], [call]
RE_TARGET = re.compile(r'target=[\"\']?\*?([^\s\"\'\]]+)[\"\']?', re.IGNORECASE)
RE_STORAGE = re.compile(r'storage=[\"\']?([^\s\"\'\]]+)[\"\']?', re.IGNORECASE)
RE_TEXT = re.compile(r'text=[\"\']?([^\"\'\]]+)[\"\']?', re.IGNORECASE)

broken_branches = []
total_glinks = 0
total_buttons = 0
total_jumps = 0
total_calls = 0

for sf in scenario_files:
    p = os.path.join(PATCH_SCENARIO_DIR, sf)
    with open(p, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()
        
    for idx, line in enumerate(lines, 1):
        s = line.strip()
        if s.startswith(';'):
            continue
            
        cmd = None
        if '[glink' in s:
            cmd = 'glink'
            total_glinks += 1
        elif '[button' in s:
            cmd = 'button'
            total_buttons += 1
        elif '[jump' in s:
            cmd = 'jump'
            total_jumps += 1
        elif '[call' in s:
            cmd = 'call'
            total_calls += 1
            
        if cmd:
            tm = RE_TARGET.search(s)
            sm = RE_STORAGE.search(s)
            txtm = RE_TEXT.search(s)
            
            target_label = tm.group(1) if tm else None
            target_storage = sm.group(1) if sm else sf
            button_text = txtm.group(1) if txtm else ""
            
            # Bỏ qua các target động dùng biến & hoặc rỗng
            if not target_label or target_label.startswith('&') or target_label == '""' or target_label == "''":
                continue
                
            # Kiểm tra tệp đích có tồn tại không
            if target_storage not in file_labels:
                broken_branches.append((sf, idx, cmd, target_storage, target_label, button_text, f"Tệp kịch bản đích '{target_storage}' không tồn tại"))
                continue
                
            # Kiểm tra nhãn đích có trong tệp đích không
            if target_label not in file_labels[target_storage]:
                broken_branches.append((sf, idx, cmd, target_storage, target_label, button_text, f"Nhãn '*{target_label}' không tồn tại trong {target_storage}"))

print(f"Tổng số nút lựa chọn [glink] đã quét: {total_glinks} nút")
print(f"Tổng số nút tương tác [button] đã quét: {total_buttons} nút")
print(f"Tổng số lệnh chuyển cảnh [jump] đã quét: {total_jumps} lệnh")
print(f"Tổng số lệnh gọi phụ [call] đã quét:     {total_calls} lệnh")
print("--------------------------------------------------------------------------------")

print(f"\n[KẾT QUẢ KIỂM TOÁN PHÂN NHÁNH]:")
if not broken_branches:
    print("  >>> [HOÀN HẢO] 100% CÁC LỰA CHỌN VÀ PHÂN NHÁNH ĐỀU KHỚP ĐÍCH XÁC THỰC (0 LỖI GÃY NHÁNH)! <<<")
else:
    print(f"  >>> CẢNH BÁO: Phát hiện {len(broken_branches)} nhánh bị gãy hoặc chỉ sai nhãn:")
    for bb in broken_branches:
        btn_info = f" (Nút: '{bb[5]}')" if bb[5] else ""
        print(f"    - {bb[0]}:{bb[1]} [{bb[2]}]{btn_info} -> {bb[3]}:*{bb[4]} | Lỗi: {bb[6]}")
