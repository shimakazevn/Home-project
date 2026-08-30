import sys
import os
import re

sys.stdout.reconfigure(encoding='utf-8')

scenario_dir = r'E:\HOME_\patch\data\scenario'

for root, dirs, files in os.walk(scenario_dir):
    for f in files:
        if not f.endswith('.ks'):
            continue
        path = os.path.join(root, f)
        with open(path, 'r', encoding='utf-8', errors='ignore') as fp:
            content = fp.read()
        
        orig = content
        # Fix bloated phrases that wrap or overflow glink width
        content = content.replace('text="Lắp đặt / Đặt bẫy"', 'text="Lắp đặt"')
        content = content.replace('text="Thôi, dừng lại"', 'text="Hủy"')
        content = content.replace('text="Có / Đồng ý"', 'text="Đồng ý"')
        content = content.replace('text="Xem đoạn mở đầu (Opening)"', 'text="Xem mở đầu"')
        content = content.replace('text="Bỏ qua Opening"', 'text="Bỏ qua"')
        content = content.replace('text="Nghỉ ngơi / Ngủ nướng"', 'text="Nghỉ ngơi"')
        content = content.replace('text="Sử dụng (Viên Spirytus)"', 'text="Dùng viên Spirytus"')
        content = content.replace('text="Không sử dụng"', 'text="Không dùng"')
        
        if content != orig:
            print(f'Updated {f}')
            with open(path, 'w', encoding='utf-8') as fp:
                fp.write(content)

print("Done fixing choice texts!")
