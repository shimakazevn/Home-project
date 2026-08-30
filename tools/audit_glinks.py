import os
import sys
import re

sys.stdout.reconfigure(encoding='utf-8')

scenario_dir = r'E:\HOME_\patch\data\scenario'
results = []

for root, dirs, files in os.walk(scenario_dir):
    for f in files:
        if not f.endswith('.ks'): continue
        path = os.path.join(root, f)
        with open(path, 'r', encoding='utf-8', errors='ignore') as fp:
            for i, line in enumerate(fp, 1):
                if '[glink' in line:
                    text_m = re.search(r'text=[\"\'](.*?)[\"\']', line)
                    width_m = re.search(r'width=[\"\']?(\d+)', line)
                    text = text_m.group(1) if text_m else ''
                    w = int(width_m.group(1)) if width_m else 0
                    results.append((f, i, text, w, line.strip()))

print(f"Total glink buttons: {len(results)}")
print("\n--- BUTTONS WITH SLASH OR LONG TEXT OR OVERFLOW ---")
for f, i, text, w, line in results:
    if '/' in text or len(text) > 10 or (w > 0 and len(text) * 10 > w):
        print(f"{f}:{i} (w={w}, len={len(text)}): \"{text}\"")
