// ══════════════════════════════════════════════════════════════════════════════
// HOME - Web Save System (IndexedDB Backup + Export/Import .sav)
// Tương thích 100% TyranoScript projectID=HOME, bảo vệ save vĩnh viễn trên trình duyệt
// ══════════════════════════════════════════════════════════════════════════════

(function() {
    console.log("[Web Save] Đang khởi tạo hệ thống lưu trữ Web Save & IndexedDB...");

    const DB_NAME = "HOME_Game_SaveDB";
    const DB_VERSION = 1;
    const STORE_NAME = "save_slots";
    const PROJECT_ID = "HOME";

    // ─── 1. IndexedDB Helper ──────────────────────────────────────────────────
    function openSaveDB() {
        return new Promise((resolve, reject) => {
            const req = indexedDB.open(DB_NAME, DB_VERSION);
            req.onupgradeneeded = (e) => {
                const db = e.target.result;
                if (!db.objectStoreNames.contains(STORE_NAME)) {
                    db.createObjectStore(STORE_NAME, { keyPath: "key" });
                }
            };
            req.onsuccess = () => resolve(req.result);
            req.onerror = () => reject(req.error);
        });
    }

    async function dbSetItem(key, value) {
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, "readwrite");
                const store = tx.objectStore(STORE_NAME);
                const req = store.put({ key, value, updatedAt: Date.now() });
                req.onsuccess = () => resolve();
                req.onerror = () => reject(req.error);
            });
        } catch (e) {
            console.warn("[Web Save] IndexedDB set error:", e);
        }
    }

    async function dbGetItem(key) {
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, "readonly");
                const store = tx.objectStore(STORE_NAME);
                const req = store.get(key);
                req.onsuccess = () => resolve(req.result ? req.result.value : null);
                req.onerror = () => reject(req.error);
            });
        } catch (e) {
            console.warn("[Web Save] IndexedDB get error:", e);
            return null;
        }
    }

    async function dbGetAll() {
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, "readonly");
                const store = tx.objectStore(STORE_NAME);
                const req = store.getAll();
                req.onsuccess = () => resolve(req.result || []);
                req.onerror = () => reject(req.error);
            });
        } catch (e) {
            return [];
        }
    }

    // ─── 2. Auto Restore from IndexedDB on Load if localStorage empty ────────
    async function autoRestoreIfEmpty() {
        try {
            const primaryKey = `${PROJECT_ID}_tyrano_data`;
            if (!localStorage.getItem(primaryKey) && !localStorage.getItem("tyrano_data")) {
                const dbRecords = await dbGetAll();
                if (dbRecords && dbRecords.length > 0) {
                    console.log("[Web Save] Phục hồi save data từ IndexedDB sang localStorage...");
                    for (const rec of dbRecords) {
                        if (rec.key && rec.value) {
                            localStorage.setItem(rec.key, rec.value);
                        }
                    }
                }
            }
        } catch (e) {
            console.warn("[Web Save] Auto-restore error:", e);
        }
    }
    autoRestoreIfEmpty();

    // ─── 3. Auto Sync localStorage to IndexedDB on save ──────────────────────
    function hookTyranoStorage() {
        if (window.$ && $.setStorageWeb) {
            const originalSetStorageWeb = $.setStorageWeb;
            $.setStorageWeb = function(key, val) {
                originalSetStorageWeb.apply(this, arguments);
                try {
                    const rawStored = localStorage.getItem(key);
                    if (rawStored) {
                        dbSetItem(key, rawStored);
                    }
                } catch(e) {}
            };
        }
    }
    setTimeout(hookTyranoStorage, 1000);

    // ─── 4. Export Save File ─────────────────────────────────────────────────
    window.exportCurrentSaveToFile = async function() {
        try {
            const bundle = {
                app: "HOME",
                version: "1.0",
                exportDate: new Date().toISOString(),
                data: {}
            };

            // Lấy tất cả key liên quan đến HOME, tyrano, sf
            for (let i = 0; i < localStorage.length; i++) {
                const k = localStorage.key(i);
                if (!k) continue;
                if (k.includes("tyrano") || k.includes("HOME") || k.includes("sf") || k.includes("save")) {
                    bundle.data[k] = localStorage.getItem(k);
                }
            }

            // Đồng bộ thêm từ IndexedDB nếu localStorage chưa có
            const dbRecords = await dbGetAll();
            for (const rec of dbRecords) {
                if (rec.key && rec.value && !bundle.data[rec.key]) {
                    bundle.data[rec.key] = rec.value;
                }
            }

            // Kiểm tra có dữ liệu save thực sự không
            let hasActualSave = false;
            for (const [key, rawVal] of Object.entries(bundle.data)) {
                if (!rawVal) continue;
                if (key.includes("tyrano_data")) {
                    try {
                        let parsed = rawVal;
                        if (typeof parsed === "string") {
                            if (parsed.startsWith("%7B") || parsed.includes("%22")) parsed = unescape(parsed);
                            parsed = JSON.parse(parsed);
                        }
                        if (parsed && parsed.data && Array.isArray(parsed.data)) {
                            if (parsed.data.some(slot => slot && slot.save_date && slot.save_date.trim() !== "")) {
                                hasActualSave = true;
                                break;
                            }
                        }
                    } catch(e) {}
                }
            }

            // Nếu không có slot nào được save nhưng có flags
            if (!hasActualSave && Object.keys(bundle.data).length > 0) {
                hasActualSave = true;
            }

            if (!hasActualSave) {
                alert("Chưa có dữ liệu lưu nào trong game! Vui lòng lưu game trước khi tải file.");
                return;
            }

            const jsonStr = JSON.stringify(bundle, null, 2);
            const blob = new Blob([jsonStr], { type: "application/json" });
            const url = URL.createObjectURL(blob);
            const a = document.createElement("a");
            const dateStr = new Date().toISOString().slice(0, 10);
            a.href = url;
            a.download = `HOME_SaveData_${dateStr}.sav`;
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            URL.revokeObjectURL(url);
            console.log("[Web Save] ✅ Đã xuất file save thành công.");
        } catch (err) {
            alert(`Lỗi xuất file save: ${err.message}`);
        }
    };

    // ─── 5. Import Save File ─────────────────────────────────────────────────
    window.importSaveFromFile = function() {
        const input = document.createElement("input");
        input.type = "file";
        input.accept = ".sav,.json";
        input.onchange = async (e) => {
            const file = e.target.files[0];
            if (!file) return;

            const reader = new FileReader();
            reader.onload = async (evt) => {
                try {
                    const content = evt.target.result;
                    const parsed = JSON.parse(content);

                    let importedKeys = 0;

                    // Trường hợp 1: File định dạng Bundle đầy đủ
                    if (parsed && parsed.data && typeof parsed.data === "object") {
                        for (const [key, val] of Object.entries(parsed.data)) {
                            if (val) {
                                localStorage.setItem(key, val);
                                await dbSetItem(key, val);
                                importedKeys++;
                            }
                        }
                    }
                    // Trường hợp 2: File JSON lưu trực tiếp mảng save hoặc object Tyrano
                    else if (parsed && (parsed.kind === "save" || Array.isArray(parsed) || parsed.data)) {
                        const rawVal = escape(JSON.stringify(parsed));
                        localStorage.setItem(`${PROJECT_ID}_tyrano_data`, rawVal);
                        localStorage.setItem(`tyrano_data`, rawVal);
                        await dbSetItem(`${PROJECT_ID}_tyrano_data`, rawVal);
                        await dbSetItem(`tyrano_data`, rawVal);
                        importedKeys++;
                    } else {
                        // Lưu thô
                        localStorage.setItem(`${PROJECT_ID}_tyrano_data`, escape(content));
                        await dbSetItem(`${PROJECT_ID}_tyrano_data`, escape(content));
                        importedKeys++;
                    }

                    if (importedKeys > 0) {
                        alert("✅ Đã nạp file Save thành công! Trò chơi sẽ tự động tải lại.");
                        window.location.reload();
                    } else {
                        alert("❌ Không tìm thấy dữ liệu save hợp lệ trong file!");
                    }
                } catch (err) {
                    alert(`❌ File save không hợp lệ hoặc bị hỏng! Chi tiết: ${err.message}`);
                }
            };
            reader.readAsText(file);
        };
        input.click();
    };

    // ─── 6. UI Nút Tải / Nạp Save ───────────────────────────────────────────
    function injectSaveExportUI() {
        if (document.getElementById("webSaveToolbox")) return;

        const btnContainer = document.createElement("div");
        btnContainer.id = "webSaveToolbox";
        btnContainer.style.cssText = `
            position: fixed;
            bottom: 6px;
            left: 6px;
            z-index: 999999;
            display: flex;
            gap: 6px;
            font-family: sans-serif;
            opacity: 0.45;
            transition: opacity 0.2s ease;
        `;

        btnContainer.onmouseenter = () => { btnContainer.style.opacity = "1"; };
        btnContainer.onmouseleave = () => { btnContainer.style.opacity = "0.45"; };

        btnContainer.innerHTML = `
            <button onclick="window.exportCurrentSaveToFile()" style="
                background: rgba(15, 23, 42, 0.75);
                color: #e2e8f0;
                border: 1px solid rgba(255, 255, 255, 0.25);
                padding: 4px 8px;
                border-radius: 4px;
                font-size: 11px;
                font-weight: 500;
                cursor: pointer;
                outline: none;
                backdrop-filter: blur(4px);
                box-shadow: 0 2px 4px rgba(0,0,0,0.3);
            " title="Tải file tiến trình save về máy (.sav)">📥 Tải save</button>
            <button onclick="window.importSaveFromFile()" style="
                background: rgba(15, 23, 42, 0.75);
                color: #e2e8f0;
                border: 1px solid rgba(255, 255, 255, 0.25);
                padding: 4px 8px;
                border-radius: 4px;
                font-size: 11px;
                font-weight: 500;
                cursor: pointer;
                outline: none;
                backdrop-filter: blur(4px);
                box-shadow: 0 2px 4px rgba(0,0,0,0.3);
            " title="Nạp file tiến trình save từ máy (.sav)">📤 Nạp save</button>
        `;

        document.body.appendChild(btnContainer);
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", injectSaveExportUI);
    } else {
        injectSaveExportUI();
    }
})();
