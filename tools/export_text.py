#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script trích xuất văn bản game sang CSV / XLSX
Dự án: HOME (ROOM) - RJ01556529
"""

import sys
from pathlib import Path

# Thêm đường dẫn thư mục hiện tại
sys.path.insert(0, str(Path(__file__).resolve().parent))
from export_scenario import extract_all, write_csv, write_xlsx, save_metadata

if __name__ == '__main__':
    print("=" * 60)
    print("  TRÍCH XUẤT KỊCH BẢN GAME HOME -> CSV & EXCEL")
    print("=" * 60)
    entries, metadata = extract_all()
    write_csv(entries)
    write_xlsx(entries)
    save_metadata(metadata)
    print("\n>>> TRÍCH XUẤT HOÀN TẤT THÀNH CÔNG!")
