# -*- coding: utf-8 -*-
import os
import sys
import re

sys.stdout.reconfigure(encoding='utf-8')

src_dir = r'E:\HOME_\patch\data\scenario'
all_tag_texts = []

for fn in sorted(os.listdir(src_dir)):
    if not fn.endswith('.ks'):
        continue
    fpath = os.path.join(src_dir, fn)
    with open(fpath, encoding='utf-8') as f:
        lines = f.readlines()
    
    for idx, line in enumerate(lines, 1):
        raw = line.strip()
        # Find ptext text="..."
        ptext_m = re.search(r'\[(?:tb_)?ptext(?:_show)?\s+[^\]]*text=\"([^\"]+)\"', raw)
        if ptext_m:
            t = ptext_m.group(1)
            if re.search(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF]', t):
                all_tag_texts.append((fn, idx, 'ptext', raw, t))
        
        # Find glink text="..."
        glink_m = re.search(r'\[glink\s+[^\]]*text=\"([^\"]+)\"', raw)
        if glink_m:
            t = glink_m.group(1)
            if re.search(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF]', t):
                all_tag_texts.append((fn, idx, 'glink', raw, t))
                
        # Find button hint="..."
        btn_m = re.search(r'\[button\s+[^\]]*hint=([^\s\]]+)', raw)
        if btn_m:
            t = btn_m.group(1).strip('"\'')
            if re.search(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF]', t):
                all_tag_texts.append((fn, idx, 'button_hint', raw, t))

print(f"Total tag-embedded texts with Japanese in PATCH: {len(all_tag_texts)}")
for fn, idx, tag_type, raw, text in all_tag_texts:
    print(f"{fn}:{idx} [{tag_type}] -> {text}")
