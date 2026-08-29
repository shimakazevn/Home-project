/**
 * CDN Interceptor Plugin cho TyranoScript Web
 * Tự động chuyển hướng toàn bộ hình ảnh, character sprites, button, bgmovie và Stego Audio sang Google Blogger/Photos CDN
 * Tự động chuẩn hóa âm lượng (Volume Softening & Normalization) cho trải nghiệm êm ái
 * Bộ nhớ đệm AudioBuffer Cache siêu tốc (0ms độ trễ cho BGM & SFX & Voice)
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

    // Intercept toàn diện HTMLImageElement src để không một ảnh nào bị lọt
    try {
        const origImgSrcDesc = Object.getOwnPropertyDescriptor(HTMLImageElement.prototype, 'src');
        if (origImgSrcDesc && origImgSrcDesc.set) {
            Object.defineProperty(HTMLImageElement.prototype, 'src', {
                set: function(val) {
                    if (typeof val === 'string' && !val.startsWith('data:') && !val.startsWith('blob:')) {
                        let cdnUrl = window.resolveCDNUrl(val);
                        if (cdnUrl && cdnUrl !== val && cdnUrl.startsWith('http')) {
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
                    val = cdnUrl;
                }
            }
            return origSetAttribute.call(this, name, val);
        };
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
        if (!assetManifest || !rawPath || typeof rawPath !== 'string') return rawPath;
        if (rawPath.startsWith('https://lh3.googleusercontent.com')) return rawPath;

        let clean = rawPath.replace(/^[./]+/, '').replace(/\\/g, '/');
        if (clean.includes('/data/')) {
            clean = 'data/' + clean.split('/data/')[1];
        } else if (clean.startsWith('http') && clean.includes('data/')) {
            clean = 'data/' + clean.split('data/')[1];
        }

        if (assetManifest[clean]) {
            return assetManifest[clean];
        }
        for (const k in assetManifest) {
            if (clean.endsWith(k) || k.endsWith(clean)) {
                return assetManifest[k];
            }
        }
        let filename = clean.split('/').pop();
        if (filename && filename.includes('.')) {
            for (const k in assetManifest) {
                if (k.endsWith('/' + filename)) {
                    return assetManifest[k];
                }
            }
        }
        return rawPath;
    };

    // 3. Giải mã Audio từ RGB24 Stego PNG (Kèm AudioBuffer Cache)
    window.decodeStegoAudioFromUrl = async function(pngUrl) {
        if (audioBufferCache.has(pngUrl)) {
            return audioBufferCache.get(pngUrl);
        }

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
        let headerBytes = [];
        let p = 0;
        for (let i = 0; i < 4; i++) {
            headerBytes.push(pixels[p], pixels[p + 1], pixels[p + 2]);
            p += 4;
        }

        const magic = String.fromCharCode(headerBytes[0], headerBytes[1], headerBytes[2], headerBytes[3]);
        if (magic !== 'STEG') {
            throw new Error(`Invalid Stego Magic Header: ${magic}`);
        }

        const dataSize = (headerBytes[4]) | (headerBytes[5] << 8) | (headerBytes[6] << 16) | (headerBytes[7] << 24);
        const audioBufferData = new Uint8Array(dataSize);

        let byteIdx = 0;
        let totalPixels = bitmap.width * bitmap.height;

        for (let i = 4; i < totalPixels && byteIdx < dataSize; i++) {
            let px = i * 4;
            audioBufferData[byteIdx++] = pixels[px];
            if (byteIdx < dataSize) audioBufferData[byteIdx++] = pixels[px + 1];
            if (byteIdx < dataSize) audioBufferData[byteIdx++] = pixels[px + 2];
        }

        const audioCtx = getAudioContext();
        const decodedBuffer = await audioCtx.decodeAudioData(audioBufferData.buffer);
        audioBufferCache.set(pngUrl, decodedBuffer);
        return decodedBuffer;
    };

    // 4. Hook các tag của TyranoScript Engine
    function installTyranoHooks() {
        if (!window.TYRANO || !window.TYRANO.kag) {
            setTimeout(installTyranoHooks, 50);
            return;
        }

        const kag = window.TYRANO.kag;

        // Hook Background Music Player
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
                kag.tmp.is_bgm_play = true;
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
                kag.tmp.is_se_play = true;
                source.onended = () => {
                    activeSeSources = activeSeSources.filter(s => s !== source);
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
                    targetKag.ft_play_stego_bgm(cdnUrl, pm.loop !== "false", parseFloat(pm.volume || 100));
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
                    targetKag.ft_play_stego_se(cdnUrl, parseFloat(pm.volume || 100));
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

        console.log("[CDN Interceptor] ✅ Đã gắn hoàn tất toàn bộ Hook (bg, image, chara, button, bgmovie, audio, bgmopt).");
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
        document.addEventListener("DOMContentLoaded", installTyranoHooks);
    } else {
        installTyranoHooks();
    }
})();
