/**
 * CDN Interceptor Plugin cho TyranoScript Web
 * Tự động chuyển hướng toàn bộ hình ảnh, button, bgmovie và Stego Audio sang Google Blogger/Photos CDN
 * Tự động chuẩn hóa âm lượng (Volume Softening & Normalization) cho trải nghiệm êm ái
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

    // Master volume scales (BGM 12%, SE 15% - Âm lượng nhẹ nhàng, êm ái)
    const MASTER_BGM_SCALE = 0.12;
    const MASTER_SE_SCALE = 0.15;

    // Giảm âm lượng cho toàn bộ Video/Audio thẻ HTML (như bgmovie, title_bg.mp4)
    try {
        const origVolumeDesc = Object.getOwnPropertyDescriptor(HTMLMediaElement.prototype, 'volume');
        if (origVolumeDesc && origVolumeDesc.set) {
            Object.defineProperty(HTMLMediaElement.prototype, 'volume', {
                set: function(val) {
                    let scaled = Math.min(0.18, val * 0.15);
                    return origVolumeDesc.set.call(this, scaled);
                },
                get: function() {
                    return origVolumeDesc.get.call(this);
                }
            });
        }
    } catch(e) {}

    // Tự động kiểm tra và giảm âm lượng cho mọi thẻ media được chèn vào trang
    const mediaObserver = new MutationObserver(() => {
        document.querySelectorAll('video, audio').forEach(el => {
            if (el.volume > 0.20) {
                el.volume = 0.15;
            }
        });
    });
    mediaObserver.observe(document.documentElement, { childList: true, subtree: true });

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

    // Unlock Web Audio trên user interaction đầu tiên (click, touch)
    ['click', 'touchstart', 'keydown'].forEach(evt => {
        window.addEventListener(evt, () => {
            if (audioCtx && audioCtx.state === 'suspended') {
                audioCtx.resume();
            }
        }, { once: false, passive: true });
    });

    // 1. Tải bảng manifest định tuyến CDN
    async function loadManifest() {
        if (assetManifest) return assetManifest;
        try {
            const resp = await fetch('./data/asset_manifest.json');
            if (resp.ok) {
                assetManifest = await resp.json();
                console.log(`[CDN Interceptor] Đã nạp thành công ${Object.keys(assetManifest).length} CDN routes.`);
            }
        } catch (e) {
            console.warn('[CDN Interceptor] Không thể nạp asset_manifest.json:', e);
            assetManifest = {};
        }
        return assetManifest || {};
    }

    // 2. Chuyển đổi đường dẫn cục bộ -> URL Blogger CDN
    window.resolveCDNUrl = function(rawPath) {
        if (!assetManifest || !rawPath) return rawPath;
        let clean = rawPath.replace(/^[./]+/, '').replace(/\\/g, '/');
        if (assetManifest[clean]) {
            return assetManifest[clean];
        }
        for (const k in assetManifest) {
            if (clean.endsWith(k) || k.endsWith(clean)) {
                return assetManifest[k];
            }
        }
        return rawPath;
    };

    // 3. Giải mã Audio từ RGB24 Stego PNG
    window.decodeStegoAudioFromUrl = async function(pngUrl) {
        const resp = await fetch(pngUrl, { referrerPolicy: 'no-referrer' });
        const blob = await resp.blob();
        const bitmap = await createImageBitmap(blob);

        const canvas = document.createElement('canvas');
        canvas.width = bitmap.width;
        canvas.height = bitmap.height;
        const ctx = canvas.getContext('2d', { willReadFrequently: true });
        ctx.drawImage(bitmap, 0, 0);

        const imgData = ctx.getImageData(0, 0, bitmap.width, bitmap.height);
        const pixels = imgData.data;

        // Trích xuất 12 bytes header (Magic 4 bytes + Size 4 bytes + Pad 4 bytes)
        const headerBytes = new Uint8Array(12);
        let hIdx = 0;
        for (let i = 0; i < pixels.length && hIdx < 12; i += 4) {
            headerBytes[hIdx++] = pixels[i];
            if (hIdx < 12) headerBytes[hIdx++] = pixels[i + 1];
            if (hIdx < 12) headerBytes[hIdx++] = pixels[i + 2];
        }

        const magic = String.fromCharCode(...headerBytes.slice(0, 4));
        if (magic !== 'AUDO') {
            throw new Error(`Invalid Stego Magic: ${magic}`);
        }

        const dataView = new DataView(headerBytes.buffer, headerBytes.byteOffset, 12);
        const audioSize = dataView.getUint32(4, false);

        // Trích xuất audio bytes
        const audioBytes = new Uint8Array(audioSize);
        let aIdx = 0;
        let pOffset = 0;

        for (let i = 0; i < pixels.length && aIdx < audioSize; i += 4) {
            if (pOffset >= 12) {
                audioBytes[aIdx++] = pixels[i];
            }
            pOffset++;

            if (pOffset >= 12 && aIdx < audioSize) {
                audioBytes[aIdx++] = pixels[i + 1];
            }
            pOffset++;

            if (pOffset >= 12 && aIdx < audioSize) {
                audioBytes[aIdx++] = pixels[i + 2];
            }
            pOffset++;
        }

        const actx = getAudioContext();
        return await actx.decodeAudioData(audioBytes.buffer);
    };

    // 4. Hook vào TyranoScript Engine
    function installTyranoHooks() {
        if (!window.TYRANO || !TYRANO.kag || !TYRANO.kag.tag) {
            setTimeout(installTyranoHooks, 50);
            return;
        }

        const kag = TYRANO.kag;
        if (!kag.ftis && kag.ftag) {
            kag.ftis = kag.ftag;
        }

        console.log("[CDN Interceptor] Đang gắn Hook vào TyranoScript engine...");

        // Hook BGM Player
        kag.ft_play_stego_bgm = async function(cdnUrl, loop, rawVol) {
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
                
                // Chuẩn hóa volume về mức êm dịu (MASTER_BGM_SCALE = 0.12)
                let normVol = (rawVol > 1.0 ? rawVol / 100.0 : rawVol);
                gainNode.gain.value = Math.max(0, Math.min(1.0, normVol * MASTER_BGM_SCALE));

                source.connect(gainNode);
                gainNode.connect(ctx.destination);

                source.start(0);
                activeBgmSource = source;
                activeBgmGainNode = gainNode;
            } catch (err) {
                console.error("[CDN Interceptor] Lỗi phát Stego BGM:", err);
            }
        };

        // Hook Sound Effect Player
        kag.ft_play_stego_se = async function(cdnUrl, rawVol) {
            try {
                const ctx = getAudioContext();
                const audioBuffer = await window.decodeStegoAudioFromUrl(cdnUrl);
                const source = ctx.createBufferSource();
                const gainNode = ctx.createGain();
                
                source.buffer = audioBuffer;
                source.loop = false;
                
                // Chuẩn hóa volume về mức êm dịu (MASTER_SE_SCALE = 0.15)
                let normVol = (rawVol > 1.0 ? rawVol / 100.0 : rawVol);
                gainNode.gain.value = Math.max(0, Math.min(1.0, normVol * MASTER_SE_SCALE));

                source.connect(gainNode);
                gainNode.connect(ctx.destination);

                source.start(0);
                activeSeSources.push(source);
                source.onended = () => {
                    activeSeSources = activeSeSources.filter(s => s !== source);
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
                    targetKag.ft_play_stego_bgm(cdnUrl, pm.loop !== "false", parseFloat(pm.volume || 100));
                    if (targetKag.layer) targetKag.layer.showEventLayer();
                    if (targetKag.ftag) targetKag.ftag.nextOrder();
                    return;
                }
            }
            return origTagPlaybgm.apply(this, arguments);
        };

        // Hook tag playse
        const origTagPlayse = kag.tag.playse.start;
        kag.tag.playse.start = function(pm) {
            const targetKag = (this && this.kag) ? this.kag : TYRANO.kag;
            if (pm.storage) {
                let fullPath = pm.storage.includes("/") ? pm.storage : `data/sound/${pm.storage}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                
                if (cdnUrl !== fullPath && cdnUrl.startsWith("http")) {
                    targetKag.ft_play_stego_se(cdnUrl, parseFloat(pm.volume || 100));
                    if (targetKag.layer) targetKag.layer.showEventLayer();
                    if (targetKag.ftag) targetKag.ftag.nextOrder();
                    return;
                }
            }
            return origTagPlayse.apply(this, arguments);
        };

        console.log("[CDN Interceptor] ✅ Đã gắn hoàn tất toàn bộ Hook (bg, image, button, bgmovie, audio).");
        setupMobileAutoFit();
    }

    // Tự động căn chỉnh và kích hoạt Fullscreen trên Mobile / Safari iPhone
    function setupMobileAutoFit() {
        function autoFitScreen() {
            const base = document.getElementById('tyrano_base');
            if (!base) return;

            const winW = window.innerWidth || document.documentElement.clientWidth;
            const winH = window.innerHeight || document.documentElement.clientHeight;
            const gameW = 1280;
            const gameH = 720;

            const scale = Math.min(winW / gameW, winH / gameH);
            const offsetX = (winW - gameW * scale) / 2;
            const offsetY = (winH - gameH * scale) / 2;

            base.style.transformOrigin = '0 0';
            base.style.transform = `scale(${scale})`;
            base.style.left = `${Math.max(0, offsetX)}px`;
            base.style.top = `${Math.max(0, offsetY)}px`;
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
    }

    // Khởi động
    loadManifest();
    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", installTyranoHooks);
    } else {
        installTyranoHooks();
    }
})();
