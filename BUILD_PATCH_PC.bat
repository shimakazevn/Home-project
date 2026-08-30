@echo off
chcp 65001 >nul
title BIÊN DỊCH VÀ XÂY DỰNG PATCH VIỆT HÓA - HOME [PC]
color 0b
echo ============================================================
echo   TỰ ĐỘNG BIÊN DỊCH PATCH VIỆT HÓA - HOME [PC]
echo ============================================================
echo.
cd /d "%~dp0"
python tools\build_pc_patch.py
echo.
pause
