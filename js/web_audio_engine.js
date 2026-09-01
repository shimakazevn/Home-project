/**
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
        if (!audioCtx || audioCtx.state === 'closed') {
            const AudioContextClass = window.AudioContext || window.webkitAudioContext;
            if (AudioContextClass) {
                audioCtx = new AudioContextClass();
                if (window.Howler) Howler.ctx = audioCtx;
            }
        }
        return audioCtx;
    }

    function unlockAudioContext() {
        const ctx = getAudioContext();
        if (ctx && ctx.state === 'suspended') {
            ctx.resume().then(() => {
                isUnlocked = true;
            }).catch(() => {});
        } else if (ctx && ctx.state === 'running') {
            isUnlocked = true;
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
            if (ctx.state === 'suspended') {
                try { ctx.resume().catch(() => {}); } catch(e) {}
            }

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
            if (ctx.state === 'suspended') {
                try { ctx.resume().catch(() => {}); } catch(e) {}
            }

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

    // ─── Decode Binary / Video Blob from URL ──────────────────────────────────
    const blobUrlCache = new Map();
    async function loadBinaryBlobUrl(url, mimeType = 'video/mp4') {
        if (!url) return null;
        if (blobUrlCache.has(url)) return blobUrlCache.get(url);

        try {
            const resp = await fetch(url);
            const arrayBuf = await resp.arrayBuffer();
            const u8 = new Uint8Array(arrayBuf);
            let rawBytes;
            // Check if PNG stego signature (0x89 0x50 0x4E 0x47)
            if (u8[0] === 0x89 && u8[1] === 0x50 && u8[2] === 0x4E && u8[3] === 0x47) {
                rawBytes = await extractStegoAudioBytes(arrayBuf);
            } else {
                rawBytes = arrayBuf;
            }
            const blob = new Blob([rawBytes], { type: mimeType });
            const blobUrl = URL.createObjectURL(blob);
            blobUrlCache.set(url, blobUrl);
            return blobUrl;
        } catch(err) {
            console.error('[Web Audio Engine] Lỗi giải mã Binary/Video Blob:', err);
            return null;
        }
    }

    // Expose toàn cục
    window.HOME_AudioEngine = {
        getAudioContext,
        unlockAudioContext,
        decodeAudioFromUrl,
        extractStegoBytes: extractStegoAudioBytes,
        loadBinaryBlobUrl,
        playBGM,
        stopBGM,
        playSE,
        setBgmVolume: (vol) => {
            const parsed = parseFloat(vol);
            const v = isNaN(parsed) ? 80 : Math.max(0, Math.min(100, parsed));
            if (activeBgmGainNode) {
                const norm = v / 100.0;
                activeBgmGainNode.gain.value = norm * MASTER_BGM_SCALE;
            }
        },
        setSeVolume: (buf, vol) => {
            const bufStr = String(buf || "0");
            const parsed = parseFloat(vol);
            const v = isNaN(parsed) ? 80 : Math.max(0, Math.min(100, parsed));
            if (activeSeMap.has(bufStr)) {
                const norm = v / 100.0;
                activeSeMap.get(bufStr).gainNode.gain.value = norm * MASTER_SE_SCALE;
            }
        }
    };

    console.log('[Web Audio Engine] ✅ Đã khởi tạo hoàn tất Web Audio & Stego Engine.');
})();
