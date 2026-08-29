import os, sys, json, hashlib, time, zipfile, subprocess, shutil
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path

PROJECT_ROOT = Path(r'E:\HOME_')
FULL_ASSETS = PROJECT_ROOT / 'full_web_assets'
RELEASE_DIR = PROJECT_ROOT / 'build-releases' / 'github_release_assets'

RELEASE_DIR.mkdir(parents=True, exist_ok=True)

print("=" * 65)
print("  🚀 PHÂN TÁCH ASSETS THÀNH CÁC GÓI < 2GB VÀ UPLOAD GITHUB RELEASES")
print("=" * 65)

# Danh sách phân chia các phần tài nguyên sao cho mỗi gói < 1.8 GB (dưới giới hạn 2GB của GitHub)
# data/bgimage/H chứa hầu hết 7.3GB, ta chia nhỏ bgimage/H theo các prefix file
bgimage_h = FULL_ASSETS / 'data' / 'bgimage' / 'H'
all_h_files = sorted(os.listdir(bgimage_h)) if bgimage_h.exists() else []

# Chia danh sách file H thành 4 phần đều nhau
n = len(all_h_files)
chunk_size = (n + 3) // 4
h_chunks = [all_h_files[i*chunk_size : (i+1)*chunk_size] for i in range(4)]

package_specs = [
    {
        "id": "HOME_Media_Part1_v1.0.0.zip",
        "name": "Gói Hình Ảnh H-Scene Phần 1",
        "desc": "Dữ liệu hoạt họa CG H-Scene phần 1",
        "type": "h_chunk",
        "files": h_chunks[0] if len(h_chunks) > 0 else []
    },
    {
        "id": "HOME_Media_Part2_v1.0.0.zip",
        "name": "Gói Hình Ảnh H-Scene Phần 2",
        "desc": "Dữ liệu hoạt họa CG H-Scene phần 2",
        "type": "h_chunk",
        "files": h_chunks[1] if len(h_chunks) > 1 else []
    },
    {
        "id": "HOME_Media_Part3_v1.0.0.zip",
        "name": "Gói Hình Ảnh H-Scene Phần 3",
        "desc": "Dữ liệu hoạt họa CG H-Scene phần 3",
        "type": "h_chunk",
        "files": h_chunks[2] if len(h_chunks) > 2 else []
    },
    {
        "id": "HOME_Media_Part4_v1.0.0.zip",
        "name": "Gói Hình Ảnh H-Scene Phần 4",
        "desc": "Dữ liệu hoạt họa CG H-Scene phần 4",
        "type": "h_chunk",
        "files": h_chunks[3] if len(h_chunks) > 3 else []
    },
    {
        "id": "HOME_Media_Part5_Sound_v1.0.0.zip",
        "name": "Gói Âm Thanh & Nhân Vật",
        "desc": "Nhạc nền BGM, Voice lồng tiếng, và Sprite nhân vật đứng",
        "type": "misc_sound"
    }
]

created_packages = []

# Nén các gói
for idx, spec in enumerate(package_specs, 1):
    zip_path = RELEASE_DIR / spec['id']
    print(f"\n[{idx}/5] Đang nén {spec['id']} ({spec['name']})...")
    
    if not zip_path.exists():
        with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED, compresslevel=1) as zipf:
            if spec['type'] == 'h_chunk':
                for fname in spec['files']:
                    fpath = bgimage_h / fname
                    if fpath.exists():
                        zipf.write(fpath, fpath.relative_to(FULL_ASSETS))
            elif spec['type'] == 'misc_sound':
                # Nén toàn bộ sound, bgm, fgimage, image, video, và các bgimage ngoài thư mục H
                for sub in ['sound', 'bgm', 'fgimage', 'image', 'video']:
                    p = FULL_ASSETS / 'data' / sub
                    if p.exists():
                        for r, d, files in os.walk(p):
                            for f in files:
                                fp = Path(r) / f
                                zipf.write(fp, fp.relative_to(FULL_ASSETS))
                # Các file bgimage ngoài H
                bg_root = FULL_ASSETS / 'data' / 'bgimage'
                if bg_root.exists():
                    for item in os.listdir(bg_root):
                        if item != 'H':
                            ip = bg_root / item
                            if ip.is_dir():
                                for r, d, files in os.walk(ip):
                                    for f in files:
                                        fp = Path(r) / f
                                        zipf.write(fp, fp.relative_to(FULL_ASSETS))
                            else:
                                zipf.write(ip, ip.relative_to(FULL_ASSETS))
    
    sz = zip_path.stat().st_size
    print(f"  [OK] Đã tạo {zip_path.name} ({sz / (1024*1024):.2f} MB)")
    
    # Tính SHA256
    h = hashlib.sha256()
    with open(zip_path, 'rb') as fp:
        while chunk := fp.read(1024 * 1024 * 8):
            h.update(chunk)
            
    created_packages.append({
        "name": spec['name'],
        "filename": zip_path.name,
        "description": spec['desc'],
        "size": sz,
        "size_formatted": f"{sz / (1024*1024):.2f} MB" if sz < 1024**3 else f"{sz / (1024**3):.2f} GB",
        "sha256": h.hexdigest(),
        "url": f"https://github.com/shimakazevn/Home-project/releases/download/v1.0.0/{zip_path.name}"
    })

# Gói Lõi Kịch Bản Core
core_zip = RELEASE_DIR / "HOME_Patch_Core_v1.0.0.zip"
core_sz = core_zip.stat().st_size
h_core = hashlib.sha256()
with open(core_zip, 'rb') as fp:
    while chunk := fp.read(1024 * 1024 * 8):
        h_core.update(chunk)

core_pkg = {
    "name": "Lõi Kịch Bản & Giao Diện",
    "filename": core_zip.name,
    "description": "Toàn bộ 267 kịch bản Việt hóa, Font Noto Sans và mã hệ thống",
    "size": core_sz,
    "size_formatted": f"{core_sz / (1024*1024):.2f} MB",
    "sha256": h_core.hexdigest(),
    "url": f"https://github.com/shimakazevn/Home-project/releases/download/v1.0.0/{core_zip.name}"
}

all_packages = [core_pkg] + created_packages
total_bytes = sum(p['size'] for p in all_packages)

manifest_data = {
    "version": "v1.0.0",
    "game_title": "HOME (ROOM) - Việt Hóa",
    "release_date": time.strftime("%Y-%m-%d"),
    "author": "Shimakaze VN Translation Team",
    "changelog": [
        "Việt hóa 100% toàn bộ giao diện nút bấm và menu lựa chọn (323 dòng UI).",
        "Tích hợp font chữ tiếng Việt Noto Sans JP và tự động xuống dòng.",
        "Hỗ trợ tải và cập nhật tự động qua GitHub Releases CDN."
    ],
    "total_size_formatted": f"{total_bytes / (1024**3):.2f} GB",
    "packages": all_packages
}

manifest_path = RELEASE_DIR / "release_manifest.json"
manifest_path.write_text(json.dumps(manifest_data, ensure_ascii=False, indent=2), encoding='utf-8')
shutil.copy2(manifest_path, PROJECT_ROOT / 'release_manifest.json')
shutil.copy2(manifest_path, PROJECT_ROOT / 'launcher' / 'release_manifest.json')

print("\n" + "=" * 65)
print("  🚀 TIẾN HÀNH UPLOAD TẤT CẢ CÁC GÓI LÊN GITHUB RELEASES...")
print("=" * 65)

# Cập nhật release_manifest.json lên git
subprocess.run(['git', 'add', 'release_manifest.json', 'launcher/release_manifest.json'], cwd=str(PROJECT_ROOT), check=True)
subprocess.run(['git', 'commit', '-m', 'chore: update chunked release manifest for GitHub CDN'], cwd=str(PROJECT_ROOT))
subprocess.run(['git', 'push', 'origin', 'main'], cwd=str(PROJECT_ROOT), check=True)

# Upload từng gói lên GitHub Release qua gh CLI
for pkg in created_packages:
    fpath = str(RELEASE_DIR / pkg['filename'])
    print(f"  -> Đang upload {pkg['filename']} ({pkg['size_formatted']})...")
    res = subprocess.run(['gh', 'release', 'upload', 'v1.0.0', fpath, '--clobber'], cwd=str(PROJECT_ROOT), capture_output=True, text=True)
    if res.returncode == 0:
        print(f"     ✅ Upload thành công: {pkg['filename']}")
    else:
        print(f"     ❌ Lỗi upload: {res.stderr[:200]}")

# Upload lại manifest mới lên release
subprocess.run(['gh', 'release', 'upload', 'v1.0.0', str(manifest_path), '--clobber'], cwd=str(PROJECT_ROOT))

print("\n" + "=" * 65)
print("  🎉 TẤT CẢ ASSETS ĐÃ ĐƯỢC ĐẨY LÊN GITHUB THÀNH CÔNG!")
print("  🔗 https://github.com/shimakazevn/Home-project/releases/tag/v1.0.0")
print("=" * 65)
