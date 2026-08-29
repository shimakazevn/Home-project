# -*- coding: utf-8 -*-
"""
HOME VN - Master Translation Engine for viethoa.xlsx
Translates all 1,448 remaining untranslated lines (Rows 8021-8545 & 9000-9922).
Adheres strictly to GEMINI_WORKSPACE_PROMPT.md and GAME_RESEARCH_DOC.md.
"""

import pandas as pd
import json
import re
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')

FILE_PATH = r'E:\HOME_\translation\viethoa.xlsx'
OUTPUT_PATH = r'E:\HOME_\translation\viethoa.xlsx'

df = pd.read_excel(FILE_PATH)
print(f"Loaded {len(df)} rows from viethoa.xlsx")

untranslated_mask = df['vietnamese'].isna() | (df['vietnamese'].astype(str).str.strip() == '')
print(f"Total untranslated rows before: {untranslated_mask.sum()}")
