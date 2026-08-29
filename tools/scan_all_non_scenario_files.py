# -*- coding: utf-8 -*-
import os
import sys
import re

sys.stdout.reconfigure(encoding='utf-8')

base_dir = r'E:\HOME_\extracted_scripts'
found_items = []

for root, dirs, files in os.walk(base_dir):
    if 'data\\scenario' in root:
        continue  # Already scanned scenarios
    for f in files:
        if f.endswith(('.ks', '.html', '.js', '.css', '.json')):
            fpath = os.path.join(root, f)
            try:
                with open(fpath, 'r', encoding='utf-8', errors='ignore') as fp:
                    lines = fp.readlines()
            except Exception as e:
                continue
                
            for idx, line in enumerate(lines, 1):
                raw = line.strip()
                if not raw or raw.startswith('//') or raw.startswith('/*') or raw.startswith('*') or raw.startswith(';'):
                    continue
                # check for Japanese
                if re.search(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF]', raw):
                    # ignore file paths
                    rel_p = os.path.relpath(fpath, base_dir)
                    found_items.append((rel_p, idx, raw))

print(f"Total non-scenario items with Japanese: {len(found_items)}")
for rel_p, idx, raw in found_items:
    print(f"{rel_p}:{idx} | {raw}")
