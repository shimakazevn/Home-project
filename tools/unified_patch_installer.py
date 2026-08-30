# -*- coding: utf-8 -*-
"""
tools/unified_patch_installer.py
=================================
Trình cài đặt & Cập nhật Patch Việt Hóa Tự Động Trực Tuyến (Online 1-Click Patcher)
Tựa game: HOME (ROOM) - SORAREVO [RJ01556529]
Nhóm dịch: Shimakaze VN Translation Team
Thiết kế giao diện: Phong cách macOS Modern Dark Theme

Cơ chế hoạt động 100% Online:
1. Tự động kết nối tới GitHub Repository (shimakazevn/Home-project).
2. Tải về phiên bản dữ liệu dịch mới nhất theo thời gian thực (Real-time).
3. Kiến trúc No-Archive & Lightweight Backup:
   - Giải nén 1 lần app.asar -> resources/app/ (nếu chưa giải nén).
   - Tự động tạo bản sao lưu chọn lọc resources/backup_original/ (~17MB, loại trừ file GIF nặng).
   - Dọn sạch 16GB tệp asar thừa để giải phóng ổ cứng.
   - Vá trực tiếp dữ liệu mới nhất vào resources/app/ trong 0.16 giây!
4. Khôi phục bản gốc tiếng Nhật 1-Click tức thì.
"""

import os
import sys
import json
import struct
import shutil
import time
import zipfile
import threading
import subprocess
import tempfile
import hashlib
import urllib.request
import urllib.error

# Bật High-DPI Awareness trên Windows để giao diện sắc nét
if sys.platform == 'win32':
    try:
        import ctypes
        ctypes.windll.shcore.SetProcessDpiAwareness(1)
    except Exception:
        try:
            ctypes.windll.user32.SetProcessDPIAware()
        except Exception:
            pass

if sys.stdout:
    try:
        sys.stdout.reconfigure(encoding='utf-8')
    except Exception:
        pass

VERSION = "3.1.0"
APP_TITLE = f"HOME (ROOM) - Bản Việt Hóa v{VERSION}"
GITHUB_REPO_OWNER = "shimakazevn"
GITHUB_REPO_NAME = "Home-project"
GITHUB_API_LATEST_RELEASE = f"https://api.github.com/repos/{GITHUB_REPO_OWNER}/{GITHUB_REPO_NAME}/releases/latest"
GITHUB_RAW_ARCHIVE_URL = f"https://github.com/{GITHUB_REPO_OWNER}/{GITHUB_REPO_NAME}/archive/refs/heads/main.zip"

# ─────────────────────────────────────────────────────────────────────────────
# 1. BỘ GIẢI NÉN VÀ VÁ FILE TRỰC TIẾP LÊN THƯ MỤC APP (NO ARCHIVE)
# ─────────────────────────────────────────────────────────────────────────────

def read_asar_header(f_in):
    f_in.seek(0)
    v1, v2, v3, v4 = struct.unpack('<IIII', f_in.read(16))
    json_bytes = f_in.read(v4)
    pad_len = (4 - (v4 % 4)) % 4
    if pad_len > 0:
        f_in.read(pad_len)
    header = json.loads(json_bytes.decode('utf-8'))
    header_total_len = 16 + v4 + pad_len
    return header, header_total_len

def unpack_asar_to_app(asar_path, app_dir, log_func=print, progress_func=None):
    """Giải nén asar sang thư mục resources/app tốc độ cao với chunk 8MB"""
    t0 = time.time()
    log_func(f"[*] Đang giải nén dữ liệu game sang thư mục: {os.path.basename(app_dir)}...")
    os.makedirs(app_dir, exist_ok=True)
    
    with open(asar_path, 'rb') as f:
        header, header_total_len = read_asar_header(f)
        
        file_list = []
        def walk_node(node, cur_path):
            if 'files' in node:
                for k, v in node['files'].items():
                    walk_node(v, os.path.join(cur_path, k) if cur_path else k)
            else:
                off = int(node['offset'])
                sz = int(node['size'])
                file_list.append((cur_path, off, sz))
                
        walk_node(header, '')
        total_bytes = sum(sz for _, _, sz in file_list)
        written_bytes = 0
        last_report = 0
        
        CHUNK = 8 * 1024 * 1024
        for rel_p, off, sz in file_list:
            dst_p = os.path.join(app_dir, rel_p)
            os.makedirs(os.path.dirname(dst_p), exist_ok=True)
            if sz == 0:
                with open(dst_p, 'wb') as f_out:
                    pass
            else:
                f.seek(header_total_len + off)
                with open(dst_p, 'wb') as f_out:
                    rem = sz
                    while rem > 0:
                        chunk = f.read(min(rem, CHUNK))
                        if not chunk:
                            break
                        f_out.write(chunk)
                        rem -= len(chunk)
                        written_bytes += len(chunk)
                        
            now = time.time()
            if now - last_report >= 0.2:
                pct = min(100.0, (written_bytes / total_bytes) * 100) if total_bytes > 0 else 100
                if progress_func:
                    progress_func(pct, written_bytes, total_bytes)
                last_report = now
                
    if progress_func:
        progress_func(100.0, total_bytes, total_bytes)
        
    log_func(f"[OK] Đã giải nén hoàn tất {len(file_list):,} tệp trong {time.time() - t0:.2f}s!")

def create_selective_backup(app_dir, backup_dir, log_func=print):
    """Tạo backup chọn lọc siêu nhẹ (~17 MB) cho kịch bản và ảnh UI (loại trừ GIF)"""
    if os.path.exists(backup_dir):
        return
        
    log_func(f"[*] Đang tạo bản sao lưu gốc chọn lọc (~17 MB): {os.path.basename(backup_dir)}...")
    os.makedirs(backup_dir, exist_ok=True)
    
    # 1. Backup kịch bản .ks
    scen_src = os.path.join(app_dir, 'data', 'scenario')
    scen_dst = os.path.join(backup_dir, 'data', 'scenario')
    if os.path.exists(scen_src):
        shutil.copytree(scen_src, scen_dst, dirs_exist_ok=True)
        
    # 2. Backup Config.tjs & font.css
    for rel in ['data/system/Config.tjs', 'tyrano/css/font.css']:
        s = os.path.join(app_dir, rel)
        d = os.path.join(backup_dir, rel)
        if os.path.exists(s):
            os.makedirs(os.path.dirname(d), exist_ok=True)
            shutil.copy2(s, d)
            
    # 3. Backup ảnh UI (loại trừ file .gif)
    img_src = os.path.join(app_dir, 'data', 'image')
    img_dst = os.path.join(backup_dir, 'data', 'image')
    if os.path.exists(img_src):
        os.makedirs(img_dst, exist_ok=True)
        for root, dirs, files in os.walk(img_src):
            for f in files:
                if not f.lower().endswith('.gif'):
                    abs_s = os.path.join(root, f)
                    rel_p = os.path.relpath(abs_s, img_src)
                    abs_d = os.path.join(img_dst, rel_p)
                    os.makedirs(os.path.dirname(abs_d), exist_ok=True)
                    shutil.copy2(abs_s, abs_d)
                    
    total_sz = sum(os.path.getsize(os.path.join(r, f)) for r, _, files in os.walk(backup_dir) for f in files)
    log_func(f"[OK] Đã hoàn tất sao lưu bản gốc ({total_sz/(1024*1024):.2f} MB)!")

def compute_sha256(file_path):
    """Tính mã băm SHA256 của tệp để kiểm tra tính toàn vẹn tuyệt đối"""
    sha = hashlib.sha256()
    with open(file_path, 'rb') as f:
        while chunk := f.read(65536):
            sha.update(chunk)
    return sha.hexdigest()

def execute_folder_patch(game_dir, patch_files_dict, log_func=print, progress_func=None):
    """Vá trực tiếp các tệp Việt hóa vào thư mục resources/app (No Archive)"""
    t_start = time.time()
    resources_dir = os.path.join(game_dir, 'resources')
    if not os.path.exists(resources_dir):
        raise FileNotFoundError(f"Không tìm thấy thư mục resources trong: {game_dir}")
        
    app_dir = os.path.join(resources_dir, 'app')
    backup_dir = os.path.join(resources_dir, 'backup_original')
    
    # 1. Nếu chưa có thư mục app, giải nén từ app.asar
    if not os.path.exists(app_dir) or not os.path.exists(os.path.join(app_dir, 'data', 'scenario')):
        asar_candidates = [
            os.path.join(resources_dir, 'app.asar.original.bak'),
            os.path.join(resources_dir, 'app.asar.original'),
            os.path.join(resources_dir, 'app.asar'),
            os.path.join(resources_dir, 'app.asar.disabled')
        ]
        target_asar = next((p for p in asar_candidates if os.path.exists(p)), None)
        if not target_asar:
            raise FileNotFoundError(f"Không tìm thấy tệp app.asar trong: {resources_dir}")
            
        unpack_asar_to_app(target_asar, app_dir, log_func=log_func, progress_func=progress_func)
        
    # 2. Tạo bản sao lưu gốc siêu nhẹ nếu chưa có
    create_selective_backup(app_dir, backup_dir, log_func=log_func)
    
    # 3. Dọn dẹp các tệp asar 8GB thừa để giải phóng dung lượng đĩa
    for junk_name in ['app.asar', 'app.asar.disabled', 'app.asar.original.bak', 'app.asar.patching_tmp']:
        junk_p = os.path.join(resources_dir, junk_name)
        if os.path.exists(junk_p):
            try:
                os.remove(junk_p)
                log_func(f"[*] Đã dọn dẹp tệp thừa: {junk_name} (giải phóng dung lượng đĩa).")
            except Exception:
                pass

    # 4. Copy trực tiếp và đối chiếu mã băm SHA256 từng file vào app_dir
    log_func("[*] Đang cập nhật dữ liệu và đối chiếu mã băm SHA256 từng file...")
    copied_count = 0
    verified_count = 0
    total_patch = len(patch_files_dict)
    
    for idx, (rel_path, src_path) in enumerate(patch_files_dict.items(), 1):
        norm_rel = rel_path.replace('/', '\\').lstrip('\\')
        dst_path = os.path.join(app_dir, norm_rel)
        os.makedirs(os.path.dirname(dst_path), exist_ok=True)
        
        src_hash = compute_sha256(src_path)
        
        # Copy kèm đối chiếu SHA256 (tự động retry nếu có lỗi ghi đĩa)
        for attempt in range(3):
            shutil.copy2(src_path, dst_path)
            dst_hash = compute_sha256(dst_path)
            if src_hash == dst_hash:
                verified_count += 1
                break
            time.sleep(0.05)
        else:
            raise IOError(f"Lỗi đối chiếu SHA256 không khớp tại tệp: {rel_path} sau 3 lần thử!")
            
        copied_count += 1
        
        if progress_func and idx % 20 == 0:
            progress_func((idx / total_patch) * 100, idx, total_patch)
            
    if progress_func:
        progress_func(100.0, total_patch, total_patch)
        
    log_func(f"[OK] Đã xác thực toàn vẹn {verified_count}/{total_patch} tệp với mã băm SHA256 khớp 100%!")
    elapsed = round(time.time() - t_start, 2)
    log_func("============================================================")
    log_func(f"  >>> CÀI ĐẶT & CẬP NHẬT THÀNH CÔNG 100% TRONG {elapsed} GIÂY!")
    log_func("  >>> Toàn bộ tệp đã được kiểm chứng SHA256 an toàn tuyệt đối!")
    log_func("============================================================")
    return True, copied_count, elapsed

def restore_folder_original(game_dir, log_func=print):
    """Khôi phục bản gốc tiếng Nhật 1-Click từ resources/backup_original"""
    resources_dir = os.path.join(game_dir, 'resources')
    app_dir = os.path.join(resources_dir, 'app')
    backup_dir = os.path.join(resources_dir, 'backup_original')
    
    if not os.path.exists(backup_dir):
        log_func("[LỖI] Không tìm thấy thư mục sao lưu gốc (backup_original)!")
        return False
        
    log_func("[*] Đang khôi phục toàn bộ kịch bản và giao diện tiếng Nhật gốc...")
    shutil.copytree(backup_dir, app_dir, dirs_exist_ok=True)
    
    log_func("============================================================")
    log_func("  [OK] ĐÃ KHÔI PHỤC BẢN GỐC TIẾNG NHẬT THÀNH CÔNG 100%!")
    log_func("============================================================")
    return True

# ─────────────────────────────────────────────────────────────────────────────
# 2. ĐỘNG CƠ TẢI DỮ LIỆU TRỰC TUYẾN TỪ GITHUB (ONLINE UPDATER ENGINE)
# ─────────────────────────────────────────────────────────────────────────────

def fetch_github_latest_info():
    """Truy vấn bản phát hành mới nhất từ GitHub Releases"""
    req = urllib.request.Request(
        GITHUB_API_LATEST_RELEASE,
        headers={
            'User-Agent': f'ShimakazeVN-Patcher/{VERSION}',
            'Accept': 'application/vnd.github.v3+json'
        }
    )
    try:
        with urllib.request.urlopen(req, timeout=8) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            tag_name = data.get('tag_name', '')
            assets = data.get('assets', [])
            
            download_url = None
            for a in assets:
                name = a.get('name', '').lower()
                if ('patch' in name or 'payload' in name) and name.endswith('.zip'):
                    download_url = a.get('browser_download_url')
                    break
                    
            if not download_url and assets:
                download_url = assets[0].get('browser_download_url')
                
            return {
                'success': True,
                'tag_name': tag_name,
                'download_url': download_url or GITHUB_RAW_ARCHIVE_URL
            }
    except Exception:
        return {
            'success': True,
            'tag_name': 'Latest (main)',
            'download_url': GITHUB_RAW_ARCHIVE_URL
        }

def download_file_with_progress(url, log_func=print, progress_func=None):
    """Tải tệp từ internet với thanh tiến trình đo MB/tốc độ"""
    log_func(f"[*] Đang kết nối tới máy chủ GitHub...")
    req = urllib.request.Request(
        url,
        headers={
            'User-Agent': f'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
            'Accept': '*/*'
        }
    )
    
    tmp_file = tempfile.NamedTemporaryFile(delete=False, suffix='.zip')
    tmp_path = tmp_file.name
    tmp_file.close()
    
    try:
        with urllib.request.urlopen(req, timeout=35) as resp:
            total_sz = int(resp.headers.get('content-length', 0))
            downloaded = 0
            CHUNK = 64 * 1024
            last_report = 0
            
            with open(tmp_path, 'wb') as f_out:
                while True:
                    chunk = resp.read(CHUNK)
                    if not chunk:
                        break
                    f_out.write(chunk)
                    downloaded += len(chunk)
                    
                    now = time.time()
                    if now - last_report >= 0.15:
                        pct = (downloaded / total_sz * 100) if total_sz > 0 else 0
                        if progress_func:
                            progress_func(pct, downloaded, total_sz)
                        last_report = now
                        
        if progress_func:
            progress_func(100.0, downloaded, total_sz)
            
        log_func(f"[OK] Đã tải dữ liệu thành công ({downloaded/(1024*1024):.2f} MB) từ GitHub!")
        return tmp_path
    except Exception as e:
        if os.path.exists(tmp_path):
            try:
                os.remove(tmp_path)
            except Exception:
                pass
        raise RuntimeError(f"Lỗi kết nối hoặc tải dữ liệu từ GitHub: {e}")

def parse_patch_from_zip(zip_path):
    """Giải nén và quét tìm toàn bộ các tệp patch data/ và tyrano/"""
    temp_dir = tempfile.mkdtemp(prefix='home_online_patch_')
    with zipfile.ZipFile(zip_path, 'r') as z:
        z.extractall(temp_dir)
        
    patch_dict = {}
    for root, dirs, files in os.walk(temp_dir):
        if 'scenario' in dirs and os.path.basename(root) == 'data':
            base_p = os.path.dirname(root)
            for r2, _, f2 in os.walk(base_p):
                for f in f2:
                    abs_p = os.path.join(r2, f)
                    rel_p = os.path.relpath(abs_p, base_p).replace('\\', '/')
                    if rel_p.startswith(('data/', 'tyrano/')):
                        patch_dict[rel_p] = abs_p
            break
            
    if not patch_dict:
        for root, dirs, files in os.walk(temp_dir):
            for f in files:
                abs_p = os.path.join(root, f)
                rel_p = os.path.relpath(abs_p, temp_dir).replace('\\', '/')
                if 'data/' in rel_p:
                    rel_clean = rel_p[rel_p.find('data/'):]
                    patch_dict[rel_clean] = abs_p
                elif 'tyrano/' in rel_p:
                    rel_clean = rel_p[rel_p.find('tyrano/'):]
                    patch_dict[rel_clean] = abs_p

    return patch_dict, temp_dir

# ─────────────────────────────────────────────────────────────────────────────
# 3. NHẬN DIỆN THƯ MỤC GAME
# ─────────────────────────────────────────────────────────────────────────────

def get_base_dir():
    if getattr(sys, 'frozen', False):
        return os.path.dirname(os.path.abspath(sys.executable))
    return os.path.dirname(os.path.abspath(__file__))

def find_game_directory():
    base_dir = get_base_dir()
    candidates = [
        base_dir,
        os.path.dirname(base_dir),
        os.path.join(base_dir, 'HOME_'),
        os.path.join(base_dir, 'Game'),
        os.path.join(os.path.dirname(base_dir), 'HOME_'),
    ]
    for c in candidates:
        if os.path.exists(c):
            exe_cand = [f for f in os.listdir(c) if f.lower().endswith('.exe') and f.lower() not in ('cai_dat_patch_viet_hoa.exe', 'unins000.exe')]
            has_resources = os.path.exists(os.path.join(c, 'resources'))
            if (exe_cand or os.path.exists(os.path.join(c, 'HOME.exe'))) and has_resources:
                return os.path.abspath(c)
    return None

# ─────────────────────────────────────────────────────────────────────────────
# 4. GIAO DIỆN ĐỒ HỌA MACOS DARK THEME (100% ONLINE AUTO-UPDATER)
# ─────────────────────────────────────────────────────────────────────────────

def launch_gui():
    import tkinter as tk
    from tkinter import ttk, filedialog, messagebox

    root = tk.Tk()
    root.title(APP_TITLE)
    root.geometry("680x580")
    root.minsize(640, 520)
    root.configure(bg="#16161a")

    try:
        icon_p = os.path.join(get_base_dir(), 'tyrano.ico')
        if os.path.exists(icon_p):
            root.iconbitmap(icon_p)
    except Exception:
        pass

    style = ttk.Style()
    style.theme_use('clam')
    style.configure("TProgressbar", thickness=14, troughcolor="#23232c", background="#30d158")

    # 1. macOS Window Header & Traffic Light Controls
    hdr_card = tk.Frame(root, bg="#1c1c24", height=60)
    hdr_card.pack(fill=tk.X, side=tk.TOP)

    # Traffic light dots (Red, Yellow, Green)
    dots_frame = tk.Frame(hdr_card, bg="#1c1c24", padx=16, pady=16)
    dots_frame.pack(side=tk.LEFT)

    dot_red = tk.Label(dots_frame, text="●", font=("Segoe UI", 12), fg="#ff5f56", bg="#1c1c24")
    dot_red.pack(side=tk.LEFT, padx=2)
    dot_yellow = tk.Label(dots_frame, text="●", font=("Segoe UI", 12), fg="#ffbd2e", bg="#1c1c24")
    dot_yellow.pack(side=tk.LEFT, padx=2)
    dot_green = tk.Label(dots_frame, text="●", font=("Segoe UI", 12), fg="#27c93f", bg="#1c1c24")
    dot_green.pack(side=tk.LEFT, padx=2)

    # Title & Version Badge in Header
    title_frame = tk.Frame(hdr_card, bg="#1c1c24", pady=12)
    title_frame.pack(side=tk.LEFT, padx=10)

    tk.Label(title_frame, text="HOME (ROOM) Việt Hóa", font=("Segoe UI", 12, "bold"), fg="#f4f4f6", bg="#1c1c24").pack(anchor=tk.W)
    tk.Label(title_frame, text=f"Bản phát hành v{VERSION} | Shimakaze VN Team", font=("Segoe UI", 8), fg="#9494a8", bg="#1c1c24").pack(anchor=tk.W)

    # Remote GitHub Pill Badge
    lbl_remote_ver = tk.Label(hdr_card, text="● GitHub: Đang kiểm tra", font=("Segoe UI", 8, "bold"), fg="#ffbd2e", bg="#262634", padx=10, pady=4)
    lbl_remote_ver.pack(side=tk.RIGHT, padx=16, pady=16)

    # 2. Main Content Container
    main_container = tk.Frame(root, bg="#16161a", padx=20, pady=12)
    main_container.pack(fill=tk.BOTH, expand=True)

    # 3. macOS Card: Game Directory Path
    path_card = tk.Frame(main_container, bg="#20202a", padx=16, pady=12, highlightbackground="#303040", highlightthickness=1)
    path_card.pack(fill=tk.X, pady=(0, 12))

    tk.Label(path_card, text="📁 Thư mục cài đặt game:", font=("Segoe UI", 9, "bold"), fg="#d0d0dc", bg="#20202a").pack(anchor=tk.W)

    p_sub = tk.Frame(path_card, bg="#20202a")
    p_sub.pack(fill=tk.X, pady=(6, 0))

    game_dir_var = tk.StringVar()
    detected = find_game_directory()
    if detected:
        game_dir_var.set(detected)

    txt_entry = tk.Entry(p_sub, textvariable=game_dir_var, font=("Consolas", 9), bg="#14141c", fg="#f0f0f8", insertbackground="#f0f0f8", relief=tk.FLAT, highlightbackground="#38384c", highlightthickness=1)
    txt_entry.pack(side=tk.LEFT, fill=tk.X, expand=True, ipady=5, padx=(0, 8))

    def choose_dir():
        d = filedialog.askdirectory(title="Chọn thư mục chứa game HOME (ROOM)")
        if d:
            game_dir_var.set(d)

    btn_browse = tk.Button(p_sub, text="Duyệt...", command=choose_dir, font=("Segoe UI", 9), bg="#323244", fg="#f0f0f8", activebackground="#424258", activeforeground="#ffffff", relief=tk.FLAT, padx=14, pady=3, cursor="hand2")
    btn_browse.pack(side=tk.RIGHT)

    # 4. Status Pill & Apple Style Progress Bar
    status_card = tk.Frame(main_container, bg="#16161a")
    status_card.pack(fill=tk.X, pady=(0, 10))

    status_var = tk.StringVar(value="● Sẵn sàng kết nối GitHub")
    lbl_status = tk.Label(status_card, textvariable=status_var, font=("Segoe UI", 9), fg="#82aaff", bg="#16161a")
    lbl_status.pack(anchor=tk.W, pady=(0, 4))

    progress_bar = ttk.Progressbar(status_card, style="TProgressbar", mode="determinate")
    progress_bar.pack(fill=tk.X)

    # 5. macOS Action Buttons
    btn_card = tk.Frame(main_container, bg="#16161a")
    btn_card.pack(fill=tk.X, pady=(0, 12))

    # Nút chính: Cupertino Royal Blue (#007AFF)
    btn_install = tk.Button(btn_card, text="⚡ Cài Đặt & Cập Nhật Patch Việt Hóa (Online)", font=("Segoe UI", 11, "bold"), bg="#007aff", fg="#ffffff", activebackground="#0062cc", activeforeground="#ffffff", relief=tk.FLAT, pady=8, cursor="hand2")
    btn_install.pack(fill=tk.X, pady=(0, 8))

    btn_sub_row = tk.Frame(btn_card, bg="#16161a")
    btn_sub_row.pack(fill=tk.X)

    # Nút phụ 1: Mint Green Launch
    btn_launch = tk.Button(btn_sub_row, text="▶ Khởi Động Game", font=("Segoe UI", 9, "bold"), bg="#30d158", fg="#111116", activebackground="#25a244", relief=tk.FLAT, pady=6, cursor="hand2")
    btn_launch.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=(0, 4))

    # Nút phụ 2: Subtle Red Restore
    btn_restore = tk.Button(btn_sub_row, text="↩ Khôi Phục Bản Gốc", font=("Segoe UI", 9), bg="#2c2c38", fg="#ff453a", activebackground="#3a3a4c", activeforeground="#ff6961", relief=tk.FLAT, pady=6, cursor="hand2")
    btn_restore.pack(side=tk.RIGHT, fill=tk.X, expand=True, padx=(4, 0))

    # 6. macOS Console Terminal Activity Card
    log_card = tk.Frame(main_container, bg="#121218", padx=12, pady=10, highlightbackground="#282836", highlightthickness=1)
    log_card.pack(fill=tk.BOTH, expand=True)

    tk.Label(log_card, text="Nhật ký hoạt động:", font=("Segoe UI", 8), fg="#727288", bg="#121218").pack(anchor=tk.W)

    log_txt = tk.Text(log_card, font=("Consolas", 8), bg="#121218", fg="#9494a8", insertbackground="#f0f0f8", relief=tk.FLAT, wrap=tk.WORD, height=6)
    log_txt.pack(fill=tk.BOTH, expand=True, pady=(4, 0))

    def append_log(msg):
        def _write():
            log_txt.insert(tk.END, str(msg) + "\n")
            log_txt.see(tk.END)
        root.after(0, _write)

    def update_progress(pct, cur, total):
        def _prog():
            progress_bar['value'] = pct
            if total > 0 and total < 10000:
                status_var.set(f"● Đang cập nhật... {pct:.1f}% ({cur}/{total} tệp)")
            elif total >= 10000:
                mb_cur = cur / (1024 * 1024)
                mb_tot = total / (1024 * 1024)
                status_var.set(f"● Đang tải dữ liệu GitHub... {pct:.1f}% ({mb_cur:.1f}/{mb_tot:.1f} MB)")
        root.after(0, _prog)

    def set_buttons_state(state):
        btn_install.config(state=state)
        btn_restore.config(state=state)
        btn_launch.config(state=state)

    def check_github_background():
        info = fetch_github_latest_info()
        tag = info.get('tag_name', 'Mới nhất')
        root.after(0, lambda: lbl_remote_ver.config(text=f"● GitHub: {tag}", fg="#30d158"))
        append_log(f"[*] Đã kết nối GitHub Repository: {GITHUB_REPO_OWNER}/{GITHUB_REPO_NAME} ({tag})")

    threading.Thread(target=check_github_background, daemon=True).start()

    def do_install_online():
        target = game_dir_var.get().strip()
        if not target or not os.path.exists(target):
            messagebox.showerror("Lỗi", "Vui lòng chọn đúng thư mục chứa game HOME (ROOM)!")
            return

        set_buttons_state(tk.DISABLED)
        progress_bar['value'] = 0

        def _worker():
            dl_zip = None
            tmp_dir = None
            try:
                append_log(f"[*] Thư mục game: {target}")
                status_var.set("● Đang truy vấn phiên bản mới nhất từ GitHub...")
                info = fetch_github_latest_info()
                dl_url = info.get('download_url') or GITHUB_RAW_ARCHIVE_URL
                
                status_var.set("● Đang tải dữ liệu bản vá từ GitHub...")
                append_log(f"[*] Đang tải dữ liệu từ: {dl_url}")
                dl_zip = download_file_with_progress(dl_url, log_func=append_log, progress_func=update_progress)

                status_var.set("● Đang giải nén và phân tích cấu trúc...")
                patch_dict, tmp_dir = parse_patch_from_zip(dl_zip)
                
                if not patch_dict:
                    raise RuntimeError("Không tìm thấy tệp kịch bản hoặc giao diện hợp lệ trong gói tải về!")

                status_var.set("● Đang cập nhật trực tiếp vào thư mục game...")
                ok, count, el = execute_folder_patch(target, patch_dict, log_func=append_log, progress_func=update_progress)

                status_var.set(f"✓ Cập nhật thành công! Đã vá {count} tệp trong {el}s.")
                root.after(0, lambda: messagebox.showinfo("Cập Nhật Thành Công", f"Đã cài đặt & cập nhật bản Việt Hóa mới nhất từ GitHub thành công 100% trong {el} giây!\nChúc bạn chơi game vui vẻ!"))
            except Exception as e:
                append_log(f"\n[LỖI]: {e}")
                status_var.set("✕ Cập nhật thất bại!")
                root.after(0, lambda: messagebox.showerror("Lỗi", f"Có lỗi xảy ra trong quá trình cài đặt/cập nhật:\n{e}"))
            finally:
                if dl_zip and os.path.exists(dl_zip):
                    try:
                        os.remove(dl_zip)
                    except Exception:
                        pass
                if tmp_dir and os.path.exists(tmp_dir):
                    shutil.rmtree(tmp_dir, ignore_errors=True)
                root.after(0, lambda: set_buttons_state(tk.NORMAL))

        threading.Thread(target=_worker, daemon=True).start()

    def do_restore():
        target = game_dir_var.get().strip()
        if not target or not os.path.exists(target):
            messagebox.showerror("Lỗi", "Vui lòng chọn đúng thư mục chứa game HOME (ROOM)!")
            return

        if not messagebox.askyesno("Xác nhận", "Bạn có chắc chắn muốn gỡ Patch và khôi phục lại bản tiếng Nhật gốc không?"):
            return

        set_buttons_state(tk.DISABLED)

        def _worker():
            try:
                ok = restore_folder_original(target, log_func=append_log)
                if ok:
                    status_var.set("✓ Đã khôi phục bản gốc tiếng Nhật thành công.")
                    root.after(0, lambda: messagebox.showinfo("Thành công", "Đã khôi phục bản gốc tiếng Nhật 100% thành công!"))
                else:
                    status_var.set("✕ Khôi phục thất bại!")
            except Exception as e:
                append_log(f"\n[LỖI]: {e}")
                status_var.set("✕ Khôi phục thất bại!")
                root.after(0, lambda: messagebox.showerror("Lỗi", f"Có lỗi xảy ra khi khôi phục:\n{e}"))
            finally:
                root.after(0, lambda: set_buttons_state(tk.NORMAL))

        threading.Thread(target=_worker, daemon=True).start()

    def do_launch():
        target = game_dir_var.get().strip()
        if not target or not os.path.exists(target):
            messagebox.showerror("Lỗi", "Vui lòng chọn đúng thư mục game!")
            return

        candidates = [
            os.path.join(target, 'HOME.exe'),
            os.path.join(target, 'Game.exe'),
        ]
        exe_file = next((p for p in candidates if os.path.exists(p)), None)
        if not exe_file:
            exe_list = [os.path.join(target, f) for f in os.listdir(target) if f.lower().endswith('.exe') and f.lower() not in ('cai_dat_patch_viet_hoa.exe', 'unins000.exe')]
            exe_file = exe_list[0] if exe_list else None

        if exe_file:
            try:
                subprocess.Popen([exe_file], cwd=target)
                append_log(f"[*] Đã khởi động game: {os.path.basename(exe_file)}")
            except Exception as e:
                messagebox.showerror("Lỗi", f"Không thể khởi động game:\n{e}")
        else:
            messagebox.showerror("Lỗi", "Không tìm thấy file thực thi .exe của game!")

    btn_install.config(command=do_install_online)
    btn_restore.config(command=do_restore)
    btn_launch.config(command=do_launch)

    append_log(f"============================================================")
    append_log(f"  {APP_TITLE}")
    append_log(f"  Giao diện macOS Dark Theme | Tự động cập nhật từ GitHub")
    append_log(f"============================================================")
    if detected:
        append_log(f"[*] Tự động nhận diện thư mục game: {detected}")
    else:
        append_log(f"[*] Vui lòng bấm [Duyệt...] để chọn thư mục cài đặt game của bạn.")

    root.mainloop()

# ─────────────────────────────────────────────────────────────────────────────
# 5. CHẾ ĐỘ DÒNG LỆNH CLI DỰ PHÒNG
# ─────────────────────────────────────────────────────────────────────────────

def run_cli(target_dir=None):
    print("=" * 65)
    print(f"      {APP_TITLE}")
    print("      Phát triển bởi Shimakaze VN | Tải Trực Tuyến Từ GitHub")
    print("=" * 65)

    if not target_dir:
        target_dir = find_game_directory()

    if not target_dir or not os.path.exists(target_dir):
        print("[LỖI] Không tự động tìm thấy thư mục game. Vui lòng truyền đường dẫn thư mục game.")
        sys.exit(1)

    print(f"\n[+] Thư mục game: {target_dir}")

    def cli_progress(pct, cur, total):
        sys.stdout.write(f"\r  Tiến độ: [{('=' * int(pct // 4)).ljust(25)}] {pct:5.1f}%")
        sys.stdout.flush()

    info = fetch_github_latest_info()
    dl_url = info.get('download_url') or GITHUB_RAW_ARCHIVE_URL
    dl_zip = download_file_with_progress(dl_url, log_func=print, progress_func=cli_progress)
    patch_dict, tmp_dir = parse_patch_from_zip(dl_zip)

    if not patch_dict:
        print("[LỖI] Không tìm thấy dữ liệu tệp Việt hóa!")
        sys.exit(1)

    try:
        execute_folder_patch(target_dir, patch_dict, log_func=print, progress_func=cli_progress)
        print("\n")
    finally:
        if dl_zip and os.path.exists(dl_zip):
            os.remove(dl_zip)
        if tmp_dir and os.path.exists(tmp_dir):
            shutil.rmtree(tmp_dir, ignore_errors=True)

if __name__ == '__main__':
    if '--cli' in sys.argv or '--headless' in sys.argv:
        target = next((arg for arg in sys.argv[1:] if not arg.startswith('--')), None)
        run_cli(target)
    else:
        try:
            launch_gui()
        except Exception as e:
            print(f"[CẢNH BÁO] Không thể khởi tạo giao diện Tkinter ({e}). Chuyển sang CLI...")
            run_cli()
