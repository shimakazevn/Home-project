# -*- coding: utf-8 -*-
"""
Full Translation Generator for all 1,448 untranslated lines.
Output: E:\HOME_\translation\translated_all_1448.json
"""

import json
import re
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')

with open(r'E:\HOME_\translation\untranslated_records.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

print(f"Loaded {len(records)} records.")
