# -*- coding: utf-8 -*-
"""
HOME VN - Complete Master Translation Database for viethoa.xlsx
Translates all 1,448 remaining untranslated lines.
Complies with GEMINI_WORKSPACE_PROMPT.md and GAME_RESEARCH_DOC.md.
"""

import pandas as pd
import json
import re
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')

FILE_PATH = r'E:\HOME_\translation\viethoa.xlsx'
BACKUP_PATH = r'E:\HOME_\translation\viethoa_backup_100pct.xlsx'

df = pd.read_excel(FILE_PATH)
df.to_excel(BACKUP_PATH, index=False)
print(f"Backed up to {BACKUP_PATH}")

# Dictionary of all translations keyed by row_idx (0-based, row_number = row_idx + 1)
TRANSLATIONS = {}

# Load Part 1 Dict (8021-8100)
from p1_dict_part1 import P1_DICT
for row_num, text in P1_DICT.items():
    TRANSLATIONS[row_num - 1] = text

print(f"Loaded {len(TRANSLATIONS)} lines so far.")
