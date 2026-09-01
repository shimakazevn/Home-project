/**
 * HOME - Unified Control Orb & Modal Sheet Engine
 * ===============================================
 * - Minimalist Apple Control Orb (Single Floating Gear ⚙️)
 * - Apple Inset Grouped Modal Sheet (Lưu, Nạp, .sav, Skip, Auto, Log, Fullscreen, Title)
 * - Tự động co giãn 16:9 sắc nét & Cử chỉ cảm ứng vuốt
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
        base.style.transformOrigin = 'center center';
        base.style.top = '50%';
        base.style.left = '50%';
        base.style.margin = '0px';
        base.style.transform = `translate(-50%, -50%) scale(${scale})`;
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

    // ─── Unified Control Orb & Modal Sheet ────────────────────────────────────
    function injectUnifiedGearModal() {
        if (!document.body) {
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', injectUnifiedGearModal, { once: true });
            }
            return;
        }
        if (document.getElementById('home-gear-btn')) return;

        // Stylesheet for the Control Orb & Modal Sheet. NOTE: previously this
        // lived inside data/others/plugin/cdn_interceptor/init.js which is NOT
        // loaded in the web build, leaving the gear button completely unstyled
        // (an invisible full-screen <div> that blocked ALL game clicks).
        const style = document.createElement('style');
        style.setAttribute('data-home-hmc', '1');
        style.textContent = `
            #home-gear-btn {
                position: fixed;
                bottom: 14px;
                left: 14px;
                z-index: 999999;
                width: 42px;
                height: 42px;
                border-radius: 50%;
                background: rgba(30, 30, 32, 0.85);
                backdrop-filter: blur(30px) saturate(180%);
                -webkit-backdrop-filter: blur(30px) saturate(180%);
                border: 0.5px solid rgba(255, 255, 255, 0.16);
                box-shadow: 0 4px 18px rgba(0, 0, 0, 0.35);
                display: flex;
                align-items: center;
                justify-content: center;
                cursor: pointer;
                outline: none;
                transition: transform 0.15s ease, opacity 0.15s ease;
                opacity: 0.85;
                user-select: none;
                -webkit-tap-highlight-color: transparent;
            }
            #home-gear-btn:hover {
                opacity: 1;
                transform: scale(1.05);
                background: rgba(44, 44, 46, 0.95);
            }
            #home-gear-btn:active {
                transform: scale(0.92);
                opacity: 0.7;
            }
            #home-gear-btn svg {
                width: 19px;
                height: 19px;
                fill: none;
                stroke: rgba(255, 255, 255, 0.9);
                stroke-width: 1.7;
                stroke-linecap: round;
                stroke-linejoin: round;
            }
            #home-modal-overlay {
                position: fixed;
                inset: 0;
                z-index: 1000000;
                background: rgba(0, 0, 0, 0.45);
                backdrop-filter: blur(25px);
                -webkit-backdrop-filter: blur(25px);
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 16px;
                opacity: 0;
                pointer-events: none;
                transition: opacity 0.22s ease;
                padding: 12px;
                box-sizing: border-box;
                touch-action: none;
            }
            #home-modal-overlay.open {
                opacity: 1;
                pointer-events: auto;
            }
            #home-modal-card {
                width: 100%;
                max-width: 440px;
                max-height: 88vh;
                max-height: 88dvh;
                background: rgba(26, 26, 30, 0.95);
                backdrop-filter: blur(50px) saturate(190%);
                -webkit-backdrop-filter: blur(50px) saturate(190%);
                border: 0.5px solid rgba(255, 255, 255, 0.14);
                border-radius: 22px;
                box-shadow: 0 30px 80px rgba(0, 0, 0, 0.7);
                display: flex;
                flex-direction: column;
                overflow: hidden;
                transform: scale(0.95) translateY(12px);
                transition: transform 0.22s cubic-bezier(0.16, 1, 0.3, 1);
                color: #FFFFFF;
                font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", sans-serif;
                user-select: none;
                box-sizing: border-box;
                will-change: transform;
            }
            #home-modal-overlay.open #home-modal-card {
                transform: scale(1) translateY(0);
            }
            .hmc-sheet-handle-wrap {
                width: 100%;
                padding: 10px 0 4px;
                display: flex;
                justify-content: center;
                cursor: grab;
                touch-action: none;
                flex-shrink: 0;
            }
            .hmc-sheet-handle {
                width: 44px;
                height: 5px;
                border-radius: 999px;
                background: rgba(255, 255, 255, 0.32);
                transition: background 0.15s ease;
            }
            .hmc-sheet-handle-wrap:active .hmc-sheet-handle {
                background: rgba(255, 255, 255, 0.6);
            }
            .hmc-header {
                padding: 10px 18px 12px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                border-bottom: 0.5px solid rgba(255, 255, 255, 0.08);
                flex-shrink: 0;
            }
            .hmc-title {
                font-size: 16px;
                font-weight: 600;
                color: #FFFFFF;
                letter-spacing: -0.01em;
                margin: 0;
            }
            .hmc-close {
                background: rgba(120, 120, 128, 0.2);
                border: none;
                border-radius: 50%;
                width: 26px;
                height: 26px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: rgba(235, 235, 245, 0.65);
                cursor: pointer;
                font-size: 11px;
                font-weight: 700;
                transition: all 0.15s ease;
                flex-shrink: 0;
                outline: none;
            }
            .hmc-close:hover {
                background: rgba(120, 120, 128, 0.35);
                color: #FFFFFF;
            }
            .hmc-close:active {
                transform: scale(0.92);
            }
            .hmc-body {
                padding: 14px 16px 18px;
                flex: 1 1 auto;
                min-height: 0;
                overflow-y: auto;
                overflow-x: hidden;
                -webkit-overflow-scrolling: touch;
                touch-action: pan-y;
                display: flex;
                flex-direction: column;
                gap: 14px;
                scrollbar-width: thin;
                scrollbar-color: rgba(255, 255, 255, 0.2) transparent;
            }
            .hmc-body::-webkit-scrollbar {
                width: 4px;
            }
            .hmc-body::-webkit-scrollbar-track {
                background: transparent;
            }
            .hmc-body::-webkit-scrollbar-thumb {
                background: rgba(255, 255, 255, 0.2);
                border-radius: 4px;
            }
            .hmc-group-header {
                font-size: 11px;
                font-weight: 600;
                text-transform: uppercase;
                letter-spacing: 0.04em;
                color: rgba(235, 235, 245, 0.45);
                margin: 0 0 6px 4px;
            }
            .hmc-inset-group {
                background: rgba(120, 120, 128, 0.15);
                border: 0.5px solid rgba(255, 255, 255, 0.06);
                border-radius: 12px;
                overflow: hidden;
                flex-shrink: 0;
            }
            .hmc-row {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 11px 14px;
                position: relative;
            }
            .hmc-row + .hmc-row {
                border-top: 0.5px solid rgba(255, 255, 255, 0.08);
            }
            .hmc-row-left {
                display: flex;
                flex-direction: column;
                gap: 2px;
                min-width: 0;
            }
            .hmc-row-label {
                font-size: 14px;
                font-weight: 400;
                color: #FFFFFF;
                letter-spacing: -0.01em;
            }
            .hmc-row-sublabel {
                font-size: 11.5px;
                color: rgba(235, 235, 245, 0.5);
                letter-spacing: -0.01em;
            }
            .hmc-row-actions {
                display: flex;
                align-items: center;
                gap: 8px;
                flex-shrink: 0;
            }
            .hmc-pill-btn {
                background: rgba(255, 255, 255, 0.1);
                border: none;
                border-radius: 999px;
                color: #0A84FF;
                font-size: 12.5px;
                font-weight: 500;
                letter-spacing: -0.01em;
                padding: 4px 13px;
                cursor: pointer;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                transition: all 0.12s ease;
                outline: none;
                -webkit-tap-highlight-color: transparent;
                min-height: 28px;
            }
            .hmc-pill-btn:hover {
                background: rgba(255, 255, 255, 0.18);
            }
            .hmc-pill-btn:active {
                opacity: 0.6;
                transform: scale(0.96);
            }
            .hmc-pill-btn.pill-primary {
                background: #0A84FF;
                color: #FFFFFF;
                font-weight: 600;
            }
            .hmc-pill-btn.pill-primary:hover {
                background: #0071E3;
            }
            .hmc-pill-btn.pill-danger {
                background: rgba(255, 69, 58, 0.15);
                color: #FF453A;
            }
            .hmc-pill-btn.pill-disabled {
                opacity: 0.35 !important;
                cursor: not-allowed !important;
                pointer-events: none !important;
            }
            .hmc-segmented.segmented-disabled {
                opacity: 0.35 !important;
                pointer-events: none !important;
            }
            .hmc-row-disabled {
                opacity: 0.45;
            }
            .hmc-segmented {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
                background: rgba(120, 120, 128, 0.2);
                border-radius: 8px;
                padding: 2px;
                gap: 2px;
                margin: 6px 8px;
            }
            .hmc-segment-item {
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 7px 2px;
                border-radius: 6px;
                border: none;
                background: transparent;
                color: rgba(255, 255, 255, 0.75);
                font-size: 12px;
                font-weight: 500;
                cursor: pointer;
                transition: all 0.15s ease;
                outline: none;
                -webkit-tap-highlight-color: transparent;
            }
            .hmc-segment-item:hover {
                color: #FFFFFF;
            }
            .hmc-segment-item:active {
                opacity: 0.7;
            }
            .hmc-segment-item.active {
                background: rgba(255, 255, 255, 0.25);
                color: #FFFFFF;
                font-weight: 600;
                box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2);
            }
            .hmc-segment-item.active-warn {
                background: #FF9F0A;
                color: #000000;
                font-weight: 600;
            }
            .hmc-segment-item.active-blue {
                background: #0A84FF;
                color: #FFFFFF;
                font-weight: 600;
            }
            .hmc-cache-box {
                padding: 12px 14px;
            }
            .hmc-bar-bg {
                background: rgba(120, 120, 128, 0.25);
                border-radius: 999px;
                height: 4px;
                margin: 8px 0 6px;
                overflow: hidden;
            }
            .hmc-bar-fill {
                height: 100%;
                border-radius: 999px;
                background: #0A84FF;
                transition: width 0.3s ease;
            }
            .hmc-bar-fill.complete {
                background: #30D158;
            }
            .hmc-cache-status {
                font-size: 11.5px;
                color: rgba(235, 235, 245, 0.55);
                line-height: 1.4;
                margin-bottom: 10px;
            }
            /* Modern HUD Config Styles */
            .hmc-config-section {
                display: flex;
                flex-direction: column;
                gap: 8px;
            }
            .hmc-slider-row {
                display: flex;
                align-items: center;
                justify-content: space-between;
                gap: 10px;
                padding: 8px 12px;
                background: rgba(255, 255, 255, 0.04);
                border: 0.5px solid rgba(255, 255, 255, 0.07);
                border-radius: 12px;
            }
            .hmc-slider-left {
                display: flex;
                flex-direction: column;
                gap: 2px;
                min-width: 90px;
                flex-shrink: 0;
            }
            .hmc-slider-title {
                font-size: 13px;
                font-weight: 600;
                color: #FFFFFF;
            }
            .hmc-slider-sub {
                font-size: 10.5px;
                color: rgba(235, 235, 245, 0.55);
            }
            .hmc-slider-center {
                flex: 1 1 auto;
                min-width: 0;
                display: flex;
                align-items: center;
                gap: 10px;
            }
            #home-modal-card input[type="range"].hmc-range-input,
            .hmc-range-input {
                -webkit-appearance: none !important;
                -moz-appearance: none !important;
                appearance: none !important;
                position: relative !important;
                display: block !important;
                flex: 1 1 auto !important;
                width: 100% !important;
                min-width: 60px !important;
                height: 8px !important;
                border-radius: 999px !important;
                background: rgba(255, 255, 255, 0.22) !important;
                outline: none !important;
                cursor: pointer !important;
                border: none !important;
                margin: 0 !important;
                padding: 0 !important;
                z-index: 10 !important;
                opacity: 1 !important;
                visibility: visible !important;
                box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3) !important;
            }
            #home-modal-card input[type="range"].hmc-range-input::-webkit-slider-runnable-track,
            .hmc-range-input::-webkit-slider-runnable-track {
                width: 100% !important;
                height: 8px !important;
                border-radius: 999px !important;
                background: rgba(255, 255, 255, 0.22) !important;
                border: none !important;
                cursor: pointer !important;
            }
            #home-modal-card input[type="range"].hmc-range-input::-moz-range-track,
            .hmc-range-input::-moz-range-track {
                width: 100% !important;
                height: 8px !important;
                border-radius: 999px !important;
                background: rgba(255, 255, 255, 0.22) !important;
                border: none !important;
                cursor: pointer !important;
            }
            #home-modal-card input[type="range"].hmc-range-input::-webkit-slider-thumb,
            .hmc-range-input::-webkit-slider-thumb {
                -webkit-appearance: none !important;
                appearance: none !important;
                width: 20px !important;
                height: 20px !important;
                margin-top: -6px !important;
                border-radius: 50% !important;
                background: #0A84FF !important;
                background-image: none !important;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5) !important;
                cursor: pointer !important;
                border: 2px solid #FFFFFF !important;
                position: relative !important;
                z-index: 20 !important;
                opacity: 1 !important;
                visibility: visible !important;
            }
            #home-modal-card input[type="range"].hmc-range-input::-moz-range-thumb,
            .hmc-range-input::-moz-range-thumb {
                width: 20px !important;
                height: 20px !important;
                border-radius: 50% !important;
                background: #0A84FF !important;
                background-image: none !important;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5) !important;
                cursor: pointer !important;
                border: 2px solid #FFFFFF !important;
                position: relative !important;
                z-index: 20 !important;
                opacity: 1 !important;
                visibility: visible !important;
            }
            .hmc-slider-val {
                font-size: 12px;
                font-weight: 600;
                color: rgba(255, 255, 255, 0.9);
                min-width: 40px;
                text-align: right;
                font-variant-numeric: tabular-nums;
            }
            .hmc-mute-btn {
                background: rgba(120, 120, 128, 0.2);
                border: 0.5px solid rgba(255, 255, 255, 0.1);
                border-radius: 8px;
                padding: 4px 8px;
                color: rgba(255, 255, 255, 0.75);
                font-size: 11px;
                font-weight: 500;
                cursor: pointer;
                transition: all 0.15s ease;
                flex-shrink: 0;
            }
            .hmc-mute-btn.muted {
                background: rgba(255, 69, 58, 0.25);
                border-color: rgba(255, 69, 58, 0.4);
                color: #FF453A;
            }
            .hmc-toggle-btn {
                background: rgba(120, 120, 128, 0.2);
                border: 0.5px solid rgba(255, 255, 255, 0.1);
                border-radius: 8px;
                padding: 5px 12px;
                color: rgba(255, 255, 255, 0.75);
                font-size: 12px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.15s ease;
            }
            .hmc-toggle-btn.active {
                background: rgba(48, 209, 88, 0.25);
                border-color: rgba(48, 209, 88, 0.4);
                color: #30D158;
            }
            .hmc-config-footer {
                display: flex;
                align-items: center;
                justify-content: space-between;
                gap: 10px;
                padding-top: 6px;
                border-top: 0.5px solid rgba(255, 255, 255, 0.08);
            }
            .hmc-footer-btn {
                flex: 1;
                padding: 9px 14px;
                border-radius: 10px;
                font-size: 12.5px;
                font-weight: 600;
                cursor: pointer;
                border: none;
                transition: all 0.15s ease;
                text-align: center;
            }
            .hmc-btn-reset {
                background: rgba(255, 255, 255, 0.08);
                color: rgba(235, 235, 245, 0.75);
                border: 0.5px solid rgba(255, 255, 255, 0.1);
            }
            .hmc-btn-reset:hover {
                background: rgba(255, 69, 58, 0.2);
                color: #FF453A;
                border-color: rgba(255, 69, 58, 0.3);
            }
            .hmc-btn-save {
                background: #0A84FF;
                color: #FFFFFF;
            }
            .hmc-btn-save:hover {
                background: #0071E3;
            }
            @media (max-width: 480px) {
                #home-modal-overlay { padding: 0; align-items: flex-end; }
                #home-modal-card { max-width: 100%; max-height: 92vh; max-height: 92dvh; border-radius: 24px 24px 0 0; border-bottom: none; }
                .hmc-header { padding: 8px 14px 10px; }
                .hmc-title { font-size: 15px; }
                .hmc-body { padding: 10px 12px 16px; gap: 12px; }
                .hmc-row { padding: 9px 12px; }
                .hmc-row-label { font-size: 13.5px; }
                .hmc-pill-btn { padding: 4px 11px; font-size: 12px; }
            }
            @media (max-height: 540px) {
                #home-modal-overlay { padding: 6px; align-items: center; }
                #home-modal-card { max-height: 96vh; max-height: 96dvh; border-radius: 14px; max-width: 520px; }
                .hmc-sheet-handle-wrap { padding: 4px 0 2px; }
                .hmc-header { padding: 4px 14px; }
                .hmc-title { font-size: 13.5px; }
                .hmc-body { padding: 6px 10px 10px; gap: 8px; }
                .hmc-row { padding: 7px 10px; }
                .hmc-group-header { margin: 0 0 3px 4px; font-size: 10px; }
            }
        `;
        document.head.appendChild(style);

        // 1. Nút Bánh Răng Floating Orb
        const gearBtn = document.createElement('div');
        gearBtn.id = 'home-gear-btn';
        gearBtn.title = 'Cài đặt & Tiện ích';
        gearBtn.innerHTML = `
            <svg viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="3"></circle>
                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
            </svg>
        `;
        document.body.appendChild(gearBtn);

        // 2. Modal Card Sheet
        const overlay = document.createElement('div');
        overlay.id = 'home-modal-overlay';
        overlay.innerHTML = `
            <div id="home-modal-card">
                <div class="hmc-sheet-handle-wrap"><div class="hmc-sheet-handle"></div></div>
                <div class="hmc-header">
                    <div class="hmc-title">Cài đặt & Tiện ích</div>
                    <button class="hmc-close" id="hmc-close-btn" title="Đóng">✕</button>
                </div>
                <div class="hmc-body" id="hmc-dynamic-body">
                </div>
            </div>
        `;
        document.body.appendChild(overlay);

        const card = overlay.querySelector('#home-modal-card');
        const closeModal = () => { overlay.classList.remove('open'); };
        const openModal = () => { overlay.classList.add('open'); renderModal(); };

        gearBtn.onclick = openModal;
        document.getElementById('hmc-close-btn').onclick = closeModal;
        overlay.onclick = (e) => { if (e.target === overlay) closeModal(); };

        // ─── Tối ưu vuốt chạm trên Mobile & Fullscreen ────────────────────────────
        let touchStartY = 0;
        let touchCurrentY = 0;
        let isDraggingCard = false;

        card.addEventListener('touchstart', (e) => {
            if (e.touches.length !== 1) return;
            const touch = e.touches[0];
            touchStartY = touch.clientY;
            touchCurrentY = touch.clientY;
            const bodyEl = document.getElementById('hmc-dynamic-body');
            if (e.target.closest('.hmc-sheet-handle-wrap') || e.target.closest('.hmc-header') || (bodyEl && bodyEl.scrollTop <= 0)) {
                isDraggingCard = true;
            }
        }, { passive: true });

        card.addEventListener('touchmove', (e) => {
            if (!isDraggingCard || e.touches.length !== 1) return;
            const touch = e.touches[0];
            touchCurrentY = touch.clientY;
            const deltaY = touchCurrentY - touchStartY;
            if (deltaY > 0) {
                card.style.transition = 'none';
                card.style.transform = `translateY(${deltaY}px)`;
                if (e.cancelable) e.preventDefault();
            }
        }, { passive: false });

        card.addEventListener('touchend', (e) => {
            if (!isDraggingCard) return;
            isDraggingCard = false;
            const deltaY = touchCurrentY - touchStartY;
            card.style.transition = 'transform 0.22s cubic-bezier(0.16, 1, 0.3, 1)';
            if (deltaY > 75) {
                card.style.transform = 'translateY(100%)';
                setTimeout(() => {
                    closeModal();
                    card.style.transform = '';
                }, 180);
            } else {
                card.style.transform = 'scale(1) translateY(0)';
            }
        }, { passive: true });

        // Vuốt lên từ Floating Gear Button để mở modal
        let gearTouchStartY = 0;
        gearBtn.addEventListener('touchstart', (e) => {
            if (e.touches.length === 1) gearTouchStartY = e.touches[0].clientY;
        }, { passive: true });
        gearBtn.addEventListener('touchend', (e) => {
            if (e.changedTouches.length === 1) {
                const endY = e.changedTouches[0].clientY;
                if (gearTouchStartY - endY > 25) {
                    openModal();
                }
            }
        }, { passive: true });

        // Cách ly sự kiện chạm không cho lọt xuống khung game bên dưới
        overlay.addEventListener('touchstart', (e) => e.stopPropagation(), { passive: true });
        overlay.addEventListener('touchend', (e) => e.stopPropagation(), { passive: true });

        let currentModalView = 'main'; // 'main' or 'config'

        function getConfigState() {
            let audioState = (window.HOME_AudioEngine && window.HOME_AudioEngine.getVolumeState) ? window.HOME_AudioEngine.getVolumeState() : null;
            let sf = (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.variable && window.TYRANO.kag.variable.sf) || {};
            let TG = (window.TYRANO && window.TYRANO.kag) || {};
            let cfg = (TG && TG.config) || {};
            
            let bgmVol = (audioState && audioState.bgm !== undefined) ? audioState.bgm : ((sf._system_config_bgm_volume !== undefined) ? parseInt(sf._system_config_bgm_volume) : (parseInt(cfg.defaultBgmVolume) || 80));
            let seVol = (audioState && audioState.se !== undefined) ? audioState.se : ((sf._system_config_se_volume !== undefined) ? parseInt(sf._system_config_se_volume) : (parseInt(cfg.defaultSeVolume) || 80));
            let voiceVol = (audioState && audioState.voice !== undefined) ? audioState.voice : ((sf._system_config_voice_volume !== undefined) ? parseInt(sf._system_config_voice_volume) : 80);

            let chSpeed = (sf._config_ch_speed !== undefined) ? parseInt(sf._config_ch_speed) : (parseInt(cfg.chSpeed) || 50);
            let autoSpeed = (sf._system_config_auto_speed !== undefined) ? parseInt(sf._system_config_auto_speed) : (parseInt(cfg.autoSpeed) || 2500);

            let workAnime = (sf.workanime !== undefined) ? sf.workanime : (((window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.variable && window.TYRANO.kag.variable.f && window.TYRANO.kag.variable.f.workanime !== undefined)) ? window.TYRANO.kag.variable.f.workanime : 0);
            let unreadSkip = (cfg.unReadTextSkip === "true");

            return {
                bgmVol, seVol, voiceVol,
                chSlider: Math.max(1, Math.min(100, 101 - chSpeed)),
                autoSlider: Math.max(1, Math.min(100, Math.round((5050 - autoSpeed) / 45))),
                workAnime: workAnime === 0,
                unreadSkip
            };
        }

        function applyBgm(val) {
            val = Math.max(0, Math.min(100, parseInt(val) || 0));
            if (window.HOME_AudioEngine && window.HOME_AudioEngine.setBgmVolume) {
                window.HOME_AudioEngine.setBgmVolume(val);
            }
            if (window.TYRANO && window.TYRANO.kag) {
                const kag = window.TYRANO.kag;
                if (!kag.variable.sf) kag.variable.sf = {};
                kag.variable.sf._system_config_bgm_volume = val;
                kag.config.defaultBgmVolume = String(val);
                if (kag.stat.current_bgm) kag.stat.current_bgm_vol = String(val);
                if (kag.saveSystemVariable) kag.saveSystemVariable();
            }
        }

        function applySe(val) {
            val = Math.max(0, Math.min(100, parseInt(val) || 0));
            if (window.HOME_AudioEngine && window.HOME_AudioEngine.setSeVolume) {
                window.HOME_AudioEngine.setSeVolume(val);
            }
            if (window.TYRANO && window.TYRANO.kag) {
                const kag = window.TYRANO.kag;
                if (!kag.variable.sf) kag.variable.sf = {};
                kag.variable.sf._system_config_se_volume = val;
                kag.config.defaultSeVolume = String(val);
                if (!kag.variable.sf._skskpnt_volume) kag.variable.sf._skskpnt_volume = [50, 70, 70, 70];
                kag.variable.sf._skskpnt_volume[0] = val;
                if (!kag.stat.map_se_volume) kag.stat.map_se_volume = {};
                kag.stat.map_se_volume[0] = val;
                if (kag.saveSystemVariable) kag.saveSystemVariable();
            }
        }

        function applyVoice(val) {
            val = Math.max(0, Math.min(100, parseInt(val) || 0));
            if (window.HOME_AudioEngine && window.HOME_AudioEngine.setVoiceVolume) {
                window.HOME_AudioEngine.setVoiceVolume(val);
            }
            if (window.TYRANO && window.TYRANO.kag) {
                const kag = window.TYRANO.kag;
                if (!kag.variable.sf) kag.variable.sf = {};
                kag.variable.sf._system_config_voice_volume = val;
                if (!kag.variable.sf._skskpnt_volume) kag.variable.sf._skskpnt_volume = [50, 70, 70, 70];
                kag.variable.sf._skskpnt_volume[1] = val;
                kag.variable.sf._skskpnt_volume[2] = val;
                kag.variable.sf._skskpnt_volume[3] = val;
                if (!kag.stat.map_se_volume) kag.stat.map_se_volume = {};
                kag.stat.map_se_volume[1] = val;
                kag.stat.map_se_volume[2] = val;
                kag.stat.map_se_volume[3] = val;
                if (kag.saveSystemVariable) kag.saveSystemVariable();
            }
        }

        function applyChSpeed(sliderVal) {
            sliderVal = Math.max(1, Math.min(100, parseInt(sliderVal) || 50));
            const chSpeed = Math.max(0, 101 - sliderVal);
            if (!window.TYRANO || !window.TYRANO.kag) return;
            const kag = window.TYRANO.kag;
            if (!kag.variable.sf) kag.variable.sf = {};
            kag.variable.sf._config_ch_speed = chSpeed;
            kag.config.chSpeed = String(chSpeed);
        }

        function applyAutoSpeed(sliderVal) {
            sliderVal = Math.max(1, Math.min(100, parseInt(sliderVal) || 50));
            const autoSpeed = Math.max(500, Math.min(5000, 5050 - sliderVal * 45));
            if (!window.TYRANO || !window.TYRANO.kag) return;
            const kag = window.TYRANO.kag;
            if (!kag.variable.sf) kag.variable.sf = {};
            kag.variable.sf._system_config_auto_speed = autoSpeed;
            kag.config.autoSpeed = String(autoSpeed);
        }

        function applyWorkAnime(enabled) {
            const val = enabled ? 0 : 1;
            if (!window.TYRANO || !window.TYRANO.kag) return;
            const kag = window.TYRANO.kag;
            if (!kag.variable.sf) kag.variable.sf = {};
            kag.variable.sf.workanime = val;
            if (kag.variable.f) kag.variable.f.workanime = val;
        }

        function applySkipUnread(enabled) {
            if (!window.TYRANO || !window.TYRANO.kag) return;
            const kag = window.TYRANO.kag;
            kag.config.unReadTextSkip = enabled ? "true" : "false";
        }

        function resetConfigDefaults() {
            applyBgm(80);
            applySe(80);
            applyVoice(80);
            applyChSpeed(51);
            applyAutoSpeed(57);
            applyWorkAnime(true);
            applySkipUnread(false);
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.saveSystemVariable) {
                window.TYRANO.kag.saveSystemVariable();
            }
            renderModal();
        }

        window.openModernConfigModal = function() {
            currentModalView = 'config';
            overlay.classList.add('open');
            renderModal();
        };

        window.closeModernConfigModal = function() {
            currentModalView = 'main';
            closeModal();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.saveSystemVariable) {
                window.TYRANO.kag.saveSystemVariable();
            }
        };

        function isGameActive() {
            if (!window.TYRANO || !window.TYRANO.kag || !window.TYRANO.kag.stat) return false;
            const stat = window.TYRANO.kag.stat;
            const scenario = (stat.current_scenario || '').toLowerCase();
            if (!scenario) return false;
            if (scenario === 'first.ks' || scenario.startsWith('title_') || scenario.startsWith('_title_')) {
                return false;
            }
            return true;
        }

        function renderModal() {
            const inGame = isGameActive();
            const body = document.getElementById('hmc-dynamic-body');
            const header = document.querySelector('.hmc-header');
            if (!body || !header) return;

            if (currentModalView === 'config') {
                const cfg = getConfigState();
                header.innerHTML = `
                    <button class="hmc-pill-btn" id="hmc-config-back-btn" style="padding:4px 10px;font-size:12px;">← Quay lại</button>
                    <div class="hmc-title">Cài Đặt Trò Chơi</div>
                    <button class="hmc-close" id="hmc-close-btn" title="Đóng">✕</button>
                `;
                document.getElementById('hmc-config-back-btn').onclick = () => {
                    currentModalView = 'main';
                    renderModal();
                };
                document.getElementById('hmc-close-btn').onclick = () => {
                    window.closeModernConfigModal();
                };

                body.innerHTML = `
                    <!-- 1. ÂM LƯỢNG NHẠC VÀ HIỆU ỨNG -->
                    <div class="hmc-config-section">
                        <div class="hmc-group-header">Âm Lượng & Hiệu Ứng</div>
                        <div class="hmc-slider-row">
                            <div class="hmc-slider-left">
                                <div class="hmc-slider-title">Nhạc nền (BGM)</div>
                                <div class="hmc-slider-sub">BGM Audio</div>
                            </div>
                            <div class="hmc-slider-center">
                                <input type="range" class="hmc-range-input" id="cfg-bgm-slider" min="0" max="100" value="${cfg.bgmVol}">
                                <span class="hmc-slider-val" id="cfg-bgm-val">${cfg.bgmVol}%</span>
                            </div>
                            <button class="hmc-mute-btn ${cfg.bgmVol === 0 ? 'muted' : ''}" id="cfg-bgm-mute">${cfg.bgmVol === 0 ? 'Bật' : 'Tắt'}</button>
                        </div>
                        <div class="hmc-slider-row">
                            <div class="hmc-slider-left">
                                <div class="hmc-slider-title">Hiệu ứng (SE)</div>
                                <div class="hmc-slider-sub">Âm thanh SE</div>
                            </div>
                            <div class="hmc-slider-center">
                                <input type="range" class="hmc-range-input" id="cfg-se-slider" min="0" max="100" value="${cfg.seVol}">
                                <span class="hmc-slider-val" id="cfg-se-val">${cfg.seVol}%</span>
                            </div>
                            <button class="hmc-mute-btn ${cfg.seVol === 0 ? 'muted' : ''}" id="cfg-se-mute">${cfg.seVol === 0 ? 'Bật' : 'Tắt'}</button>
                        </div>
                        <div class="hmc-slider-row">
                            <div class="hmc-slider-left">
                                <div class="hmc-slider-title">Lồng tiếng (Voice)</div>
                                <div class="hmc-slider-sub">Giọng nhân vật</div>
                            </div>
                            <div class="hmc-slider-center">
                                <input type="range" class="hmc-range-input" id="cfg-voice-slider" min="0" max="100" value="${cfg.voiceVol}">
                                <span class="hmc-slider-val" id="cfg-voice-val">${cfg.voiceVol}%</span>
                            </div>
                            <button class="hmc-mute-btn ${cfg.voiceVol === 0 ? 'muted' : ''}" id="cfg-voice-mute">${cfg.voiceVol === 0 ? 'Bật' : 'Tắt'}</button>
                        </div>
                    </div>

                    <!-- 2. TỐC ĐỘ XUẤT CHỮ VÀ TỰ ĐỘNG -->
                    <div class="hmc-config-section">
                        <div class="hmc-group-header">Tốc Độ Đọc & Hiển Thị</div>
                        <div class="hmc-slider-row">
                            <div class="hmc-slider-left">
                                <div class="hmc-slider-title">Tốc độ xuất chữ</div>
                                <div class="hmc-slider-sub">Chậm ➔ Tức thì</div>
                            </div>
                            <div class="hmc-slider-center">
                                <input type="range" class="hmc-range-input" id="cfg-ch-slider" min="1" max="100" value="${cfg.chSlider}">
                                <span class="hmc-slider-val" id="cfg-ch-val">${cfg.chSlider === 100 ? 'Tức thì' : cfg.chSlider + '%'}</span>
                            </div>
                        </div>
                        <div class="hmc-slider-row">
                            <div class="hmc-slider-left">
                                <div class="hmc-slider-title">Tốc độ tự đọc (Auto)</div>
                                <div class="hmc-slider-sub">Chậm ➔ Nhanh</div>
                            </div>
                            <div class="hmc-slider-center">
                                <input type="range" class="hmc-range-input" id="cfg-auto-slider" min="1" max="100" value="${cfg.autoSlider}">
                                <span class="hmc-slider-val" id="cfg-auto-val">${cfg.autoSlider}%</span>
                            </div>
                        </div>
                    </div>

                    <!-- 3. TÙY CHỌN BỔ SUNG -->
                    <div class="hmc-config-section">
                        <div class="hmc-group-header">Tùy Chọn Hệ Thống</div>
                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Hoạt ảnh làm việc (Job Animation)</div>
                                <div class="hmc-row-sublabel">Hiệu ứng chạy tiến độ công việc</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-toggle-btn ${cfg.workAnime ? 'active' : ''}" id="cfg-toggle-work">${cfg.workAnime ? 'BẬT' : 'TẮT'}</button>
                            </div>
                        </div>
                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Tua cả câu chưa đọc (Skip All)</div>
                                <div class="hmc-row-sublabel">Tua nhanh không dừng lại</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-toggle-btn ${cfg.unreadSkip ? 'active' : ''}" id="cfg-toggle-skip">${cfg.unreadSkip ? 'BẬT' : 'TẮT'}</button>
                            </div>
                        </div>
                    </div>

                    <!-- FOOTER BUTTONS -->
                    <div class="hmc-config-footer">
                        <button class="hmc-footer-btn hmc-btn-reset" id="cfg-btn-reset">Khôi phục mặc định</button>
                        <button class="hmc-footer-btn hmc-btn-save" id="cfg-btn-close">Đóng & Tiếp tục</button>
                    </div>
                `;

                // Sliders event listeners
                let prevBgm = cfg.bgmVol || 80;
                let prevSe = cfg.seVol || 80;
                let prevVoice = cfg.voiceVol || 80;

                const bgmIn = document.getElementById('cfg-bgm-slider');
                const bgmVal = document.getElementById('cfg-bgm-val');
                const bgmMute = document.getElementById('cfg-bgm-mute');
                bgmIn?.addEventListener('input', (e) => {
                    const v = parseInt(e.target.value);
                    bgmVal.textContent = v + '%';
                    bgmMute.textContent = (v === 0) ? 'Bật' : 'Tắt';
                    bgmMute.classList.toggle('muted', v === 0);
                    applyBgm(v);
                });
                bgmMute?.addEventListener('click', () => {
                    const cur = parseInt(bgmIn.value);
                    if (cur > 0) {
                        prevBgm = cur;
                        bgmIn.value = 0;
                    } else {
                        bgmIn.value = prevBgm || 80;
                    }
                    bgmIn.dispatchEvent(new Event('input'));
                });

                const seIn = document.getElementById('cfg-se-slider');
                const seVal = document.getElementById('cfg-se-val');
                const seMute = document.getElementById('cfg-se-mute');
                seIn?.addEventListener('input', (e) => {
                    const v = parseInt(e.target.value);
                    seVal.textContent = v + '%';
                    seMute.textContent = (v === 0) ? 'Bật' : 'Tắt';
                    seMute.classList.toggle('muted', v === 0);
                    applySe(v);
                });
                seMute?.addEventListener('click', () => {
                    const cur = parseInt(seIn.value);
                    if (cur > 0) {
                        prevSe = cur;
                        seIn.value = 0;
                    } else {
                        seIn.value = prevSe || 80;
                    }
                    seIn.dispatchEvent(new Event('input'));
                });

                const voiceIn = document.getElementById('cfg-voice-slider');
                const voiceVal = document.getElementById('cfg-voice-val');
                const voiceMute = document.getElementById('cfg-voice-mute');
                voiceIn?.addEventListener('input', (e) => {
                    const v = parseInt(e.target.value);
                    voiceVal.textContent = v + '%';
                    voiceMute.textContent = (v === 0) ? 'Bật' : 'Tắt';
                    voiceMute.classList.toggle('muted', v === 0);
                    applyVoice(v);
                });
                voiceMute?.addEventListener('click', () => {
                    const cur = parseInt(voiceIn.value);
                    if (cur > 0) {
                        prevVoice = cur;
                        voiceIn.value = 0;
                    } else {
                        voiceIn.value = prevVoice || 80;
                    }
                    voiceIn.dispatchEvent(new Event('input'));
                });

                const chIn = document.getElementById('cfg-ch-slider');
                const chVal = document.getElementById('cfg-ch-val');
                chIn?.addEventListener('input', (e) => {
                    const v = parseInt(e.target.value);
                    chVal.textContent = (v === 100) ? 'Tức thì' : v + '%';
                    applyChSpeed(v);
                });

                const autoIn = document.getElementById('cfg-auto-slider');
                const autoVal = document.getElementById('cfg-auto-val');
                autoIn?.addEventListener('input', (e) => {
                    const v = parseInt(e.target.value);
                    autoVal.textContent = v + '%';
                    applyAutoSpeed(v);
                });

                const toggleWork = document.getElementById('cfg-toggle-work');
                toggleWork?.addEventListener('click', () => {
                    const active = !toggleWork.classList.contains('active');
                    toggleWork.classList.toggle('active', active);
                    toggleWork.textContent = active ? 'BẬT' : 'TẮT';
                    applyWorkAnime(active);
                });

                const toggleSkip = document.getElementById('cfg-toggle-skip');
                toggleSkip?.addEventListener('click', () => {
                    const active = !toggleSkip.classList.contains('active');
                    toggleSkip.classList.toggle('active', active);
                    toggleSkip.textContent = active ? 'BẬT' : 'TẮT';
                    applySkipUnread(active);
                });

                document.getElementById('cfg-btn-reset')?.addEventListener('click', () => {
                    resetConfigDefaults();
                });
                document.getElementById('cfg-btn-close')?.addEventListener('click', () => {
                    window.closeModernConfigModal();
                });
                return;
            }

            // MAIN VIEW
            header.innerHTML = `
                <div class="hmc-title">Cài đặt & Tiện ích</div>
                <button class="hmc-close" id="hmc-close-btn" title="Đóng">✕</button>
            `;
            document.getElementById('hmc-close-btn').onclick = closeModal;

            const isSkip = inGame && !!(window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat && window.TYRANO.kag.stat.is_skip);
            const isAuto = inGame && !!(window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat && window.TYRANO.kag.stat.is_auto);

            body.innerHTML = `
                <!-- SECTION 1: DỮ LIỆU LƯU TRỮ -->
                <div>
                    <div class="hmc-group-header">Dữ liệu Lưu trữ</div>
                    <div class="hmc-inset-group">
                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Lưu & Nạp Game</div>
                                <div class="hmc-row-sublabel">Mở màn hình chọn ô nhớ</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_save_menu">Lưu</button>
                                <button class="hmc-pill-btn" id="btn_modal_load_menu">Nạp</button>
                            </div>
                        </div>

                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Lưu nhanh (Q.Save / Q.Load)</div>
                                <div class="hmc-row-sublabel">Ghi đè / Nạp vị trí tạm</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_qsave">Lưu nhanh</button>
                                <button class="hmc-pill-btn" id="btn_modal_qload">Nạp nhanh</button>
                            </div>
                        </div>

                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Tệp sao lưu (.sav)</div>
                                <div class="hmc-row-sublabel">Xuất / Nhập tệp an toàn</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_export">Xuất File</button>
                                <button class="hmc-pill-btn" id="btn_modal_import">Nhập File</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- SECTION 2: ĐIỀU KHIỂN ĐỌC TRUYỆN -->
                <div>
                    <div class="hmc-group-header">Điều khiển Đọc truyện ${inGame ? '' : '• Khi vào game'}</div>
                    <div class="hmc-inset-group">
                        <div class="hmc-segmented ${inGame ? '' : 'segmented-disabled'}">
                            <button class="hmc-segment-item ${isSkip ? 'active-warn' : ''}" id="btn_modal_skip">
                                ${isSkip ? 'Dừng tua' : 'Tua nhanh'}
                            </button>
                            <button class="hmc-segment-item ${isAuto ? 'active-blue' : ''}" id="btn_modal_auto">
                                ${isAuto ? 'Dừng đọc' : 'Tự đọc'}
                            </button>
                            <button class="hmc-segment-item" id="btn_modal_log">
                                Nhật ký
                            </button>
                            <button class="hmc-segment-item" id="btn_modal_hide">
                                Ẩn chữ
                            </button>
                        </div>

                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Cài đặt Trò chơi (Config)</div>
                                <div class="hmc-row-sublabel">Chỉnh Âm lượng BGM, Voice, Tốc độ chữ</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_config">Mở Config</button>
                            </div>
                        </div>

                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Toàn màn hình</div>
                                <div class="hmc-row-sublabel">Tối ưu không gian hiển thị</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_fullscreen">Bật / Tắt</button>
                            </div>
                        </div>

                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Thoát Xem CG / Replay</div>
                                <div class="hmc-row-sublabel">Quay lại Gallery hoặc Danh mục</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_exit_cg">Thoát CG</button>
                            </div>
                        </div>

                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Màn hình chính (Title)</div>
                                <div class="hmc-row-sublabel">${inGame ? 'Thoát về trang bắt đầu' : 'Đang ở màn hình chính'}</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_title">Về Title</button>
                            </div>
                        </div>
                    </div>
                </div>
            `;

            // Gắn sự kiện Main View
            document.getElementById('btn_modal_save_menu')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    closeModal();
                    window.TYRANO.kag.menu.displaySave();
                }
            });
            document.getElementById('btn_modal_load_menu')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    closeModal();
                    window.TYRANO.kag.menu.displayLoad();
                }
            });
            document.getElementById('btn_modal_qsave')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    window.TYRANO.kag.menu.setQuickSave();
                    closeModal();
                }
            });
            document.getElementById('btn_modal_qload')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    window.TYRANO.kag.menu.loadQuickSave();
                    closeModal();
                }
            });
            document.getElementById('btn_modal_export')?.addEventListener('click', () => {
                if (window.exportCurrentSaveToFile) window.exportCurrentSaveToFile();
            });
            document.getElementById('btn_modal_import')?.addEventListener('click', () => {
                if (window.importSaveFromFile) window.importSaveFromFile();
            });
            document.getElementById('btn_modal_skip')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
                    if (window.TYRANO.kag.stat.is_skip) {
                        window.TYRANO.kag.ftag.startTag("skipstop", {});
                    } else {
                        window.TYRANO.kag.ftag.startTag("skipstart", {});
                    }
                    closeModal();
                }
            });
            document.getElementById('btn_modal_auto')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
                    if (window.TYRANO.kag.stat.is_auto) {
                        window.TYRANO.kag.ftag.startTag("autostop", { next: "false" });
                    } else {
                        window.TYRANO.kag.ftag.startTag("autostart", {});
                    }
                    closeModal();
                }
            });
            document.getElementById('btn_modal_log')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    closeModal();
                    window.TYRANO.kag.menu.displayLog();
                }
            });
            document.getElementById('btn_modal_hide')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.layer) {
                    closeModal();
                    window.TYRANO.kag.layer.hideMessageLayers();
                }
            });
            document.getElementById('btn_modal_config')?.addEventListener('click', () => {
                window.openModernConfigModal();
            });
            document.getElementById('btn_modal_fullscreen')?.addEventListener('click', () => {
                window.toggleWebFullscreen();
            });
            document.getElementById('btn_modal_exit_cg')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag) {
                    closeModal();
                    if (window.TYRANO.kag.stat && window.TYRANO.kag.stat.current_scenario && window.TYRANO.kag.stat.current_scenario.indexOf('config.ks') !== -1) {
                        if (window.TYRANO.kag.tmp && window.TYRANO.kag.tmp.sleep_game) {
                            window.TYRANO.kag.ftag.startTag("awakegame", { variable_over: "true", bgm_over: "false" });
                        } else {
                            window.TYRANO.kag.ftag.startTag("jump", { storage: "title_screen.ks", target: "*back" });
                        }
                        return;
                    }
                    if (window.TYRANO.kag.tmp && window.TYRANO.kag.tmp.sleep_game) {
                        window.TYRANO.kag.ftag.startTag("awakegame", { variable_over: "true", bgm_over: "false" });
                    } else if (window.TYRANO.kag.stat && window.TYRANO.kag.stat.f && window.TYRANO.kag.stat.f.kaisou == 1) {
                        window.TYRANO.kag.ftag.startTag("jump", { storage: "title_kaisou.ks", target: "*end" });
                    } else {
                        window.TYRANO.kag.ftag.startTag("jump", { storage: "title_screen.ks", target: "*back" });
                    }
                }
            });
            document.getElementById('btn_modal_title')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag) {
                    closeModal();
                    window.TYRANO.kag.backTitle();
                }
            });
        }
    }

    // ─── Minimalist Loading Status HUD ───────────────────────────────────────
    let loadingHudTimer = null;
    window.showLoadingStatus = function(text, autoHideMs = 2500) {
        if (!document.body) {
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', () => window.showLoadingStatus(text, autoHideMs), { once: true });
            }
            return;
        }
        let hud = document.getElementById('home-loading-hud');
        if (!hud) {
            hud = document.createElement('div');
            hud.id = 'home-loading-hud';
            hud.innerHTML = `<div class="loading-spinner"></div><span id="home-loading-text"></span>`;
            document.body.appendChild(hud);
        }
        const textSpan = document.getElementById('home-loading-text');
        if (textSpan) textSpan.textContent = text || 'Đang tải tài nguyên...';
        hud.classList.add('active');

        if (loadingHudTimer) clearTimeout(loadingHudTimer);
        if (autoHideMs > 0) {
            loadingHudTimer = setTimeout(() => {
                hud.classList.remove('active');
            }, autoHideMs);
        }
    };

    window.hideLoadingStatus = function() {
        const hud = document.getElementById('home-loading-hud');
        if (hud) {
            if (loadingHudTimer) clearTimeout(loadingHudTimer);
            hud.classList.remove('active');
        }
    };

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', () => {
            window.showLoadingStatus('Đang khởi động HOME Visual Novel...', 2500);
            autoFitGameScreen();
            injectUnifiedGearModal();
        });
    } else {
        window.showLoadingStatus('Đang khởi động HOME Visual Novel...', 2500);
        autoFitGameScreen();
        injectUnifiedGearModal();
    }
    setTimeout(autoFitGameScreen, 300);
    setTimeout(autoFitGameScreen, 1000);
    setTimeout(injectUnifiedGearModal, 500);
})();
