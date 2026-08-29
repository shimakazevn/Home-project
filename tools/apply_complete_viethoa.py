# -*- coding: utf-8 -*-
"""
Apply all translations to E:\HOME_\translation\viethoa.xlsx and verify 100% completion.
"""
import pandas as pd
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')
sys.path.append(r'E:\HOME_\tools')

from p1_dict_part1 import P1_DICT
from p1_dict_part2 import P1_DICT_2
from p1_dict_part3 import P1_DICT_3
from p1_dict_part4 import P1_DICT_4
from p1_dict_part5 import P1_DICT_5

from p2_dict_part1 import P2_DICT_1
from p2_dict_part2 import P2_DICT_2
from p2_dict_part3 import P2_DICT_3
from p2_dict_part4 import P2_DICT_4

# Combine all dictionaries
ALL_TRANSLATIONS = {}
ALL_TRANSLATIONS.update(P1_DICT)
ALL_TRANSLATIONS.update(P1_DICT_2)
ALL_TRANSLATIONS.update(P1_DICT_3)
ALL_TRANSLATIONS.update(P1_DICT_4)
ALL_TRANSLATIONS.update(P1_DICT_5)

ALL_TRANSLATIONS.update(P2_DICT_1)
ALL_TRANSLATIONS.update(P2_DICT_2)
ALL_TRANSLATIONS.update(P2_DICT_3)
ALL_TRANSLATIONS.update(P2_DICT_4)

print(f"Total new translations loaded: {len(ALL_TRANSLATIONS)}")

FILE_PATH = r'E:\HOME_\translation\viethoa.xlsx'
df = pd.read_excel(FILE_PATH)
print(f"Total rows in viethoa.xlsx: {len(df)}")

missing_before = df['vietnamese'].isna() | (df['vietnamese'].astype(str).str.strip() == '')
print(f"Missing before update: {missing_before.sum()}")

# Apply translations
applied_count = 0
for row_num, trans_text in ALL_TRANSLATIONS.items():
    idx = row_num - 1
    if 0 <= idx < len(df):
        df.at[idx, 'vietnamese'] = trans_text
        applied_count += 1

print(f"Applied {applied_count} translations to DataFrame.")

missing_after = df['vietnamese'].isna() | (df['vietnamese'].astype(str).str.strip() == '')
print(f"Missing after update: {missing_after.sum()} / {len(df)}")

if missing_after.sum() == 0:
    print("🎉 100% OF ALL 9,922 ROWS IN VIETHOA.XLSX ARE FULLY TRANSLATED!")
    # Save back to Excel
    df.to_excel(FILE_PATH, index=False)
    print(f"Saved completed dataset to {FILE_PATH}")
    
    # Also sync to text_export.xlsx
    export_path = r'E:\HOME_\translation\text_export.xlsx'
    df.to_excel(export_path, index=False)
    print(f"Synced completed dataset to {export_path}")
else:
    print(f"Warning: {missing_after.sum()} rows still missing!")
    missing_indices = df[missing_after].index.tolist()
    print("Missing row indices (1-based):", [i+1 for i in missing_indices[:20]])
