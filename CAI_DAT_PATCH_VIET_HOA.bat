@echo off
chcp 65001 >nul
title CÀI ĐẶT PATCH VIỆT HÓA - HOME [PC]
cd /d "%~dp0"

if exist "dist_pc\CAI_DAT_PATCH_VIET_HOA.exe" (
    start "" "dist_pc\CAI_DAT_PATCH_VIET_HOA.exe"
    exit /b 0
)

if exist "dist\CAI_DAT_PATCH_VIET_HOA.exe" (
    start "" "dist\CAI_DAT_PATCH_VIET_HOA.exe"
    exit /b 0
)

where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    python tools\unified_patch_installer.py
    exit /b 0
)

echo [LỖI] Không tìm thấy file CAI_DAT_PATCH_VIET_HOA.exe!
pause
