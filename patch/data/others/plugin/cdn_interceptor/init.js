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

    // Chuẩn hóa âm lượng tự nhiên, rõ nét (BGM 90%, SE 100%)
    const MASTER_BGM_SCALE = 0.90;
    const MASTER_SE_SCALE = 1.00;

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
                if (ctx.state === 'suspended') {
                    ctx.resume();
                }
                const audioBuffer = await window.decodeStegoAudioFromUrl(cdnUrl);
                const source = ctx.createBufferSource();
                const gainNode = ctx.createGain();
                
                source.buffer = audioBuffer;
                source.loop = false;
                
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
