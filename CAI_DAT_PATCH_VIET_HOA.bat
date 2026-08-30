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
    echo Vui lòng đặt thư mục patch này cùng vị trí với thư mục Game.
    echo.
    pause
    exit /b 1
)

echo [1/3] Đang kiểm tra thư mục tài nguyên...
if not exist "Game\resources\app" mkdir "Game\resources\app"

echo [2/3] Đang cập nhật dữ liệu Việt Hóa & Font Noto Sans...
where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    python tools\build_vietnamese_game.py
) else (
    echo Đang sao chép các tệp Việt hóa từ patch/ vào Game/resources/app/...
    xcopy /E /Y /I "patch\*" "Game\resources\app\"
)

echo.
echo ============================================================
echo [3/3] CÀI ĐẶT HOÀN TẤT 100%!
echo Bạn có thể khởi động Game\Game.exe để thưởng thức game tiếng Việt.
echo ============================================================
echo.
pause
