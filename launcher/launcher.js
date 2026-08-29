/**
 * HOME Visual Novel - Smart Auto-Downloader, Auto-Patcher & Auto-Updater Engine
 * Repository: https://github.com/shimakazevn/Home-project
 */

const DEFAULT_MANIFEST_URL = "https://raw.githubusercontent.com/shimakazevn/Home-project/main/release_manifest.json";
const PATCH_CORE_URL = "https://cdn.jsdelivr.net/gh/shimakazevn/Home-project@main/launcher/patch/HOME_Patch_Core_v1.0.0.zip";
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
const btnImportLocal = document.getElementById("btn-import-local");
const inputLocalFile = document.getElementById("input-local-file");
const guideBox = document.getElementById("guide-box");

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

// Tải một file với XMLHttpRequest
function fetchBlobWithXHR(url, label) {
    return new Promise((resolve, reject) => {
        statusText.textContent = label;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url, true);
        xhr.responseType = "blob";

        xhr.onprogress = (e) => {
            if (e.lengthComputable && e.total > 0) {
                const pct = Math.floor((e.loaded / e.total) * 100);
                statusPercent.textContent = `${pct}%`;
                progressBar.style.width = `${pct}%`;
                statDownloaded.textContent = `${formatBytes(e.loaded)} / ${formatBytes(e.total)}`;
            }
        };

        xhr.onload = () => {
            if (xhr.status >= 200 && xhr.status < 300) {
                resolve(xhr.response);
            } else {
                reject(new Error(`Lỗi tải file (${xhr.status})`));
            }
        };

        xhr.onerror = () => reject(new Error("Lỗi kết nối khi tải bản vá tiếng Việt"));
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

// XỬ LÝ NẠP FILE (HỖ TRỢ CẢ FILE ĐƠN app.asar VÀ NHIỀU FILE PART .z01, .z02...)
async function handleLocalFileList(fileList) {
    if (!fileList || fileList.length === 0) return;

    btnImportLocal.disabled = true;
    btnImportLocal.innerHTML = "⏳ Đang Ghép & Nạp Dữ Liệu...";

    try {
        let finalBlob = null;
        let finalName = "";

        if (fileList.length === 1) {
            // Nạp 1 file đơn lẻ (app.asar hoặc app.zip)
            finalBlob = fileList[0];
            finalName = fileList[0].name;
        } else {
            // Người dùng chọn nhiều file Part (app.z01, app.z02, ... app.zip)
            statusText.textContent = `Đang tự động ghép ${fileList.length} phần dữ liệu...`;
            
            // Sắp xếp các part theo thứ tự đúng: .z01 -> .z02 -> ... -> .zip
            const filesArray = Array.from(fileList);
            filesArray.sort((a, b) => {
                const getExtScore = (name) => {
                    const ext = name.split('.').pop().toLowerCase();
                    if (ext.startsWith('z') && !isNaN(parseInt(ext.slice(1)))) {
                        return parseInt(ext.slice(1));
                    }
                    if (ext === 'zip') return 999;
                    return 0;
                };
                return getExtScore(a.name) - getExtScore(b.name);
            });

            const totalSize = filesArray.reduce((acc, f) => acc + f.size, 0);
            console.log("Ghép các file:", filesArray.map(f => f.name));

            // Ghép thành 1 chuỗi Blob hoàn chỉnh tức thì
            finalBlob = new Blob(filesArray);
            finalName = "app.zip";
            statusText.textContent = `Đã ghép thành công ${filesArray.length} phần (${formatBytes(totalSize)})!`;
        }

        // 1. Trích xuất file game gốc vào bộ nhớ máy
        progressBar.style.width = "30%";
        statusPercent.textContent = "30%";
        await unpackFileToStorage(finalBlob, finalName, "Trích xuất Game Gốc");

        // 2. Tự động kéo bản vá tiếng Việt từ CDN về chép đè
        statusText.textContent = "Đang tải bản vá tiếng Việt mới nhất (9 MB)...";
        progressBar.style.width = "85%";
        statusPercent.textContent = "85%";

        const patchBlob = await fetchBlobWithXHR(PATCH_CORE_URL + "?t=" + Date.now(), "Đang nạp bản vá tiếng Việt (9 MB)...");
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

        btnImportLocal.style.display = "none";
        if (guideBox) guideBox.style.display = "none";

        btnAction.style.display = "inline-flex";
        btnAction.disabled = false;
        btnAction.onclick = launchGame;
    } catch (err) {
        console.error("Lỗi khi nạp file:", err);
        statusText.textContent = `❌ Lỗi: ${err.message}`;
        btnImportLocal.disabled = false;
        btnImportLocal.innerHTML = "📁 Thử Nạp Lại File";
    }
}

// CẬP NHẬT BẢN VÁ TIẾNG VIỆT MỚI (CHỈ 9 MB)
async function startPatchOnlyUpdate() {
    btnAction.disabled = true;
    btnAction.innerHTML = "⏳ Đang Cập Nhật Bản Vá...";

    try {
        const patchBlob = await fetchBlobWithXHR(PATCH_CORE_URL + "?t=" + Date.now(), "Đang tải bản dịch mới (9 MB)...");
        await unpackFileToStorage(patchBlob, "HOME_Patch_Core_v1.0.0.zip", "Đang áp dụng bản dịch mới vào game");

        localStorage.setItem("HOME_GAME_VERSION", currentManifest.version);
        localVersionEl.textContent = currentManifest.version;
        gameStatusLabel.textContent = "Đã cập nhật bản mới nhất";
        gameStatusLabel.className = "info-value text-success";

        statusText.textContent = `🎉 Đã cập nhật thành công lên phiên bản ${currentManifest.version}!`;
        statusPercent.textContent = "100%";
        progressBar.style.width = "100%";

        btnAction.disabled = false;
        btnAction.innerHTML = "🎮 Vào Game Ngay";
        btnAction.onclick = launchGame;
    } catch (err) {
        console.error("Lỗi cập nhật patch:", err);
        statusText.textContent = `❌ Lỗi cập nhật: ${err.message}`;
        btnAction.disabled = false;
        btnAction.innerHTML = "🔄 Thử Cập Nhật Lại";
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
    const isInstalled = await isGameInstalledLocally();
    const localVer = localStorage.getItem("HOME_GAME_VERSION") || "Chưa có";
    localVersionEl.textContent = isInstalled ? localVer : "Chưa cài đặt";

    try {
        const res = await fetch(DEFAULT_MANIFEST_URL + "?t=" + Date.now());
        if (res.ok) {
            currentManifest = await res.json();
            remoteVersionEl.textContent = currentManifest.version || "v1.0.0";
            badgeVersion.textContent = `BẢN VIỆT HÓA ${currentManifest.version}`;
        }
    } catch (e) {
        console.warn("Offline check:", e);
    }

    if (!isInstalled) {
        gameStatusLabel.textContent = "Chưa có dữ liệu game";
        gameStatusLabel.className = "info-value text-accent";
        statusText.textContent = "Vui lòng chọn file game đã tải để tự động ghép & vá tiếng Việt.";

        btnImportLocal.style.display = "inline-flex";
        btnAction.style.display = "none";
        if (guideBox) guideBox.style.display = "flex";
    } else if (currentManifest && localVer !== currentManifest.version) {
        gameStatusLabel.textContent = `Có bản cập nhật mới (${currentManifest.version})`;
        gameStatusLabel.className = "info-value text-accent";
        statusText.textContent = `Phát hiện bản dịch mới trên GitHub (${currentManifest.version})!`;

        btnImportLocal.style.display = "none";
        if (guideBox) guideBox.style.display = "none";

        btnAction.style.display = "inline-flex";
        btnAction.innerHTML = "✨ Cập Nhật Bản Dịch Mới (9 MB)";
        btnAction.onclick = startPatchOnlyUpdate;
    } else {
        gameStatusLabel.textContent = "Đã cập nhật bản mới nhất";
        gameStatusLabel.className = "info-value text-success";
        statusText.textContent = "Game đã sẵn sàng! Bạn có thể vào chơi ngay.";
        statusPercent.textContent = "100%";
        progressBar.style.width = "100%";

        btnImportLocal.style.display = "none";
        if (guideBox) guideBox.style.display = "none";

        btnAction.style.display = "inline-flex";
        btnAction.innerHTML = "🎮 Vào Game Ngay";
        btnAction.onclick = launchGame;
    }
}

// Sự kiện nút Nạp file từ máy (cho phép chọn nhiều file cùng lúc)
btnImportLocal.onclick = () => inputLocalFile.click();
inputLocalFile.onchange = (e) => {
    if (e.target.files && e.target.files.length > 0) {
        handleLocalFileList(e.target.files);
    }
};

window.addEventListener("DOMContentLoaded", checkSystemState);
