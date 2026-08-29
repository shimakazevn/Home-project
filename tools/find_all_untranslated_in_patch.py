# -*- coding: utf-8 -*-
import os
import sys
import re

sys.stdout.reconfigure(encoding='utf-8')

patch_scenario = r'E:\HOME_\patch\data\scenario'
untranslated_items = []

for fn in sorted(os.listdir(patch_scenario)):
    if not fn.endswith('.ks'):
        continue
    fpath = os.path.join(patch_scenario, fn)
    with open(fpath, encoding='utf-8') as f:
        lines = f.readlines()
    
    in_script = False
    for idx, line in enumerate(lines, 1):
        raw = line.strip()
        if not raw or raw.startswith(';') or raw.startswith('[_') or raw.startswith('//') or raw.startswith('/*'):
            continue
        if '[iscript]' in raw:
            in_script = True
            continue
        if '[endscript]' in raw:
            in_script = False
            continue
        if in_script:
            continue
            
        if raw.startswith('[tb_eval') or raw.startswith('[eval') or raw.startswith('[voconfig') or raw.startswith('[macro'):
            continue
        if raw.startswith('[tb_image') or raw.startswith('[image') or raw.startswith('[bg') or raw.startswith('[playse') or raw.startswith('[playbgm') or raw.startswith('[stopbgm') or raw.startswith('[wait') or raw.startswith('[mask') or raw.startswith('[quake') or raw.startswith('[anim') or raw.startswith('[fade'):
            continue
        
        # Check text in [glink text="..."] or [ptext text="..."] or dialogue
        # Strip out [舜], [emb ...], character names in tags
        cleaned = raw
        cleaned = re.sub(r'\[舜\]', '', cleaned)
        cleaned = re.sub(r'\[emb\s+exp=[^\]]*\]', '', cleaned)
        cleaned = re.sub(r'storage=\"[^\"]*\"', '', cleaned)
        cleaned = re.sub(r'target=\"[^\"]*\"', '', cleaned)
        cleaned = re.sub(r'name=\"[^\"]*\"', '', cleaned)
        cleaned = re.sub(r'graphic=\"[^\"]*\"', '', cleaned)
        cleaned = re.sub(r'enterimg=\"[^\"]*\"', '', cleaned)
        cleaned = re.sub(r'clickimg=\"[^\"]*\"', '', cleaned)
        
        # Check if there is still Japanese text
        jp_chars = re.findall(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF]', cleaned)
        if jp_chars:
            untranslated_items.append((fn, idx, raw, ''.join(jp_chars)))

print(f'Total actual dialogue/UI/text lines with remaining Japanese: {len(untranslated_items)}')
for fn, idx, raw, jp in untranslated_items:
    print(f'{fn}:{idx} | {raw}')
