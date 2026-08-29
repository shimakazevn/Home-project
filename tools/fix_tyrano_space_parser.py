# -*- coding: utf-8 -*-
"""
Vá lỗi mất dấu cách trong chuỗi ký tự của các thẻ TyranoScript (glink, ptext, button hint)
"""
import os
import sys

sys.stdout.reconfigure(encoding='utf-8')

def patch_kag_parser(parser_path):
    with open(parser_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # 1. Thay thế xóa dấu cách thành mã hóa %20
    old_code_1 = '" "==c&&(c="");'
    new_code_1 = '" "==c&&(c="%20");'
    
    # 2. Giải mã phục hồi dấu cách
    old_code_2 = '""!=pm_val&&(obj.pm[pm_key]=$.replaceAll(pm_val,"#","="));'
    new_code_2 = '""!=pm_val&&(obj.pm[pm_key]=$.replaceAll($.replaceAll(pm_val,"#","="),"%20"," "));'

    if old_code_1 in content:
        content = content.replace(old_code_1, new_code_1)
        content = content.replace(old_code_2, new_code_2)
        with open(parser_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"-> Đã vá lỗi dấu cách thành công trong {parser_path}!")
    else:
        print(f"[INFO] Parser tại {parser_path} đã được vá trước đó.")

patch_dest = r'E:\HOME_\patch\tyrano\plugins\kag\kag.parser.js'
os.makedirs(os.path.dirname(patch_dest), exist_ok=True)

src_parser = r'E:\HOME_\extracted_scripts\tyrano\plugins\kag\kag.parser.js'
import shutil
shutil.copy2(src_parser, patch_dest)
patch_kag_parser(patch_dest)
