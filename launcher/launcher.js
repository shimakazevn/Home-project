/**
 * HOME Visual Novel - Smart Auto-Downloader, Auto-Patcher & Auto-Updater Engine
 * Repository: https://github.com/shimakazevn/Home-project
 */

const DEFAULT_MANIFEST_URL = "https://raw.githubusercontent.com/shimakazevn/Home-project/main/release_manifest.json";
const DB_NAME = "HOME_VN_GAME_STORAGE";
const STORE_NAME = "game_files";

// UI Elements
const statusText = document.getElementById("status-text");
const statusPercent = document.getElementById("status-percent");
const progressBar = document.getElementById("progress-bar");
const statDownloaded = document.getElementById("stat-downloaded");
const statSpeed = document.getElementById("stat-speed");
const statEta = document.getElementById("stat-eta");
const gameStatusLabel = document.getElementById("game-status-label");
const localVersionEl = document.getElementById("local-version");
const remoteVersionEl = document.getElementById("remote-version");
const badgeVersion = document.getElementById("badge-version");
const btnAction = document.getElementById("btn-action");
const btnIcon = document.getElementById("btn-icon");
const btnText = document.getElementById("btn-text");
const btnSettings = document.getElementById("btn-settings");
const settingsModal = document.getElementById("settings-modal");
const inputManifestUrl = document.getElementById("input-manifest-url");
const inputGamePassword = document.getElementById("input-game-password");
const btnSaveSettings = document.getElementById("btn-save-settings");
const btnCloseSettings = document.getElementById("btn-close-settings");
const rowPatchNotes = document.getElementById("row-patch-notes");
const patchNotesText = document.getElementById("patch-notes-text");

let currentManifest = null;
let db = null;

// Khởi tạo cơ sở dữ liệu IndexedDB cho tài nguyên game
async function initDB() {
    return new Promise((resolve, reject) => {
        const req = indexedDB.open(DB_NAME, 1);
        req.onupgradeneeded = (e) => {
            const d = e.target.result;
            if (!d.objectStoreNames.contains(STORE_NAME)) {
                d.createObjectStore(STORE_NAME);
            }
        };
        req.onsuccess = (e) => {
            db = e.target.result;
            resolve(db);
        };
        req.onerror = (e) => reject(e);
    });
}

// Lưu 1 file vào kho lưu trữ cục bộ
async function saveFileToDB(path, blob) {
    return new Promise((resolve, reject) => {
        const tx = db.transaction([STORE_NAME], "readwrite");
        const store = tx.objectStore(STORE_NAME);
        store.put(blob, path.replace(/\\/g, '/'));
        tx.oncomplete = () => resolve();
        tx.onerror = (e) => reject(e);
    });
}

// Kiểm tra xem đã có game gốc trong máy chưa
async function isGameInstalledLocally() {
    const isInstalled = localStorage.getItem("HOME_GAME_INSTALLED");
    return isInstalled === "true";
}

// Định dạng dung lượng
function formatBytes(bytes) {
    if (bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
}

// Định dạng thời gian ETA
function formatTime(seconds) {
    if (!isFinite(seconds) || seconds < 0) return "--:--";
    const mins = Math.floor(seconds / 60);
    const secs = Math.floor(seconds % 60);
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
}

// Tải một file từ URL với bộ theo dõi tiến trình (Progress Tracker)
async function fetchWithProgress(url, label, totalTracker) {
    statusText.textContent = label;
    const res = await fetch(url);
    if (!res.ok) throw new Error(`Lỗi tải từ máy chủ (${res.status}): ${url}`);

    const contentLength = +res.headers.get('Content-Length') || 0;
    const reader = res.body.getReader();
    let received = 0;
    let chunks = [];
    let lastTime = Date.now();
    let lastReceived = 0;

    while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        chunks.push(value);
        received += value.length;
        if (totalTracker) totalTracker.downloaded += value.length;

        const now = Date.now();
        const diff = (now - lastTime) / 1000;
        if (diff >= 0.3) {
            const speed = (received - lastReceived) / diff; // Bytes/sec
            lastReceived = received;
            lastTime = now;

            const totalExpected = totalTracker ? totalTracker.total : contentLength;
            const currentDone = totalTracker ? totalTracker.downloaded : received;
            const percent = totalExpected > 0 ? Math.min(100, Math.floor((currentDone / totalExpected) * 100)) : 0;

            statusPercent.textContent = `${percent}%`;
            progressBar.style.width = `${percent}%`;
            statDownloaded.textContent = `${formatBytes(currentDone)} / ${formatBytes(totalExpected)}`;
            statSpeed.textContent = `${formatBytes(speed)}/s`;

            const remBytes = totalExpected - currentDone;
            const etaSecs = speed > 0 ? remBytes / speed : 0;
            statEta.textContent = `ETA: ${formatTime(etaSecs)}`;
        }
    }

    return new Blob(chunks);
}

// Giải nén gói zip hoặc asar và lưu trực tiếp vào kho lưu trữ
async function unpackFileToStorage(fileBlob, fileName, labelPrefix) {
    statusText.textContent = `${labelPrefix}: Đang nạp dữ liệu...`;

    // 1. Nếu là file app.asar -> Dùng AsarExtractor trích xuất trực tiếp
    if (fileName.toLowerCase().endsWith(".asar")) {
        statusText.textContent = `${labelPrefix}: Đang trích xuất dữ liệu ASAR...`;
        const extracted = await AsarExtractor.extractAsarBlob(fileBlob, (current, total, path) => {
            const pct = Math.floor((current / total) * 100);
            statusText.textContent = `${labelPrefix}: Đang bung tệp ${current}/${total} (${pct}%)...`;
            progressBar.style.width = `${pct}%`;
            statusPercent.textContent = `${pct}%`;
        });

        for (const [path, blob] of Object.entries(extracted)) {
            await saveFileToDB(path, blob);
        }
        return;
    }

    // 2. Nếu là file Zip -> Dùng JSZip giải nén
    const jszip = new JSZip();
    const zipData = await jszip.loadAsync(fileBlob);
    const fileKeys = Object.keys(zipData.files);
    const totalFiles = fileKeys.length;

    for (let i = 0; i < totalFiles; i++) {
        const fName = fileKeys[i];
        const fileObj = zipData.files[fName];
        if (!fileObj.dir) {
            const fBlob = await fileObj.async("blob");
            
            // Nếu bên trong zip có chứa file app.asar -> tiếp tục bung asar ra
            if (fName.toLowerCase().endsWith("app.asar")) {
                await unpackFileToStorage(fBlob, fName, `${labelPrefix} (Bung ASAR)`);
            } else {
                await saveFileToDB(fName, fBlob);
            }
        }
        if (i % 50 === 0 || i === totalFiles - 1) {
            const pct = Math.floor(((i + 1) / totalFiles) * 100);
            statusText.textContent = `${labelPrefix}: Đang cài đặt tệp ${i + 1}/${totalFiles} (${pct}%)...`;
            progressBar.style.width = `${pct}%`;
            statusPercent.textContent = `${pct}%`;
        }
    }
}

// QUY TRÌNH 1: TẢI GAME GỐC & TỰ ĐỘNG VÁ TIẾNG VIỆT (CHO NGƯỜI MỚI / CHƯA CÓ GAME)
async function startFullDownloadAndPatch() {
    if (!currentManifest) return;

    btnAction.disabled = true;
    btnIcon.textContent = "⏳";
    btnText.textContent = "Đang Tải & Cài Đặt...";

    try {
        const packages = currentManifest.packages || [];
        const totalSize = packages.reduce((acc, p) => acc + (p.size || 0), 0);
        const tracker = { downloaded: 0, total: totalSize };

        // 1. Tải và giải nén từng gói dữ liệu
        for (let i = 0; i < packages.length; i++) {
            const pkg = packages[i];
            const pkgBlob = await fetchWithProgress(pkg.url, `[${i + 1}/${packages.length}] Đang tải ${pkg.name}...`, tracker);
            await unpackFileToStorage(pkgBlob, pkg.filename || pkg.name, `[${i + 1}/${packages.length}] Đang cài đặt ${pkg.name}`);
        }

        // 2. Ghi nhận đã cài đặt thành công
        localStorage.setItem("HOME_GAME_INSTALLED", "true");
        localStorage.setItem("HOME_GAME_VERSION", currentManifest.version);

        statusText.textContent = "🎉 Hoàn tất cài đặt game & vá tiếng Việt thành công!";
        statusPercent.textContent = "100%";
        progressBar.style.width = "100%";
        statSpeed.textContent = "Sẵn Sàng";
        statEta.textContent = "ETA: 00:00";

        localVersionEl.textContent = currentManifest.version;
        gameStatusLabel.textContent = "Đã cài đặt bản mới nhất";
        gameStatusLabel.className = "info-value text-success";

        btnAction.disabled = false;
        btnIcon.textContent = "🎮";
        btnText.textContent = "Vào Game Ngay";
        btnAction.onclick = launchGame;
    } catch (err) {
        console.error("Lỗi trong quá trình tải & vá:", err);
        statusText.textContent = `❌ Lỗi: ${err.message}`;
        btnAction.disabled = false;
        btnIcon.textContent = "🔄";
        btnText.textContent = "Thử Lại";
        btnAction.onclick = startFullDownloadAndPatch;
    }
}

// QUY TRÌNH 2: CHỈ CẬP NHẬT BẢN VÁ TIẾNG VIỆT MỚI (CHỈ TẢI VÀI MB KỊCH BẢN)
async function startPatchOnlyUpdate() {
    if (!currentManifest) return;

    btnAction.disabled = true;
    btnIcon.textContent = "⏳";
    btnText.textContent = "Đang Cập Nhật Bản Vá...";

    try {
        // Tìm gói kịch bản Core patch
        const corePkg = currentManifest.packages.find(p => p.filename.includes("Patch_Core") || p.name.includes("Lõi Kịch Bản")) || currentManifest.packages[0];

        const patchBlob = await fetchWithProgress(corePkg.url, `Đang tải bản dịch mới (${corePkg.size_formatted})...`, null);
        await unpackFileToStorage(patchBlob, corePkg.filename || "patch.zip", "Đang áp dụng bản dịch mới vào game");

        // Cập nhật phiên bản local
        localStorage.setItem("HOME_GAME_VERSION", currentManifest.version);
        localVersionEl.textContent = currentManifest.version;
        gameStatusLabel.textContent = "Đã cập nhật bản mới nhất";
        gameStatusLabel.className = "info-value text-success";

        statusText.textContent = `🎉 Đã cập nhật thành công lên phiên bản ${currentManifest.version}!`;
        statusPercent.textContent = "100%";
        progressBar.style.width = "100%";

        btnAction.disabled = false;
        btnIcon.textContent = "🎮";
        btnText.textContent = "Vào Game Ngay";
        btnAction.onclick = launchGame;
    } catch (err) {
        console.error("Lỗi cập nhật patch:", err);
        statusText.textContent = `❌ Lỗi cập nhật: ${err.message}`;
        btnAction.disabled = false;
        btnIcon.textContent = "🔄";
        btnText.textContent = "Thử Cập Nhật Lại";
        btnAction.onclick = startPatchOnlyUpdate;
    }
}

// KHỞI ĐỘNG VÀO GAME
function launchGame() {
    // Nếu chơi trên web/PWA hoặc điện thoại: chuyển trang vào game_data/index.html
    window.location.href = "game_data/index.html";
}

// KIỂM TRA TRẠNG THÁI & PHIÊN BẢN KHI MỞ LAUNCHER
async function checkSystemState() {
    await initDB();
    const manifestUrl = localStorage.getItem("HOME_MANIFEST_URL") || DEFAULT_MANIFEST_URL;
    inputManifestUrl.value = manifestUrl;

    const isInstalled = await isGameInstalledLocally();
    const localVer = localStorage.getItem("HOME_GAME_VERSION") || "Chưa có";
    localVersionEl.textContent = isInstalled ? localVer : "Chưa cài đặt";

    statusText.textContent = "Đang kết nối GitHub để kiểm tra bản cập nhật mới...";

    try {
        const res = await fetch(manifestUrl + "?t=" + Date.now());
        if (!res.ok) throw new Error("Không thể kết nối đến máy chủ GitHub");
        currentManifest = await res.json();

        remoteVersionEl.textContent = currentManifest.version || "v1.0.0";
        badgeVersion.textContent = `BẢN VIỆT HÓA ${currentManifest.version}`;

        if (currentManifest.changelog && currentManifest.changelog.length > 0) {
            rowPatchNotes.style.display = "flex";
            patchNotesText.textContent = currentManifest.changelog[0];
        }

        // PHÂN NHÁNH TRẠNG THÁI
        if (!isInstalled) {
            // Trường hợp 1: Chưa cài game
            gameStatusLabel.textContent = "Chưa tải game gốc";
            gameStatusLabel.className = "info-value text-accent";
            statusText.textContent = `Sẵn sàng tải game gốc & tự động vá tiếng Việt (${currentManifest.total_size_formatted || ''})`;
            
            btnAction.disabled = false;
            btnIcon.textContent = "📥";
            btnText.textContent = `Tải & Tự Động Vá Game (${currentManifest.total_size_formatted || ''})`;
            btnAction.onclick = startFullDownloadAndPatch;
        } else if (localVer !== currentManifest.version) {
            // Trường hợp 2: Đã có game gốc, nhưng có bản vá tiếng Việt mới hơn
            gameStatusLabel.textContent = `Có bản cập nhật mới (${currentManifest.version})`;
            gameStatusLabel.className = "info-value text-accent";
            statusText.textContent = `Phát hiện bản dịch mới trên GitHub (${currentManifest.version})!`;

            const corePkg = currentManifest.packages.find(p => p.filename.includes("Patch_Core")) || { size_formatted: "~9 MB" };
            btnAction.disabled = false;
            btnIcon.textContent = "✨";
            btnText.textContent = `Cập Nhật Bản Dịch Mới (${corePkg.size_formatted})`;
            btnAction.onclick = startPatchOnlyUpdate;
        } else {
            // Trường hợp 3: Đã cài bản mới nhất -> Vào chơi ngay
            gameStatusLabel.textContent = "Đã cập nhật bản mới nhất";
            gameStatusLabel.className = "info-value text-success";
            statusText.textContent = "Game đã sẵn sàng! Bạn có thể vào chơi ngay.";
            statusPercent.textContent = "100%";
            progressBar.style.width = "100%";

            btnAction.disabled = false;
            btnIcon.textContent = "🎮";
            btnText.textContent = "Vào Game Ngay";
            btnAction.onclick = launchGame;
        }
    } catch (err) {
        console.warn("Không có mạng, chuyển sang chế độ Offline:", err);
        remoteVersionEl.textContent = "Ngoại tuyến (Offline)";

        if (isInstalled) {
            gameStatusLabel.textContent = "Chế độ Ngoại Tuyến (Offline)";
            gameStatusLabel.className = "info-value text-success";
            statusText.textContent = "Không có kết nối mạng. Sẵn sàng chơi Offline!";
            progressBar.style.width = "100%";
            statusPercent.textContent = "100%";

            btnAction.disabled = false;
            btnIcon.textContent = "🎮";
            btnText.textContent = "Chơi Ngoại Tuyến";
            btnAction.onclick = launchGame;
        } else {
            gameStatusLabel.textContent = "Chưa có dữ liệu game";
            statusText.textContent = "Cần có kết nối Internet để tải game lần đầu.";
            btnAction.disabled = false;
            btnIcon.textContent = "🔄";
            btnText.textContent = "Thử Kết Nối Lại";
            btnAction.onclick = checkSystemState;
        }
    }
}

// Cài đặt Modal
btnSettings.onclick = () => { settingsModal.style.display = "flex"; };
btnCloseSettings.onclick = () => { settingsModal.style.display = "none"; };
btnSaveSettings.onclick = () => {
    const val = inputManifestUrl.value.trim();
    if (val) {
        localStorage.setItem("HOME_MANIFEST_URL", val);
        settingsModal.style.display = "none";
        checkSystemState();
    }
};

window.addEventListener("DOMContentLoaded", checkSystemState);
