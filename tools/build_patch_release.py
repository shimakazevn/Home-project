# -*- coding: utf-8 -*-
"""
build_patch_release.py
Đóng gói patch Việt hóa HOME thành bản phân phối chuẩn.

Cấu trúc ZIP output:
  HOME_VietHoa_Patch_vX.X.X.zip
  ├── INSTALL.bat          ← Double-click là xong (~1 giây!)
  ├── UNINSTALL.bat        ← Gỡ patch
  ├── setup_tools.bat      ← Chỉ cần nếu INSTALL lỗi "không tìm thấy Python"
  ├── README_VI.txt
  ├── patch_files/         ← 276 files Việt hóa
  │   ├── data/scenario/
  │   ├── data/others/
  │   └── tyrano/
  └── _patcher/
      └── asar_surgical_patcher.py  ← Không cần extract/repack!
"""
import os, sys, shutil, zipfile, json, datetime

sys.stdout.reconfigure(encoding='utf-8')

# ─── CONFIG ───────────────────────────────────────────────────────────────────
PATCH_DIR   = r'E:\HOME_\patch'
OUTPUT_DIR  = r'E:\HOME_\dist'
PATCHER_SRC = r'E:\HOME_\tools\asar_stream_patcher.py'
VERSION     = 'v1.1.0'
ZIP_NAME    = f'HOME_VietHoa_Patch_{VERSION}.zip'
REPO_URL    = 'https://github.com/shimakazevn/Home-project'

# ─── INSTALL.bat ──────────────────────────────────────────────────────────────
# Cách hoạt động:
#  1. Tìm thư mục game tự động (hoặc hỏi user)
#  2. Backup app.asar gốc (1 lần duy nhất)
#  3. Chạy asar_stream_patcher.py → stream copy 1-pass hoàn tất trong ~10 giây
INSTALL_BAT = r"""@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
color 0A

echo.
echo ==========================================================
echo   HOME (ROOM) - PATCH VIET HOA  [Stream Patcher v2.0]
echo   Shimakaze VN Translation Team
echo ==========================================================
echo.

set "BASE=%~dp0"
set "BASE=%BASE:~0,-1%"

:: ──────────────────────────────────────────
:: Buoc 1: Tim thu muc game
:: ──────────────────────────────────────────
echo [1/2] Tim kiem thu muc game...

set "GAME_DIR="
for %%D in (
    "%ProgramFiles%\HOME"
    "%ProgramFiles(x86)%\HOME"
    "%LocalAppData%\HOME"
    "%USERPROFILE%\Desktop\HOME"
    "%USERPROFILE%\Downloads\HOME"
    "C:\Games\HOME"
    "D:\Games\HOME"
    "E:\Games\HOME"
    "F:\Games\HOME"
) do (
    if exist "%%~D\resources\app.asar" (
        set "GAME_DIR=%%~D"
        echo [OK] Tim thay: %%~D
    )
)

if "%GAME_DIR%"=="" (
    echo.
    echo     Khong tim thay game tu dong.
    echo     Nhap duong dan thu muc chua HOME.exe:
    echo     Vi du: C:\Games\HOME
    echo.
    set /p "GAME_DIR=Duong dan: "
    if "!GAME_DIR:~-1!"=="\" set "GAME_DIR=!GAME_DIR:~0,-1!"
)

if not exist "%GAME_DIR%\resources\app.asar" (
    echo.
    echo [LOI] Khong tim thay app.asar trong:
    echo       %GAME_DIR%\resources\
    pause
    exit /b 1
)

set "ASAR=%GAME_DIR%\resources\app.asar"

:: ──────────────────────────────────────────
:: Buoc 2: Patch truc tiep (Stream 1-Pass)
:: ──────────────────────────────────────────
echo.
echo [2/2] Dang patch Viet hoa...
echo      (Qua trinh stream mat khoang 10-15 giay)

set "PY=%BASE%\_tools\python\python.exe"
if not exist "%PY%" (
    where python >nul 2>&1
    if not errorlevel 1 (
        set "PY=python"
    ) else (
        echo.
        echo [LOI] Khong tim thay Python.
        echo      Vui long chay setup_tools.bat truoc.
        pause
        exit /b 1
    )
)

"%PY%" "%BASE%\_patcher\asar_stream_patcher.py" "%ASAR%" "%BASE%\patch_files"
if errorlevel 1 (
    echo.
    echo [LOI] Patch that bai!
    pause
    exit /b 1
)

echo.
echo ==========================================================
echo   PATCH THANH CONG! Chuc ban choi vui ve!  ^_^
echo.
echo   De go patch: chay UNINSTALL.bat
echo ==========================================================
echo.
pause
"""

# ─── UNINSTALL.bat ────────────────────────────────────────────────────────────
UNINSTALL_BAT = r"""@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
color 0E

echo.
echo ==========================================================
echo   GO PATCH VIET HOA
echo ==========================================================
echo.

set "GAME_DIR="
for %%D in (
    "%ProgramFiles%\HOME"
    "%ProgramFiles(x86)%\HOME"
    "%LocalAppData%\HOME"
    "%USERPROFILE%\Desktop\HOME"
    "C:\Games\HOME"
    "D:\Games\HOME"
    "E:\Games\HOME"
    "F:\Games\HOME"
) do (
    if exist "%%~D\resources\app.asar.backup_goc" (
        set "GAME_DIR=%%~D"
    )
)

if "%GAME_DIR%"=="" (
    echo Nhap duong dan thu muc game:
    set /p "GAME_DIR=Duong dan: "
    if "!GAME_DIR:~-1!"=="\" set "GAME_DIR=!GAME_DIR:~0,-1!"
)

set "BACKUP=%GAME_DIR%\resources\app.asar.backup_goc"
if not exist "%BACKUP%" (
    echo [LOI] Khong tim thay file backup.
    echo       Co the ban chua cai patch, hoac da xoa backup.
    pause
    exit /b 1
)

echo Dang khoi phuc ban goc...
copy /y "%BACKUP%" "%GAME_DIR%\resources\app.asar" >nul
if errorlevel 1 (
    echo [LOI] Khong the khoi phuc. Kiem tra quyen ghi.
    pause
    exit /b 1
)
del "%BACKUP%" >nul
echo [OK] Da khoi phuc game ve ban goc tieng Nhat!
echo      File backup da duoc xoa.
pause
"""

# ─── SETUP_TOOLS.bat (fallback nếu không có Python hệ thống) ─────────────────
SETUP_TOOLS_BAT = r"""@echo off
chcp 65001 >nul
setlocal
color 0B

echo.
echo ==========================================================
echo   Tai Python Portable (chi can chay 1 lan)
echo   Chi can neu INSTALL.bat bao loi khong tim thay Python
echo ==========================================================
echo.

set "BASE=%~dp0"
set "PY_DIR=%BASE%_tools\python"

if exist "%PY_DIR%\python.exe" (
    echo [OK] Python da co san tai: %PY_DIR%
    pause
    exit /b 0
)

mkdir "%BASE%_tools" 2>nul
echo Dang tai Python 3.11 Embeddable (~10MB)...

set "PY_ZIP=%BASE%_tools\python.zip"
powershell -NoProfile -Command ^
    "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.9/python-3.11.9-embed-amd64.zip' -OutFile '%PY_ZIP%' -UseBasicParsing"

if errorlevel 1 (
    echo [LOI] Khong the tai. Kiem tra ket noi internet.
    pause
    exit /b 1
)

echo Dang giai nen...
powershell -NoProfile -Command "Expand-Archive -Path '%PY_ZIP%' -DestinationPath '%PY_DIR%' -Force"
del "%PY_ZIP%"

echo [OK] Python san sang tai: %PY_DIR%
echo Gio chay lai INSTALL.bat
pause
"""

# ─── README ───────────────────────────────────────────────────────────────────
README_TXT = f"""HOME (ROOM) - Patch Viet Hoa {VERSION}
Shimakaze VN Translation Team
{datetime.date.today().strftime('%d/%m/%Y')}
Source: {REPO_URL}
==================================================

YEU CAU:
  - Game goc HOME da duoc cai dat tren may
  - Windows 10 tro len
  - KHONG can cai them bat ky phan mem nao

CACH CAI DAT (2 buoc):
  1. Giai nen file .zip nay ra bat ky dau
  2. Nhan dupe vao INSTALL.bat
     → Xong! (Qua trinh chi mat 1-2 giay)

CACH GO PATCH:
  - Chay UNINSTALL.bat

GAP LOI "Khong tim thay Python":
  - Chay setup_tools.bat de tai Python portable (~10MB)
  - Sau do chay lai INSTALL.bat

THAY DOI TRONG {VERSION}:
  + Viet hoa 100% toan bo kich ban va thoai
  + Viet hoa toan bo giao dien UI va menu
  + Tich hop font chu tieng Viet Noto Sans JP
  + Sua loi xuong dong tu dong cho tieng Viet
  + Man hinh dat ten nhan vat ho tro ky tu Viet
  + Nut Xac nhan tieng Viet

GAP LOI? Bao cao tai:
  {REPO_URL}/issues
"""

# ─── BUILD ────────────────────────────────────────────────────────────────────
def build():
    print(f"Building patch release {VERSION}...")

    if os.path.exists(OUTPUT_DIR):
        shutil.rmtree(OUTPUT_DIR)
    os.makedirs(OUTPUT_DIR)

    # 1. Copy patch files
    patch_files_dir = os.path.join(OUTPUT_DIR, 'patch_files')
    os.makedirs(patch_files_dir)
    count = 0
    for root, dirs, files in os.walk(PATCH_DIR):
        dirs[:] = [d for d in dirs if d != '__pycache__']
        for f in files:
            if f.endswith(('.zip', '.pyc')):
                continue
            src = os.path.join(root, f)
            dst = os.path.join(patch_files_dir, os.path.relpath(src, PATCH_DIR))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            shutil.copy2(src, dst)
            count += 1
    print(f"  Copied {count} patch files")

    # 2. Copy stream patcher
    patcher_dir = os.path.join(OUTPUT_DIR, '_patcher')
    os.makedirs(patcher_dir)
    shutil.copy2(PATCHER_SRC, os.path.join(patcher_dir, 'asar_stream_patcher.py'))
    print("  Copied asar_stream_patcher.py")

    # 3. Ghi .bat files
    scripts = {
        'INSTALL.bat': INSTALL_BAT,
        'UNINSTALL.bat': UNINSTALL_BAT,
        'setup_tools.bat': SETUP_TOOLS_BAT,
    }
    for name, content in scripts.items():
        path = os.path.join(OUTPUT_DIR, name)
        with open(path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"  Written {name}")

    # 4. Ghi README
    with open(os.path.join(OUTPUT_DIR, 'README_VI.txt'), 'w', encoding='utf-8') as f:
        f.write(README_TXT)
    print("  Written README_VI.txt")

    # 5. Ghi manifest
    manifest = {
        "version": VERSION,
        "date": datetime.date.today().isoformat(),
        "repo": REPO_URL,
        "patch_files": count
    }
    with open(os.path.join(OUTPUT_DIR, 'manifest.json'), 'w', encoding='utf-8') as f:
        json.dump(manifest, f, ensure_ascii=False, indent=2)

    # 6. Đóng gói ZIP
    zip_path = os.path.join(r'E:\HOME_', ZIP_NAME)
    print(f"  Packing {zip_path}...")
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
        for root, dirs, files in os.walk(OUTPUT_DIR):
            for f in files:
                fp = os.path.join(root, f)
                arc = os.path.relpath(fp, OUTPUT_DIR)
                zf.write(fp, arc)

    size_mb = os.path.getsize(zip_path) / 1024 / 1024
    print(f"  ZIP size: {size_mb:.2f} MB")

    print(f"\nBuild DONE: {zip_path}")
    print(f"Size: {size_mb:.2f} MB")
    print("Upload lên GitHub Releases là xong!")

if __name__ == '__main__':
    build()
