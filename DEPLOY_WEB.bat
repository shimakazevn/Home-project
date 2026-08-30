@echo off
chcp 65001 >nul
title DEPLOY GITHUB PAGES - HOME [RJ01556529]
cls
echo ========================================================
echo    HOME - DONG GOI VA DEPLOY LEN GITHUB PAGES (gh-pages)
echo ========================================================
echo.
python tools/build_web_release.py --deploy
echo.
echo Nhan phim bat ky de thoat...
pause >nul
