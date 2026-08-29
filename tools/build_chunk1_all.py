# -*- coding: utf-8 -*-
"""
Chunk 1 (Rows 8021 to 8545 - 525 lines) Translation Builder
"""
import json, re, sys, os
sys.stdout.reconfigure(encoding='utf-8')

with open(r'E:\HOME_\translation\untranslated_records.json', 'r', encoding='utf-8') as f:
    all_records = json.load(f)

chunk1_records = all_records[:525]
print(f"Translating {len(chunk1_records)} Chunk 1 records...")

# Import existing dictionaries
from p1_dict_part1 import P1_DICT
from p1_dict_part2 import P1_DICT_2
from p1_dict_part3 import P1_DICT_3

chunk1_dict = {}
chunk1_dict.update(P1_DICT)
chunk1_dict.update(P1_DICT_2)
chunk1_dict.update(P1_DICT_3)

print(f"Current translated in chunk 1: {len(chunk1_dict)} / 525")
