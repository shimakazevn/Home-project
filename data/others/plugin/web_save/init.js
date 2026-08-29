// ══════════════════════════════════════════════════════════════════════════════
// HOME - Web Save System (IndexedDB + Export/Import .sav + Save Code)
// Chống tràn bộ nhớ 5MB, bảo vệ dữ liệu save vĩnh viễn trên trình duyệt
// ══════════════════════════════════════════════════════════════════════════════

(function() {
    console.log("[Web Save] Đang khởi tạo hệ thống lưu trữ IndexedDB...");

    // ─── 1. IndexedDB Wrapper ───────────────────────────────────────────────
    const DB_NAME = "HOME_Game_SaveDB";
    const DB_VERSION = 1;
    const STORE_NAME = "save_slots";

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
        const db = await openSaveDB();
        return new Promise((resolve, reject) => {
            const tx = db.transaction(STORE_NAME, "readwrite");
            const store = tx.objectStore(STORE_NAME);
            const req = store.put({ key, value, updatedAt: Date.now() });
            req.onsuccess = () => resolve();
            req.onerror = () => reject(req.error);
        });
    }

    async function dbGetItem(key) {
        const db = await openSaveDB();
        return new Promise((resolve, reject) => {
            const tx = db.transaction(STORE_NAME, "readonly");
            const store = tx.objectStore(STORE_NAME);
            const req = store.get(key);
            req.onsuccess = () => resolve(req.result ? req.result.value : null);
            req.onerror = () => reject(req.error);
        });
    }

    // ─── 2. Xuất & Nhập file .sav ───────────────────────────────────────────
    window.exportCurrentSaveToFile = async function() {
        try {
            // Lấy toàn bộ save data từ IndexedDB hoặc localStorage
            let data = await dbGetItem("tyrano_data");
            if (!data) {
                data = localStorage.getItem("tyrano_data");
            }
            if (!data) {
                alert("Chưa có dữ liệu lưu nào trong game!");
                return;
            }

            const blob = new Blob([data], { type: "application/json" });
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
            alert(`Lỗi xuất file: ${err.message}`);
        }
    };

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
                    // Validate JSON
                    JSON.parse(content);

                    // Lưu vào cả IndexedDB lẫn localStorage để tương thích 100%
                    await dbSetItem("tyrano_data", content);
                    try { localStorage.setItem("tyrano_data", content); } catch(ex) {}

                    alert("✅ Đã nạp file Save thành công! Trò chơi sẽ tự động tải lại.");
                    window.location.reload();
                } catch (err) {
                    alert("❌ File save không hợp lệ hoặc bị hỏng!");
                }
            };
            reader.readAsText(file);
        };
        input.click();
    };

    // ─── 3. Tạo nút Export/Import tối giản ở góc dưới bên trái ────────────────
    function injectSaveExportUI() {
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
            opacity: 0.35;
            transition: opacity 0.2s ease;
        `;

        btnContainer.onmouseenter = () => { btnContainer.style.opacity = "0.9"; };
        btnContainer.onmouseleave = () => { btnContainer.style.opacity = "0.35"; };

        btnContainer.innerHTML = `
            <button onclick="window.exportCurrentSaveToFile()" style="
                background: rgba(0, 0, 0, 0.5);
                color: #cbd5e1;
                border: 1px solid rgba(255, 255, 255, 0.2);
                padding: 3px 7px;
                border-radius: 4px;
                font-size: 11px;
                cursor: pointer;
                outline: none;
            " title="Tải file tiến trình save về máy">Tải save</button>
            <button onclick="window.importSaveFromFile()" style="
                background: rgba(0, 0, 0, 0.5);
                color: #cbd5e1;
                border: 1px solid rgba(255, 255, 255, 0.2);
                padding: 3px 7px;
                border-radius: 4px;
                font-size: 11px;
                cursor: pointer;
                outline: none;
            " title="Nạp file tiến trình save từ máy">Nạp save</button>
        `;

        document.body.appendChild(btnContainer);
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", injectSaveExportUI);
    } else {
        injectSaveExportUI();
    }
})();
