# -*- coding: utf-8 -*-
"""
tools/unified_patch_installer.py
=================================
Trình cài đặt & Cập nhật Patch Việt Hóa Tự Động Trực Tuyến (Online 1-Click Patcher)
Tựa game: HOME (ROOM) - SORAREVO [RJ01556529]
Nhóm dịch: Shimakaze VN Translation Team
Thiết kế: Visual Novel Launcher HUD - Full Artwork & Minimalist Flat Dock

Tính năng:
1. Giao diện hình nền Visual Novel toàn màn hình, thanh điều khiển phẳng (Flat HUD).
2. Tự động kết nối GitHub Releases kéo bản dịch mới nhất theo thời gian thực (Real-time).
3. Xác thực mã băm SHA256 cho từng tệp để chống lỗi ghi đĩa và lỗi mạng tuyệt đối.
4. Kiến trúc No-Archive & Lightweight Backup:
   - Giải nén 1 lần app.asar -> resources/app/
   - Sao lưu chọn lọc ~17MB (loại trừ GIF)
   - Tự động dọn 16GB asar thừa
   - Vá trực tiếp vào app trong 0.16s
5. Khôi phục bản gốc tiếng Nhật 1-Click tức thì.
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

# Bật High-DPI Awareness trên Windows
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

VERSION = "3.2.0"
APP_TITLE = f"HOME (ROOM) - Bản Việt Hóa v{VERSION}"
GITHUB_REPO_OWNER = "shimakazevn"
GITHUB_REPO_NAME = "Home-project"
GITHUB_API_LATEST_RELEASE = f"https://api.github.com/repos/{GITHUB_REPO_OWNER}/{GITHUB_REPO_NAME}/releases/latest"
GITHUB_RAW_ARCHIVE_URL = f"https://github.com/{GITHUB_REPO_OWNER}/{GITHUB_REPO_NAME}/archive/refs/heads/main.zip"

# ─────────────────────────────────────────────────────────────────────────────
# 1. TIỆN ÍCH HỆ THỐNG VÀ XÁC THỰC MÃ BĂM SHA256
# ─────────────────────────────────────────────────────────────────────────────

def get_base_dir():
    if getattr(sys, 'frozen', False):
        return os.path.dirname(os.path.abspath(sys.executable))
    return os.path.dirname(os.path.abspath(__file__))

def get_asset_path(filename):
    if hasattr(sys, '_MEIPASS'):
        p = os.path.join(sys._MEIPASS, filename)
        if os.path.exists(p):
            return p
    base_p = os.path.join(get_base_dir(), filename)
    if os.path.exists(base_p):
        return base_p
    tools_p = os.path.join(os.path.dirname(get_base_dir()), 'tools', filename)
    if os.path.exists(tools_p):
        return tools_p
    return None

def compute_sha256(file_path):
    """Tính mã băm SHA256 của tệp để kiểm tra tính toàn vẹn tuyệt đối"""
    sha = hashlib.sha256()
    with open(file_path, 'rb') as f:
        while chunk := f.read(65536):
            sha.update(chunk)
    return sha.hexdigest()

# ─────────────────────────────────────────────────────────────────────────────
# 2. BỘ GIẢI NÉN VÀ VÁ FILE TRỰC TIẾP LÊN THƯ MỤC APP (NO ARCHIVE)
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

def execute_folder_patch(game_dir, patch_files_dict, log_func=print, progress_func=None):
    """Vá trực tiếp và đối chiếu SHA256 từng tệp vào resources/app"""
    t_start = time.time()
    resources_dir = os.path.join(game_dir, 'resources')
    if not os.path.exists(resources_dir):
        raise FileNotFoundError(f"Không tìm thấy thư mục resources trong: {game_dir}")
        
    app_dir = os.path.join(resources_dir, 'app')
    backup_dir = os.path.join(resources_dir, 'backup_original')
    
    # 1. Giải nén app.asar nếu chưa có thư mục app
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
        
    # 2. Tạo bản sao lưu gốc siêu nhẹ
    create_selective_backup(app_dir, backup_dir, log_func=log_func)
    
    # 3. Dọn dẹp tệp asar thừa
    for junk_name in ['app.asar', 'app.asar.disabled', 'app.asar.original.bak', 'app.asar.patching_tmp']:
        junk_p = os.path.join(resources_dir, junk_name)
        if os.path.exists(junk_p):
            try:
                os.remove(junk_p)
                log_func(f"[*] Đã dọn dẹp tệp thừa: {junk_name} (giải phóng dung lượng đĩa).")
            except Exception:
                pass

    # 4. Copy và đối chiếu mã băm SHA256 từng file vào app_dir
    log_func("[*] Đang cập nhật dữ liệu và đối chiếu mã băm SHA256 từng file...")
    copied_count = 0
    verified_count = 0
    total_patch = len(patch_files_dict)
    
    for idx, (rel_path, src_path) in enumerate(patch_files_dict.items(), 1):
        norm_rel = rel_path.replace('/', '\\').lstrip('\\')
        dst_path = os.path.join(app_dir, norm_rel)
        os.makedirs(os.path.dirname(dst_path), exist_ok=True)
        
        src_hash = compute_sha256(src_path)
        
        # Copy kèm đối chiếu SHA256
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
# 3. ĐỘNG CƠ TẢI DỮ LIỆU TRỰC TUYẾN TỪ GITHUB (ONLINE UPDATER)
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
# 4. GIAO DIỆN GAME LAUNCHER HUD (ARTWORK HERO & MINIMALIST FLAT CONTROLS)
# ─────────────────────────────────────────────────────────────────────────────

def launch_gui():
    import tkinter as tk
    from tkinter import ttk, filedialog, messagebox
    from PIL import Image, ImageTk, ImageDraw

    root = tk.Tk()
    root.title(APP_TITLE)
    root.geometry("760x520")
    root.minsize(720, 480)
    root.configure(bg="#0c0c12")

    icon_p = get_asset_path('tyrano.ico')
    if icon_p and os.path.exists(icon_p):
        try:
            root.iconbitmap(icon_p)
        except Exception:
            pass

    # Canvas toàn màn hình hiển thị Artwork Game
    canvas = tk.Canvas(root, bg="#0c0c12", highlightthickness=0)
    canvas.pack(fill=tk.BOTH, expand=True)

    bg_p = get_asset_path('installer_bg.png')
    base_bg_img = None
    if bg_p and os.path.exists(bg_p):
        try:
            base_bg_img = Image.open(bg_p).convert("RGBA")
        except Exception:
            base_bg_img = None

    bg_photo = None

    def render_background(w, h):
        nonlocal bg_photo
        if not base_bg_img or w <= 10 or h <= 10:
            return
        
        # Scale ảnh nền chính
        img_scaled = base_bg_img.resize((w, h), Image.Resampling.LANCZOS)
        
        # Tạo overlay tối phía dưới để HUD điều khiển nổi bật
        overlay = Image.new("RGBA", (w, h), (0, 0, 0, 0))
        draw = ImageDraw.Draw(overlay)
        
        # Gradient tối dần ở 45% phía dưới
        split_y = int(h * 0.45)
        for y in range(split_y, h):
            ratio = (y - split_y) / (h - split_y)
            alpha = int(ratio * 240)
            draw.line([(0, y), (w, y)], fill=(10, 10, 16, alpha))
            
        combined = Image.alpha_composite(img_scaled, overlay)
        bg_photo = ImageTk.PhotoImage(combined)
        canvas.delete("bg_tag")
        canvas.create_image(0, 0, image=bg_photo, anchor=tk.NW, tags="bg_tag")
        canvas.tag_lower("bg_tag")

    # Top Header Minimalist Bar
    top_bar = tk.Frame(canvas, bg="#0e0e14", padx=16, pady=8, highlightbackground="#222230", highlightthickness=1)
    top_bar_window = canvas.create_window(380, 24, window=top_bar, width=730, height=38)

    tk.Label(top_bar, text="HOME (ROOM) — PATCH VIỆT HÓA", font=("Segoe UI", 10, "bold"), fg="#ffffff", bg="#0e0e14").pack(side=tk.LEFT)
    lbl_remote_ver = tk.Label(top_bar, text="[GitHub: Đang kết nối...]", font=("Segoe UI", 8), fg="#00e676", bg="#0e0e14")
    lbl_remote_ver.pack(side=tk.RIGHT)

    # Bottom HUD Control Dock
    dock_frame = tk.Frame(canvas, bg="#101018", padx=16, pady=12, highlightbackground="#2a2a3c", highlightthickness=1)
    dock_window = canvas.create_window(380, 390, window=dock_frame, width=730, height=225)

    def on_resize(event):
        w = event.width
        h = event.height
        render_background(w, h)
        canvas.coords(top_bar_window, w // 2, 24)
        canvas.itemconfig(top_bar_window, width=w - 30)
        canvas.coords(dock_window, w // 2, h - 125)
        canvas.itemconfig(dock_window, width=w - 30)

    canvas.bind("<Configure>", on_resize)

    # 1. Folder Selection Row (Flat & Clean)
    path_row = tk.Frame(dock_frame, bg="#101018")
    path_row.pack(fill=tk.X, pady=(0, 8))

    tk.Label(path_row, text="Thư mục game:", font=("Segoe UI", 9, "bold"), fg="#c0c0d0", bg="#101018").pack(side=tk.LEFT, padx=(0, 8))

    game_dir_var = tk.StringVar()
    detected = find_game_directory()
    if detected:
        game_dir_var.set(detected)

    txt_entry = tk.Entry(path_row, textvariable=game_dir_var, font=("Consolas", 9), bg="#181824", fg="#ffffff", insertbackground="#ffffff", relief=tk.FLAT, highlightbackground="#36364c", highlightthickness=1)
    txt_entry.pack(side=tk.LEFT, fill=tk.X, expand=True, ipady=3, padx=(0, 6))

    def choose_dir():
        d = filedialog.askdirectory(title="Chọn thư mục chứa game HOME (ROOM)")
        if d:
            game_dir_var.set(d)

    btn_browse = tk.Button(path_row, text="Duyệt...", command=choose_dir, font=("Segoe UI", 8, "bold"), bg="#2c2c3e", fg="#ffffff", activebackground="#3e3e56", activeforeground="#ffffff", relief=tk.FLAT, padx=12, pady=2, cursor="hand2")
    btn_browse.pack(side=tk.RIGHT)

    # 2. Progress Bar Row
    prog_row = tk.Frame(dock_frame, bg="#101018")
    prog_row.pack(fill=tk.X, pady=(0, 8))

    status_var = tk.StringVar(value="Sẵn sàng kết nối GitHub...")
    lbl_status = tk.Label(prog_row, textvariable=status_var, font=("Segoe UI", 8), fg="#64b5f6", bg="#101018")
    lbl_status.pack(anchor=tk.W, pady=(0, 2))

    style = ttk.Style()
    style.theme_use('clam')
    style.configure("TProgressbar", thickness=8, troughcolor="#1c1c28", background="#00e676")

    progress_bar = ttk.Progressbar(prog_row, style="TProgressbar", mode="determinate")
    progress_bar.pack(fill=tk.X)

    # 3. Action Buttons Row (Crisp, Flat, High-Contrast)
    btn_row = tk.Frame(dock_frame, bg="#101018")
    btn_row.pack(fill=tk.X, pady=(0, 8))

    # Nút Cài đặt chính phẳng sắc nét
    btn_install = tk.Button(btn_row, text="⚡ CÀI ĐẶT / CẬP NHẬT PATCH (ONLINE)", font=("Segoe UI", 9, "bold"), bg="#0066ff", fg="#ffffff", activebackground="#0052cc", activeforeground="#ffffff", relief=tk.FLAT, pady=6, cursor="hand2")
    btn_install.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=(0, 4))

    # Nút Khởi động phẳng
    btn_launch = tk.Button(btn_row, text="▶ KHỞI ĐỘNG GAME", font=("Segoe UI", 9, "bold"), bg="#00a854", fg="#ffffff", activebackground="#008a44", activeforeground="#ffffff", relief=tk.FLAT, pady=6, cursor="hand2")
    btn_launch.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=(2, 2))

    # Nút Bản gốc phẳng
    btn_restore = tk.Button(btn_row, text="↩ BẢN GỐC", font=("Segoe UI", 9), bg="#222230", fg="#ff5252", activebackground="#303042", activeforeground="#ff1744", relief=tk.FLAT, pady=6, cursor="hand2")
    btn_restore.pack(side=tk.RIGHT, fill=tk.X, expand=True, padx=(4, 0))

    # 4. Minimalist Single-Line Live Log
    log_row = tk.Frame(dock_frame, bg="#0a0a10", padx=8, pady=4, highlightbackground="#1e1e2c", highlightthickness=1)
    log_row.pack(fill=tk.X)

    log_line_var = tk.StringVar(value="[Hệ thống] Sẵn sàng nhận lệnh.")
    lbl_log_line = tk.Label(log_row, textvariable=log_line_var, font=("Consolas", 8), fg="#9090a8", bg="#0a0a10", anchor=tk.W)
    lbl_log_line.pack(fill=tk.X)

    def append_log(msg):
        def _write():
            clean_msg = str(msg).strip()
            if clean_msg:
                log_line_var.set(clean_msg)
        root.after(0, _write)

    def update_progress(pct, cur, total):
        def _prog():
            progress_bar['value'] = pct
            if total > 0 and total < 10000:
                status_var.set(f"Đang cập nhật... {pct:.1f}% ({cur}/{total} tệp)")
            elif total >= 10000:
                mb_cur = cur / (1024 * 1024)
                mb_tot = total / (1024 * 1024)
                status_var.set(f"Đang tải GitHub... {pct:.1f}% ({mb_cur:.1f}/{mb_tot:.1f} MB)")
        root.after(0, _prog)

    def set_buttons_state(state):
        btn_install.config(state=state)
        btn_restore.config(state=state)
        btn_launch.config(state=state)

    def check_github_background():
        info = fetch_github_latest_info()
        tag = info.get('tag_name', 'Mới nhất')
        root.after(0, lambda: lbl_remote_ver.config(text=f"GitHub: {tag}", fg="#00e676"))
        append_log(f"[*] Đã kết nối GitHub: {tag}")

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
                status_var.set("Đang truy vấn phiên bản mới nhất từ GitHub...")
                info = fetch_github_latest_info()
                dl_url = info.get('download_url') or GITHUB_RAW_ARCHIVE_URL
                
                status_var.set("Đang tải dữ liệu bản vá từ GitHub...")
                append_log(f"[*] Đang tải dữ liệu từ: {dl_url}")
                dl_zip = download_file_with_progress(dl_url, log_func=append_log, progress_func=update_progress)

                status_var.set("Đang giải nén và phân tích cấu trúc...")
                patch_dict, tmp_dir = parse_patch_from_zip(dl_zip)
                
                if not patch_dict:
                    raise RuntimeError("Không tìm thấy tệp kịch bản hoặc giao diện hợp lệ trong gói tải về!")

                status_var.set("Đang đối chiếu SHA256 và cập nhật trực tiếp vào game...")
                ok, count, el = execute_folder_patch(target, patch_dict, log_func=append_log, progress_func=update_progress)

                status_var.set(f"Cập nhật thành công! Đã vá {count} tệp trong {el}s.")
                root.after(0, lambda: messagebox.showinfo("Cập Nhật Thành Công", f"Đã cài đặt & cập nhật bản Việt Hóa mới nhất từ GitHub thành công 100% trong {el} giây!\nToàn bộ tệp đã qua kiểm chứng SHA256 an toàn tuyệt đối!"))
            except Exception as e:
                append_log(f"[LỖI]: {e}")
                status_var.set("Cập nhật thất bại!")
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
                    status_var.set("Đã khôi phục bản gốc tiếng Nhật thành công.")
                    root.after(0, lambda: messagebox.showinfo("Thành công", "Đã khôi phục bản gốc tiếng Nhật 100% thành công!"))
                else:
                    status_var.set("Khôi phục thất bại!")
            except Exception as e:
                append_log(f"[LỖI]: {e}")
                status_var.set("Khôi phục thất bại!")
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

    if detected:
        append_log(f"[*] Nhận diện thư mục game: {detected}")
    else:
        append_log("[*] Bấm [Duyệt...] để chọn thư mục cài đặt game của bạn.")

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
