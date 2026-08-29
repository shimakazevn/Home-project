#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script tái nhập (Import) bản dịch từ CSV / XLSX vào kịch bản .ks
Dự án: HOME (ROOM) - RJ01556529
"""

import sys
from pathlib import Path

# Thêm đường dẫn thư mục hiện tại
sys.path.insert(0, str(Path(__file__).resolve().parent))
from reimport_scenario import load_translations, reimport_and_patch

if __name__ == '__main__':
    print("=" * 60)
    print("  TÁI NHẬP BẢN DỊCH VÀO KỊCH BẢN TYRANOSCRIPT .KS")
    print("=" * 60)
    records = load_translations()
    reimport_and_patch(records)
    print("\n>>> RE-IMPORT HOÀN TẤT THÀNH CÔNG!")
