@echo off
chcp 65001 > nul
title APPLY EDITED UI TO PC GAME - HOME
echo ======================================================================
echo    ĐANG ÁP DỤNG CÁC ẢNH UI ĐÃ SỬA VÀO GAME PC VÀ REPACK APP.ASAR
echo ======================================================================
cd /d "%~dp0"
python tools/apply_edited_ui.py
if errorlevel 1 (
    echo.
    echo [LỖI] Có lỗi xảy ra khi repack UI!
    pause
    exit /b 1
)
echo.
echo ======================================================================
echo  [HOÀN TẤT] Bạn có thể mở E:\HOME_\HOME_\HOME.exe để xem giao diện mới!
echo ======================================================================
pause
