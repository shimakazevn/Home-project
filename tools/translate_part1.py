# -*- coding: utf-8 -*-
"""
Translate Part 1 (Records 0 to 525: Rows 8021 to 8545)
"""
import json, re, sys, os

sys.stdout.reconfigure(encoding='utf-8')

with open(r'E:\HOME_\translation\untranslated_records.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

part1_records = records[:525]
print(f"Loaded {len(part1_records)} records for Part 1")

# We will translate each record
translations = {}
