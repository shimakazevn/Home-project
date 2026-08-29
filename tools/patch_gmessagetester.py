# -*- coding: utf-8 -*-
"""
Sửa lỗi mất dấu cách trong khung Text Preview của màn hình Cài đặt (gMessageTester.js)
"""
import os
import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

src = r'E:\HOME_\extracted_scripts\data\others\plugin\theme_kopanda_09_2\testMessagePlus\gMessageTester.js'
dst = r'E:\HOME_\patch\data\others\plugin\theme_kopanda_09_2\testMessagePlus\gMessageTester.js'
os.makedirs(os.path.dirname(dst), exist_ok=True)

with open(src, 'r', encoding='utf-8', errors='ignore') as f:
    code = f.read()

# 1. Sửa lỗi dòng đầu nếu bị cắt cụt
if code.startswith('n]'):
    code = '//' + code

# 2. Sửa regex xóa dấu cách \s trong đoạn văn mẫu
# Thay: data = data.replace(/(\n|\s|\t)/g, "");
# Thành: data = data.replace(/[\r\n\t]/g, "");
code = code.replace('data = data.replace(/(\\n|\\s|\\t)/g, "");', 'data = data.replace(/[\\r\\n\\t]/g, "");')

with open(dst, 'w', encoding='utf-8') as f:
    f.write(code)

print("gMessageTester.js fixed successfully!")
