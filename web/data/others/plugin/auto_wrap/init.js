// ==========================================================================
// Plugin Tự Động Ngắt Dòng Tiếng Việt (Auto Word Wrap) cho TyranoScript
// Dự án: HOME
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
