# -*- coding: utf-8 -*-
"""
Master script to fill all 1,448 remaining untranslated lines into E:\HOME_\translation\viethoa.xlsx.
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

# Check current missing count
missing_before = df['vietnamese'].isna() | (df['vietnamese'].astype(str).str.strip() == '')
print(f"Missing count before: {missing_before.sum()}")
