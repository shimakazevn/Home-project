/**
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
        let clean = p.replace(/^\.\//, '').replace(/^\//, '').split('?')[0];
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
        let url = normalizedMap.get(norm) || normalizedMap.get(norm.split('/').pop()) || filePath;

        // Tối ưu hóa WebP (/s0-rw/) cho toàn bộ hình ảnh thị giác (bỏ qua file audio stego)
        const isAudio = norm.startsWith('data/sound') || norm.startsWith('data/bgm') || norm.startsWith('data/video');
        if (!isAudio && typeof url === 'string' && url.startsWith('http')) {
            if (url.includes('/s0/')) url = url.replace('/s0/', '/s0-rw/');
            else if (url.includes('/s1600/')) url = url.replace('/s1600/', '/s1600-rw/');
        }

        return url;
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

        // Hook Preloader & Resource loading status
        if (kag.preload) {
            const origPreload = kag.preload;
            kag.preload = function(src, cb) {
                if (typeof src === 'string') {
                    const cdnUrl = window.resolveCDNUrl(src);
                    if (cdnUrl && cdnUrl.startsWith('http')) src = cdnUrl;
                    const fileName = src.split('/').pop().split('?')[0];
                    if (window.showLoadingStatus && fileName) {
                        window.showLoadingStatus('Đang nạp: ' + fileName, 1500);
                    }
                }
                return origPreload.call(this, src, cb);
            };
        }

        // Hook scenario loading
        if (kag.loadScenario) {
            const origLoadScenario = kag.loadScenario;
            kag.loadScenario = function(file_name, call_back) {
                if (window.showLoadingStatus && file_name) {
                    window.showLoadingStatus('Đang đọc kịch bản: ' + file_name, 2000);
                }
                return origLoadScenario.call(this, file_name, call_back);
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
