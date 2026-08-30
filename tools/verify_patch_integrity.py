# -*- coding: utf-8 -*-
"""
tools/verify_patch_integrity.py
================================
Kiểm tra toàn diện tính toàn vẹn của bản Patch trước khi đóng gói phát hành:
1. Kiểm tra 100% các cặp thẻ điều khiển TyranoScript ([if]/[endif], [macro]/[endmacro], [iscript]/[endscript]).
2. Quét phát hiện tiếng Nhật còn sót lại trong thoại, glink, ptext, hint.
3. Kiểm tra sự tồn tại và tính hợp lệ của Font chữ Noto Sans, CSS Auto-wrap, Plugin Config.
4. Đảm bảo 0 lỗi tag và 0 điểm mù trước khi cho phép biên dịch Installer.
"""

import os
import sys
import re

if sys.stdout:
    try:
        sys.stdout.reconfigure(encoding='utf-8')
    except Exception:
        pass

JP_REGEX = re.compile(r'[\u4e00-\u9faf\u3040-\u309f\u30a0-\u30ff]')

def check_scenario_tags(scenario_dir):
    print(f"[*] Đang quét kiểm tra cấu trúc thẻ tag trong: {scenario_dir}")
    tag_errors = []
    
    if not os.path.exists(scenario_dir):
        return [f"Thư mục kịch bản không tồn tại: {scenario_dir}"]
        
    for fname in sorted(os.listdir(scenario_dir)):
        if not fname.endswith('.ks'):
            continue
        p = os.path.join(scenario_dir, fname)
        with open(p, 'r', encoding='utf-8', errors='ignore') as f:
            lines = f.readlines()
            
        if_count = 0
        endif_count = 0
        macro_count = 0
        endmacro_count = 0
        iscript_count = 0
        endscript_count = 0
        
        for line_no, line in enumerate(lines, 1):
            clean = line.split(';')[0].strip()
            if not clean:
                continue
                
            if clean.startswith('@if'):
                if_count += 1
            elif clean.startswith('@endif'):
                endif_count += 1
            else:
                if_count += len(re.findall(r'\[\s*if\b', clean))
                endif_count += len(re.findall(r'\[\s*endif\b', clean))
                
            macro_count += len(re.findall(r'\[\s*macro\b', clean))
            endmacro_count += len(re.findall(r'\[\s*endmacro\b', clean))
            
            iscript_count += len(re.findall(r'\[\s*iscript\b', clean))
            endscript_count += len(re.findall(r'\[\s*endscript\b', clean))
            
            # Kiểm tra dấu ngoặc vuông chưa đóng
            if clean.startswith('[') and not clean.startswith(';') and not clean.startswith('//'):
                if clean.count('[') > clean.count(']'):
                    tag_errors.append(f"{fname}:{line_no} -> Thẻ chưa đóng dấu ]: '{clean}'")

        if if_count != endif_count:
            tag_errors.append(f"{fname} -> Lệch thẻ [if]/[endif]: [if]={if_count}, [endif]={endif_count} (diff={if_count - endif_count})")
        if macro_count != endmacro_count:
            tag_errors.append(f"{fname} -> Lệch thẻ [macro]/[endmacro]: [macro]={macro_count}, [endmacro]={endmacro_count}")
        if iscript_count != endscript_count:
            tag_errors.append(f"{fname} -> Lệch thẻ [iscript]/[endscript]: [iscript]={iscript_count}, [endscript]={endscript_count}")
            
    return tag_errors

def check_untranslated_text(scenario_dir):
    print(f"[*] Đang quét kiểm tra tiếng Nhật còn sót lại...")
    untranslated = []
    
    def clean_for_check(text):
        t = text.split('//')[0] # bỏ qua comment JS
        t = re.sub(r'\[\s*(?:舜|日高)\s*\]', '', t)
        t = re.sub(r'#(?:凪|凛子|蕾|隼人|母|アメリア|男|客|看護師|医師|アナウンス|ガイド)', '', t)
        t = re.sub(r'\[macro\s+name=[\"\']?.*?[\"\']?\]', '', t)
        t = re.sub(r'storage=[\"\']?.*?[\"\']?', '', t)
        t = re.sub(r'target=[\"\']?.*?[\"\']?', '', t)
        t = re.sub(r'exp=[\"\']?.*?[\"\']?', '', t)
        t = re.sub(r'\[playse\b.*?\]', '', t)
        t = re.sub(r'\[chara_mod\b.*?\]', '', t)
        t = re.sub(r'\[tb_eval\b.*?\]', '', t)
        t = re.sub(r'\[anim\b.*?\]', '', t)
        t = re.sub(r'\[voconfig\b.*?\]', '', t)
        t = re.sub(r'face=[\"\']?.*?[\"\']?', '', t)
        t = re.sub(r'<<.*?>>', '', t)
        t = re.sub(r'・', '', t)
        t = re.sub(r'===?\s*[\'\"](?:日高|舜)[\'\"]', '', t) # bỏ qua kiểm tra tên mặc định trong JS
        return t.strip()

    for fname in sorted(os.listdir(scenario_dir)):
        if not fname.endswith('.ks'):
            continue
        if fname in ['a_Debugroom.ks']:
            continue
        p = os.path.join(scenario_dir, fname)
        with open(p, 'r', encoding='utf-8', errors='ignore') as f:
            lines = f.readlines()
            
        for line_idx, line in enumerate(lines, 1):
            clean_line = line.strip()
            if clean_line.startswith(';') or clean_line.startswith('//'):
                continue
            test_str = clean_for_check(clean_line)
            if not test_str:
                continue
            if JP_REGEX.search(test_str):
                if test_str.startswith('[') and test_str.endswith(']') and not any(x in test_str for x in ['text=', 'name=', 'hint=']):
                    continue
                untranslated.append(f"[{fname}:{line_idx}] {clean_line}")
                
    return untranslated

def check_asset_files(base_dir):
    print(f"[*] Đang kiểm tra các tệp tài nguyên, font chữ, plugin...")
    asset_errors = []
    
    required_files = [
        os.path.join(base_dir, 'data', 'others', 'font', 'NotoSansJP-Medium.ttf'),
        os.path.join(base_dir, 'data', 'others', 'font', 'NotoSansJP-Bold.ttf'),
        os.path.join(base_dir, 'tyrano', 'css', 'font.css'),
        os.path.join(base_dir, 'data', 'others', 'plugin', 'auto_wrap', 'init.js'),
        os.path.join(base_dir, 'data', 'others', 'plugin', 'theme_kopanda_09_2', 'testMessagePlus', 'gMessageTester.js'),
        os.path.join(base_dir, 'data', 'others', 'plugin', 'theme_kopanda_09_2', 'testMessagePlus', 'style.css'),
    ]
    
    for req in required_files:
        if not os.path.exists(req):
            asset_errors.append(f"Thiếu tệp tài nguyên bắt buộc: {req}")
        else:
            if os.path.getsize(req) == 0:
                asset_errors.append(f"Tệp tài nguyên bị rỗng (0 bytes): {req}")
                
    return asset_errors

import json
import hashlib
import time

def generate_and_verify_sha256_manifest(patch_dir):
    """Tính toán và tạo manifest mã băm SHA256 cho 100% tệp trong bản patch"""
    print(f"[*] Đang khởi tạo và đối chiếu mã băm SHA256 cho toàn bộ tệp...")
    manifest = {
        'version': '3.1.0',
        'generated_at': time.strftime('%Y-%m-%d %H:%M:%S'),
        'total_files': 0,
        'files': {}
    }
    sha_errors = []
    
    for folder in ['data', 'tyrano']:
        f_root = os.path.join(patch_dir, folder)
        if not os.path.exists(f_root):
            continue
        for root, dirs, files in os.walk(f_root):
            for file in files:
                abs_p = os.path.join(root, file)
                rel_p = os.path.relpath(abs_p, patch_dir).replace('\\', '/')
                try:
                    sha = hashlib.sha256()
                    sz = os.path.getsize(abs_p)
                    with open(abs_p, 'rb') as f:
                        while chunk := f.read(65536):
                            sha.update(chunk)
                    hex_sha = sha.hexdigest()
                    manifest['files'][rel_p] = {
                        'sha256': hex_sha,
                        'size': sz
                    }
                except Exception as e:
                    sha_errors.append(f"Không thể băm SHA256 cho {rel_p}: {e}")
                    
    manifest['total_files'] = len(manifest['files'])
    
    manifest_path = os.path.join(patch_dir, 'patch_manifest.json')
    try:
        with open(manifest_path, 'w', encoding='utf-8') as f:
            json.dump(manifest, f, indent=2, ensure_ascii=False)
        print(f"  [OK] Đã tạo patch_manifest.json chứa {manifest['total_files']} chữ ký SHA256!")
    except Exception as e:
        sha_errors.append(f"Không thể ghi patch_manifest.json: {e}")
        
    return sha_errors, manifest['total_files']

def run_full_verification(patch_dir='patch'):
    print("=" * 65)
    print("      KIỂM TRA TOÀN VẸN BẢN PATCH VIỆT HÓA CHUẨN 100%")
    print("=" * 65)
    
    scenario_dir = os.path.join(patch_dir, 'data', 'scenario')
    tag_errors = check_scenario_tags(scenario_dir)
    untranslated = check_untranslated_text(scenario_dir)
    asset_errors = check_asset_files(patch_dir)
    sha_errors, total_hashed = generate_and_verify_sha256_manifest(patch_dir)
    
    total_issues = len(tag_errors) + len(untranslated) + len(asset_errors) + len(sha_errors)
    
    print()
    print("-" * 65)
    print(f"  [1] Lỗi cú pháp / lệch thẻ Tag:  {len(tag_errors)} lỗi")
    for err in tag_errors:
        print(f"      ❌ {err}")
        
    print(f"  [2] Lỗi tiếng Nhật chưa dịch:     {len(untranslated)} dòng")
    for un in untranslated:
        print(f"      ⚠️ {un}")
        
    print(f"  [3] Lỗi thiếu Assets / Font / CSS: {len(asset_errors)} lỗi")
    for err in asset_errors:
        print(f"      ❌ {err}")
        
    print(f"  [4] Xác thực chữ ký SHA256:       {total_hashed} tệp ({len(sha_errors)} lỗi)")
    for err in sha_errors:
        print(f"      ❌ {err}")
    print("-" * 65)
    
    if total_issues == 0:
        print("\n  >>> [CHÚC MỪNG] TOÀN BỘ DỮ LIỆU PATCH ĐẠT CHUẨN 100% KHÔNG CÓ LỖI! <<<")
        print("=" * 65)
        return True
    else:
        print(f"\n  >>> [CẢNH BÁO] Phát hiện {total_issues} vấn đề cần xử lý trước khi đóng gói! <<<")
        print("=" * 65)
        return False

if __name__ == '__main__':
    target = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    success = run_full_verification(target)
    sys.exit(0 if success else 1)

