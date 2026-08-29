/**
 * HOME Visual Novel - Auto Downloader & Updater Engine
 * Supports: iOS Safari PWA, Android Chrome, Android Capacitor Native
 */

const DEFAULT_MANIFEST_URL = "https://raw.githubusercontent.com/shimakazevn/Home-project/main/release_manifest.json";
const DB_NAME = "HOME_VN_ASSETS_DB";
const STORE_NAME = "game_files";

// UI Elements
const statusText = document.getElementById("status-text");
const statusPercent = document.getElementById("status-percent");
const progressBar = document.getElementById("progress-bar");
const statDownloaded = document.getElementById("stat-downloaded");
const statSpeed = document.getElementById("stat-speed");
const statEta = document.getElementById("stat-eta");
const localVersionEl = document.getElementById("local-version");
const remoteVersionEl = document.getElementById("remote-version");
const btnAction = document.getElementById("btn-action");
const btnText = document.getElementById("btn-text");
const btnSettings = document.getElementById("btn-settings");
const settingsModal = document.getElementById("settings-modal");
const inputManifestUrl = document.getElementById("input-manifest-url");
const btnSaveSettings = document.getElementById("btn-save-settings");
const btnCloseSettings = document.getElementById("btn-close-settings");

let currentManifest = null;
let db = null;

// Khởi tạo IndexedDB lưu trữ tài nguyên game
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

// Lưu 1 file vào DB
async function saveFileToDB(path, blob) {
    return new Promise((resolve, reject) => {
        const tx = db.transaction([STORE_NAME], "readwrite");
        const store = tx.objectStore(STORE_NAME);
        store.put(blob, path);
        tx.oncomplete = () => resolve();
        tx.onerror = (e) => reject(e);
    });
}

// Lấy 1 file từ DB
async function getFileFromDB(path) {
    return new Promise((resolve, reject) => {
        const tx = db.transaction([STORE_NAME], "readonly");
        const store = tx.objectStore(STORE_NAME);
        const req = store.get(path);
        req.onsuccess = () => resolve(req.result);
        req.onerror = (e) => reject(e);
    });
}

// Định dạng dung lượng
function formatBytes(bytes) {
    if (bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
}

// Định dạng thời gian
function formatTime(seconds) {
    if (!isFinite(seconds) || seconds < 0) return "--:--";
    const mins = Math.floor(seconds / 60);
    const secs = Math.floor(seconds % 60);
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
}

// Kiểm tra bản cập nhật
async function checkUpdates() {
    await initDB();
    const manifestUrl = localStorage.getItem("HOME_MANIFEST_URL") || DEFAULT_MANIFEST_URL;
    inputManifestUrl.value = manifestUrl;
    
    const localVer = localStorage.getItem("HOME_GAME_VERSION") || "Chưa có";
    localVersionEl.textContent = localVer;

    statusText.textContent = "Đang kiểm tra máy chủ GitHub Releases...";
    
    try {
        const res = await fetch(manifestUrl + "?t=" + Date.now());
        if (!res.ok) throw new Error("Không thể kết nối đến máy chủ cập nhật");
        currentManifest = await res.json();
        
        remoteVersionEl.textContent = currentManifest.version || "v1.0.0";

        if (localVer === currentManifest.version) {
            statusText.textContent = "Dữ liệu game đã cập nhật mới nhất!";
            statusPercent.textContent = "100%";
            progressBar.style.width = "100%";
            btnAction.disabled = false;
            btnAction.classList.remove("btn-secondary");
            btnAction.classList.add("btn-primary");
            btnText.textContent = "Vào Game Ngay";
            btnAction.onclick = launchGame;
        } else {
            statusText.textContent = `Phát hiện bản cập nhật mới: ${currentManifest.version} (${currentManifest.total_size_formatted || 'Dữ liệu đầy đủ'})`;
            btnAction.disabled = false;
            btnAction.classList.remove("btn-primary");
            btnAction.classList.add("btn-primary");
            btnText.textContent = `Tải Bản Cập Nhật (${currentManifest.total_size_formatted || 'Bắt Đầu'})`;
            btnAction.onclick = startDownloadAndInstall;
        }
    } catch (err) {
        console.warn("Không thể kết nối mạng, kiểm tra chế độ Offline:", err);
        remoteVersionEl.textContent = "Ngoại tuyến (Offline)";
        if (localVer !== "Chưa có") {
            statusText.textContent = "Đang ở chế độ Ngoại Tuyến (Sẵn sàng chơi)";
            btnAction.disabled = false;
            btnText.textContent = "Chơi Ngoại Tuyến";
            btnAction.onclick = launchGame;
        } else {
            statusText.textContent = "Không có kết nối mạng để tải dữ liệu ban đầu.";
            btnText.textContent = "Thử Lại";
            btnAction.disabled = false;
            btnAction.onclick = checkUpdates;
        }
    }
}

// Bắt đầu tải và giải nén dữ liệu từ GitHub
async function startDownloadAndInstall() {
    if (!currentManifest || !currentManifest.packages) {
        alert("Lỗi cấu trúc dữ liệu máy chủ!");
        return;
    }

    btnAction.disabled = true;
    btnText.textContent = "Đang Tải Dữ Liệu...";
    
    const packages = currentManifest.packages;
    let totalBytesAll = packages.reduce((acc, p) => acc + (p.size || 0), 0);
    let downloadedBytesTotal = 0;
    
    const startTime = Date.now();

    for (let i = 0; i < packages.length; i++) {
        const pkg = packages[i];
        statusText.textContent = `Đang tải gói ${i + 1}/${packages.length}: ${pkg.name}...`;

        const response = await fetch(pkg.url);
        if (!response.ok) throw new Error(`Lỗi tải gói ${pkg.name}: HTTP ${response.status}`);
        
        const contentLength = +response.headers.get('Content-Length') || pkg.size;
        const reader = response.body.getReader();
        let receivedBytes = 0;
        let chunks = [];

        let lastTime = Date.now();
        let lastLoaded = 0;

        while (true) {
            const { done, value } = await reader.read();
            if (done) break;
            chunks.push(value);
            receivedBytes += value.length;
            downloadedBytesTotal += value.length;

            const now = Date.now();
            const timeDiff = (now - lastTime) / 1000;
            if (timeDiff >= 0.5) {
                const speed = (receivedBytes - lastLoaded) / timeDiff; // B/s
                lastLoaded = receivedBytes;
                lastTime = now;
                
                const overallPercent = Math.min(100, Math.floor((downloadedBytesTotal / totalBytesAll) * 100));
                statusPercent.textContent = `${overallPercent}%`;
                progressBar.style.width = `${overallPercent}%`;
                statDownloaded.textContent = `${formatBytes(downloadedBytesTotal)} / ${formatBytes(totalBytesAll)}`;
                statSpeed.textContent = `${formatBytes(speed)}/s`;
                
                const remainingBytes = totalBytesAll - downloadedBytesTotal;
                const etaSeconds = speed > 0 ? remainingBytes / speed : 0;
                statEta.textContent = formatTime(etaSeconds);
            }
        }

        // Ghép chunks thành blob zip
        statusText.textContent = `Đang giải nén gói ${pkg.name}...`;
        const zipBlob = new Blob(chunks);
        const jszip = new JSZip();
        const zipData = await jszip.loadAsync(zipBlob);

        // Lưu từng file trong zip vào IndexedDB
        const fileNames = Object.keys(zipData.files);
        for (let j = 0; j < fileNames.length; j++) {
            const fileName = fileNames[j];
            const fileObj = zipData.files[fileName];
            if (!fileObj.dir) {
                const fileBlob = await fileObj.async("blob");
                await saveFileToDB(fileName, fileBlob);
            }
        }
    }

    // Cập nhật phiên bản local
    localStorage.setItem("HOME_GAME_VERSION", currentManifest.version);
    localVersionEl.textContent = currentManifest.version;
    
    statusText.textContent = "Hoàn tất cài đặt bản cập nhật!";
    statusPercent.textContent = "100%";
    progressBar.style.width = "100%";
    statSpeed.textContent = "Hoàn tất";
    statEta.textContent = "00:00";
    
    btnAction.disabled = false;
    btnText.textContent = "Vào Game Ngay";
    btnAction.onclick = launchGame;
}

// Khởi chạy game
function launchGame() {
    window.location.href = "game_data/index.html";
}

// Cài đặt modal
btnSettings.onclick = () => { settingsModal.style.display = "flex"; };
btnCloseSettings.onclick = () => { settingsModal.style.display = "none"; };
btnSaveSettings.onclick = () => {
    const val = inputManifestUrl.value.trim();
    if (val) {
        localStorage.setItem("HOME_MANIFEST_URL", val);
        settingsModal.style.display = "none";
        checkUpdates();
    }
};

// Khởi động
window.addEventListener("DOMContentLoaded", checkUpdates);
