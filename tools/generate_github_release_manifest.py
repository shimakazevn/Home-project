import os, sys, json, hashlib, time, zipfile, shutil
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path

PROJECT_ROOT = Path(r'E:\HOME_')
FULL_ASSETS = PROJECT_ROOT / 'full_web_assets'
RELEASE_DIR = PROJECT_ROOT / 'build-releases' / 'github_release_assets'

RELEASE_DIR.mkdir(parents=True, exist_ok=True)

print("=" * 65)
print("  🚀 TẠO CÁC GÓI TẢI TỰ ĐỘNG CHO GITHUB RELEASES CDN")
print("=" * 65)

# 1. GÓI 1: PATCH SCRIPT + FONT + CSS (Gói siêu nhẹ để cập nhật kịch bản nhanh ~15MB)
patch_zip_name = "HOME_Patch_Core_v1.0.0.zip"
patch_zip_path = RELEASE_DIR / patch_zip_name
print(f"\n[1/3] Đang nén {patch_zip_name} (Lõi kịch bản + Font + UI)...")
if not patch_zip_path.exists():
    with zipfile.ZipFile(patch_zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for item in ['index.html', 'main.js', 'package.json']:
            if (FULL_ASSETS / item).exists():
                zipf.write(FULL_ASSETS / item, item)
        for sub in ['tyrano', 'patch']:
            if (FULL_ASSETS / sub).exists():
                for r, d, files in os.walk(FULL_ASSETS / sub):
                    for f in files:
                        fp = Path(r) / f
                        zipf.write(fp, fp.relative_to(FULL_ASSETS))
        # data/scenario, data/others, data/system
        for sub in ['scenario', 'others', 'system']:
            p = FULL_ASSETS / 'data' / sub
            if p.exists():
                for r, d, files in os.walk(p):
                    for f in files:
                        fp = Path(r) / f
                        zipf.write(fp, fp.relative_to(FULL_ASSETS))

# 2. GÓI 2: ASSETS MEDIA PACK (Ảnh H-Scene, Voice, Nhạc BGM)
assets_zip_name = "HOME_Media_Assets_v1.0.0.zip"
assets_zip_path = RELEASE_DIR / assets_zip_name
print(f"\n[2/3] Đang nén {assets_zip_name} (Tài nguyên hình ảnh & âm thanh gốc)...")
if not assets_zip_path.exists():
    with zipfile.ZipFile(assets_zip_path, 'w', zipfile.ZIP_DEFLATED, compresslevel=1) as zipf:
        for sub in ['bgimage', 'fgimage', 'image', 'sound', 'bgm', 'video']:
            p = FULL_ASSETS / 'data' / sub
            if p.exists():
                for r, d, files in os.walk(p):
                    for f in files:
                        fp = Path(r) / f
                        zipf.write(fp, fp.relative_to(FULL_ASSETS))

# 3. TÍNH SHA256 VÀ TẠO FILE MANIFEST JSON
print("\n[3/3] Đang tính SHA256 và tạo release_manifest.json...")

def get_file_info(fpath, name, desc):
    sz = fpath.stat().st_size
    h = hashlib.sha256()
    with open(fpath, 'rb') as fp:
        while chunk := fp.read(1024 * 1024 * 8):
            h.update(chunk)
    return {
        "name": name,
        "filename": fpath.name,
        "description": desc,
        "size": sz,
        "size_formatted": f"{sz / (1024*1024):.2f} MB" if sz < 1024**3 else f"{sz / (1024**3):.2f} GB",
        "sha256": h.hexdigest(),
        "url": f"https://github.com/shimakazevn/Home-project/releases/download/v1.0.0/{fpath.name}"
    }

pkg1 = get_file_info(patch_zip_path, "Lõi Kịch Bản & Giao Diện", "Chứa toàn bộ 267 kịch bản Việt hóa, Font Noto Sans và mã hệ thống")
pkg2 = get_file_info(assets_zip_path, "Gói Đồ Họa & Âm Thanh", "Chứa 3,600+ hình ảnh 1080p H-Scene, Voice lồng tiếng và BGM")

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
    "total_size_formatted": f"{(pkg1['size'] + pkg2['size']) / (1024**3):.2f} GB",
    "packages": [pkg1, pkg2]
}

manifest_path = RELEASE_DIR / "release_manifest.json"
manifest_path.write_text(json.dumps(manifest_data, ensure_ascii=False, indent=2), encoding='utf-8')

# Đồng bộ luôn vào thư mục launcher
shutil.copy2(manifest_path, PROJECT_ROOT / 'launcher' / 'release_manifest.json')

print("\n" + "=" * 65)
print(f"  🎉 HOÀN TẤT! FILE MANIFEST ĐÃ SẴN SÀNG TẠI: {manifest_path}")
print(f"  - Gói Lõi Kịch Bản: {pkg1['filename']} ({pkg1['size_formatted']})")
print(f"  - Gói Tài Nguyên:   {pkg2['filename']} ({pkg2['size_formatted']})")
print("=" * 65)
