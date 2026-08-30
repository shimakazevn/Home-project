#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script cài đặt và cấu hình font tiếng Việt (Noto Sans) & Auto-Wrap CSS cho TyranoScript
Dự án: HOME (ROOM) - RJ01556529
"""

import os
import sys
import shutil
from pathlib import Path

sys.stdout.reconfigure(encoding='utf-8')

PROJECT_ROOT = Path(__file__).resolve().parent.parent
FONTS_SRC_DIR = PROJECT_ROOT / 'fonts'
PATCH_DIR = PROJECT_ROOT / 'patch'
PATCH_FONTS_DIR = PATCH_DIR / 'data' / 'others' / 'font'
PATCH_CSS_DIR = PATCH_DIR / 'tyrano' / 'css'

os.makedirs(PATCH_FONTS_DIR, exist_ok=True)
os.makedirs(PATCH_CSS_DIR, exist_ok=True)


def deploy_fonts():
    print("=" * 60)
    print("  CÀI ĐẶT FONT TIẾNG VIỆT (NOTO SANS) & CẤU HÌNH CSS AUTO-WRAP")
    print("=" * 60)

    # 1. Copy font files
    font_files = ['NotoSansJP-Medium.ttf', 'NotoSansJP-Bold.ttf']
    for f in font_files:
        src = FONTS_SRC_DIR / f
        dst = PATCH_FONTS_DIR / f
        if src.exists():
            shutil.copy2(src, dst)
            print(f"[OK] Đã sao chép font: {f} -> {dst.relative_to(PROJECT_ROOT)}")
        elif dst.exists():
            print(f"[OK] Font đã sẵn sàng trong patch: {dst.relative_to(PROJECT_ROOT)}")
        else:
            print(f"[CẢNH BÁO] Không tìm thấy font: {f}")

    # 2. Generate font.css with @font-face and Auto-Wrap rules
    font_css_content = """/* ==========================================================================
   CẤU HÌNH FONT TIẾNG VIỆT NOTO SANS & AUTO-WRAP CHO TYRANOSCRIPT
   Dự án: HOME (ROOM) - Việt Hóa
   ========================================================================== */

@font-face {
    font-family: 'NotoSansVN';
    src: url('../../data/others/font/NotoSansJP-Medium.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'NotoSansVN';
    src: url('../../data/others/font/NotoSansJP-Bold.ttf') format('truetype');
    font-weight: bold;
    font-style: normal;
}

/* Áp dụng font tiếng Việt toàn cục cho tất cả thành phần game */
body, 
div, 
span, 
p, 
a, 
input, 
textarea, 
button,
.message_inner, 
.current_span, 
.glink_button, 
.button, 
.menu_item, 
.ptext, 
.log_body,
.save_list_item_text,
.layer_menu {
    font-family: 'NotoSansVN', 'Segoe UI', 'Meiryo', sans-serif !important;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-rendering: optimizeLegibility;
}

/* ==========================================================================
   CƠ CHẾ AUTO WORD WRAP (CHỐNG TRÀN CHỮ & BẺ TỪ TIẾNG VIỆT)
   ========================================================================== */
.message_inner, .log_body, .current_span {
    word-break: break-word !important;
    overflow-wrap: break-word !important;
    white-space: normal !important;
    line-height: 1.45em !important;
}

/* Tinh chỉnh nút lựa chọn glink button tiếng Việt */
.glink_button {
    font-family: 'NotoSansVN', sans-serif !important;
    font-weight: bold !important;
    letter-spacing: 0.03em;
    word-break: break-word !important;
    white-space: normal !important;
}
"""

    font_css_path = PATCH_CSS_DIR / 'font.css'
    with open(font_css_path, 'w', encoding='utf-8') as f:
        f.write(font_css_content)
    print(f"[OK] Đã tạo file CSS: {font_css_path.relative_to(PROJECT_ROOT)}")

    # 3. Create AutoWrap JS Plugin
    plugin_dir = PATCH_DIR / 'data' / 'others' / 'plugin' / 'auto_wrap'
    os.makedirs(plugin_dir, exist_ok=True)
    
    auto_wrap_js = """// ==========================================================================
// Plugin Tự Động Ngắt Dòng Tiếng Việt (Auto Word Wrap) cho TyranoScript
// Dự án: HOME (ROOM)
// ==========================================================================

(function() {
    'use strict';
    
    if (typeof TYRANO !== 'undefined' && TYRANO.kag) {
        // Thiết lập font mặc định cho KAG Engine
        TYRANO.kag.config.userFace = 'NotoSansVN, Segoe UI, sans-serif';
        TYRANO.kag.config.defaultFontSize = '24';
        TYRANO.kag.config.defaultLineSpacing = '8';
    }
    
    // Đảm bảo DOM luôn kích hoạt wrap từ ngữ tiếng Việt
    $(document).ready(function() {
        $('head').append('<style>.message_inner { word-break: break-word !important; overflow-wrap: break-word !important; }</style>');
    });
})();
"""
    with open(plugin_dir / 'init.js', 'w', encoding='utf-8') as f:
        f.write(auto_wrap_js)
    print(f"[OK] Đã tạo Plugin Auto-Wrap: {plugin_dir.relative_to(PROJECT_ROOT)}/init.js")

    print("\n>>> HOÀN TẤT CÀI ĐẶT FONT & CSS AUTO-WRAP!")


if __name__ == '__main__':
    deploy_fonts()
