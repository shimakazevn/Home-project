# -*- coding: utf-8 -*-
"""
Generate Translations for Chunk 1 (Rows 8021 to 8545 - 525 lines)
"""
import pandas as pd
import json
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')

# Load the untranslated records
with open(r'E:\HOME_\translation\untranslated_records.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

p1 = records[:525]
print(f"Loaded {len(p1)} records for Chunk 1 (Rows {p1[0]['row_idx']+1} to {p1[-1]['row_idx']+1})")
