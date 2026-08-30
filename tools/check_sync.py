# -*- coding: utf-8 -*-
"""
check_sync.py
Kiểm tra tính đồng bộ 100% (Bit-Exact SHA256) giữa thư mục patch/ và bản Web
"""

import os
import sys
import hashlib

sys.stdout.reconfigure(encoding='utf-8')

PATCH_DIR = r'E:\HOME_\patch'
ROOT_DIR = r'E:\HOME_'


def get_file_sha256(path):
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        while chunk := f.read(65536):
            h.update(chunk)
    return h.hexdigest()


def check_synchronization():
    print("==================================================")
    print("   HOME - KIỂM TRA ĐỒNG BỘ PATCH VÀ BẢN WEB")
    print("==================================================")

    diffs = []
    total = 0

    for root, _, files in os.walk(PATCH_DIR):
        for f in files:
            src = os.path.join(root, f)
            rel = os.path.relpath(src, PATCH_DIR)
            dst = os.path.join(ROOT_DIR, rel)

            total += 1
            if not os.path.exists(dst):
                diffs.append((rel, "Chưa được copy sang bản Web"))
            else:
                src_hash = get_file_sha256(src)
                dst_hash = get_file_sha256(dst)
                if src_hash != dst_hash:
                    diffs.append((rel, f"Nội dung khác nhau (Patch: {src_hash[:8]} | Web: {dst_hash[:8]})"))

    print(f"[*] Đã quét toàn bộ: {total} tệp tin trong patch/")

    if not diffs:
        print("\n✅ KẾT QUẢ: BẢN PATCH VÀ BẢN WEB ĐỒNG BỘ CHÍNH XÁC 100% (BIT-EXACT)!")
        print("   Mọi kịch bản (.ks), plugin, font chữ và asset manifest đều khớp tuyệt đối.\n")
        return True
    else:
        print(f"\n❌ PHÁT HIỆN {len(diffs)} TỆP CHƯA ĐỒNG BỘ:")
        for rel, status in diffs:
            print(f"  - {rel}: {status}")
        print("\n👉 Hãy chạy lệnh: python tools/build_web_release.py để đồng bộ lại!\n")
        return False


if __name__ == '__main__':
    check_synchronization()
