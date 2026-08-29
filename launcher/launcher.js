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
const btnImportLocal = document.getElementById("btn-import-local");
const inputLocalFile = document.getElementById("input-local-file");
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

// Kiểm tra xem đã có game trong máy chưa
async function isGameInstalledLocally() {
    const isInstalled = localStorage.getItem("HOME_GAME_INSTALLED");
    return isInstalled === "true";
}

// Định dạng dung lượng
function formatBytes(bytes) {
    if (!bytes || bytes === 0) return '0 B';
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

// Tải một file với XMLHttpRequest để tương thích 100% Safari & CORS
function fetchBlobWithXHR(url, label, totalTracker) {
    return new Promise((resolve, reject) => {
        statusText.textContent = label;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url, true);
        xhr.responseType = "blob";

        let lastTime = Date.now();
        let lastLoaded = 0;

        xhr.onprogress = (e) => {
            const now = Date.now();
            const diff = (now - lastTime) / 1000;
            if (diff >= 0.25) {
                const currentLoaded = e.loaded;
                const speed = (currentLoaded - lastLoaded) / diff;
                lastLoaded = currentLoaded;
                lastTime = now;

                const totalExpected = totalTracker ? totalTracker.total : (e.total || 0);
                const currentDone = totalTracker ? (totalTracker.downloaded + currentLoaded) : currentLoaded;
                const pct = totalExpected > 0 ? Math.min(100, Math.floor((currentDone / totalExpected) * 100)) : 0;

                statusPercent.textContent = `${pct}%`;
                progressBar.style.width = `${pct}%`;
                statDownloaded.textContent = `${formatBytes(currentDone)} / ${formatBytes(totalExpected)}`;
                statSpeed.textContent = `${formatBytes(speed)}/s`;

                const remBytes = totalExpected - currentDone;
                const etaSecs = speed > 0 ? remBytes / speed : 0;
                statEta.textContent = `ETA: ${formatTime(etaSecs)}`;
            }
        };

        xhr.onload = () => {
            if (xhr.status >= 200 && xhr.status < 300) {
                if (totalTracker && xhr.response) {
                    totalTracker.downloaded += xhr.response.size;
                }
                resolve(xhr.response);
            } else {
                reject(new Error(`Máy chủ phản hồi mã lỗi: ${xhr.status}`));
            }
        };

        xhr.onerror = () => {
            reject(new Error("Lỗi kết nối mạng hoặc chặn CORS."));
        };

        xhr.send();
    });
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

// NẠP FILE GAME GỐC (app.asar hoặc zip) CÓ SẴN TRÊN THIẾT BỊ
async function handleLocalFileImport(file) {
    if (!file) return;

    btnAction.disabled = true;
    btnImportLocal.disabled = true;
    btnIcon.textContent = "⏳";
    btnText.textContent = "Đang Nạp File Từ Máy...";

    try {
        statusText.textContent = `Đang đọc file ${file.name} (${formatBytes(file.size)})...`;
        progressBar.style.width = "20%";
        statusPercent.textContent = "20%";

        // 1. Trích xuất file game gốc vào bộ nhớ
        await unpackFileToStorage(file, file.name, "Trích xuất Game Gốc");

        // 2. Tự động kéo bản vá tiếng Việt từ GitHub về chép đè
        statusText.textContent = "Đang tải bản vá tiếng Việt từ GitHub...";
        progressBar.style.width = "80%";
        statusPercent.textContent = "80%";

        const patchUrl = currentManifest && currentManifest.packages && currentManifest.packages[0] 
            ? currentManifest.packages[0].url 
            : "https://raw.githubusercontent.com/shimakazevn/Home-project/main/launcher/patch/HOME_Patch_Core_v1.0.0.zip";

        const patchBlob = await fetchBlobWithXHR(patchUrl + "?t=" + Date.now(), "Đang tải bản vá tiếng Việt (9 MB)...", null);
        await unpackFileToStorage(patchBlob, "HOME_Patch_Core_v1.0.0.zip", "Vá Tiếng Việt & Font Chữ");

        // 3. Đánh dấu hoàn tất
        const ver = currentManifest ? currentManifest.version : "v1.0.0";
        localStorage.setItem("HOME_GAME_INSTALLED", "true");
        localStorage.setItem("HOME_GAME_VERSION", ver);

        statusText.textContent = "🎉 Hoàn tất nạp game & vá tiếng Việt thành công!";
        statusPercent.textContent = "100%";
        progressBar.style.width = "100%";

        localVersionEl.textContent = ver;
        gameStatusLabel.textContent = "Đã cài đặt bản mới nhất";
        gameStatusLabel.className = "info-value text-success";

        btnAction.disabled = false;
        btnImportLocal.style.display = "none";
        btnIcon.textContent = "🎮";
        btnText.textContent = "Vào Game Ngay";
        btnAction.onclick = launchGame;
    } catch (err) {
        console.error("Lỗi khi nạp file:", err);
        statusText.textContent = `❌ Lỗi: ${err.message}`;
        btnAction.disabled = false;
        btnImportLocal.disabled = false;
        btnIcon.textContent = "🔄";
        btnText.textContent = "Thử Lại";
    }
}

// QUY TRÌNH 1: TẢI GAME GỐC & TỰ ĐỘNG VÁ TIẾNG VIỆT TỪ CLOUD
async function startFullDownloadAndPatch() {
    if (!currentManifest) return;

    btnAction.disabled = true;
    btnImportLocal.disabled = true;
    btnIcon.textContent = "⏳";
    btnText.textContent = "Đang Tải & Cài Đặt...";

    try {
        const packages = currentManifest.packages || [];
        const totalSize = packages.reduce((acc, p) => acc + (p.size || 0), 0);
        const tracker = { downloaded: 0, total: totalSize };

        // Tải và giải nén từng gói dữ liệu
        for (let i = 0; i < packages.length; i++) {
            const pkg = packages[i];
            const pkgBlob = await fetchBlobWithXHR(pkg.url, `[${i + 1}/${packages.length}] Đang tải ${pkg.name}...`, tracker);
            await unpackFileToStorage(pkgBlob, pkg.filename || pkg.name, `[${i + 1}/${packages.length}] Đang cài đặt ${pkg.name}`);
        }

        // Ghi nhận đã cài đặt thành công
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
        btnImportLocal.style.display = "none";
        btnIcon.textContent = "🎮";
        btnText.textContent = "Vào Game Ngay";
        btnAction.onclick = launchGame;
    } catch (err) {
        console.error("Lỗi trong quá trình tải & vá:", err);
        statusText.textContent = `❌ Lỗi tải: ${err.message}. Bạn có thể dùng nút 'Nạp File Có Sẵn' để nạp app.asar từ máy.`;
        btnAction.disabled = false;
        btnImportLocal.disabled = false;
        btnIcon.textContent = "🔄";
        btnText.textContent = "Thử Lại";
        btnAction.onclick = startFullDownloadAndPatch;
    }
}

// QUY TRÌNH 2: CHỈ CẬP NHẬT BẢN VÁ TIẾNG VIỆT MỚI (9 MB)
async function startPatchOnlyUpdate() {
    if (!currentManifest) return;

    btnAction.disabled = true;
    btnIcon.textContent = "⏳";
    btnText.textContent = "Đang Cập Nhật Bản Vá...";

    try {
        const corePkg = currentManifest.packages.find(p => p.filename.includes("Patch_Core") || p.name.includes("Lõi Kịch Bản")) || currentManifest.packages[0];

        const patchBlob = await fetchBlobWithXHR(corePkg.url + "?t=" + Date.now(), `Đang tải bản dịch mới (${corePkg.size_formatted})...`, null);
        await unpackFileToStorage(patchBlob, corePkg.filename || "patch.zip", "Đang áp dụng bản dịch mới vào game");

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
    window.location.href = "game_data/index.html";
}

// KIỂM TRA TRẠNG THÁI KHI KHỞI ĐỘNG
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

        if (!isInstalled) {
            gameStatusLabel.textContent = "Chưa cài đặt game";
            gameStatusLabel.className = "info-value text-accent";
            statusText.textContent = `Sẵn sàng tải hoặc nạp file game gốc để tự động vá tiếng Việt.`;
            
            btnAction.disabled = false;
            btnImportLocal.style.display = "inline-flex";
            btnIcon.textContent = "📥";
            btnText.textContent = `Tải & Tự Động Vá Game (${currentManifest.total_size_formatted || ''})`;
            btnAction.onclick = startFullDownloadAndPatch;
        } else if (localVer !== currentManifest.version) {
            gameStatusLabel.textContent = `Có bản cập nhật mới (${currentManifest.version})`;
            gameStatusLabel.className = "info-value text-accent";
            statusText.textContent = `Phát hiện bản dịch mới trên GitHub (${currentManifest.version})!`;

            const corePkg = currentManifest.packages.find(p => p.filename.includes("Patch_Core")) || { size_formatted: "~9 MB" };
            btnAction.disabled = false;
            btnImportLocal.style.display = "none";
            btnIcon.textContent = "✨";
            btnText.textContent = `Cập Nhật Bản Dịch Mới (${corePkg.size_formatted})`;
            btnAction.onclick = startPatchOnlyUpdate;
        } else {
            gameStatusLabel.textContent = "Đã cập nhật bản mới nhất";
            gameStatusLabel.className = "info-value text-success";
            statusText.textContent = "Game đã sẵn sàng! Bạn có thể vào chơi ngay.";
            statusPercent.textContent = "100%";
            progressBar.style.width = "100%";

            btnAction.disabled = false;
            btnImportLocal.style.display = "none";
            btnIcon.textContent = "🎮";
            btnText.textContent = "Vào Game Ngay";
            btnAction.onclick = launchGame;
        }
    } catch (err) {
        console.warn("Chế độ Offline:", err);
        remoteVersionEl.textContent = "Ngoại tuyến (Offline)";

        if (isInstalled) {
            gameStatusLabel.textContent = "Chế độ Ngoại Tuyến (Offline)";
            gameStatusLabel.className = "info-value text-success";
            statusText.textContent = "Không có kết nối mạng. Sẵn sàng chơi Offline!";
            progressBar.style.width = "100%";
            statusPercent.textContent = "100%";

            btnAction.disabled = false;
            btnImportLocal.style.display = "none";
            btnIcon.textContent = "🎮";
            btnText.textContent = "Chơi Ngoại Tuyến";
            btnAction.onclick = launchGame;
        } else {
            gameStatusLabel.textContent = "Chưa có dữ liệu game";
            statusText.textContent = "Bạn có thể dùng nút 'Nạp File Có Sẵn' để nạp file app.asar trực tiếp từ máy.";
            btnAction.disabled = true;
            btnImportLocal.style.display = "inline-flex";
            btnIcon.textContent = "📁";
            btnText.textContent = "Cần Nạp Dữ Liệu Game";
        }
    }
}

// Sự kiện nút Nạp file từ máy
btnImportLocal.onclick = () => inputLocalFile.click();
inputLocalFile.onchange = (e) => {
    if (e.target.files && e.target.files.length > 0) {
        handleLocalFileImport(e.target.files[0]);
    }
};

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
