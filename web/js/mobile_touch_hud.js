/**
 * HOME - Mobile Touch HUD & Responsive 16:9 Letterbox Engine
 * ==========================================================
 * - Căn giữa 16:9 sắc nét trên mọi thiết bị
 * - Cử chỉ vuốt: Vuốt lên = Nhật ký (Backlog), Vuốt xuống = Ẩn hộp thoại
 * - Tự động hiển thị màn hình nhắc xoay ngang khi dựng đứng
 */

(function() {
    'use strict';

    function autoFitGameScreen() {
        const base = document.querySelector('.tyrano_base') || document.getElementById('tyrano_base');
        if (!base) return;

        const winW = window.innerWidth || document.documentElement.clientWidth;
        const winH = window.innerHeight || document.documentElement.clientHeight;
        const gameW = 1280;
        const gameH = 720;

        const scale = Math.min(winW / gameW, winH / gameH);
        if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.tmp) {
            window.TYRANO.kag.tmp.base_scale = scale;
        }

        const scaledW = gameW * scale;
        const scaledH = gameH * scale;
        const offsetX = Math.max(0, (winW - scaledW) / 2);
        const offsetY = Math.max(0, (winH - scaledH) / 2);

        base.style.position = 'absolute';
        base.style.transformOrigin = '0 0';
        base.style.transform = `scale(${scale})`;
        base.style.left = `${offsetX}px`;
        base.style.top = `${offsetY}px`;
        base.style.margin = '0px';
    }

    window.addEventListener('resize', autoFitGameScreen);
    window.addEventListener('orientationchange', () => {
        setTimeout(autoFitGameScreen, 200);
    });

    // Cử chỉ cảm ứng vuốt trên mobile
    let touchStartY = 0;
    let touchStartX = 0;

    window.addEventListener('touchstart', (e) => {
        if (e.touches && e.touches.length === 1) {
            touchStartX = e.touches[0].clientX;
            touchStartY = e.touches[0].clientY;
        } else if (e.touches && e.touches.length === 2) {
            // Chạm 2 ngón mở Menu
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                window.TYRANO.kag.menu.showMenu();
            }
        }
    }, { passive: true });

    window.addEventListener('touchend', (e) => {
        if (e.changedTouches && e.changedTouches.length === 1) {
            const diffX = e.changedTouches[0].clientX - touchStartX;
            const diffY = e.changedTouches[0].clientY - touchStartY;

            // Vuốt dọc tối thiểu 60px
            if (Math.abs(diffY) > 60 && Math.abs(diffY) > Math.abs(diffX) * 1.5) {
                if (diffY < 0) {
                    // Vuốt LÊN -> Mở Backlog
                    if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                        window.TYRANO.kag.menu.displayLog();
                    }
                } else {
                    // Vuốt XUỐNG -> Ẩn hộp thoại
                    if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.layer) {
                        window.TYRANO.kag.layer.hideMessageLayers();
                    }
                }
            }
        }
    }, { passive: true });

    // Fullscreen helper
    window.toggleWebFullscreen = function() {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen().catch(() => {});
        } else {
            document.exitFullscreen().catch(() => {});
        }
    };

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', autoFitGameScreen);
    } else {
        autoFitGameScreen();
    }
    setTimeout(autoFitGameScreen, 300);
    setTimeout(autoFitGameScreen, 1000);
})();
