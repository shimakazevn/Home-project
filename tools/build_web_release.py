# -*- coding: utf-8 -*-
"""
tools/build_web_release.py
===========================
Công cụ tự động hóa xây dựng và đóng gói phiên bản Web Visual Novel HOME [RJ01556529].
Nhánh phát triển Web độc lập tại thư mục: web/ -> Xuất bản tại: dist_web/ (~18MB).

Kiến trúc Web Game:
  - Web Audio Autoplay Unlocker & Pure JS Steganography PNG Audio Decoder
  - IndexedDB Save Engine (Lưu trữ không giới hạn, loại bỏ triệt để lỗi QuotaExceededError 5MB)
  - CDN Interceptor (Bảng định tuyến 2.709 files từ Blogger CDN)
  - Mobile Touch HUD & Responsive 16:9 Letterbox với màn hình nhắc xoay ngang
"""

import os
import sys
import json
import sqlite3
import shutil
import subprocess
import http.server
import socketserver

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WEB_SRC_DIR = os.path.join(ROOT_DIR, 'web')
WEB_DIST_DIR = os.path.join(ROOT_DIR, 'dist_web')
CACHE_DB_PATH = os.path.join(ROOT_DIR, 'upload_cache.db')
APP_SRC_DIR = os.path.join(ROOT_DIR, 'HOME_', 'resources', 'app')
TRANSLATION_DIR = os.path.join(ROOT_DIR, 'translation')


def step1_ensure_directories():
    """Tạo đầy đủ cấu trúc thư mục cho web/ và dist_web/"""
    print("\n[1/6] 📁 Khởi tạo cấu trúc thư mục nhánh Web độc lập (web/)...")
    for sub in ['css', 'js', 'data/system', 'data/scenario', 'data/image', 'data/others/font', 'data/others/plugin', 'tyrano']:
        os.makedirs(os.path.join(WEB_SRC_DIR, sub), exist_ok=True)
    print("  [OK] Đã cấu trúc xong thư mục web/.")


def step2_export_cdn_manifest():
    """Xuất bảng định tuyến CDN từ upload_cache.db sang web/data/asset_manifest.json"""
    print("\n[2/6] 🌐 Xuất bảng định tuyến CDN (asset_manifest.json)...")
    if not os.path.exists(CACHE_DB_PATH):
        raise FileNotFoundError(f"Không tìm thấy upload_cache.db tại {CACHE_DB_PATH}!")
    
    with sqlite3.connect(CACHE_DB_PATH) as conn:
        cur = conn.cursor()
        cur.execute("SELECT file_path, cdn_url FROM uploads")
        records = dict(cur.fetchall())
    
    manifest_path = os.path.join(WEB_SRC_DIR, 'data', 'asset_manifest.json')
    with open(manifest_path, 'w', encoding='utf-8') as f:
        json.dump(records, f, ensure_ascii=False, indent=2)
    
    print(f"  [OK] Đã xuất {len(records):,} đường dẫn CDN sang web/data/asset_manifest.json.")


def step3_sync_engine_and_scenarios():
    """Đồng bộ TyranoScript Engine, Plugins và kịch bản Việt hóa mới nhất"""
    print("\n[3/6] 📜 Đồng bộ Engine TyranoScript & 267 tệp kịch bản .ks Việt hóa...")
    
    # 1. Đồng bộ Tyrano Engine từ HOME_/resources/app/
    if os.path.exists(os.path.join(APP_SRC_DIR, 'tyrano')):
        shutil.copytree(os.path.join(APP_SRC_DIR, 'tyrano'), os.path.join(WEB_SRC_DIR, 'tyrano'), dirs_exist_ok=True)
    
    # 2. Đồng bộ Plugins thiết yếu
    for p in ['auto_wrap', 'button_ex', 'theme_kopanda_09_2']:
        src = os.path.join(ROOT_DIR, 'patch', 'data', 'others', 'plugin', p)
        if os.path.exists(src):
            shutil.copytree(src, os.path.join(WEB_SRC_DIR, 'data', 'others', 'plugin', p), dirs_exist_ok=True)
    
    # 3. Đồng bộ Fonts Noto Sans JP
    for f in ['NotoSansJP-Medium.ttf', 'NotoSansJP-Bold.ttf']:
        src = os.path.join(ROOT_DIR, 'tools', 'fonts', f)
        if os.path.exists(src):
            shutil.copy2(src, os.path.join(WEB_SRC_DIR, 'data', 'others', 'font', f))
            
    # 4. Đồng bộ UI Images
    if os.path.exists(os.path.join(ROOT_DIR, 'patch', 'data', 'image')):
        shutil.copytree(os.path.join(ROOT_DIR, 'patch', 'data', 'image'), os.path.join(WEB_SRC_DIR, 'data', 'image'), dirs_exist_ok=True)

    # 5. Đồng bộ kịch bản .ks đã dịch
    scenario_dst = os.path.join(WEB_SRC_DIR, 'data', 'scenario')
    if os.path.exists(os.path.join(APP_SRC_DIR, 'data', 'scenario')):
        shutil.copytree(os.path.join(APP_SRC_DIR, 'data', 'scenario'), scenario_dst, dirs_exist_ok=True)
    elif os.path.exists(os.path.join(ROOT_DIR, 'patch', 'data', 'scenario')):
        shutil.copytree(os.path.join(ROOT_DIR, 'patch', 'data', 'scenario'), scenario_dst, dirs_exist_ok=True)
        
    # Cấu hình Config.tjs cho Web
    config_tjs_path = os.path.join(WEB_SRC_DIR, 'data', 'system', 'Config.tjs')
    if os.path.exists(config_tjs_path):
        with open(config_tjs_path, 'r', encoding='utf-8', errors='ignore') as f:
            cfg = f.read()
        cfg = cfg.replace(';configSave=file', ';configSave=webstorage')
        with open(config_tjs_path, 'w', encoding='utf-8') as f:
            f.write(cfg)

    scenario_count = len([f for f in os.listdir(scenario_dst) if f.endswith('.ks')]) if os.path.exists(scenario_dst) else 0
    print(f"  [OK] Đã nạp thành công {scenario_count} tệp scenario .ks và cấu hình Web Engine.")


def step4_generate_web_core_modules():
    """Tạo bộ module Web hoàn chỉnh: Audio Engine, IndexedDB Save, CDN Interceptor, Mobile Touch HUD & CSS"""
    print("\n[4/6] ⚡ Xây dựng bộ ba Web Engine & Responsive UI Modules...")

    # 1. web/css/font.css
    font_css = """/* ==========================================================================
   CẤU HÌNH FONT TIẾNG VIỆT NOTO SANS & AUTO-WRAP CHO HOME WEB
   ========================================================================== */

@font-face {
    font-family: 'NotoSansVN';
    src: url('../data/others/font/NotoSansJP-Medium.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'NotoSansVN';
    src: url('../data/others/font/NotoSansJP-Bold.ttf') format('truetype');
    font-weight: bold;
    font-style: normal;
    font-display: swap;
}

body, div, span, p, a, input, textarea, button,
.message_inner, .current_span, .glink_button, .button, 
.menu_item, .ptext, .log_body, .save_list_item_text, .layer_menu {
    font-family: 'NotoSansVN', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif !important;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-rendering: optimizeLegibility;
}

.message_inner, .log_body, .current_span {
    word-break: break-word !important;
    overflow-wrap: break-word !important;
    white-space: normal !important;
    line-height: 1.45em !important;
}

.glink_button {
    font-family: 'NotoSansVN', sans-serif !important;
    font-weight: bold !important;
    letter-spacing: 0.02em;
    word-break: keep-all !important;
    white-space: nowrap !important;
}
"""
    with open(os.path.join(WEB_SRC_DIR, 'css', 'font.css'), 'w', encoding='utf-8') as f:
        f.write(font_css)

    # 2. web/css/web_core.css
    web_core_css = """/* ══════════════════════════════════════════════════════════════════════════════
   HOME - WEB CORE RESPONSIVE & HUD STYLESHEET
   ══════════════════════════════════════════════════════════════════════════════ */

html, body {
    width: 100%;
    height: 100%;
    height: 100dvh;
    margin: 0;
    padding: 0;
    background-color: #000000;
    overflow: hidden;
    touch-action: manipulation;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    user-select: none;
    padding-top: env(safe-area-inset-top);
    padding-bottom: env(safe-area-inset-bottom);
    padding-left: env(safe-area-inset-left);
    padding-right: env(safe-area-inset-right);
}

#tyrano_base, .tyrano_base {
    box-shadow: 0 0 45px rgba(0, 0, 0, 0.95);
    background-color: #000000;
}

img[src*="workring_en.png"] {
    pointer-events: none !important;
}

.glink_button, .button_graphic, [class*="glink"], .ts09 {
    white-space: nowrap !important;
    word-break: keep-all !important;
    overflow-wrap: normal !important;
    min-width: 120px !important;
    width: auto !important;
    max-width: 90vw !important;
    padding: 8px 22px !important;
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    text-align: center !important;
    box-sizing: border-box !important;
}

#orientation_overlay {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    height: 100dvh;
    background: rgba(10, 10, 15, 0.96);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    z-index: 999999;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    text-align: center;
    padding: 24px;
    box-sizing: border-box;
}

@media screen and (orientation: portrait) and (max-width: 900px) {
    #orientation_overlay {
        display: flex !important;
    }
}

.orientation-icon {
    font-size: 54px;
    margin-bottom: 18px;
    animation: rotatePhone 2.2s infinite ease-in-out;
}

@keyframes rotatePhone {
    0%, 15% { transform: rotate(0deg); }
    50%, 65% { transform: rotate(-90deg); }
    100% { transform: rotate(0deg); }
}

.orientation-title {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 8px;
    color: #60a5fa;
    letter-spacing: 0.05em;
}

.orientation-desc {
    font-size: 14px;
    color: #94a3b8;
    max-width: 320px;
    line-height: 1.5;
}

#web_audio_unlock_overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    height: 100dvh;
    background: rgba(0, 0, 0, 0.75);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    z-index: 99999;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    transition: opacity 0.4s ease, visibility 0.4s ease;
}

.unlock-box {
    background: rgba(30, 30, 40, 0.85);
    border: 1px solid rgba(255, 255, 255, 0.15);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
    border-radius: 16px;
    padding: 24px 36px;
    text-align: center;
    animation: pulseButton 2s infinite ease-in-out;
}

@keyframes pulseButton {
    0%, 100% { transform: scale(1); }
    50% { transform: scale(1.03); }
}

.unlock-title {
    font-size: 22px;
    font-weight: bold;
    color: #ffffff;
    margin-bottom: 6px;
}

.unlock-subtitle {
    font-size: 14px;
    color: #38bdf8;
}

#web_quick_toolbar {
    position: fixed;
    top: 8px;
    right: 8px;
    z-index: 9999;
    display: flex;
    gap: 6px;
    opacity: 0.35;
    transition: opacity 0.25s ease;
}

#web_quick_toolbar:hover, #web_quick_toolbar:focus-within {
    opacity: 1;
}

.quick-btn {
    background: rgba(20, 20, 30, 0.85);
    border: 1px solid rgba(255, 255, 255, 0.2);
    color: #e2e8f0;
    font-size: 12px;
    padding: 5px 10px;
    border-radius: 6px;
    cursor: pointer;
    display: flex;
    align-items: center;
    gap: 4px;
    font-family: inherit;
    transition: background 0.15s ease, transform 0.1s ease;
}

.quick-btn:hover {
    background: rgba(59, 130, 246, 0.8);
    color: #ffffff;
    border-color: rgba(255, 255, 255, 0.4);
}

.quick-btn:active {
    transform: scale(0.96);
}
"""
    with open(os.path.join(WEB_SRC_DIR, 'css', 'web_core.css'), 'w', encoding='utf-8') as f:
        f.write(web_core_css)

    # 3. web/js/web_audio_engine.js
    web_audio_engine_js = """/**
 * HOME - Web Audio Engine & Steganography Audio Decoder
 * =======================================================
 * - Web Audio Autoplay Unlocker
 * - Bit-Exact Stego PNG Decoder (Giải mã nhị phân trực tiếp, không biến dạng byte)
 * - Multi-Channel Audio Mixer & Anti-Pop Declick Envelope (0ms độ trễ)
 */

(function() {
    'use strict';

    let audioCtx = null;
    let isUnlocked = false;
    const audioBufferCache = new Map();
    const audioPromiseCache = new Map();

    let activeBgmSource = null;
    let activeBgmGainNode = null;
    const activeSeMap = new Map(); // bufIdx -> { source, gainNode }
    const MASTER_BGM_SCALE = 0.65;
    const MASTER_SE_SCALE = 0.85;

    function getAudioContext() {
        if (!audioCtx) {
            const AudioContextClass = window.AudioContext || window.webkitAudioContext;
            audioCtx = new AudioContextClass();
        }
        return audioCtx;
    }

    function unlockAudioContext() {
        if (isUnlocked) return;
        const ctx = getAudioContext();
        if (ctx.state === 'suspended') {
            ctx.resume().then(() => {
                isUnlocked = true;
                const overlay = document.getElementById('web_audio_unlock_overlay');
                if (overlay) {
                    overlay.style.opacity = '0';
                    setTimeout(() => { overlay.style.display = 'none'; }, 400);
                }
            }).catch(() => {});
        } else {
            isUnlocked = true;
            const overlay = document.getElementById('web_audio_unlock_overlay');
            if (overlay) {
                overlay.style.opacity = '0';
                setTimeout(() => { overlay.style.display = 'none'; }, 400);
            }
        }
    }

    ['pointerdown', 'touchstart', 'touchend', 'click', 'keydown'].forEach(evt => {
        window.addEventListener(evt, unlockAudioContext, { passive: true, once: false });
    });

    // ─── Giải mã Bit-Exact Pure JS PNG Stego ──────────────────────────────────
    async function extractStegoAudioBytes(arrayBuffer) {
        const buf = new Uint8Array(arrayBuffer);
        let offset = 8;
        const idatParts = [];
        let width = 0, height = 0;

        while (offset < buf.length) {
            const view = new DataView(buf.buffer, buf.byteOffset + offset, 8);
            const len = view.getUint32(0);
            const type = String.fromCharCode(buf[offset + 4], buf[offset + 5], buf[offset + 6], buf[offset + 7]);
            if (type === 'IHDR') {
                const ihdrView = new DataView(buf.buffer, buf.byteOffset + offset + 8, 8);
                width = ihdrView.getUint32(0);
                height = ihdrView.getUint32(4);
            } else if (type === 'IDAT') {
                idatParts.push(buf.subarray(offset + 8, offset + 8 + len));
            }
            offset += 8 + len + 4;
        }

        if (idatParts.length === 0 || width === 0 || height === 0) {
            throw new Error('Invalid PNG chunks in Stego Audio');
        }

        let totalLen = 0;
        for (let i = 0; i < idatParts.length; i++) totalLen += idatParts[i].length;
        const idat = new Uint8Array(totalLen);
        let p = 0;
        for (let i = 0; i < idatParts.length; i++) {
            idat.set(idatParts[i], p);
            p += idatParts[i].length;
        }

        // Decompress raw deflate payload
        const rawDeflate = idat.subarray(2, idat.length - 4);
        const ds = new DecompressionStream('deflate-raw');
        const writer = ds.writable.getWriter();
        writer.write(rawDeflate);
        writer.close();

        const reader = ds.readable.getReader();
        const chunks = [];
        while (true) {
            const { done, value } = await reader.read();
            if (done) break;
            chunks.push(value);
        }

        let decLen = 0;
        for (let i = 0; i < chunks.length; i++) decLen += chunks[i].length;
        const decompressed = new Uint8Array(decLen);
        p = 0;
        for (let i = 0; i < chunks.length; i++) {
            decompressed.set(chunks[i], p);
            p += chunks[i].length;
        }

        const stride = width * 3;
        const rawPixels = new Uint8Array(width * height * 3);
        let prevRow = new Uint8Array(stride);

        function paeth(a, b, c) {
            const pa = Math.abs(b - c);
            const pb = Math.abs(a - c);
            const pc = Math.abs(a + b - 2 * c);
            if (pa <= pb && pa <= pc) return a;
            if (pb <= pc) return b;
            return c;
        }

        for (let y = 0; y < height; y++) {
            const filterType = decompressed[y * (stride + 1)];
            const curRow = new Uint8Array(stride);
            const srcOffset = y * (stride + 1) + 1;
            for (let x = 0; x < stride; x++) {
                const val = decompressed[srcOffset + x];
                const a = x >= 3 ? curRow[x - 3] : 0;
                const b = prevRow[x];
                const c = x >= 3 ? prevRow[x - 3] : 0;
                let res = val;
                if (filterType === 1) res = (val + a) & 0xFF;
                else if (filterType === 2) res = (val + b) & 0xFF;
                else if (filterType === 3) res = (val + ((a + b) >> 1)) & 0xFF;
                else if (filterType === 4) res = (val + paeth(a, b, c)) & 0xFF;
                curRow[x] = res;
            }
            rawPixels.set(curRow, y * stride);
            prevRow = curRow;
        }

        const dataSize = ((rawPixels[4] << 24) >>> 0) | (rawPixels[5] << 16) | (rawPixels[6] << 8) | rawPixels[7];
        return rawPixels.subarray(12, 12 + dataSize);
    }

    async function decodeAudioFromUrl(url) {
        const cacheKey = url.split('?')[0];
        if (audioBufferCache.has(cacheKey)) {
            return audioBufferCache.get(cacheKey);
        }
        if (audioPromiseCache.has(cacheKey)) {
            return audioPromiseCache.get(cacheKey);
        }

        const decodePromise = (async () => {
            try {
                const resp = await fetch(url, { referrerPolicy: 'no-referrer' });
                const arrayBuffer = await resp.arrayBuffer();
                const audioBytes = await extractStegoAudioBytes(arrayBuffer);
                const ctx = getAudioContext();
                const arrayBufferToDecode = audioBytes.buffer.slice(audioBytes.byteOffset, audioBytes.byteOffset + audioBytes.byteLength);
                const decodedBuffer = await ctx.decodeAudioData(arrayBufferToDecode);

                // Anti-Pop fadeout cuối file
                try {
                    const fadeSamples = Math.min(1024, decodedBuffer.length);
                    for (let ch = 0; ch < decodedBuffer.numberOfChannels; ch++) {
                        const channelData = decodedBuffer.getChannelData(ch);
                        const len = channelData.length;
                        for (let i = 0; i < fadeSamples; i++) {
                            const idx = len - fadeSamples + i;
                            channelData[idx] *= (1.0 - (i / fadeSamples));
                        }
                    }
                } catch(e) {}

                audioBufferCache.set(cacheKey, decodedBuffer);
                return decodedBuffer;
            } finally {
                audioPromiseCache.delete(cacheKey);
            }
        })();

        audioPromiseCache.set(cacheKey, decodePromise);
        return decodePromise;
    }

    // ─── Play BGM ─────────────────────────────────────────────────────────────
    async function playBGM(url, loop = true, rawVol = 100, buf = "0") {
        try {
            const ctx = getAudioContext();
            if (ctx.state === 'suspended') ctx.resume();

            if (activeBgmSource) {
                try { activeBgmSource.stop(); } catch(e) {}
                activeBgmSource = null;
            }

            const audioBuffer = await decodeAudioFromUrl(url);
            const source = ctx.createBufferSource();
            const gainNode = ctx.createGain();

            source.buffer = audioBuffer;
            source.loop = (loop !== false && loop !== "false");

            let numVol = parseFloat(rawVol);
            if (isNaN(numVol)) numVol = 80;
            if (numVol > 1.0) numVol = numVol / 100.0;

            const finalVol = Math.max(0, Math.min(1.0, numVol * MASTER_BGM_SCALE));
            gainNode.gain.setValueAtTime(finalVol, ctx.currentTime);

            source.connect(gainNode);
            gainNode.connect(ctx.destination);

            source.start(0);
            activeBgmSource = source;
            activeBgmGainNode = gainNode;
        } catch(err) {
            console.warn('[Web Audio Engine] BGM play error:', err);
        }
    }

    function stopBGM(fadeMs = 1500) {
        if (activeBgmGainNode && activeBgmSource) {
            const ctx = getAudioContext();
            const fadeSec = fadeMs / 1000.0;
            activeBgmGainNode.gain.setValueAtTime(activeBgmGainNode.gain.value, ctx.currentTime);
            activeBgmGainNode.gain.linearRampToValueAtTime(0.0001, ctx.currentTime + fadeSec);
            setTimeout(() => {
                if (activeBgmSource) {
                    try { activeBgmSource.stop(); } catch(e) {}
                    activeBgmSource = null;
                }
            }, fadeMs);
        }
    }

    // ─── Play SE / Voice ──────────────────────────────────────────────────────
    async function playSE(url, rawVol = 100, buf = "0", onEndedCb = null) {
        try {
            const ctx = getAudioContext();
            if (ctx.state === 'suspended') ctx.resume();

            const bufStr = String(buf || "0");

            // Ngắt êm âm thanh trước trên cùng kênh buffer
            if (activeSeMap.has(bufStr)) {
                const prev = activeSeMap.get(bufStr);
                if (prev.gainNode && prev.source) {
                    prev.gainNode.gain.setValueAtTime(prev.gainNode.gain.value, ctx.currentTime);
                    prev.gainNode.gain.linearRampToValueAtTime(0.0001, ctx.currentTime + 0.006);
                    setTimeout(() => { try { prev.source.stop(); } catch(e) {} }, 8);
                }
                activeSeMap.delete(bufStr);
            }

            const audioBuffer = await decodeAudioFromUrl(url);
            const source = ctx.createBufferSource();
            const gainNode = ctx.createGain();
            const filterNode = ctx.createBiquadFilter();
            filterNode.type = 'lowpass';
            filterNode.frequency.value = 12000;

            source.buffer = audioBuffer;
            source.loop = false;

            let numVol = parseFloat(rawVol);
            if (isNaN(numVol)) numVol = 80;
            if (numVol > 1.0) numVol = numVol / 100.0;

            let finalVol = Math.max(0, Math.min(1.0, numVol * MASTER_SE_SCALE));
            if (url.includes('sistem_starton.mp3')) finalVol *= 0.35;

            // Attack ramp 4ms chống click cơ học
            gainNode.gain.setValueAtTime(0.0001, ctx.currentTime);
            gainNode.gain.exponentialRampToValueAtTime(Math.max(0.0001, finalVol), ctx.currentTime + 0.004);

            source.connect(gainNode);
            gainNode.connect(filterNode);
            filterNode.connect(ctx.destination);

            source.start(0);
            activeSeMap.set(bufStr, { source, gainNode });

            source.onended = () => {
                if (activeSeMap.get(bufStr)?.source === source) {
                    activeSeMap.delete(bufStr);
                }
                if (typeof onEndedCb === 'function') onEndedCb();
            };
        } catch(err) {
            console.warn('[Web Audio Engine] SE play error:', err);
            if (typeof onEndedCb === 'function') onEndedCb();
        }
    }

    // Expose toàn cục
    window.HOME_AudioEngine = {
        getAudioContext,
        unlockAudioContext,
        decodeAudioFromUrl,
        playBGM,
        stopBGM,
        playSE,
        setBgmVolume: (vol) => {
            if (activeBgmGainNode) {
                const norm = (parseFloat(vol) || 80) / 100.0;
                activeBgmGainNode.gain.value = Math.max(0, Math.min(1.0, norm * MASTER_BGM_SCALE));
            }
        },
        setSeVolume: (buf, vol) => {
            const bufStr = String(buf || "0");
            if (activeSeMap.has(bufStr)) {
                const norm = (parseFloat(vol) || 80) / 100.0;
                activeSeMap.get(bufStr).gainNode.gain.value = Math.max(0, Math.min(1.0, norm * MASTER_SE_SCALE));
            }
        }
    };

    console.log('[Web Audio Engine] ✅ Đã khởi tạo hoàn tất Web Audio & Stego Engine.');
})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'web_audio_engine.js'), 'w', encoding='utf-8') as f:
        f.write(web_audio_engine_js)

    # 4. web/js/web_save_indexeddb.js
    web_save_indexeddb_js = """/**
 * HOME - Web Save Engine (IndexedDB Unlimited Storage & Save Exporter)
 * ====================================================================
 * - Loại bỏ hoàn toàn giới hạn 5MB của localStorage (chống QuotaExceededError)
 * - Tối ưu hóa thumbnail save 160x90 JPEG siêu nhẹ (<3KB/slot)
 * - Cung cấp hàm Xuất / Nhập file .sav 1-Click
 */

(function() {
    'use strict';

    const DB_NAME = 'HOME_Game_SaveDB';
    const DB_VERSION = 1;
    const STORE_NAME = 'save_slots';
    const PROJECT_ID = 'HOME';
    const memoryStorageCache = new Map();

    function openSaveDB() {
        return new Promise((resolve, reject) => {
            const req = indexedDB.open(DB_NAME, DB_VERSION);
            req.onupgradeneeded = (e) => {
                const db = e.target.result;
                if (!db.objectStoreNames.contains(STORE_NAME)) {
                    db.createObjectStore(STORE_NAME, { keyPath: 'key' });
                }
            };
            req.onsuccess = () => resolve(req.result);
            req.onerror = () => reject(req.error);
        });
    }

    async function dbSet(key, value) {
        memoryStorageCache.set(key, value);
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, 'readwrite');
                const store = tx.objectStore(STORE_NAME);
                const req = store.put({ key, value, updatedAt: Date.now() });
                req.onsuccess = () => resolve();
                req.onerror = () => reject(req.error);
            });
        } catch(e) {
            console.warn('[Web Save] IndexedDB set error:', e);
        }
    }

    async function dbGet(key) {
        if (memoryStorageCache.has(key)) return memoryStorageCache.get(key);
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, 'readonly');
                const store = tx.objectStore(STORE_NAME);
                const req = store.get(key);
                req.onsuccess = () => {
                    const res = req.result ? req.result.value : null;
                    if (res) memoryStorageCache.set(key, res);
                    resolve(res);
                };
                req.onerror = () => reject(req.error);
            });
        } catch(e) {
            return null;
        }
    }

    async function dbGetAll() {
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, 'readonly');
                const store = tx.objectStore(STORE_NAME);
                const req = store.getAll();
                req.onsuccess = () => resolve(req.result || []);
                req.onerror = () => reject(req.error);
            });
        } catch(e) {
            return [];
        }
    }

    // Tiền nạp toàn bộ dữ liệu lưu từ IndexedDB vào RAM khi mở game
    async function prefillMemoryStorage() {
        try {
            const records = await dbGetAll();
            for (const r of records) {
                if (r.key && r.value) {
                    memoryStorageCache.set(r.key, r.value);
                    try { localStorage.setItem(r.key, r.value); } catch(e) {}
                }
            }
        } catch(e) {}
    }
    prefillMemoryStorage();

    // Hook Tyrano Storage API
    function hookTyranoStorage() {
        if (!window.$) {
            setTimeout(hookTyranoStorage, 50);
            return;
        }

        $.setStorage = function(key, val, type) {
            const strVal = (typeof val === 'object') ? JSON.stringify(val) : String(val);
            memoryStorageCache.set(key, strVal);
            dbSet(key, strVal);
            try { localStorage.setItem(key, strVal); } catch(e) {}
        };

        $.getStorage = function(key, type) {
            if (memoryStorageCache.has(key)) {
                return memoryStorageCache.get(key);
            }
            try {
                const lsVal = localStorage.getItem(key);
                if (lsVal) {
                    memoryStorageCache.set(key, lsVal);
                    return lsVal;
                }
            } catch(e) {}
            return null;
        };

        // Ghi đè bộ chụp ảnh thumbnail save thành ảnh siêu nhẹ 160x90
        if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
            window.TYRANO.kag.menu.createImgCode = function(canvas) {
                try {
                    const smallCanvas = document.createElement('canvas');
                    smallCanvas.width = 160;
                    smallCanvas.height = 90;
                    const ctx = smallCanvas.getContext('2d');
                    ctx.drawImage(canvas, 0, 0, 160, 90);
                    return smallCanvas.toDataURL('image/jpeg', 0.5);
                } catch(e) {
                    return canvas.toDataURL('image/jpeg', 0.3);
                }
            };
        }
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', hookTyranoStorage);
    } else {
        hookTyranoStorage();
    }
    setTimeout(hookTyranoStorage, 500);
    setTimeout(hookTyranoStorage, 1500);

    // ─── Export / Import Save Data ────────────────────────────────────────────
    window.exportCurrentSaveToFile = async function() {
        try {
            const bundle = {
                app: 'HOME',
                version: '2.0',
                exportedAt: new Date().toISOString(),
                data: {}
            };

            for (let i = 0; i < localStorage.length; i++) {
                const k = localStorage.key(i);
                if (k && (k.includes('tyrano') || k.includes('HOME') || k.includes('sf'))) {
                    bundle.data[k] = localStorage.getItem(k);
                }
            }

            const records = await dbGetAll();
            for (const r of records) {
                if (r.key && r.value) bundle.data[r.key] = r.value;
            }

            if (Object.keys(bundle.data).length === 0) {
                alert('Chưa có dữ liệu lưu nào trong game! Vui lòng lưu game trước khi xuất file.');
                return;
            }

            const jsonStr = JSON.stringify(bundle, null, 2);
            const blob = new Blob([jsonStr], { type: 'application/json' });
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            const dateStr = new Date().toISOString().slice(0, 10);
            a.href = url;
            a.download = `HOME_SaveData_${dateStr}.sav`;
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            URL.revokeObjectURL(url);
        } catch(err) {
            alert(`Lỗi xuất save: ${err.message}`);
        }
    };

    window.importSaveFromFile = function() {
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = '.sav,.json';
        input.onchange = async (e) => {
            const file = e.target.files[0];
            if (!file) return;

            const reader = new FileReader();
            reader.onload = async (evt) => {
                try {
                    const content = evt.target.result;
                    const parsed = JSON.parse(content);
                    let count = 0;

                    if (parsed && parsed.data && typeof parsed.data === 'object') {
                        for (const [k, v] of Object.entries(parsed.data)) {
                            if (v) {
                                await dbSet(k, v);
                                try { localStorage.setItem(k, v); } catch(e) {}
                                count++;
                            }
                        }
                    } else if (parsed && parsed.data && Array.isArray(parsed.data)) {
                        const raw = JSON.stringify(parsed);
                        await dbSet(`${PROJECT_ID}_tyrano_data`, raw);
                        try { localStorage.setItem(`${PROJECT_ID}_tyrano_data`, raw); } catch(e) {}
                        count++;
                    }

                    if (count > 0) {
                        alert('✅ Đã nạp file Save thành công! Game sẽ tự động tải lại.');
                        window.location.reload();
                    } else {
                        alert('❌ Không tìm thấy dữ liệu save hợp lệ trong file!');
                    }
                } catch(err) {
                    alert(`❌ Lỗi đọc file save: ${err.message}`);
                }
            };
            reader.readAsText(file);
        };
        input.click();
    };

    console.log('[Web Save Engine] ✅ Đã kích hoạt IndexedDB Save & Exporter.');
})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'web_save_indexeddb.js'), 'w', encoding='utf-8') as f:
        f.write(web_save_indexeddb_js)

    # 5. web/js/cdn_interceptor.js
    cdn_interceptor_js = """/**
 * HOME - CDN Interceptor Plugin
 * ==============================
 * Chuyển hướng toàn bộ hình ảnh, nhân vật, CG, BGM, SFX sang Google Blogger CDN
 */

(function() {
    'use strict';

    let cdnManifest = {};
    const normalizedMap = new Map();

    function normalizePath(p) {
        if (!p || typeof p !== 'string') return '';
        let clean = p.replace(/^\\.\\//, '').replace(/^\\//, '').split('?')[0];
        return clean.toLowerCase();
    }

    async function loadCDNManifest() {
        try {
            const resp = await fetch('./data/asset_manifest.json');
            if (resp.ok) {
                cdnManifest = await resp.json();
                for (const [k, v] of Object.entries(cdnManifest)) {
                    normalizedMap.set(normalizePath(k), v);
                    const baseName = k.split('/').pop().toLowerCase();
                    if (!normalizedMap.has(baseName)) normalizedMap.set(baseName, v);
                }
                console.log(`[CDN Interceptor] ✅ Đã nạp ${Object.keys(cdnManifest).length} mục từ asset_manifest.json.`);
            }
        } catch(e) {
            console.warn('[CDN Interceptor] Không thể nạp manifest JSON:', e);
        }
    }
    loadCDNManifest();

    window.resolveCDNUrl = function(filePath) {
        if (!filePath || typeof filePath !== 'string') return filePath;
        if (filePath.startsWith('http://') || filePath.startsWith('https://') || filePath.startsWith('data:') || filePath.startsWith('blob:')) {
            return filePath;
        }

        const norm = normalizePath(filePath);
        if (normalizedMap.has(norm)) return normalizedMap.get(norm);

        const baseName = norm.split('/').pop();
        if (normalizedMap.has(baseName)) return normalizedMap.get(baseName);

        return filePath;
    };

    // ─── Native DOM Hooks ─────────────────────────────────────────────────────
    try {
        const proto = HTMLImageElement.prototype;
        const origSrcDesc = Object.getOwnPropertyDescriptor(proto, 'src');
        if (origSrcDesc && origSrcDesc.set) {
            Object.defineProperty(proto, 'src', {
                set: function(val) {
                    if (typeof val === 'string' && !val.startsWith('http') && !val.startsWith('data:')) {
                        const cdnUrl = window.resolveCDNUrl(val);
                        if (cdnUrl && cdnUrl.startsWith('http')) val = cdnUrl;
                    }
                    return origSrcDesc.set.call(this, val);
                },
                get: origSrcDesc.get,
                configurable: true,
                enumerable: true
            });
        }
    } catch(e) {}

    // ─── Hook TyranoScript Tags ───────────────────────────────────────────────
    function installTyranoHooks() {
        if (!window.TYRANO || !window.TYRANO.kag) {
            setTimeout(installTyranoHooks, 50);
            return;
        }

        const kag = window.TYRANO.kag;

        // Hook BGM
        if (kag.tag.playbgm) {
            const origPlaybgm = kag.tag.playbgm.start;
            kag.tag.playbgm.start = function(pm) {
                if (pm && pm.storage) {
                    const fullPath = pm.storage.includes('/') ? pm.storage : `data/bgm/${pm.storage}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) {
                        window.HOME_AudioEngine.playBGM(cdnUrl, pm.loop !== 'false', pm.volume, pm.buf);
                        if (kag.layer) kag.layer.showEventLayer();
                        if (kag.ftag) kag.ftag.nextOrder();
                        return;
                    }
                }
                return origPlaybgm.apply(this, arguments);
            };
        }

        if (kag.tag.stopbgm) {
            kag.tag.stopbgm.start = function(pm) {
                window.HOME_AudioEngine.stopBGM(parseInt(pm.time || 1500));
                if (kag.ftag) kag.ftag.nextOrder();
            };
        }

        // Hook SE / Voice
        if (kag.tag.playse) {
            const origPlayse = kag.tag.playse.start;
            kag.tag.playse.start = function(pm) {
                if (pm && pm.storage) {
                    const fullPath = pm.storage.includes('/') ? pm.storage : `data/sound/${pm.storage}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) {
                        window.HOME_AudioEngine.playSE(cdnUrl, pm.volume, pm.buf, () => {
                            if (pm.stop === 'true' && kag.ftag) kag.ftag.nextOrder();
                        });
                        if (pm.stop !== 'true') {
                            if (kag.layer) kag.layer.showEventLayer();
                            if (kag.ftag) kag.ftag.nextOrder();
                        }
                        return;
                    }
                }
                return origPlayse.apply(this, arguments);
            };
        }

        // Hook Background & Image
        if (kag.tag.bg) {
            const origBg = kag.tag.bg.start;
            kag.tag.bg.start = function(pm) {
                if (pm.storage) {
                    const fullPath = (pm.storage.startsWith('data/') || pm.storage.startsWith('http')) ? pm.storage : `data/bgimage/${pm.storage}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) pm.storage = cdnUrl;
                }
                return origBg.apply(this, arguments);
            };
        }

        if (kag.tag.image) {
            const origImage = kag.tag.image.start;
            kag.tag.image.start = function(pm) {
                if (pm.storage) {
                    const folder = pm.folder || 'fgimage';
                    const fullPath = (pm.storage.startsWith('data/') || pm.storage.startsWith('http')) ? pm.storage : `data/${folder}/${pm.storage}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) pm.storage = cdnUrl;
                }
                return origImage.apply(this, arguments);
            };
        }

        // Hook Buttons
        if (kag.tag.button) {
            const origButton = kag.tag.button.start;
            kag.tag.button.start = function(pm) {
                const folder = pm.folder || 'image';
                ['graphic', 'enterimg', 'clickimg'].forEach(prop => {
                    if (pm[prop]) {
                        const fullPath = (pm[prop].startsWith('data/') || pm[prop].startsWith('http')) ? pm[prop] : `data/${folder}/${pm[prop]}`;
                        const cdnUrl = window.resolveCDNUrl(fullPath);
                        if (cdnUrl && cdnUrl.startsWith('http')) pm[prop] = cdnUrl;
                    }
                });
                return origButton.apply(this, arguments);
            };
        }

        // Hook Characters
        ['chara_show', 'chara_mod', 'chara_new', 'chara_face'].forEach(tag => {
            if (kag.tag[tag]) {
                const orig = kag.tag[tag].start;
                kag.tag[tag].start = function(pm) {
                    if (pm.storage) {
                        const fullPath = (pm.storage.startsWith('data/') || pm.storage.startsWith('http')) ? pm.storage : `data/fgimage/${pm.storage}`;
                        const cdnUrl = window.resolveCDNUrl(fullPath);
                        if (cdnUrl && cdnUrl.startsWith('http')) pm.storage = cdnUrl;
                    }
                    return orig.apply(this, arguments);
                };
            }
        });

        // Hook Preloader
        if (kag.preload) {
            const origPreload = kag.preload;
            kag.preload = function(src, cb) {
                if (typeof src === 'string') {
                    const cdnUrl = window.resolveCDNUrl(src);
                    if (cdnUrl && cdnUrl.startsWith('http')) src = cdnUrl;
                }
                return origPreload.call(this, src, cb);
            };
        }

        // Bypass bgmovie safely
        kag.tag.bgmovie = {
            pm: { time: 0, volume: 100, loop: 'true', storage: '' },
            start: function() { if (kag.ftag) kag.ftag.nextOrder(); }
        };
        kag.tag.stop_bgmovie = {
            pm: { time: 0 },
            start: function() { if (kag.ftag) kag.ftag.nextOrder(); }
        };

        console.log('[CDN Interceptor] ✅ Đã gắn toàn bộ hook TyranoScript.');
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', installTyranoHooks);
    } else {
        installTyranoHooks();
    }
})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'cdn_interceptor.js'), 'w', encoding='utf-8') as f:
        f.write(cdn_interceptor_js)

    # 6. web/js/mobile_touch_hud.js
    mobile_touch_hud_js = """/**
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
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'mobile_touch_hud.js'), 'w', encoding='utf-8') as f:
        f.write(mobile_touch_hud_js)

    # 7. web/index.html
    index_html = """<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8" />
  <title>HOME - Visual Novel [Tiếng Việt]</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, viewport-fit=cover" />
  <meta name="robots" content="noindex,nofollow" />
  <meta name="theme-color" content="#000000" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />

  <!-- Typography & Core Web Stylesheets -->
  <link href="./css/font.css" rel="stylesheet" type="text/css" />
  <link href="./css/web_core.css" rel="stylesheet" type="text/css" />
  <link href="./tyrano/tyrano.css" rel="stylesheet" type="text/css" />
  <link href="./tyrano/libs/jquery-ui.css" rel="stylesheet" type="text/css" />

  <!-- jQuery & Core Libraries -->
  <script type="text/javascript" src="./tyrano/libs/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jquery-migrate-1.4.1.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jquery-ui.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jquery.a3d.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jsrender.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/html2canvas.js"></script>
  <script type="text/javascript" src="./tyrano/libs/lz-string.min.js"></script>

  <!-- HOME Modular Web Extensions -->
  <script type="text/javascript" src="./js/web_audio_engine.js"></script>
  <script type="text/javascript" src="./js/web_save_indexeddb.js"></script>
  <script type="text/javascript" src="./js/cdn_interceptor.js"></script>
  <script type="text/javascript" src="./js/mobile_touch_hud.js"></script>

  <!-- System KeyConfig & Tyrano Base -->
  <script type="text/javascript" src="./data/system/KeyConfig.js"></script>
  <script type="text/javascript" src="./tyrano/lang.js"></script>
  <script type="text/javascript" src="./tyrano/libs.js"></script>
  <script type="text/javascript" src="./tyrano/tyrano.js"></script>
  <script type="text/javascript" src="./tyrano/tyrano.base.js"></script>

  <!-- Tyrano Plugins & Tags -->
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.event.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.key_mouse.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.layer.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.menu.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.parser.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.rider.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.studio.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_audio.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_camera.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_ext.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_system.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_vchat.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_ar.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_three.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag.js"></script>
</head>

<body onselectstart="return false" oncontextmenu="return false;" ontouchmove="event.preventDefault()">
  <!-- Main Tyrano Canvas Frame -->
  <div id="tyrano_base" class="tyrano_base" unselectable="on" ondragstart="return false"></div>
  <div id="vchat_base" class="vchat_base" unselectable="on" ondragstart="return false"></div>

  <!-- Audio Unlocker Overlay (Chạm để bật âm thanh) -->
  <div id="web_audio_unlock_overlay">
    <div class="unlock-box">
      <div class="unlock-title">HOME - Visual Novel</div>
      <div class="unlock-subtitle">🎵 Chạm vào màn hình để bật âm thanh & bắt đầu</div>
    </div>
  </div>

  <!-- Mobile Landscape Orientation Helper (Nhắc xoay ngang) -->
  <div id="orientation_overlay">
    <div class="orientation-icon">📱 ➔ 📲</div>
    <div class="orientation-title">VUI LÒNG XOAY NGANG MÀN HÌNH</div>
    <div class="orientation-desc">Trò chơi được tối ưu hóa cho màn hình ngang 16:9. Hãy xoay thiết bị của bạn để có trải nghiệm tốt nhất.</div>
  </div>

  <!-- Quick Floating HUD Toolbar -->
  <div id="web_quick_toolbar">
    <button class="quick-btn" onclick="if(window.TYRANO&&window.TYRANO.kag&&window.TYRANO.kag.menu) window.TYRANO.kag.menu.displaySave();">💾 Lưu</button>
    <button class="quick-btn" onclick="if(window.TYRANO&&window.TYRANO.kag&&window.TYRANO.kag.menu) window.TYRANO.kag.menu.displayLoad();">📂 Nạp</button>
    <button class="quick-btn" onclick="window.exportCurrentSaveToFile();">⬇️ Xuất Save</button>
    <button class="quick-btn" onclick="window.importSaveFromFile();">⬆️ Nhập Save</button>
    <button class="quick-btn" onclick="window.toggleWebFullscreen();">⛶ Toàn màn hình</button>
  </div>
</body>
</html>
"""
    with open(os.path.join(WEB_SRC_DIR, 'index.html'), 'w', encoding='utf-8') as f:
        f.write(index_html)

    print("  [OK] Đã xuất bản toàn bộ 7 tệp Web Core JS/CSS/HTML vào web/.")


def step5_package_to_dist_web():
    """Sao chép toàn bộ thư mục web/ sang dist_web/ để tạo bản phân phối sẵn sàng deploy"""
    print("\n[5/6] 📦 Đóng gói bản phát hành Web sang dist_web/...")
    if os.path.exists(WEB_DIST_DIR):
        shutil.rmtree(WEB_DIST_DIR)
    
    # Tạo .nojekyll để GitHub Pages không lọc các thư mục đặc biệt
    with open(os.path.join(WEB_SRC_DIR, '.nojekyll'), 'w', encoding='utf-8') as f:
        f.write('')
        
    shutil.copytree(WEB_SRC_DIR, WEB_DIST_DIR)
    
    total_size = sum(
        os.path.getsize(os.path.join(r, f))
        for r, _, files in os.walk(WEB_DIST_DIR)
        for f in files
    )
    total_mb = total_size / (1024 * 1024)
    file_count = sum(len(files) for _, _, files in os.walk(WEB_DIST_DIR))
    
    print(f"  [OK] Đã xuất bản thành công: {file_count} tệp | Tổng dung lượng: {total_mb:.2f} MB.")


def step6_create_build_batch():
    """Tạo file thực thi nhanh BUILD_WEB.bat và DEPLOY_WEB.bat ở thư mục gốc"""
    print("\n[6/6] ⚡ Tạo file thực thi nhanh BUILD_WEB.bat & DEPLOY_WEB.bat...")
    
    bat_build = """@echo off
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
"""
    with open(os.path.join(ROOT_DIR, 'BUILD_WEB.bat'), 'w', encoding='utf-8') as f:
        f.write(bat_build)

    bat_deploy = """@echo off
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
"""
    with open(os.path.join(ROOT_DIR, 'DEPLOY_WEB.bat'), 'w', encoding='utf-8') as f:
        f.write(bat_deploy)

    print("  [OK] Đã tạo BUILD_WEB.bat và DEPLOY_WEB.bat.")


def deploy_to_gh_pages():
    """Tự động đóng gói và push dist_web lên nhánh gh-pages của GitHub Pages"""
    build_all()
    print("\n" + "=" * 60)
    print("🚀 ĐANG TIẾN HÀNH DEPLOY LÊN GITHUB PAGES (nhánh gh-pages)...")
    print("=" * 60)
    
    dist_git_dir = os.path.join(WEB_DIST_DIR, '.git')
    if os.path.exists(dist_git_dir):
        shutil.rmtree(dist_git_dir)
        
    try:
        subprocess.run(['git', 'init'], cwd=WEB_DIST_DIR, check=True)
        subprocess.run(['git', 'checkout', '-B', 'gh-pages'], cwd=WEB_DIST_DIR, check=True)
        subprocess.run(['git', 'add', '-A'], cwd=WEB_DIST_DIR, check=True)
        subprocess.run(['git', 'commit', '-m', 'Deploy HOME Web Visual Novel (Refactored Release)'], cwd=WEB_DIST_DIR, check=True)
        
        remote_url = 'https://github.com/shimakazevn/Home-project.git'
        subprocess.run(['git', 'remote', 'add', 'origin', remote_url], cwd=WEB_DIST_DIR, check=True)
        print("  [*] Đang push dữ liệu lên nhánh gh-pages...")
        res = subprocess.run(['git', 'push', '-f', 'origin', 'gh-pages'], cwd=WEB_DIST_DIR, capture_output=True, text=True)
        
        if res.returncode == 0:
            print("\n🎉 [THÀNH CÔNG] ĐÃ DEPLOY LÊN GITHUB PAGES THÀNH CÔNG!")
            print("🌐 Trang web đang chạy tại: https://shimakazevn.github.io/Home-project/")
        else:
            print(f"\n⚠️ Lỗi khi push lên GitHub: {res.stderr}")
    except Exception as e:
        print(f"\n❌ Thất bại khi deploy: {e}")
    finally:
        if os.path.exists(dist_git_dir):
            def remove_readonly(func, path, excinfo):
                import stat
                try:
                    os.chmod(path, stat.S_IWRITE)
                    func(path)
                except Exception:
                    pass
            shutil.rmtree(dist_git_dir, onexc=remove_readonly)


def build_all():
    print("=" * 60)
    print("   HOME [RJ01556529] - QUY TRÌNH XÂY DỰNG BẢN WEB ĐỘC LẬP")
    print("=" * 60)
    
    step1_ensure_directories()
    step2_export_cdn_manifest()
    step3_sync_engine_and_scenarios()
    step4_generate_web_core_modules()
    step5_package_to_dist_web()
    step6_create_build_batch()

    print("\n" + "=" * 60)
    print("🎉 XÂY DỰNG BẢN WEB HOÀN CHỈNH THÀNH CÔNG 100%!")
    print(f"   Thư mục nguồn Web : {WEB_SRC_DIR}")
    print(f"   Thư mục phát hành : {WEB_DIST_DIR}")
    print("=" * 60)
    print("👉 Hướng dẫn kiểm thử:")
    print("   Chạy: python tools/build_web_release.py --serve")
    print("   Mở trình duyệt truy cập: http://localhost:8080")
    print("👉 Hướng dẫn Deploy:")
    print("   Chạy: python tools/build_web_release.py --deploy (hoặc nhấp đúp DEPLOY_WEB.bat)")
    print("=" * 60)


if __name__ == '__main__':
    if '--serve' in sys.argv:
        port = 8080
        os.chdir(WEB_DIST_DIR)
        print(f"🚀 Đang khởi chạy Web Server tại http://localhost:{port}...")
        handler = http.server.SimpleHTTPRequestHandler
        with socketserver.TCPServer(("", port), handler) as httpd:
            try:
                httpd.serve_forever()
            except KeyboardInterrupt:
                print("\nĐã dừng Web Server.")
    elif '--deploy' in sys.argv:
        deploy_to_gh_pages()
    else:
        build_all()


