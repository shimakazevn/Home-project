# -*- coding: utf-8 -*-
"""
asar_stream_patcher.py
Streaming 1-Pass ASAR Patcher (Pure Python - No Node.js / No npm / No external tools)

Cơ chế hoạt động:
1. Đọc header JSON của app.asar gốc (200KB).
2. Quét thư mục patch/ để xác định:
   - Các file cần thay thế (kể cả file lớn hơn hoặc nhỏ hơn gốc)
   - Các file mới cần thêm vào (font, plugin, script mới)
3. Tính toán lại toàn bộ offset và tạo header JSON mới chuẩn Chromium ASAR.
4. Ghi header mới vào file tạm (app.asar.patching_tmp).
5. Stream copy tuyến tính 1 lần duy nhất từ app.asar cũ và patch files vào file mới (buffer 16MB).
6. Hoán đổi file tạm thành app.asar chính thức.
   → Thời gian: ~10-20 giây trên SSD, an toàn 100%, không cần giải nén 8GB ra đĩa.
"""

import os
import sys
import json
import struct
import time
import shutil

sys.stdout.reconfigure(encoding='utf-8')


def read_asar_header(f):
    f.seek(0)
    magic = struct.unpack('<I', f.read(4))[0]
    pickle_size = struct.unpack('<I', f.read(4))[0]
    other_magic = struct.unpack('<I', f.read(4))[0]
    header_size = struct.unpack('<I', f.read(4))[0]
    
    header_bytes = f.read(header_size)
    header = json.loads(header_bytes.decode('utf-8'))
    
    pad = (4 - (header_size % 4)) % 4
    header_total_len = 16 + header_size + pad
    return header, header_total_len


def write_asar_header(f, header_dict):
    header_json = json.dumps(header_dict, separators=(',', ':'), ensure_ascii=False).encode('utf-8')
    header_size = len(header_json)
    
    # 4-byte padding
    pad = (4 - (header_size % 4)) % 4
    pickle_size = header_size + 4 + pad
    
    f.seek(0)
    f.write(struct.pack('<I', 4))
    f.write(struct.pack('<I', pickle_size))
    f.write(struct.pack('<I', 4))
    f.write(struct.pack('<I', header_size))
    f.write(header_json)
    if pad > 0:
        f.write(b'\x00' * pad)


def collect_existing_files(node, current_path=""):
    """Duyệt cây ASAR thu thập tất cả file {rel_path: {'offset': int, 'size': int}}"""
    files = {}
    if 'files' in node:
        for name, child in node['files'].items():
            child_path = f"{current_path}/{name}" if current_path else name
            if 'files' in child:
                files.update(collect_existing_files(child, child_path))
            elif 'offset' in child:
                files[child_path] = {
                    'offset': int(child['offset']),
                    'size': int(child['size']),
                    'node': child
                }
    return files


def ensure_node_path(root_files, parts):
    """Tạo các thư mục lồng nhau trong header JSON nếu chưa có"""
    curr = root_files
    for p in parts[:-1]:
        if p not in curr:
            curr[p] = {"files": {}}
        elif 'files' not in curr[p]:
            curr[p]['files'] = {}
        curr = curr[p]['files']
    return curr


def patch_asar_stream(asar_path: str, patch_dir: str):
    if not os.path.exists(asar_path):
        print(f"[LỖI] Không tìm thấy file: {asar_path}")
        return False

    if not os.path.exists(patch_dir):
        print(f"[LỖI] Không tìm thấy thư mục patch: {patch_dir}")
        return False

    print("==================================================")
    print("   HOME (ROOM) - STREAMING ASAR PATCHER v2.0")
    print("==================================================")
    
    t_start = time.time()
    tmp_path = asar_path + ".patching_tmp"

    # 1. Quét tất cả file patch trên đĩa
    patch_files = {}
    for root, _, files in os.walk(patch_dir):
        for f in files:
            full_p = os.path.join(root, f)
            rel_p = os.path.relpath(full_p, patch_dir).replace('\\', '/')
            patch_files[rel_p] = full_p

    print(f"[*] Đã quét {len(patch_files)} file Việt hóa trong patch/")

    # 2. Đọc header ASAR gốc
    print("[*] Đang đọc cấu trúc app.asar gốc...")
    with open(asar_path, 'rb') as f_in:
        old_header, old_header_len = read_asar_header(f_in)
        existing_files = collect_existing_files(old_header)

    print(f"[*] Tìm thấy {len(existing_files)} file trong archive gốc.")

    # 3. Tạo cấu trúc header mới
    new_header = json.loads(json.dumps(old_header)) # deep copy
    new_root_files = new_header['files']

    # Sắp xếp các file theo thứ tự offset cũ để stream đọc tuần tự 100% (không nhảy seek lùi)
    sorted_existing = sorted(existing_files.items(), key=lambda item: item[1]['offset'])

    # Chuẩn bị danh sách thao tác ghi tuần tự: list of (rel_path, source_type, source_info, size)
    # source_type: 'original' (từ f_in tại old_offset) hoặc 'patch' (từ patch file trên disk)
    write_plan = []
    current_new_offset = 0

    replaced_count = 0
    new_added_count = 0

    for rel_path, info in sorted_existing:
        if rel_path in patch_files:
            # File được thay thế bởi bản Việt hóa
            patch_src = patch_files[rel_path]
            new_size = os.path.getsize(patch_src)
            write_plan.append((rel_path, 'patch', patch_src, new_size))
            
            # Cập nhật node trong new_header
            parts = rel_path.split('/')
            parent = ensure_node_path(new_root_files, parts)
            parent[parts[-1]] = {
                'size': new_size,
                'offset': str(current_new_offset)
            }
            current_new_offset += new_size
            replaced_count += 1
        else:
            # File gốc giữ nguyên
            old_size = info['size']
            old_offset = info['offset']
            write_plan.append((rel_path, 'original', old_offset, old_size))
            
            # Cập nhật node trong new_header với offset mới
            parts = rel_path.split('/')
            parent = ensure_node_path(new_root_files, parts)
            parent[parts[-1]] = {
                'size': old_size,
                'offset': str(current_new_offset)
            }
            current_new_offset += old_size

    # Các file mới hoàn toàn trong patch_files (chưa có trong archive gốc)
    for rel_path, patch_src in patch_files.items():
        if rel_path not in existing_files:
            new_size = os.path.getsize(patch_src)
            write_plan.append((rel_path, 'patch', patch_src, new_size))
            
            parts = rel_path.split('/')
            parent = ensure_node_path(new_root_files, parts)
            parent[parts[-1]] = {
                'size': new_size,
                'offset': str(current_new_offset)
            }
            current_new_offset += new_size
            new_added_count += 1

    print(f"[*] Kế hoạch patch: {replaced_count} file cập nhật, {new_added_count} file mới thêm.")
    total_payload_bytes = current_new_offset
    total_gb = total_payload_bytes / (1024 ** 3)
    print(f"[*] Tổng dung lượng archive mới: {total_gb:.2f} GB")

    # 4. Stream ghi toàn bộ file mới
    print("[*] Đang ghi app.asar mới (tốc độ tối đa, stream 1-pass)...")
    
    CHUNK_SIZE = 16 * 1024 * 1024 # 16 MB buffer cho tốc độ đọc/ghi cao nhất
    written_bytes = 0
    last_print_time = 0

    # Nếu chưa có backup gốc thì tạo ngay từ asar_path trước khi patch
    backup_path = asar_path + ".backup_goc"
    if not os.path.exists(backup_path):
        print(f"[*] Tạo backup bản gốc: {backup_path}")
        shutil.copy2(asar_path, backup_path)

    with open(asar_path, 'rb') as f_in, open(tmp_path, 'wb') as f_out:
        # Ghi header mới
        write_asar_header(f_out, new_header)

        for rel_path, src_type, src_info, size in write_plan:
            if size == 0:
                continue

            if src_type == 'patch':
                with open(src_info, 'rb') as f_patch:
                    shutil.copyfileobj(f_patch, f_out, length=CHUNK_SIZE)
                written_bytes += size
            else: # 'original'
                old_offset = src_info
                f_in.seek(old_header_len + old_offset)
                
                remaining = size
                while remaining > 0:
                    read_len = min(remaining, CHUNK_SIZE)
                    chunk = f_in.read(read_len)
                    if not chunk:
                        raise EOFError(f"Unexpected end of file while reading {rel_path}")
                    f_out.write(chunk)
                    remaining -= len(chunk)
                    written_bytes += len(chunk)

            # Cập nhật progress mỗi 0.3s
            now = time.time()
            if now - last_print_time >= 0.3:
                pct = (written_bytes / total_payload_bytes) * 100
                curr_gb = written_bytes / (1024 ** 3)
                sys.stdout.write(f"\r  Progress: [{('=' * int(pct // 4)).ljust(25)}] {pct:5.1f}% ({curr_gb:.2f}/{total_gb:.2f} GB)")
                sys.stdout.flush()
                last_print_time = now

    sys.stdout.write(f"\r  Progress: [{'=' * 25}] 100.0% ({total_gb:.2f}/{total_gb:.2f} GB)\n")
    sys.stdout.flush()

    # 5. Hoán đổi file an toàn
    print("[*] Hoàn tất ghi dữ liệu. Đang cập nhật app.asar...")
    if os.path.exists(asar_path):
        os.remove(asar_path)
    os.rename(tmp_path, asar_path)

    elapsed = time.time() - t_start
    print("==================================================")
    print(f"   PATCH THÀNH CÔNG trong {elapsed:.1f} giây!")
    print(f"   Đã áp dụng: {replaced_count + new_added_count} files.")
    print("==================================================")
    return True


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print("Sử dụng: python asar_stream_patcher.py <đường_dẫn_app.asar> <thư_mục_patch>")
        sys.exit(1)
    
    asar_arg = sys.argv[1]
    patch_arg = sys.argv[2]
    
    success = patch_asar_stream(asar_arg, patch_arg)
    if not success:
        sys.exit(1)
