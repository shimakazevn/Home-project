import pandas as pd
import re
import sys
import os

sys.stdout.reconfigure(encoding='utf-8')

FILE_PATH = r'E:\HOME_\translation\viethoa.xlsx'
df = pd.read_excel(FILE_PATH)

print(f"Loaded {len(df)} rows from {FILE_PATH}")
untranslated = df[df['vietnamese'].isna() | (df['vietnamese'].astype(str).str.strip() == '')]
print(f"Untranslated count before: {len(untranslated)}")
