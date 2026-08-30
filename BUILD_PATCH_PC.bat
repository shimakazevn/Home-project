@echo off
chcp 65001 >nul
title BIÊN DỊCH VÀ XÂY DỰNG PATCH VIỆT HÓA - HOME (ROOM) [PC]
cls
echo ============================================================
echo   TỰ ĐỘNG BIÊN DỊCH PATCH VIỆT HÓA - HOME (ROOM) [PC]
echo ============================================================
echo.
cd /d "%~dp0"
python tools\build_pc_patch.py
echo.
pause
