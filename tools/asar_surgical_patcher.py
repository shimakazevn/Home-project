#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
asar_surgical_patcher.py
=========================
Patch app.asar trực tiếp (in-place, không extract, không repack).

Cách hoạt động:
  1. Đọc header JSON của app.asar → lấy offset/size từng file
  2. Ghi nội dung file patch vào đúng vị trí byte trong app.asar
  3. Cập nhật header JSON (size mới của từng file)
  4. Ghi header mới vào đầu file

Yêu cầu: tất cả file patch phải <= kích thước file gốc.
  (Bytes thừa được zero-padded, asar vẫn đọc đúng vì dùng size từ header)

Thời gian chạy: vài giây (không phụ thuộc vào kích thước asar!)
"""

import struct
import json
import os
import sys
import shutil

sys.stdout.reconfigure(encoding='utf-8')

ASAR_HEADER_BYTES = 8  # 4 bytes pickle indicator + 4 bytes header size field


def read_asar_header(asar_path: str):
    """Đọc header JSON từ file asar, trả về (header_dict, data_offset, raw_pickle_size)."""
    with open(asar_path, 'rb') as f:
        # Byte 0-3: luôn là \x04\x00\x00\x00 (chromeprotocol)
        magic = f.read(4)
        # Byte 4-7: kích thước "pickle" block (= 8 + header_json_len, aligned)
        pickle_size = struct.unpack('<I', f.read(4))[0]
        # Byte 8-11: \x04\x00\x00\x00 again
        f.read(4)
        # Byte 12-15: kích thước header JSON
        header_size = struct.unpack('<I', f.read(4))[0]
        # Byte 16...: header JSON
        header_json_bytes = f.read(header_size)
        header = json.loads(header_json_bytes)
        # Data bắt đầu ngay sau pickle block
        data_offset = 8 + pickle_size
        return header, data_offset, pickle_size


def write_asar_header(f, header: dict, original_pickle_size: int):
    """
    Ghi header mới vào đầu file asar.
    Header JSON mới có thể nhỏ hơn gốc → pad bằng null bytes (asar chỉ đọc đến header_size).
    Header JSON mới không được lớn hơn gốc (sẽ dịch chuyển toàn bộ data).
    """
    header_json = json.dumps(header, separators=(',', ':'), ensure_ascii=False).encode('utf-8')
    new_json_size = len(header_json)

    # pickle_size = 4 (inner uint32 = json size) + aligned(json)
    original_json_capacity = original_pickle_size - 4  # số bytes JSON có thể chứa (kể cả padding)

    if new_json_size > original_json_capacity:
        raise ValueError(
            f"Header JSON lớn hơn gốc: {new_json_size} > {original_json_capacity}. "
            "Cần full repack."
        )

    # Ghi vào file: giữ nguyên pickle_size, chỉ thay nội dung JSON + pad với 0x00
    f.seek(0)
    f.write(struct.pack('<I', 4))                    # outer magic (always 4)
    f.write(struct.pack('<I', original_pickle_size)) # pickle block size (UNCHANGED)
    f.write(struct.pack('<I', 4))                    # inner magic (always 4)
    f.write(struct.pack('<I', new_json_size))         # actual json size (updated!)
    f.write(header_json)
    # Zero-pad phần còn lại của pickle block
    remaining = original_json_capacity - new_json_size
    if remaining > 0:
        f.write(b'\x00' * remaining)


def navigate_asar_tree(node: dict, parts: list):
    """Di chuyển trong cây file của asar header theo đường dẫn parts."""
    for part in parts:
        if 'files' in node:
            node = node['files']
        if part not in node:
            return None
        node = node[part]
    return node


def patch_asar(asar_path: str, patch_dir: str, dry_run: bool = False):
    """
    Patch app.asar in-place.
    
    Args:
        asar_path: Đường dẫn tới app.asar cần patch
        patch_dir: Thư mục chứa các file patch (cấu trúc khớp với bên trong asar)
        dry_run:   Nếu True, chỉ kiểm tra không ghi
    
    Returns:
        (patched_count, skipped_count, errors)
    """
    print(f"\n{'[DRY RUN] ' if dry_run else ''}Đang đọc header asar...")
    header, data_offset, pickle_size = read_asar_header(asar_path)
    print(f"  Data offset: {data_offset:,} bytes ({data_offset/1024:.1f} KB)")

    # Thu thập danh sách file cần patch
    patch_jobs = []
    errors = []

    for root, dirs, files in os.walk(patch_dir):
        dirs[:] = [d for d in dirs if d != '__pycache__']
        for fname in files:
            if fname.endswith(('.zip', '.pyc')):
                continue
            src_path = os.path.join(root, fname)
            rel_path = os.path.relpath(src_path, patch_dir).replace(os.sep, '/')
            parts = rel_path.split('/')

            # Tìm file trong asar header
            node = navigate_asar_tree(header, parts)
            if node is None or 'size' not in node:
                errors.append(f"Không tìm thấy trong asar: {rel_path}")
                continue

            orig_size = node['size']
            file_offset_in_data = int(node['offset'])
            abs_offset = data_offset + file_offset_in_data

            new_data = open(src_path, 'rb').read()
            new_size = len(new_data)

            if new_size > orig_size:
                errors.append(
                    f"File lớn hơn gốc ({new_size} > {orig_size}): {rel_path} "
                    f"— cần repack đầy đủ"
                )
                continue

            patch_jobs.append({
                'rel_path': rel_path,
                'src_path': src_path,
                'abs_offset': abs_offset,
                'orig_size': orig_size,
                'new_size': new_size,
                'new_data': new_data,
                'node': node,
                'parts': parts,
            })

    print(f"\n  Tìm thấy {len(patch_jobs)} file cần patch")
    if errors:
        print(f"  ⚠  {len(errors)} file bỏ qua:")
        for e in errors:
            print(f"     {e}")

    if dry_run:
        print("\n[DRY RUN] Không ghi file. Kiểm tra OK!")
        return len(patch_jobs), 0, errors

    # Thực hiện patch
    print("\n  Đang ghi patches...")
    patched = 0
    skipped = 0

    with open(asar_path, 'r+b') as f:
        for job in patch_jobs:
            f.seek(job['abs_offset'])
            f.write(job['new_data'])
            # Zero-pad nếu file mới nhỏ hơn gốc (tránh rác data)
            pad = job['orig_size'] - job['new_size']
            if pad > 0:
                f.write(b'\x00' * pad)
            # Cập nhật size trong header (không đổi offset!)
            job['node']['size'] = job['new_size']
            patched += 1
            print(f"    ✓ {job['rel_path']} ({job['orig_size']} → {job['new_size']} bytes)")

        # Ghi lại header đã cập nhật
        print("\n  Đang ghi header mới...")
        try:
            write_asar_header(f, header, pickle_size)
        except ValueError as e:
            # Nếu header lớn hơn, cần padding trick
            print(f"  ⚠  {e}")
            print("  Fallback: ghi header với padding JSON...")
            # Tính lượng padding cần thiết và thêm spaces vào JSON
            header_json = json.dumps(header, separators=(',', ':'), ensure_ascii=False).encode('utf-8')
            current_json_size = len(header_json)
            original_json_size = pickle_size - 4  # rough estimate
            # Không thể làm gì, báo lỗi
            raise

    return patched, skipped, errors


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description='Surgical asar patcher cho HOME Việt hóa')
    parser.add_argument('asar', help='Đường dẫn tới app.asar')
    parser.add_argument('patch_dir', help='Thư mục patch files')
    parser.add_argument('--dry-run', action='store_true', help='Kiểm tra không ghi')
    args = parser.parse_args()

    if not os.path.exists(args.asar):
        print(f"[LỖI] Không tìm thấy: {args.asar}")
        sys.exit(1)
    if not os.path.isdir(args.patch_dir):
        print(f"[LỖI] Không tìm thấy thư mục: {args.patch_dir}")
        sys.exit(1)

    patched, skipped, errors = patch_asar(args.asar, args.patch_dir, args.dry_run)
    print(f"\n{'='*50}")
    print(f"Kết quả: {patched} file patched, {len(errors)} lỗi")
    if errors:
        sys.exit(1)
