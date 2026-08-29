# -*- coding: utf-8 -*-
"""
HOME (ROOM) VN - Complete Remaining Translation Pipeline for viethoa.xlsx
Translates all 1,448 remaining untranslated lines (Chunk 1: 8021-8545 & Chunk 2: 9000-9922).
"""

import pandas as pd
import re
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')

FILE_PATH = r'E:\HOME_\translation\viethoa.xlsx'
BACKUP_PATH = r'E:\HOME_\translation\viethoa_backup_before_finish.xlsx'

df = pd.read_excel(FILE_PATH)
df.to_excel(BACKUP_PATH, index=False)
print(f"Backed up original viethoa.xlsx to {BACKUP_PATH}")

print("Translating Chunk 1 (Rows 8021 to 8545)...")
