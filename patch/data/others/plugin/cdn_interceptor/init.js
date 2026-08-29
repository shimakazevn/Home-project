// ══════════════════════════════════════════════════════════════════════════════
// HOME - TyranoScript Web CDN Interceptor & Stego Audio Engine
// Tự động định tuyến toàn bộ hình ảnh và âm thanh sang Blogger CDN
// ══════════════════════════════════════════════════════════════════════════════

(function() {
    console.log("[CDN Interceptor] Đang khởi tạo hệ thống CDN Interceptor...");

    // 1. Tải Asset Manifest JSON
    window.ASSET_MANIFEST = {};
    window.ASSET_MANIFEST_LOADED = false;

    const manifestUrl = "./data/asset_manifest.json";
    fetch(manifestUrl)
        .then(res => {
            if (!res.ok) throw new Error("Không thể tải asset_manifest.json");
            return res.json();
        })
        .then(data => {
            window.ASSET_MANIFEST = data;
            window.ASSET_MANIFEST_LOADED = true;
            console.log(`[CDN Interceptor] ✅ Đã nạp thành công ${Object.keys(data).length} mục định tuyến CDN.`);
        })
        .catch(err => {
            console.warn(`[CDN Interceptor] ⚠️ asset_manifest.json chưa có sẵn hoặc lỗi:`, err);
        });

    // Hàm tra cứu URL CDN
    window.resolveCDNUrl = function(path) {
        if (!path) return path;
        // Chuẩn hóa đường dẫn (bỏ ./ ở đầu nếu có)
        let cleanPath = path.replace(/^\.\//, "").replace(/\\/g, "/");
        if (window.ASSET_MANIFEST && window.ASSET_MANIFEST[cleanPath]) {
            return window.ASSET_MANIFEST[cleanPath];
        }
        return path;
    };

    // 2. Audio Steganography Cache & Decoder
    const audioBufferCache = new Map();
    let webAudioCtx = null;

    function getAudioContext() {
        if (!webAudioCtx) {
            webAudioCtx = new (window.AudioContext || window.webkitAudioContext)();
        }
        if (webAudioCtx.state === 'suspended') {
            webAudioCtx.resume();
        }
        return webAudioCtx;
    }

    // Giải mã PNG Stego thành AudioBuffer
    window.decodeStegoAudioFromUrl = async function(pngUrl) {
        if (audioBufferCache.has(pngUrl)) {
            return audioBufferCache.get(pngUrl);
        }

        const ctx = getAudioContext();
        const resp = await fetch(pngUrl);
        const blob = await resp.blob();
        const bitmap = await createImageBitmap(blob);

        const canvas = new OffscreenCanvas(bitmap.width, bitmap.height);
        const c2d = canvas.getContext('2d');
        c2d.drawImage(bitmap, 0, 0);

        const imgData = c2d.getImageData(0, 0, bitmap.width, bitmap.height).data;
        
        // 4 bytes data_len tại Pixel 1 và 2 (R1, G1, B1, R2 trong mảng RGB / RGBA phẳng)
        const sz0 = imgData[5];
        const sz1 = imgData[6];
        const sz2 = imgData[8];
        const sz3 = imgData[9];
        const dataLen = (sz0 << 24) | (sz1 << 16) | (sz2 << 8) | sz3;

        const rawBytes = new Uint8Array(dataLen);
        let byteIdx = 0;
        for (let i = 16; i < imgData.length && byteIdx < dataLen; i += 4) {
            rawBytes[byteIdx++] = imgData[i];
            if (byteIdx < dataLen) rawBytes[byteIdx++] = imgData[i + 1];
            if (byteIdx < dataLen) rawBytes[byteIdx++] = imgData[i + 2];
        }

        const audioBuffer = await ctx.decodeAudioData(rawBytes.buffer);
        audioBufferCache.set(pngUrl, audioBuffer);
        return audioBuffer;
    };

    // Preload Audio ở chế độ nền
    window.preloadStegoAudio = function(audioRelPath) {
        const cdnUrl = window.resolveCDNUrl(audioRelPath);
        if (cdnUrl && cdnUrl.startsWith("http")) {
            window.decodeStegoAudioFromUrl(cdnUrl).catch(() => {});
        }
    };

    // 3. Hook vào TyranoScript Engine khi sẵn sàng
    function installTyranoHooks() {
        if (!window.TYRANO || !TYRANO.kag) {
            setTimeout(installTyranoHooks, 100);
            return;
        }

        const kag = TYRANO.kag;
        console.log("[CDN Interceptor] Đang gắn Hook vào TyranoScript KAG Engine...");

        // ── A. Hook Hình ảnh (Background, Image, Chara) ────────────────────────
        const origTagBg = kag.tag.bg.start;
        kag.tag.bg.start = function(pm) {
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/bgimage/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    pm.storage = cdnUrl;
                }
            }
            return origTagBg.apply(this, arguments);
        };

        const origTagImage = kag.tag.image.start;
        kag.tag.image.start = function(pm) {
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/fgimage/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    pm.storage = cdnUrl;
                }
            }
            return origTagImage.apply(this, arguments);
        };

        // ── B. Hook Âm thanh (PlayBGM, PlaySE) ──────────────────────────────────
        let activeBgmSource = null;
        let activeBgmGainNode = null;

        // Custom PlayBGM qua Web Audio API cho file Stego PNG
        kag.ft_play_stego_bgm = async function(cdnUrl, loop = true, volume = 1.0) {
            try {
                const ctx = getAudioContext();
                if (activeBgmSource) {
                    try { activeBgmSource.stop(); } catch(e) {}
                    activeBgmSource = null;
                }

                const audioBuffer = await window.decodeStegoAudioFromUrl(cdnUrl);
                const source = ctx.createBufferSource();
                const gainNode = ctx.createGain();
                
                source.buffer = audioBuffer;
                source.loop = loop;
                gainNode.gain.value = volume;

                source.connect(gainNode);
                gainNode.connect(ctx.destination);

                source.start(0);
                activeBgmSource = source;
                activeBgmGainNode = gainNode;
            } catch (err) {
                console.error("[CDN Interceptor] Lỗi phát Stego BGM:", err);
            }
        };

        const origTagPlaybgm = kag.tag.playbgm.start;
        kag.tag.playbgm.start = function(pm) {
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/bgm/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                
                // Nếu URL là link Blogger CDN ngoài
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    kag.ft_play_stego_bgm(cdnUrl, pm.loop !== "false", parseFloat(pm.volume || 1.0));
                    kag.ftis.nextOrder();
                    return;
                }
            }
            return origTagPlaybgm.apply(this, arguments);
        };

        const origTagPlayse = kag.tag.playse.start;
        kag.tag.playse.start = function(pm) {
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/sound/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    kag.ft_play_stego_bgm(cdnUrl, false, parseFloat(pm.volume || 1.0));
                    kag.ftis.nextOrder();
                    return;
                }
            }
            return origTagPlayse.apply(this, arguments);
        };

        console.log("[CDN Interceptor] ✅ Đã gắn hoàn tất toàn bộ Hook.");
    }

    // Khởi động khi DOM ready
    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", installTyranoHooks);
    } else {
        installTyranoHooks();
    }
})();
