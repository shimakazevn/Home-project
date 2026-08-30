@echo off
chcp 65001 >nul
title DONG GOI BAN WEB - HOME [RJ01556529]
cls
echo ========================================================
echo    HOME - DONG GOI BAN WEB CHO GITHUB PAGES / CLOUDFLARE
echo ========================================================
echo.
python tools/build_web_release.py
echo.
echo Nhan phim bat ky de thoat...
pause >nul
