@echo off
chcp 65001 >nul
title CÀI ĐẶT PATCH VIỆT HÓA - HOME (ROOM)
cls
echo ============================================================
echo   CÀI ĐẶT PATCH VIỆT HÓA - TỰA GAME: HOME (ROOM) [RJ01556529]
echo ============================================================
echo.

if not exist "Game\Game.exe" (
    echo [LỖI] Không tìm thấy file Game\Game.exe!
    echo Vui lòng đặt file này cùng thư mục với game HOME.
    echo.
    pause
    exit /b 1
)

echo [1/3] Đang kiểm tra thư mục tài nguyên...
if not exist "Game\resources\app" mkdir "Game\resources\app"

echo [2/3] Đang cập nhật dữ liệu Việt Hóa & Font Noto Sans...
python tools\build_vietnamese_game.py

echo.
echo [3/3] CÀI ĐẶT HOÀN TẤT 100%!
echo Bạn có thể khởi động Game\Game.exe để thưởng thức game tiếng Việt.
echo.
pause
