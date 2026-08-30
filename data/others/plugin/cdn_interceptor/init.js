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

    // ============================================================
    // HOME_AssetDB — IndexedDB Persistent Asset Cache
    // ============================================================
    const IDB_NAME = 'HOME_AssetDB';
    const IDB_VERSION = 2; // v2: xóa 'images' store (quá nặng ~8GB), chỉ giữ audio_raw + meta
    let assetDB = null;
    let assetDBReady = null; // Promise that resolves to db

    function openAssetDB() {
        if (assetDBReady) return assetDBReady;
        assetDBReady = new Promise((resolve) => {
            try {
                const req = indexedDB.open(IDB_NAME, IDB_VERSION);
                req.onupgradeneeded = (e) => {
                    const db = e.target.result;
                    // Migration v1 → v2: xóa 'images' store cũ (~8GB không cần thiết)
                    // Browser HTTP Cache xử lý ảnh tốt hơn, tự giới hạn dung lượng
                    // IDB chỉ dùng cho audio_raw (Stego decode) và meta (fingerprint)
                    if (db.objectStoreNames.contains('images')) {
                        db.deleteObjectStore('images');
                        console.log('[HOME_AssetDB] Đã xóa images store cũ (~8GB), giải phóng disk.');
                    }
                    if (!db.objectStoreNames.contains('audio_raw')) {
                        db.createObjectStore('audio_raw', { keyPath: 'key' });
                    }
                    if (!db.objectStoreNames.contains('meta')) {
                        db.createObjectStore('meta');
                    }
                };
                req.onsuccess = (e) => {
                    assetDB = e.target.result;
                    resolve(assetDB);
                };
                req.onerror = () => {
                    console.warn('[HOME_AssetDB] Không thể mở IndexedDB, fallback sang CDN.');
                    resolve(null);
                };
            } catch(e) {
                resolve(null);
            }
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

    async function clearAssetDB() {
        if (!assetDB) return;
        try {
            const stores = ['audio_raw', 'meta'];
            const tx = assetDB.transaction(stores, 'readwrite');
            stores.forEach(s => { if (assetDB.objectStoreNames.contains(s)) tx.objectStore(s).clear(); });
            await new Promise((r) => { tx.oncomplete = r; tx.onerror = r; });
            console.log('[HOME_AssetDB] Đã xóa cache cũ do phiên bản manifest thay đổi.');
        } catch(e) {}
    }

    // Tự động xóa cache khi developer push bản mới (kiểm tra qua fingerprint của manifest)
    async function checkAndInvalidateCache(manifest) {
        await openAssetDB();
        const fingerprint = String(Object.keys(manifest).length) + '_' + Object.keys(manifest).slice(0, 5).join(',');
        const stored = await idbMetaGet('manifest_fingerprint');
        if (stored && stored !== fingerprint) {
            await clearAssetDB();
        }
        await idbMetaPut('manifest_fingerprint', fingerprint);
    }

    // --- Fetch Concurrency Limiter (tối đa 6 request song song để không nghẹt mạng khi Cold Start) ---
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
            if (_fetchActive < FETCH_CONCURRENCY) {
                execute();
            } else {
                _fetchQueue.push(execute);
            }
        });
    }

    // ẢNH: KHÔNG lưu vào IDB — Browser HTTP Cache xử lý tốt hơn, không tốn hàng chục GB disk!
    // Chỉ cần `new Image()` là browser tự cache. IDB chỉ dành cho audio Stego.
    function preloadImage(url) {
        const img = new Image();
        img.crossOrigin = 'anonymous';
        img.src = url;
    }

    // Read-through cache: Stego Audio PNG → MP3 ArrayBuffer → lưu IDB (bỏ bước giải mã Deflate)
    async function getIDBAudioRaw(key, stegoUrl, decodeStegoCb) {
        // 1. RAM audioBufferCache (phiên hiện tại)
        const ramKey = stegoUrl.split('?')[0];
        if (audioBufferCache.has(ramKey)) return audioBufferCache.get(ramKey);
        // 2. IndexedDB — MP3 thô đã lưu, tránh tốn CPU Deflate
        const stored = await idbGet('audio_raw', key);
        if (stored && stored.mp3Bytes) {
            try {
                const ctx = getAudioContext();
                const ab = stored.mp3Bytes.slice(0);
                const decodedBuffer = await ctx.decodeAudioData(ab);
                applyAudioBufferFadeOut(decodedBuffer);
                audioBufferCache.set(ramKey, decodedBuffer);
                return decodedBuffer;
            } catch(e) { /* fall through to re-decode */ }
        }
        // 3. Decode Stego PNG từ CDN → lưu IDB
        const decodedBuffer = await decodeStegoCb(stegoUrl);
        // Sau khi decode xong, lưu audio bytes thô vào IDB nếu có thể
        // (Lưu ý: AudioBuffer không thể serialize, ta encode lại sang WAV bytes tạm thời)
        // Để đơn giản: caching qua RAM audioBufferCache là đủ sau khi decode 1 lần
        return decodedBuffer;
    }
    // ============================================================
    // End HOME_AssetDB
    // ============================================================

    // Chuẩn hóa âm lượng tự nhiên, rõ nét (BGM 90%, SE 100%)
    const MASTER_BGM_SCALE = 0.90;
    const MASTER_SE_SCALE = 1.00;

    // Intercept toàn diện HTMLImageElement src để không một ảnh nào bị lọt và hỗ trợ CORS cho Save Thumbnail
    try {
        const origImgSrcDesc = Object.getOwnPropertyDescriptor(HTMLImageElement.prototype, 'src');
        if (origImgSrcDesc && origImgSrcDesc.set) {
            Object.defineProperty(HTMLImageElement.prototype, 'src', {
                set: function(val) {
                    if (typeof val === 'string' && !val.startsWith('data:') && !val.startsWith('blob:')) {
                        let cdnUrl = window.resolveCDNUrl(val);
                        if (cdnUrl && cdnUrl !== val && cdnUrl.startsWith('http')) {
                            this.crossOrigin = 'anonymous';
                            val = cdnUrl;
                        }
                    }
                    return origImgSrcDesc.set.call(this, val);
                },
                get: function() {
                    return origImgSrcDesc.get.call(this);
                }
            });
        }

        const origSetAttribute = HTMLImageElement.prototype.setAttribute;
        HTMLImageElement.prototype.setAttribute = function(name, val) {
            if (name === 'src' && typeof val === 'string' && !val.startsWith('data:') && !val.startsWith('blob:')) {
                let cdnUrl = window.resolveCDNUrl(val);
                if (cdnUrl && cdnUrl !== val && cdnUrl.startsWith('http')) {
                    this.crossOrigin = 'anonymous';
                    val = cdnUrl;
                }
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
        // Mở IndexedDB song song với fetch manifest
        openAssetDB();
        try {
            const resp = await fetch('./data/asset_manifest.json');
            if (resp.ok) {
                assetManifest = await resp.json();
                console.log(`[CDN Interceptor] Đã nạp thành công ${Object.keys(assetManifest).length} CDN routes.`);
                // Kiểm tra và xóa cache cũ nếu manifest thay đổi
                checkAndInvalidateCache(assetManifest).then(() => {
                    preloadCoreAssets();
                });
            }
        } catch (e) {
            console.warn('[CDN Interceptor] Không thể nạp asset_manifest.json:', e);
            assetManifest = {};
        }
        return assetManifest || {};
    }

    // Tải trước toàn bộ tài nguyên Vòng tròn Action và Lịch trình hàng ngày (Daily Action Wheel)
    function preloadCoreAssets() {
        if (!assetManifest) return;

        // Tier 1: Toàn bộ Scene Vòng lặp Hàng ngày (Action Wheel, Bản đồ Thành phố / Dạo phố, Buổi tối, Thâm nhập, Bữa ăn)
        const tier1Patterns = [
            'workring_', 'frame_', 'icon_', 'd_ev', 'r_up', 'r_down', 'shinnyu_', 'sin_', 'bussyoku_', 'haiti_',
            'job_', 'mesi_', 'soto_', 'jisui_', 'konbini_', 'map_', 'sansaku_', 'spot_', 'area_', 'btn_map_',
            'yoru_', 'sunday_', 'komyu_', 'date_', 'purezento_',
            'back_room', 'back_byouin', 'back_massajiten', 'back_rihure', 'manual',
            'back_hankagai', 'back_famiresu', 'back_denkigai', 'back_ofis', 'back_kouen', 'back_eki', 'back_syop',
            'jisitu.mp3', 'nitijyou', 'job_daiseikou', 'job_seikou', 'job_sippai', 'money.mp3',
            'btn_', 'button_', 'base.png', 'gauge_', 'month_', 'week_', 'tension_', 'rank_'
        ];

        const tier1List = [];
        const tier2List = [];

        for (const [key, url] of Object.entries(assetManifest)) {
            let isTier1 = false;
            for (const pat of tier1Patterns) {
                if (key.includes(pat)) {
                    tier1List.push({ key, url });
                    isTier1 = true;
                    break;
                }
            }
            if (!isTier1 && (key.includes('/fgimage/') || key.includes('/bgimage/'))) {
                tier2List.push({ key, url });
            }
        }

        console.log(`[CDN Preloader] Xếp hàng nạp trước ${tier1List.length} Tier-1 + ${tier2List.length} Tier-2 tài nguyên (tối đa 6 fetch song song, không lưu IDB)...`);

        // Gộp Tier-1 và Tier-2 vào 1 hàng đợi, Tier-1 ưu tiên trước
        // Ảnh dùng new Image() → Browser HTTP Cache tự động, không tốn disk
        const allItems = [...tier1List, ...tier2List];
        let idx = 0;
        const BATCH = 8;

        const loadNextBatch = () => {
            const batch = allItems.slice(idx, idx + BATCH);
            idx += BATCH;
            batch.forEach(item => {
                if (item.url.includes('.png') || item.url.includes('.jpg') || item.url.includes('.gif') || item.url.includes('.webp') || item.key.includes('/fgimage/') || item.key.includes('/bgimage/')) {
                    preloadImage(item.url);
                } else if (item.url.endsWith('.mp3') || item.key.includes('/sound/') || item.key.includes('/bgm/')) {
                    fetchAudioBuffer(item.key).catch(() => {});
                }
            });
            if (idx < allItems.length) {
                if ('requestIdleCallback' in window) {
                    window.requestIdleCallback(loadNextBatch, { timeout: 2000 });
                } else {
                    setTimeout(loadNextBatch, 200);
                }
            }
        };

        // Trì hoãn 2s sau khi load xong để game khởi động mượt
        setTimeout(loadNextBatch, 2000);
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
                const resp = await fetch(pngUrl, { referrerPolicy: 'no-referrer' });
                const arrayBuffer = await resp.arrayBuffer();
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
        injectMobileSideWings();
    }

    // ══════════════════════════════════════════════════════════════════════════
    // 5. MOBILE SIDE TOUCH CONTROLLER (TRÍCH XUẤT NÚT SANG 2 BÊN SƯỜN MÀN HÌNH)
    // ══════════════════════════════════════════════════════════════════════════
    function injectMobileSideWings() {
        if (document.getElementById('mobile_left_wing')) return;

        const isTouch = ('ontouchstart' in window) || (navigator.maxTouchPoints > 0) || window.matchMedia('(pointer: coarse)').matches;
        const isMobileDevice = /Android|iPhone|iPad|iPod|Mobile/i.test(navigator.userAgent) || isTouch;

        if (!isMobileDevice) {
            console.log("[Mobile Controller] Thiết bị hiện tại là PC Desktop. Giữ nguyên giao diện chuẩn.");
            return;
        }

        console.log("[Mobile Controller] Đã phát hiện thiết bị di động / cảm ứng! Đang kích hoạt bộ nút 2 bên sườn màn hình...");

        // Haptic feedback helper
        const triggerHaptic = () => {
            try {
                if (navigator.vibrate) navigator.vibrate(12);
            } catch(e) {}
        };

        // 1. Cánh trái: Hệ thống Save / Load / Quản lý tệp
        const leftWing = document.createElement('div');
        leftWing.id = 'mobile_left_wing';
        leftWing.className = 'mobile-side-wing';
        leftWing.innerHTML = `
            <button class="mobile-wing-btn" id="btn_m_qsave" title="Lưu nhanh (Quick Save)">
                <span class="btn-icon">💾</span>
                <span class="btn-label">L.Nhanh</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_qload" title="Nạp nhanh (Quick Load)">
                <span class="btn-icon">📂</span>
                <span class="btn-label">T.Nhanh</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_save" title="Bảng lưu game">
                <span class="btn-icon">📋</span>
                <span class="btn-label">Lưu/Nạp</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_export" title="Tải file .sav về máy">
                <span class="btn-icon">📥</span>
                <span class="btn-label">Tải .sav</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_import" title="Nạp file .sav từ máy">
                <span class="btn-icon">📤</span>
                <span class="btn-label">Nạp .sav</span>
            </button>
            <button class="mobile-wing-toggle" id="toggle_left_wing" title="Thu gọn / Mở rộng">
                <span>◀</span>
            </button>
        `;

        // 2. Cánh phải: Hệ thống Điều khiển kịch bản & Cài đặt
        const rightWing = document.createElement('div');
        rightWing.id = 'mobile_right_wing';
        rightWing.className = 'mobile-side-wing';
        rightWing.innerHTML = `
            <button class="mobile-wing-btn" id="btn_m_skip" title="Bật/Tắt Tua nhanh (Skip)">
                <span class="btn-icon">⏩</span>
                <span class="btn-label">Tua</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_auto" title="Bật/Tắt Tự đọc thoại (Auto)">
                <span class="btn-icon">▶️</span>
                <span class="btn-label">Tự đọc</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_log" title="Xem lại lịch sử thoại (Backlog)">
                <span class="btn-icon">📜</span>
                <span class="btn-label">Nhật ký</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_window" title="Ẩn khung lời thoại">
                <span class="btn-icon">👁️</span>
                <span class="btn-label">Ẩn chữ</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_config" title="Cài đặt âm lượng & tốc độ">
                <span class="btn-icon">⚙️</span>
                <span class="btn-label">Cài đặt</span>
            </button>
            <button class="mobile-wing-btn" id="btn_m_title" title="Về màn hình Title">
                <span class="btn-icon">🏠</span>
                <span class="btn-label">Title</span>
            </button>
            <button class="mobile-wing-toggle" id="toggle_right_wing" title="Thu gọn / Mở rộng">
                <span>▶</span>
            </button>
        `;

        document.body.appendChild(leftWing);
        document.body.appendChild(rightWing);

        // 3. Gắn sự kiện điều khiển
        // Cánh trái
        document.getElementById('btn_m_qsave')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                window.TYRANO.kag.menu.setQuickSave();
            }
        });

        document.getElementById('btn_m_qload')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                window.TYRANO.kag.menu.loadQuickSave();
            }
        });

        document.getElementById('btn_m_save')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                window.TYRANO.kag.menu.displaySave();
            }
        });

        document.getElementById('btn_m_export')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.exportCurrentSaveToFile) window.exportCurrentSaveToFile();
        });

        document.getElementById('btn_m_import')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.importSaveFromFile) window.importSaveFromFile();
        });

        // Cánh phải
        document.getElementById('btn_m_skip')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag) {
                if (window.TYRANO.kag.stat.is_skip) {
                    window.TYRANO.kag.ftag.startTag("skipstop", {});
                } else {
                    window.TYRANO.kag.ftag.startTag("skipstart", {});
                }
            }
        });

        document.getElementById('btn_m_auto')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag) {
                if (window.TYRANO.kag.stat.is_auto) {
                    window.TYRANO.kag.ftag.startTag("autostop", { next: "false" });
                } else {
                    window.TYRANO.kag.ftag.startTag("autostart", {});
                }
            }
        });

        document.getElementById('btn_m_log')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                window.TYRANO.kag.menu.displayLog();
            }
        });

        document.getElementById('btn_m_window')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.layer) {
                window.TYRANO.kag.layer.hideMessageLayers();
            }
        });

        document.getElementById('btn_m_config')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
                window.TYRANO.kag.ftag.startTag("sleepgame", { storage: "../others/plugin/theme_kopanda_09_2/config.ks", next: false });
            }
        });

        document.getElementById('btn_m_title')?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            if (window.TYRANO && window.TYRANO.kag) {
                window.TYRANO.kag.backTitle();
            }
        });

        // Toggle thu gọn/mở rộng cánh
        const toggleLeft = document.getElementById('toggle_left_wing');
        toggleLeft?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            leftWing.classList.toggle('collapsed-left');
            toggleLeft.innerHTML = leftWing.classList.contains('collapsed-left') ? '<span>▶</span>' : '<span>◀</span>';
        });

        const toggleRight = document.getElementById('toggle_right_wing');
        toggleRight?.addEventListener('click', (e) => {
            e.stopPropagation();
            triggerHaptic();
            rightWing.classList.toggle('collapsed-right');
            toggleRight.innerHTML = rightWing.classList.contains('collapsed-right') ? '<span>◀</span>' : '<span>▶</span>';
        });

        // 4. Đồng bộ trạng thái Auto / Skip hiển thị đèn báo theo thời gian thực
        setInterval(() => {
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat) {
                const isSkip = !!window.TYRANO.kag.stat.is_skip;
                const isAuto = !!window.TYRANO.kag.stat.is_auto;
                
                const btnSkip = document.getElementById('btn_m_skip');
                if (btnSkip) {
                    btnSkip.classList.toggle('active-skip', isSkip);
                }
                const btnAuto = document.getElementById('btn_m_auto');
                if (btnAuto) {
                    btnAuto.classList.toggle('active-auto', isAuto);
                }
            }
        }, 250);
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
            injectMobileSideWings();
        });
    } else {
        installTyranoHooks();
        injectMobileSideWings();
    }
})();
