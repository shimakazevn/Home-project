/**
 * CDN Interceptor Plugin cho TyranoScript Web
 * Tự động chuyển hướng toàn bộ hình ảnh, character sprites, button, bgmovie và Stego Audio sang Google Blogger/Photos CDN
 * Tự động chuẩn hóa âm lượng (Volume Softening & Normalization) cho trải nghiệm êm ái
 * Bộ nhớ đệm AudioBuffer Cache siêu tốc (0ms độ trễ cho BGM & SFX & Voice)
 * HOME_AssetDB: IndexedDB Persistent Asset Cache — cache toàn bộ ảnh & âm thanh trên ổ cứng người dùng
 */

(function() {
    'use strict';

    let metaRef = document.querySelector('meta[name="referrer"]');
    if (!metaRef) {
        metaRef = document.createElement('meta');
        metaRef.name = 'referrer';
        metaRef.content = 'no-referrer';
        document.head.prepend(metaRef);
    }

    let assetManifest = null;
    let audioCtx = null;
    let activeBgmSource = null;
    let activeBgmGainNode = null;
    let activeSeSources = [];
    const audioBufferCache = new Map();
    const audioPromiseCache = new Map();
    const urlToKeyMap = new Map();
    const idbImageBlobUrls = new Map();

    // ============================================================
    // HOME_AssetDB v3 — Offline Cache Manager (User opt-in)
    // ============================================================
    const IDB_NAME = 'HOME_AssetDB';
    const IDB_VERSION = 3; // v3: thêm lại 'images' store (user-controlled, không tự động tải)
    let assetDB = null;
    let assetDBReady = null;

    function openAssetDB() {
        if (assetDBReady) return assetDBReady;
        assetDBReady = new Promise((resolve) => {
            try {
                const req = indexedDB.open(IDB_NAME, IDB_VERSION);
                req.onupgradeneeded = (e) => {
                    const db = e.target.result;
                    const oldVer = e.oldVersion;
                    // v1→2: đã xóa images (auto-cache bị đầy 8GB)
                    // v2→3: tạo lại images cho user opt-in offline
                    if (oldVer < 2 && db.objectStoreNames.contains('images')) {
                        db.deleteObjectStore('images');
                    }
                    if (!db.objectStoreNames.contains('images')) {
                        const imgStore = db.createObjectStore('images', { keyPath: 'key' });
                        imgStore.createIndex('tier', 'tier', { unique: false });
                    }
                    if (!db.objectStoreNames.contains('audio_raw')) {
                        db.createObjectStore('audio_raw', { keyPath: 'key' });
                    }
                    if (!db.objectStoreNames.contains('meta')) {
                        db.createObjectStore('meta');
                    }
                };
                req.onsuccess = (e) => { assetDB = e.target.result; resolve(assetDB); };
                req.onerror = () => { console.warn('[HOME_AssetDB] Không thể mở IndexedDB.'); resolve(null); };
            } catch(e) { resolve(null); }
        });
        return assetDBReady;
    }

    function idbGet(store, key) {
        return new Promise((resolve) => {
            if (!assetDB) { resolve(null); return; }
            try {
                const tx = assetDB.transaction(store, 'readonly');
                const req = tx.objectStore(store).get(key);
                req.onsuccess = () => resolve(req.result || null);
                req.onerror = () => resolve(null);
            } catch(e) { resolve(null); }
        });
    }

    function idbPut(store, record) {
        return new Promise((resolve) => {
            if (!assetDB) { resolve(); return; }
            try {
                const tx = assetDB.transaction(store, 'readwrite');
                tx.objectStore(store).put(record);
                tx.oncomplete = () => resolve();
                tx.onerror = () => resolve();
            } catch(e) { resolve(); }
        });
    }

    function idbMetaGet(key) {
        return new Promise((resolve) => {
            if (!assetDB) { resolve(null); return; }
            try {
                const tx = assetDB.transaction('meta', 'readonly');
                const req = tx.objectStore('meta').get(key);
                req.onsuccess = () => resolve(req.result || null);
                req.onerror = () => resolve(null);
            } catch(e) { resolve(null); }
        });
    }

    function idbMetaPut(key, value) {
        return new Promise((resolve) => {
            if (!assetDB) { resolve(); return; }
            try {
                const tx = assetDB.transaction('meta', 'readwrite');
                tx.objectStore('meta').put(value, key);
                tx.oncomplete = () => resolve();
                tx.onerror = () => resolve();
            } catch(e) { resolve(); }
        });
    }

    function idbCount(store) {
        return new Promise((resolve) => {
            if (!assetDB) { resolve(0); return; }
            try {
                const tx = assetDB.transaction(store, 'readonly');
                const req = tx.objectStore(store).count();
                req.onsuccess = () => resolve(req.result || 0);
                req.onerror = () => resolve(0);
            } catch(e) { resolve(0); }
        });
    }

    // Kiểm tra 1 key có trong IDB chưa (nhanh hơn idbGet vì không đọc blob)
    function idbHas(store, key) {
        return new Promise((resolve) => {
            if (!assetDB) { resolve(false); return; }
            try {
                const tx = assetDB.transaction(store, 'readonly');
                const req = tx.objectStore(store).getKey(key);
                req.onsuccess = () => resolve(req.result !== undefined);
                req.onerror = () => resolve(false);
            } catch(e) { resolve(false); }
        });
    }

    async function clearOfflineCache() {
        if (!assetDB) return;
        try {
            const tx = assetDB.transaction(['images', 'audio_raw', 'meta'], 'readwrite');
            tx.objectStore('images').clear();
            tx.objectStore('audio_raw').clear();
            tx.objectStore('meta').clear();
            await new Promise((r) => { tx.oncomplete = r; tx.onerror = r; });
        } catch(e) {}
    }

    async function checkAndInvalidateCache(manifest) {
        await openAssetDB();
        const fingerprint = String(Object.keys(manifest).length) + '_' + Object.keys(manifest).slice(0, 5).join(',');
        const stored = await idbMetaGet('manifest_fingerprint');
        if (stored && stored !== fingerprint) {
            // Chỉ xóa meta và audio khi manifest thay đổi, GIỮ ảnh offline của user
            // (User phải tự quyết định xóa cache bằng nút "Xóa cache")
            if (assetDB) {
                const tx = assetDB.transaction(['audio_raw', 'meta'], 'readwrite');
                tx.objectStore('audio_raw').clear();
                tx.objectStore('meta').clear();
                await new Promise((r) => { tx.oncomplete = r; tx.onerror = r; });
            }
        }
        await idbMetaPut('manifest_fingerprint', fingerprint);
    }

    // --- Fetch Concurrency Limiter (tối đa 6 request song song) ---
    const FETCH_CONCURRENCY = 6;
    let _fetchActive = 0;
    const _fetchQueue = [];
    function throttledFetch(url, opts) {
        return new Promise((resolve, reject) => {
            const execute = () => {
                _fetchActive++;
                fetch(url, opts).then(resolve, reject).finally(() => {
                    _fetchActive--;
                    if (_fetchQueue.length > 0) _fetchQueue.shift()();
                });
            };
            if (_fetchActive < FETCH_CONCURRENCY) execute();
            else _fetchQueue.push(execute);
        });
    }

    // Ảnh preload đơn giản qua Browser HTTP Cache
    function preloadImage(url) {
        const img = new Image();
        img.crossOrigin = 'anonymous';
        img.src = url;
    }

    // ============================================================
    // OfflineCacheManager — User opt-in full offline download
    // ============================================================
    const OfflineCacheManager = {
        _downloading: false,
        _stopFlag: false,
        _cachedCount: 0,
        _totalCount: 0,
        _tier1Keys: new Set(),

        // Xây dựng danh sách ưu tiên download từ manifest
        buildQueue(manifest) {
            const tier1Patterns = [
                'workring_','frame_','icon_','d_ev','r_up','r_down','shinnyu_','sin_','bussyoku_','haiti_',
                'job_','mesi_','soto_','jisui_','konbini_','map_','sansaku_','spot_','area_','btn_map_',
                'yoru_','sunday_','komyu_','date_','purezento_','ev_sinnyu','ev_haiti','ev_bussyoku',
                'ev_mesi','ev_komyu','ev_yoru','ev_soto','ev_jisui','workring','parameter_','param_',
                'workring_h_','room_','asa_','gogo_','yoru_','title','chara_icon','btn_','button_',
                'base.png','gauge_','month_','week_','tension_','rank_'
            ];
            const tier1 = [], tier2 = [], tier3 = [];
            for (const [key, url] of Object.entries(manifest)) {
                const isImg = /\.(png|jpg|gif|webp)$/i.test(key);
                const isAudio = /\.mp3$/i.test(key) || key.includes('/sound/') || key.includes('/bgm/') || key.includes('/voice/');
                if (isImg) {
                    const isT1 = tier1Patterns.some(p => key.includes(p));
                    if (isT1) { tier1.push({ key, url, tier: 1 }); this._tier1Keys.add(key); }
                    else tier2.push({ key, url, tier: 2 });
                } else if (isAudio) {
                    tier3.push({ key, url, tier: 3 });
                }
            }
            return [...tier1, ...tier2, ...tier3];
        },

        async getStatus() {
            await openAssetDB();
            const imgCached = await idbCount('images');
            const audioCached = await idbCount('audio_raw');
            return { imgCached, audioCached, total: this._totalCount };
        },

        async startDownload(manifest, onProgress) {
            if (this._downloading) return;
            this._downloading = true;
            this._stopFlag = false;

            const queue = this.buildQueue(manifest);
            this._totalCount = queue.length;

            // Đếm số đã cache để resume
            const imgCached = await idbCount('images');
            const audioCached = await idbCount('audio_raw');
            this._cachedCount = imgCached + audioCached;

            let done = this._cachedCount;
            const CONCURRENCY = 4; // Offline download: 4 parallel (nhẹ hơn game)
            let idx = 0;

            const worker = async () => {
                while (idx < queue.length && !this._stopFlag) {
                    const item = queue[idx++];
                    if (!item) continue;

                    const store = item.tier < 3 ? 'images' : 'audio_raw';
                    const alreadyCached = await idbHas(store, item.key);
                    if (!alreadyCached) {
                        try {
                            const resp = await fetch(item.url, { referrerPolicy: 'no-referrer' });
                            if (resp.ok) {
                                const blob = await resp.blob();
                                await idbPut(store, { key: item.key, blob, tier: item.tier, cachedAt: Date.now() });
                            }
                        } catch(e) { /* skip failed */ }
                    }
                    done++;
                    this._cachedCount = done;
                    if (onProgress) onProgress(done, queue.length);
                }
            };

            const workers = Array.from({ length: CONCURRENCY }, () => worker());
            await Promise.all(workers);

            this._downloading = false;
            await idbMetaPut('offline_complete', !this._stopFlag);
            if (onProgress) onProgress(done, queue.length);
        },

        stopDownload() {
            this._stopFlag = true;
            this._downloading = false;
        },

        async clearCache() {
            this.stopDownload();
            await clearOfflineCache();
            this._cachedCount = 0;
        }
    };

    // ============================================================
    // Unified Game Control Center Modal (PC & Mobile Single Gear UI)
    // ============================================================
    function injectUnifiedGearModal(manifest) {
        if (document.getElementById('home-gear-btn')) return;

        const totalAssets = Object.keys(manifest).filter(k =>
            /\.(png|jpg|gif|webp|mp3)$/i.test(k) || k.includes('/sound/') || k.includes('/bgm/')
        ).length;
        OfflineCacheManager._totalCount = totalAssets;

        const style = document.createElement('style');
        style.textContent = `
            /* 1. MINIMALIST APPLE CONTROL ORB */
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
            #home-gear-badge {
                position: absolute;
                top: 2px;
                right: 2px;
                width: 8px;
                height: 8px;
                border-radius: 50%;
                background: #0A84FF;
                border: 1.5px solid #1C1C1E;
            }
            #home-gear-badge.cached { background: #30D158; }
            #home-gear-badge.downloading { background: #FF9F0A; animation: hgb-pulse 1s infinite; }
            @keyframes hgb-pulse { 0%,100%{transform:scale(1);opacity:1} 50%{transform:scale(1.3);opacity:0.6} }

            /* 2. APPLE MINIMALIST INSET GROUPED MODAL SHEET */
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
                transition: opacity 0.2s ease;
                box-sizing: border-box;
            }
            #home-modal-overlay.open {
                opacity: 1;
                pointer-events: auto;
            }
            #home-modal-card {
                width: 100%;
                max-width: 420px;
                max-height: 88vh;
                background: rgba(28, 28, 30, 0.94);
                backdrop-filter: blur(50px) saturate(190%);
                -webkit-backdrop-filter: blur(50px) saturate(190%);
                border: 0.5px solid rgba(255, 255, 255, 0.12);
                border-radius: 20px;
                box-shadow: 0 28px 70px rgba(0, 0, 0, 0.6);
                display: flex;
                flex-direction: column;
                overflow: hidden;
                transform: scale(0.95);
                transition: transform 0.22s cubic-bezier(0.16, 1, 0.3, 1);
                color: #FFFFFF;
                font-family: -apple-system, BlinkMacSystemFont, "SF Pro Display", "SF Pro Text", "Helvetica Neue", sans-serif;
                user-select: none;
                box-sizing: border-box;
            }
            #home-modal-overlay.open #home-modal-card {
                transform: scale(1);
            }

            .hmc-sheet-handle {
                width: 36px;
                height: 4px;
                border-radius: 999px;
                background: rgba(255, 255, 255, 0.2);
                margin: 8px auto 0;
                flex-shrink: 0;
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

            /* Section Header */
            .hmc-group-header {
                font-size: 11px;
                font-weight: 600;
                text-transform: uppercase;
                letter-spacing: 0.04em;
                color: rgba(235, 235, 245, 0.45);
                margin: 0 0 6px 4px;
            }

            /* iOS Inset Group Container */
            .hmc-inset-group {
                background: rgba(120, 120, 128, 0.15);
                border: 0.5px solid rgba(255, 255, 255, 0.06);
                border-radius: 12px;
                overflow: hidden;
                flex-shrink: 0;
            }

            /* iOS Table Row (Pure Text & Action) */
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

            /* Apple Minimalist Pill Button */
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

            /* Apple Text-Only Segmented Control */
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

            /* Cache box */
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

            /* Responsive: Mobile Portrait (< 480px width) */
            @media (max-width: 480px) {
                #home-modal-overlay {
                    padding: 8px;
                }
                #home-modal-card {
                    max-width: 100%;
                    max-height: 92vh;
                    border-radius: 18px;
                }
                .hmc-header {
                    padding: 8px 14px 10px;
                }
                .hmc-title {
                    font-size: 15px;
                }
                .hmc-body {
                    padding: 10px 12px 14px;
                    gap: 12px;
                }
                .hmc-row {
                    padding: 9px 12px;
                }
                .hmc-row-label {
                    font-size: 13.5px;
                }
                .hmc-pill-btn {
                    padding: 4px 11px;
                    font-size: 12px;
                }
            }

            /* Responsive: Mobile Landscape (< 540px height) */
            @media (max-height: 540px) {
                #home-modal-overlay {
                    padding: 6px;
                }
                #home-modal-card {
                    max-height: 96vh;
                    border-radius: 14px;
                    max-width: 480px;
                }
                .hmc-sheet-handle {
                    display: none;
                }
                .hmc-header {
                    padding: 6px 14px;
                }
                .hmc-title {
                    font-size: 14px;
                }
                .hmc-body {
                    padding: 6px 10px 10px;
                    gap: 8px;
                }
                .hmc-row {
                    padding: 7px 10px;
                }
                .hmc-group-header {
                    margin: 0 0 3px 4px;
                    font-size: 10px;
                }
            }
        `;
        document.head.appendChild(style);

        // Gear Button
        const gearBtn = document.createElement('div');
        gearBtn.id = 'home-gear-btn';
        gearBtn.title = 'Cài đặt & Tiện ích';
        gearBtn.innerHTML = `
            <svg viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="3"></circle>
                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
            </svg>
            <div id="home-gear-badge"></div>
        `;
        document.body.appendChild(gearBtn);

        // Modal Overlay & Card
        const overlay = document.createElement('div');
        overlay.id = 'home-modal-overlay';
        overlay.innerHTML = `
            <div id="home-modal-card">
                <div class="hmc-sheet-handle"></div>
                <div class="hmc-header">
                    <div class="hmc-title">Cài đặt & Tiện ích</div>
                    <button class="hmc-close" id="hmc-close-btn" title="Đóng">✕</button>
                </div>
                <div class="hmc-body" id="hmc-dynamic-body">
                </div>
            </div>
        `;
        document.body.appendChild(overlay);

        const closeModal = () => { overlay.classList.remove('open'); };
        const openModal = () => { overlay.classList.add('open'); renderModal(); };

        gearBtn.onclick = openModal;
        document.getElementById('hmc-close-btn').onclick = closeModal;
        overlay.onclick = (e) => { if (e.target === overlay) closeModal(); };

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

        async function renderModal() {
            const inGame = isGameActive();
            const status = await OfflineCacheManager.getStatus();
            const cached = status.imgCached + status.audioCached;
            const total = totalAssets;
            const pct = total > 0 ? Math.round((cached / total) * 100) : 0;
            const isComplete = pct >= 100;
            const isDownloading = OfflineCacheManager._downloading;

            // Update badge
            const badge = document.getElementById('home-gear-badge');
            if (badge) {
                badge.className = isDownloading ? 'downloading' : isComplete ? 'cached' : cached > 0 ? 'cached' : '';
            }

            const body = document.getElementById('hmc-dynamic-body');
            if (!body) return;

            const isSkip = inGame && !!(window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat && window.TYRANO.kag.stat.is_skip);
            const isAuto = inGame && !!(window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat && window.TYRANO.kag.stat.is_auto);

            const offlineStatusText = isComplete
                ? 'Đã lưu toàn bộ dữ liệu vào thiết bị (Chơi Offline).'
                : isDownloading
                    ? `Đang tải tài nguyên về máy... (${cached.toLocaleString()} / ${total.toLocaleString()})`
                    : cached > 0
                        ? `Đã lưu ${pct}% tài nguyên (${cached.toLocaleString()} / ${total.toLocaleString()}).`
                        : 'Đang chơi trực tuyến qua CDN (Tải khi cần).';

            body.innerHTML = `
                <!-- SECTION 1: LƯU TRỮ -->
                <div>
                    <div class="hmc-group-header">Dữ liệu Lưu trữ</div>
                    <div class="hmc-inset-group">
                        <!-- Row 1: Q.Save -->
                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Lưu nhanh (Q.Save)</div>
                                <div class="hmc-row-sublabel">${inGame ? 'Ghi đè ô lưu tạm' : 'Khả dụng khi đang chơi'}</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_qsave">Lưu</button>
                            </div>
                        </div>

                        <!-- Row 2: Q.Load -->
                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Nạp nhanh (Q.Load)</div>
                                <div class="hmc-row-sublabel">Tải lại vị trí gần nhất</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_qload">Nạp</button>
                            </div>
                        </div>

                        <!-- Row 3: File .sav -->
                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Tệp sao lưu (.sav)</div>
                                <div class="hmc-row-sublabel">Xuất / Nhập tệp thiết bị</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_export">Xuất</button>
                                <button class="hmc-pill-btn" id="btn_modal_import">Nhập</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- SECTION 2: BỘ NHỚ ĐỆM & OFFLINE -->
                <div>
                    <div class="hmc-group-header">Bộ nhớ Đệm & Offline</div>
                    <div class="hmc-inset-group">
                        <div class="hmc-cache-box">
                            <div style="display: flex; align-items: center; justify-content: space-between;">
                                <div class="hmc-row-label">Chế độ Ngoại tuyến</div>
                                <div style="font-size: 12px; font-weight: 500; color: ${isComplete ? '#30D158' : 'rgba(235, 235, 245, 0.55)'};">
                                    ${pct}% (${cached.toLocaleString()} / ${total.toLocaleString()})
                                </div>
                            </div>
                            <div class="hmc-bar-bg">
                                <div class="hmc-bar-fill ${isComplete ? 'complete' : ''}" style="width: ${pct}%"></div>
                            </div>
                            <div class="hmc-cache-status">${offlineStatusText}</div>
                            <div style="display: flex; gap: 8px;">
                                ${isDownloading
                                    ? `<button class="hmc-pill-btn pill-danger" style="flex: 1;" id="btn_modal_stop_dl">Dừng tải</button>`
                                    : isComplete
                                        ? `<button class="hmc-pill-btn pill-danger" style="flex: 1;" id="btn_modal_del_cache">Xóa bộ nhớ Offline</button>`
                                        : `<button class="hmc-pill-btn pill-primary" style="flex: 1;" id="btn_modal_start_dl">Tải về máy để chơi Offline</button>`
                                }
                                ${cached > 0 && !isComplete && !isDownloading
                                    ? `<button class="hmc-pill-btn pill-danger" id="btn_modal_del_cache">Xóa Cache</button>`
                                    : ''
                                }
                            </div>
                        </div>
                    </div>
                </div>

                <!-- SECTION 3: ĐIỀU KHIỂN ĐỌC TRUYỆN -->
                <div>
                    <div class="hmc-group-header">Điều khiển Đọc truyện ${inGame ? '' : '• Khi chơi game'}</div>
                    <div class="hmc-inset-group">
                        <!-- Pure Text iOS Segmented Control -->
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

                        <!-- Row: Fullscreen -->
                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Toàn màn hình</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_fullscreen">Mở</button>
                            </div>
                        </div>

                        <!-- Row: Back to Title -->
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

            // Wire up events
            document.getElementById('btn_modal_export')?.addEventListener('click', () => {
                if (window.exportCurrentSaveToFile) window.exportCurrentSaveToFile();
            });
            document.getElementById('btn_modal_import')?.addEventListener('click', () => {
                if (window.importSaveFromFile) window.importSaveFromFile();
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
            document.getElementById('btn_modal_fullscreen')?.addEventListener('click', () => {
                if (!document.fullscreenElement) {
                    document.documentElement.requestFullscreen().catch(() => {});
                } else {
                    document.exitFullscreen().catch(() => {});
                }
            });
            document.getElementById('btn_modal_title')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag) {
                    closeModal();
                    window.TYRANO.kag.backTitle();
                }
            });

            // Cache manager
            const startDlBtn = document.getElementById('btn_modal_start_dl');
            if (startDlBtn) {
                startDlBtn.onclick = () => {
                    OfflineCacheManager.startDownload(manifest, (done, total) => {
                        const p = Math.round((done / total) * 100);
                        const fill = body.querySelector('.hmc-bar-fill');
                        const info = body.querySelector('.hmc-info-text');
                        if (fill) fill.style.width = p + '%';
                        if (info) info.textContent = `⏳ Đang tải asset về máy... ${p}% (${done.toLocaleString()} / ${total.toLocaleString()})`;
                        if (done >= total) setTimeout(renderModal, 500);
                    }).then(renderModal);
                    renderModal();
                };
            }
            const stopDlBtn = document.getElementById('btn_modal_stop_dl');
            if (stopDlBtn) {
                stopDlBtn.onclick = () => {
                    OfflineCacheManager.stopDownload();
                    renderModal();
                };
            }
            const delCacheBtn = document.getElementById('btn_modal_del_cache');
            if (delCacheBtn) {
                delCacheBtn.onclick = async () => {
                    if (!confirm('Bạn có chắc chắn muốn xóa toàn bộ bộ nhớ đệm Offline? Game sẽ chuyển về tải trực tuyến từ CDN.')) return;
                    await OfflineCacheManager.clearCache();
                    renderModal();
                };
            }
        }

        renderModal();
    }

    // Read-through cache: Stego Audio PNG → MP3 ArrayBuffer → lưu IDB (bỏ bước giải mã Deflate)
    async function getIDBAudioRaw(key, stegoUrl, decodeStegoCb) {
        const ramKey = stegoUrl.split('?')[0];
        if (audioBufferCache.has(ramKey)) return audioBufferCache.get(ramKey);
        const stored = await idbGet('audio_raw', key);
        if (stored && stored.blob) {
            try {
                const ctx = getAudioContext();
                const ab = await stored.blob.arrayBuffer();
                const decodedBuffer = await ctx.decodeAudioData(ab);
                applyAudioBufferFadeOut(decodedBuffer);
                audioBufferCache.set(ramKey, decodedBuffer);
                return decodedBuffer;
            } catch(e) { /* fall through to re-decode */ }
        }
        return await decodeStegoCb(stegoUrl);
    }
    // ============================================================
    // End HOME_AssetDB + OfflineCacheManager
    // ============================================================

    // Chuẩn hóa âm lượng tự nhiên, rõ nét (BGM 90%, SE 100%)
    const MASTER_BGM_SCALE = 0.90;
    const MASTER_SE_SCALE = 1.00;

    // Intercept toàn diện HTMLImageElement src để hỗ trợ IndexedDB Offline Blobs và CORS cho Save Thumbnail
    try {
        function handleImageSrc(elem, val) {
            if (typeof val !== 'string' || val.startsWith('data:') || val.startsWith('blob:')) return val;
            let cdnUrl = window.resolveCDNUrl(val);
            if (cdnUrl && cdnUrl.startsWith('http')) {
                elem.crossOrigin = 'anonymous';
                const cleanUrl = cdnUrl.split('?')[0];
                if (idbImageBlobUrls.has(cleanUrl)) {
                    return idbImageBlobUrls.get(cleanUrl);
                }
                const manifestKey = urlToKeyMap.get(cleanUrl) || val;
                idbGet('images', manifestKey).then(stored => {
                    if (stored && stored.blob) {
                        const blobUrl = URL.createObjectURL(stored.blob);
                        idbImageBlobUrls.set(cleanUrl, blobUrl);
                        if (elem.src === cdnUrl || elem.src === val) {
                            elem.src = blobUrl;
                        }
                    }
                }).catch(() => {});
                return cdnUrl;
            }
            return val;
        }

        const origImgSrcDesc = Object.getOwnPropertyDescriptor(HTMLImageElement.prototype, 'src');
        if (origImgSrcDesc && origImgSrcDesc.set) {
            Object.defineProperty(HTMLImageElement.prototype, 'src', {
                set: function(val) {
                    val = handleImageSrc(this, val);
                    return origImgSrcDesc.set.call(this, val);
                },
                get: function() {
                    return origImgSrcDesc.get.call(this);
                }
            });
        }

        const origSetAttribute = HTMLImageElement.prototype.setAttribute;
        HTMLImageElement.prototype.setAttribute = function(name, val) {
            if (name === 'src') {
                val = handleImageSrc(this, val);
            }
            return origSetAttribute.call(this, name, val);
        };
    } catch(e) {}

    function getAudioContext() {
        if (!audioCtx) {
            const AudioContextClass = window.AudioContext || window.webkitAudioContext;
            audioCtx = new AudioContextClass();
        }
        if (audioCtx.state === 'suspended') {
            audioCtx.resume();
        }
        return audioCtx;
    }

    // Tự động mở khóa Web Audio trên tương tác đầu tiên của người dùng (click, touch, phím)
    const unlockAudio = () => {
        if (!audioCtx) {
            getAudioContext();
        }
        if (audioCtx && audioCtx.state === 'suspended') {
            audioCtx.resume();
        }
    };
    ['click', 'touchstart', 'touchend', 'mousedown', 'mouseup', 'keydown'].forEach(evt => {
        window.addEventListener(evt, unlockAudio, { passive: true });
        document.addEventListener(evt, unlockAudio, { passive: true });
    });

    // 1. Tải bảng manifest định tuyến CDN + khởi động IDB
    async function loadManifest() {
        if (assetManifest) return assetManifest;
        openAssetDB();
        try {
            const resp = await fetch('./data/asset_manifest.json');
            if (resp.ok) {
                assetManifest = await resp.json();
                console.log(`[CDN Interceptor] Đã nạp thành công ${Object.keys(assetManifest).length} CDN routes.`);
                for (const [key, url] of Object.entries(assetManifest)) {
                    urlToKeyMap.set(url.split('?')[0], key);
                }
                checkAndInvalidateCache(assetManifest).then(() => {
                    // Inject Unified Gear Modal sau khi DOM sẵn sàng (Không tự động tải tài nguyên nền)
                    if (document.body) injectUnifiedGearModal(assetManifest);
                    else window.addEventListener('load', () => injectUnifiedGearModal(assetManifest));
                });
            }
        } catch (e) {
            console.warn('[CDN Interceptor] Không thể nạp asset_manifest.json:', e);
            assetManifest = {};
        }
        return assetManifest || {};
    }

    // 2. Chuyển đổi đường dẫn cục bộ -> URL Blogger CDN (Hỗ trợ query strings / timestamps)
    window.resolveCDNUrl = function(rawPath) {
        if (!assetManifest || !rawPath || typeof rawPath !== 'string') return rawPath;
        if (rawPath.startsWith('https://lh3.googleusercontent.com')) return rawPath;

        let [basePart, queryPart] = rawPath.split('?');
        let querySuffix = queryPart !== undefined ? '?' + queryPart : '';

        let clean = basePart.replace(/^[./]+/, '').replace(/\\/g, '/');
        if (clean.includes('/data/')) {
            clean = 'data/' + clean.split('/data/')[1];
        } else if (clean.startsWith('http') && clean.includes('data/')) {
            clean = 'data/' + clean.split('data/')[1];
        }

        if (assetManifest[clean]) {
            return assetManifest[clean] + querySuffix;
        }
        for (const k in assetManifest) {
            if (clean.endsWith(k) || k.endsWith(clean)) {
                return assetManifest[k] + querySuffix;
            }
        }
        let filename = clean.split('/').pop();
        if (filename && filename.includes('.')) {
            for (const k in assetManifest) {
                if (k.endsWith('/' + filename)) {
                    return assetManifest[k] + querySuffix;
                }
            }
        }
        return rawPath;
    };

    // Khử nhiễu / tiếng "chét" cuối file âm thanh (5ms micro-fade out)
    function applyAudioBufferFadeOut(audioBuffer) {
        if (!audioBuffer) return audioBuffer;
        try {
            const fadeSamples = Math.min(256, Math.floor(audioBuffer.sampleRate * 0.005));
            const numChannels = audioBuffer.numberOfChannels;
            const len = audioBuffer.length;
            if (len <= fadeSamples) return audioBuffer;

            for (let c = 0; c < numChannels; c++) {
                const channelData = audioBuffer.getChannelData(c);
                for (let i = 0; i < fadeSamples; i++) {
                    const idx = len - fadeSamples + i;
                    const factor = 1.0 - (i / fadeSamples);
                    channelData[idx] *= factor;
                }
            }
        } catch(e) {}
        return audioBuffer;
    }

    // Dừng nguồn âm thanh êm dịu (Anti-Pop Declick Envelope 6ms)
    function safeStopSource(srcNode, gainNode, fadeMs = 6) {
        try {
            if (gainNode && srcNode) {
                const ctx = getAudioContext();
                gainNode.gain.setValueAtTime(gainNode.gain.value, ctx.currentTime);
                gainNode.gain.linearRampToValueAtTime(0.0001, ctx.currentTime + fadeMs / 1000.0);
                setTimeout(() => {
                    try { srcNode.stop(); } catch(e) {}
                }, fadeMs + 2);
            } else if (srcNode) {
                try { srcNode.stop(); } catch(e) {}
            }
        } catch(e) {}
    }

    // 3. Giải mã Audio Bit-Exact 100% từ PNG Stego (Không qua Canvas, không biến dạng dữ liệu)
    async function extractStegoBytesFromPngBuffer(arrayBuffer) {
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
            throw new Error('Invalid PNG chunks');
        }

        let totalLen = 0;
        for (let i = 0; i < idatParts.length; i++) totalLen += idatParts[i].length;
        const idat = new Uint8Array(totalLen);
        let p = 0;
        for (let i = 0; i < idatParts.length; i++) {
            idat.set(idatParts[i], p);
            p += idatParts[i].length;
        }

        // Decompress raw deflate payload (bỏ 2-byte zlib header và 4-byte adler32 cuối)
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

        const magic = String.fromCharCode(rawPixels[0], rawPixels[1], rawPixels[2], rawPixels[3]);
        const dataSize = ((rawPixels[4] << 24) >>> 0) | (rawPixels[5] << 16) | (rawPixels[6] << 8) | rawPixels[7];
        const extracted = rawPixels.subarray(12, 12 + dataSize);
        return extracted;
    }

    window.decodeStegoAudioFromUrl = function(pngUrl) {
        const cacheKey = pngUrl.split('?')[0];
        if (audioBufferCache.has(cacheKey)) {
            return Promise.resolve(audioBufferCache.get(cacheKey));
        }
        if (audioPromiseCache.has(cacheKey)) {
            return audioPromiseCache.get(cacheKey);
        }

        const decodePromise = (async () => {
            try {
                let arrayBuffer = null;
                const manifestKey = urlToKeyMap.get(cacheKey) || cacheKey;
                const stored = await idbGet('audio_raw', manifestKey);
                if (stored && stored.blob) {
                    try {
                        arrayBuffer = await stored.blob.arrayBuffer();
                    } catch(e) {}
                }

                if (!arrayBuffer) {
                    const resp = await fetch(pngUrl, { referrerPolicy: 'no-referrer' });
                    arrayBuffer = await resp.arrayBuffer();
                }

                let audioBytes;
                try {
                    audioBytes = await extractStegoBytesFromPngBuffer(arrayBuffer);
                } catch(e) {
                    console.warn('[CDN Interceptor] Pure JS PNG decode failed, fallback to canvas:', e);
                    const blob = new Blob([arrayBuffer]);
                    const bitmap = await createImageBitmap(blob);
                    const canvas = document.createElement('canvas');
                    canvas.width = bitmap.width;
                    canvas.height = bitmap.height;
                    const ctx = canvas.getContext('2d', { willReadFrequently: true });
                    ctx.drawImage(bitmap, 0, 0);
                    const imgData = ctx.getImageData(0, 0, bitmap.width, bitmap.height);
                    const pixels = imgData.data;
                    const totalCap = (bitmap.width * bitmap.height - 4) * 3;
                    let size_be = ((pixels[4] << 24) >>> 0) | (pixels[5] << 16) | (pixels[6] << 8) | (pixels[7]);
                    let dataSize = (size_be > 0 && size_be <= totalCap) ? size_be : totalCap;
                    audioBytes = new Uint8Array(dataSize);
                    let byteIdx = 0;
                    for (let i = 4; i < bitmap.width * bitmap.height && byteIdx < dataSize; i++) {
                        let px = i * 4;
                        audioBytes[byteIdx++] = pixels[px];
                        if (byteIdx < dataSize) audioBytes[byteIdx++] = pixels[px + 1];
                        if (byteIdx < dataSize) audioBytes[byteIdx++] = pixels[px + 2];
                    }
                }

                const audioCtx = getAudioContext();
                const arrayBufferToDecode = audioBytes.buffer.slice(audioBytes.byteOffset, audioBytes.byteOffset + audioBytes.byteLength);
                const decodedBuffer = await audioCtx.decodeAudioData(arrayBufferToDecode);
                applyAudioBufferFadeOut(decodedBuffer);
                audioBufferCache.set(cacheKey, decodedBuffer);
                return decodedBuffer;
            } finally {
                audioPromiseCache.delete(cacheKey);
            }
        })();

        audioPromiseCache.set(cacheKey, decodePromise);
        return decodePromise;
    };

    // 4. Hook jQuery và các tag của TyranoScript Engine
    function hookJQuery() {
        if (window.jQuery && window.jQuery.fn && window.jQuery.fn.attr) {
            if (!window.jQuery.fn.__cdn_hooked) {
                window.jQuery.fn.__cdn_hooked = true;
                const origJqAttr = window.jQuery.fn.attr;
                window.jQuery.fn.attr = function(name, value) {
                    if (name === 'src' && typeof value === 'string' && !value.startsWith('data:') && !value.startsWith('blob:')) {
                        let cdnUrl = window.resolveCDNUrl(value);
                        if (cdnUrl && cdnUrl !== value && cdnUrl.startsWith('http')) {
                            value = cdnUrl;
                        }
                    }
                    return origJqAttr.apply(this, arguments);
                };
            }
        }
    }

    function installTyranoHooks() {
        hookJQuery();
        if (!window.TYRANO || !window.TYRANO.kag) {
            setTimeout(installTyranoHooks, 50);
            return;
        }

        const kag = window.TYRANO.kag;

        // Hook Background Music Player
        kag.ft_play_stego_bgm = async function(cdnUrl, loop, rawVol, buf) {
            try {
                const ctx = getAudioContext();
                if (ctx.state === 'suspended') {
                    ctx.resume();
                }
                if (activeBgmSource) {
                    try { activeBgmSource.stop(); } catch(e) {}
                    activeBgmSource = null;
                }

                const audioBuffer = await window.decodeStegoAudioFromUrl(cdnUrl);
                const source = ctx.createBufferSource();
                const gainNode = ctx.createGain();
                
                source.buffer = audioBuffer;
                source.loop = loop;
                
                let vol = 1.0;
                if (rawVol !== "" && rawVol !== undefined && !isNaN(parseFloat(rawVol))) {
                    vol = parseFloat(rawVol) > 1.0 ? parseFloat(rawVol) / 100.0 : parseFloat(rawVol);
                }
                
                let bufRatio = 1.0;
                let bufIdx = buf !== undefined ? buf : "0";
                if (kag.stat && kag.stat.map_bgm_volume && kag.stat.map_bgm_volume[bufIdx] !== undefined) {
                    bufRatio = parseFloat(kag.stat.map_bgm_volume[bufIdx]) / 100.0;
                } else if (kag.config && kag.config.defaultBgmVolume !== undefined) {
                    bufRatio = parseFloat(kag.config.defaultBgmVolume) / 100.0;
                }
                
                let finalVol = Math.max(0, Math.min(1.0, vol * bufRatio * MASTER_BGM_SCALE));
                gainNode.gain.value = finalVol;

                source.connect(gainNode);
                gainNode.connect(ctx.destination);

                source.start(0);
                activeBgmSource = source;
                activeBgmGainNode = gainNode;
                kag.tmp.is_bgm_play = true;
            } catch (err) {
                console.error("[CDN Interceptor] Lỗi phát Stego BGM:", err);
            }
        };

        // Hook Sound Effect Player
        const activeBufMap = new Map();
        const lastSePlayTimeMap = new Map();

        kag.ft_play_stego_se = async function(cdnUrl, rawVol, buf) {
            try {
                const ctx = getAudioContext();
                if (ctx.state === 'suspended') {
                    ctx.resume();
                }

                // Debounce cho âm thanh rê chuột để không bị dồn dập
                const now = Date.now();
                if (cdnUrl.includes('sistem_starton.mp3')) {
                    if (lastSePlayTimeMap.has(cdnUrl) && (now - lastSePlayTimeMap.get(cdnUrl) < 60)) {
                        return;
                    }
                    lastSePlayTimeMap.set(cdnUrl, now);
                }

                const audioBuffer = await window.decodeStegoAudioFromUrl(cdnUrl);
                const source = ctx.createBufferSource();
                const gainNode = ctx.createGain();
                const filterNode = ctx.createBiquadFilter();
                filterNode.type = 'lowpass';
                filterNode.frequency.value = 12000; // Bộ lọc 12kHz giữ âm trong trẻo, khử sạch gắt chói
                
                source.buffer = audioBuffer;
                source.loop = false;
                source._gainNode = gainNode;
                
                let vol = 1.0;
                if (rawVol !== "" && rawVol !== undefined && !isNaN(parseFloat(rawVol))) {
                    vol = parseFloat(rawVol) > 1.0 ? parseFloat(rawVol) / 100.0 : parseFloat(rawVol);
                }
                
                let bufRatio = 1.0;
                let bufIdx = buf !== undefined ? String(buf) : "0";
                if (kag.stat && kag.stat.map_se_volume && kag.stat.map_se_volume[bufIdx] !== undefined) {
                    bufRatio = parseFloat(kag.stat.map_se_volume[bufIdx]) / 100.0;
                } else if (kag.config && kag.config.defaultSeVolume !== undefined) {
                    bufRatio = parseFloat(kag.config.defaultSeVolume) / 100.0;
                }
                
                let finalVol = Math.max(0, Math.min(1.0, vol * bufRatio * MASTER_SE_SCALE));

                // Âm thanh rê nút menu sistem_starton chuẩn hóa dịu nhẹ (35% volume)
                if (cdnUrl.includes('sistem_starton.mp3')) {
                    finalVol *= 0.35;
                }

                // Nếu slot buffer này đang phát âm thanh trước, dừng mượt mà tránh "chét"
                if (activeBufMap.has(bufIdx)) {
                    const prev = activeBufMap.get(bufIdx);
                    safeStopSource(prev.source, prev.gainNode, 6);
                    activeBufMap.delete(bufIdx);
                }

                // Khởi đầu mượt mà (4ms attack ramp) tránh tiếng click cơ học
                gainNode.gain.setValueAtTime(0.0001, ctx.currentTime);
                gainNode.gain.exponentialRampToValueAtTime(Math.max(0.0001, finalVol), ctx.currentTime + 0.004);

                source.connect(gainNode);
                gainNode.connect(filterNode);
                filterNode.connect(ctx.destination);

                source.start(0);
                activeSeSources.push(source);
                activeBufMap.set(bufIdx, { source, gainNode });
                kag.tmp.is_se_play = true;

                source.onended = () => {
                    activeSeSources = activeSeSources.filter(s => s !== source);
                    if (activeBufMap.get(bufIdx)?.source === source) {
                        activeBufMap.delete(bufIdx);
                    }
                    kag.tmp.is_se_play = false;
                    kag.tmp.is_vo_play = false;
                    if (kag.tmp.is_se_play_wait) {
                        kag.tmp.is_se_play_wait = false;
                        kag.ftag.nextOrder();
                    }
                };
            } catch (err) {
                console.error("[CDN Interceptor] Lỗi phát Stego SE:", err);
            }
        };

        // Hook tag bg (Background image)
        if (kag.tag.bg) {
            const origTagBg = kag.tag.bg.start;
            kag.tag.bg.start = function(pm) {
                if (pm.storage) {
                    let storage = pm.storage;
                    let fullPath = (storage.startsWith("data/") || storage.startsWith("http")) 
                        ? storage 
                        : `data/bgimage/${storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origTagBg.apply(this, arguments);
            };
        }

        // Hook tag image (Foreground & general image)
        if (kag.tag.image) {
            const origTagImage = kag.tag.image.start;
            kag.tag.image.start = function(pm) {
                if (pm.storage) {
                    let storage = pm.storage;
                    let folder = pm.folder || "fgimage";
                    let fullPath = (storage.startsWith("data/") || storage.startsWith("http"))
                        ? storage
                        : `data/${folder}/${storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origTagImage.apply(this, arguments);
            };
        }

        // Hook tag button (UI buttons on Title & Menus)
        if (kag.tag.button) {
            const origTagButton = kag.tag.button.start;
            kag.tag.button.start = function(pm) {
                let folder = pm.folder || "image";
                ['graphic', 'enterimg', 'clickimg'].forEach(prop => {
                    if (pm[prop]) {
                        let graphic = pm[prop];
                        let fullPath = (graphic.startsWith("data/") || graphic.startsWith("http"))
                            ? graphic
                            : `data/${folder}/${graphic}`;
                        let cdnUrl = window.resolveCDNUrl(fullPath);
                        if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                            pm[prop] = cdnUrl;
                        }
                    }
                });
                return origTagButton.apply(this, arguments);
            };
        }

        // Hook Character tags (chara_show, chara_mod, chara_new, chara_face, chara_part, chara_layer)
        if (kag.tag.chara_new) {
            const origCharaNew = kag.tag.chara_new.start;
            kag.tag.chara_new.start = function(pm) {
                if (pm.storage) {
                    let fullPath = (pm.storage.startsWith("data/") || pm.storage.startsWith("http"))
                        ? pm.storage
                        : `data/fgimage/${pm.storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origCharaNew.apply(this, arguments);
            };
        }

        if (kag.tag.chara_show) {
            const origCharaShow = kag.tag.chara_show.start;
            kag.tag.chara_show.start = function(pm) {
                if (pm.storage) {
                    let fullPath = (pm.storage.startsWith("data/") || pm.storage.startsWith("http"))
                        ? pm.storage
                        : `data/fgimage/${pm.storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origCharaShow.apply(this, arguments);
            };
        }

        if (kag.tag.chara_mod) {
            const origCharaMod = kag.tag.chara_mod.start;
            kag.tag.chara_mod.start = function(pm) {
                if (pm.storage) {
                    let fullPath = (pm.storage.startsWith("data/") || pm.storage.startsWith("http"))
                        ? pm.storage
                        : `data/fgimage/${pm.storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origCharaMod.apply(this, arguments);
            };
        }

        if (kag.tag.chara_face) {
            const origCharaFace = kag.tag.chara_face.start;
            kag.tag.chara_face.start = function(pm) {
                if (pm.storage) {
                    let fullPath = (pm.storage.startsWith("data/") || pm.storage.startsWith("http"))
                        ? pm.storage
                        : `data/fgimage/${pm.storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origCharaFace.apply(this, arguments);
            };
        }

        if (kag.tag.chara_layer) {
            const origCharaLayer = kag.tag.chara_layer.start;
            kag.tag.chara_layer.start = function(pm) {
                if (pm.storage) {
                    let fullPath = (pm.storage.startsWith("data/") || pm.storage.startsWith("http"))
                        ? pm.storage
                        : `data/fgimage/${pm.storage}`;
                    let cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                        pm.storage = cdnUrl;
                    }
                }
                return origCharaLayer.apply(this, arguments);
            };
        }

        if (kag.tag.chara_part) {
            const origCharaPart = kag.tag.chara_part.start;
            kag.tag.chara_part.start = function(pm) {
                for (let key in pm) {
                    if (typeof pm[key] === 'string' && (pm[key].endsWith('.png') || pm[key].endsWith('.jpg') || pm[key].endsWith('.gif'))) {
                        let fullPath = (pm[key].startsWith("data/") || pm[key].startsWith("http"))
                            ? pm[key]
                            : `data/fgimage/${pm[key]}`;
                        let cdnUrl = window.resolveCDNUrl(fullPath);
                        if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                            pm[key] = cdnUrl;
                        }
                    }
                }
                return origCharaPart.apply(this, arguments);
            };
        }

        if (kag.preload) {
            const origPreload = kag.preload;
            kag.preload = function(src, cb) {
                if (typeof src === 'string') {
                    let cdnUrl = window.resolveCDNUrl(src);
                    if (cdnUrl !== src && cdnUrl.startsWith("http")) {
                        src = cdnUrl;
                    }
                }
                return origPreload.call(this, src, cb);
            };
        }

        // Hook tag bgmovie (Gracefully bypass on web to prevent video tag blocking)
        kag.tag.bgmovie = {
            pm: { time: 0, volume: 100, loop: "true", storage: "" },
            start: function(pm) {
                const targetKag = (this && this.kag) ? this.kag : TYRANO.kag;
                if (targetKag && targetKag.ftag) {
                    targetKag.ftag.nextOrder();
                }
            }
        };

        // Hook tag stop_bgmovie
        kag.tag.stop_bgmovie = {
            pm: { time: 0 },
            start: function(pm) {
                const targetKag = (this && this.kag) ? this.kag : TYRANO.kag;
                if (targetKag && targetKag.ftag) {
                    targetKag.ftag.nextOrder();
                }
            }
        };

        // Hook tag playbgm
        const origTagPlaybgm = kag.tag.playbgm.start;
        kag.tag.playbgm.start = function(pm) {
            const targetKag = (this && this.kag) ? this.kag : TYRANO.kag;
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/bgm/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    targetKag.ft_play_stego_bgm(cdnUrl, pm.loop !== "false", pm.volume, pm.buf);
                    if (targetKag.layer) targetKag.layer.showEventLayer();
                    if (targetKag.ftag) targetKag.ftag.nextOrder();
                    return;
                }
            }
            return origTagPlaybgm.apply(this, arguments);
        };

        // Hook tag stopbgm
        if (kag.tag.stopbgm) {
            const origTagStopbgm = kag.tag.stopbgm.start;
            kag.tag.stopbgm.start = function(pm) {
                if ("bgm" === pm.target || !pm.target) {
                    if (activeBgmGainNode && activeBgmSource) {
                        const ctx = getAudioContext();
                        if (pm.fadeout === "true") {
                            const fadeTime = parseInt(pm.time || 2000) / 1000.0;
                            activeBgmGainNode.gain.setValueAtTime(activeBgmGainNode.gain.value, ctx.currentTime);
                            activeBgmGainNode.gain.linearRampToValueAtTime(0, ctx.currentTime + fadeTime);
                            setTimeout(() => {
                                if (activeBgmSource) {
                                    try { activeBgmSource.stop(); } catch(e) {}
                                    activeBgmSource = null;
                                }
                            }, parseInt(pm.time || 2000));
                        } else {
                            try { activeBgmSource.stop(); } catch(e) {}
                            activeBgmSource = null;
                        }
                    }
                    kag.tmp.is_bgm_play = false;
                } else if ("se" === pm.target) {
                    activeSeSources.forEach(s => {
                        try { s.stop(); } catch(e) {}
                    });
                    activeSeSources = [];
                    kag.tmp.is_se_play = false;
                    kag.tmp.is_vo_play = false;
                }
                return origTagStopbgm.apply(this, arguments);
            };
        }

        // Hook tag playse
        const origTagPlayse = kag.tag.playse.start;
        kag.tag.playse.start = function(pm) {
            const targetKag = (this && this.kag) ? this.kag : TYRANO.kag;
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/sound/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    targetKag.ft_play_stego_se(cdnUrl, pm.volume, pm.buf);
                    if (targetKag.layer) targetKag.layer.showEventLayer();
                    if (targetKag.ftag) targetKag.ftag.nextOrder();
                    return;
                }
            }
            return origTagPlayse.apply(this, arguments);
        };

        // Hook tag bgmopt / seopt (Slider volume)
        if (kag.tag.bgmopt) {
            const origBgmOpt = kag.tag.bgmopt.start;
            kag.tag.bgmopt.start = function(pm) {
                if (pm.volume && activeBgmGainNode) {
                    let normVol = parseFloat(pm.volume) / 100.0;
                    activeBgmGainNode.gain.value = Math.max(0, Math.min(1.0, normVol * MASTER_BGM_SCALE));
                }
                return origBgmOpt.apply(this, arguments);
            };
        }

        if (kag.tag.seopt) {
            const origSeOpt = kag.tag.seopt.start;
            kag.tag.seopt.start = function(pm) {
                if (pm.volume && kag.stat && kag.stat.map_se_volume) {
                    let buf = pm.buf || "0";
                    kag.stat.map_se_volume[buf] = parseInt(pm.volume);
                }
                return origSeOpt.apply(this, arguments);
            };
        }

        // Hook Save Thumbnail Capture (Khắc phục hoàn toàn lỗi thumbnail bị đen khi lưu game)
        if (kag.menu) {
            const origDisplaySave = kag.menu.displaySave;
            kag.menu.displaySave = function(cb) {
                const that = this;
                // Chụp trước snapshot màn hình sạch sẽ trước khi mở giao diện Save Menu
                that.snapSave(that.kag.stat.current_save_str || "", function() {
                    origDisplaySave.call(that, cb);
                });
            };

            kag.menu.snapSave = function(title, call_back, flag_thumb) {
                const that = this;
                const _current_order_index = that.kag.ftag.current_order_index - 1;
                const _stat = $.extend(true, {}, $.cloneObject(that.kag.stat));
                const three = that.kag.tmp.three;
                const three_save = { stat: three ? three.stat : {}, evt: three ? three.evt : {}, models: {} };
                if (three && three.models) {
                    for (let key in three.models) {
                        three_save.models[key] = three.models[key].toSaveObj();
                    }
                }

                if (flag_thumb === undefined) flag_thumb = that.kag.config.configThumbnail;

                const layer_obj = that.kag.layer.getLayeyHtml();
                const completeImage = function(img_code) {
                    const data = {
                        title: title || _stat.current_save_str || "",
                        stat: _stat,
                        three: three_save,
                        current_order_index: _current_order_index,
                        save_date: $.getNowDate() + "　" + $.getNowTime(),
                        img_data: img_code || "",
                        layer: layer_obj
                    };
                    that.snap = $.extend(true, {}, $.cloneObject(data));
                    if (typeof call_back === 'function') call_back();
                };

                if (flag_thumb === "false") {
                    completeImage("");
                    return;
                }

                if (that.kag.stat.save_img) {
                    const img = new Image();
                    img.crossOrigin = "anonymous";
                    img.src = _stat.save_img;
                    img.onload = function() {
                        const canvas = document.createElement("canvas");
                        canvas.width = parseInt(that.kag.config.scWidth) || 1280;
                        canvas.height = parseInt(that.kag.config.scHeight) || 720;
                        canvas.getContext("2d").drawImage(img, 0, 0);
                        completeImage(that.createImgCode(canvas));
                    };
                    img.onerror = function() { completeImage(""); };
                    return;
                }

                const baseElem = document.getElementById("tyrano_base");
                if (!baseElem || typeof html2canvas === 'undefined') {
                    completeImage("");
                    return;
                }

                const scW = parseInt(that.kag.config.scWidth) || 1280;
                const scH = parseInt(that.kag.config.scHeight) || 720;

                const menuLayer = baseElem.querySelector('.layer_menu');
                const prevMenuDisplay = menuLayer ? menuLayer.style.display : '';
                if (menuLayer) menuLayer.style.display = 'none';

                html2canvas(baseElem, {
                    width: scW,
                    height: scH,
                    windowWidth: scW,
                    windowHeight: scH,
                    useCORS: true,
                    allowTaint: true,
                    backgroundColor: '#000000',
                    scale: 0.35,
                    logging: false,
                    ignoreElements: function(element) {
                        return element.classList && (
                            element.classList.contains('layer_menu') ||
                            element.classList.contains('display_save') ||
                            element.classList.contains('display_load') ||
                            element.classList.contains('menu_save') ||
                            element.classList.contains('mobile-side-wing')
                        );
                    }
                }).then(function(canvas) {
                    if (menuLayer) menuLayer.style.display = prevMenuDisplay;
                    const img_code = that.createImgCode(canvas);
                    completeImage(img_code);
                }).catch(function(err) {
                    if (menuLayer) menuLayer.style.display = prevMenuDisplay;
                    console.warn("[CDN Interceptor] Lỗi chụp thumbnail save:", err);
                    completeImage("");
                });
            };
        }

        console.log("[CDN Interceptor] ✅ Đã gắn hoàn tất toàn bộ Hook (bg, image, chara, button, bgmovie, audio, bgmopt, save_thumbnail).");
        setupMobileAutoFit();
    }

    // Tự động căn giữa tuyệt đối và co giãn màn hình hoàn hảo trên mọi thiết bị
    function setupMobileAutoFit() {
        function autoFitScreen() {
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
            base.style.marginLeft = '0px';
            base.style.marginTop = '0px';
            base.style.margin = '0px';
        }

        // Ghi đè bộ điều chỉnh kích thước mặc định của TyranoScript để không bị lệch mép
        if (window.tyrano && window.tyrano.base) {
            window.tyrano.base.fitBaseSize = function() { autoFitScreen(); };
            window.tyrano.base._fitBaseSize = function() { autoFitScreen(); };
        }

        window.addEventListener('resize', autoFitScreen);
        window.addEventListener('orientationchange', () => {
            setTimeout(() => {
                window.scrollTo(0, 1);
                autoFitScreen();
            }, 300);
        });

        ['touchstart', 'touchend', 'click'].forEach(evt => {
            document.addEventListener(evt, () => {
                window.scrollTo(0, 1);
                autoFitScreen();
            }, { passive: true });
        });

        autoFitScreen();
        setTimeout(autoFitScreen, 100);
        setTimeout(autoFitScreen, 500);
        setTimeout(autoFitScreen, 1000);
    }

    // Khởi động
    loadManifest();
    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", () => {
            installTyranoHooks();
        });
    } else {
        installTyranoHooks();
    }
})();
