# BỘ QUY TẮC BẤT KHẢ XÂM PHẠM DÀNH CHO AI AGENT (PROJECT RULES)
### Dự án: Việt Hóa Visual Novel HOME (ROOM) [RJ01556529]
### Áp dụng: Mọi AI Agent (Gemini, Antigravity, Claude, ChatGPT, Cursor, Copilot)

---

## 🛑 10 ĐIỀU RĂN TỐI THƯỢNG (THE 10 IRON COMMANDMENTS)

### 1. SINGLE SOURCE OF TRUTH (SSOT) DUY NHẤT TẠI `translation/`
* **Cơ sở dữ liệu kịch bản chính:** [`translation/text_export.xlsx`](file:///e:/HOME_/translation/text_export.xlsx) / [`.csv`](file:///e:/HOME_/translation/text_export.csv).
* **Cơ sở dữ liệu giao diện UI / Minigame / Shop:** [`translation/ui_export.xlsx`](file:///e:/HOME_/translation/ui_export.xlsx) / [`.csv`](file:///e:/HOME_/translation/ui_export.csv).
* **Cơ sở dữ liệu CDN Web Asset (Bảo vệ tuyệt đối):** [`upload_cache.db`](file:///e:/HOME_/upload_cache.db) (chứa 2.709 URL CDN cho bản Web - TUYỆT ĐỐI KHÔNG ĐƯỢC XÓA).
* **NGHIÊM CẤM:** Không được tạo file dịch rời rạc, file dictionary chia nhỏ (`p1_dict...`, `temp_trans...`) ở ngoài thư mục gốc hay trong `tools/`. Mọi dữ liệu dịch phải cập nhật trực tiếp vào `translation/`.

---

### 2. BẢO VỆ 100% MÃ LỆNH TYRANOSCRIPT (CODE GUARD)
* **TUYỆT ĐỐI KHÔNG DỊCH / KHÔNG SỬA / KHÔNG XÓA THẺ HỆ THỐNG:**
  `[if]`, `[endif]`, `[else]`, `[jump]`, `[call]`, `[macro]`, `[endmacro]`, `[iscript]`, `[endscript]`, `[commit]`, `[cm]`, `[tb_eval]`, `[chara_mod]`, `[playse]`.
* **Thẻ thoại phải giữ nguyên:** `[p]` (ở cuối câu), `[l]` (chờ click), `[r]` (xuống dòng), `[emb exp="..."]` (biến tên nhân vật/tiền tệ).
* **NGHIÊM CẤM DÙNG `\n`:** TyranoScript không nhận diện ký tự `\n` trong hộp thoại. Bắt buộc dùng thẻ `[r]` để xuống dòng.

---

### 3. ĐỐI CHIẾU CHỈ SỐ DÒNG CHÍNH XÁC (ZERO OVERWRITING)
* Trước khi thay thế kịch bản, phải đối chiếu với tệp gốc trong [`extracted_scripts/data/scenario/`](file:///e:/HOME_/extracted_scripts/data/scenario).
* Chỉ số `line_number` trong Excel phải trỏ chính xác vào dòng thoại của kịch bản gốc.
* Tuyệt đối không để dòng dịch trỏ nhầm vào dòng mã logic (như lệnh `[playse]` hoặc `[commit]`), vì sẽ làm treo engine (ví dụ lỗi đơ tại `name.ks`).

---

### 4. BẮT BUỘC CHẠY KIỂM THỬ TỰ ĐỘNG TRƯỚC KHI ĐÓNG GÓI
* Trước khi cho phép biên dịch Installer hoặc tạo bản phân phối, AI **bắt buộc** phải chạy lệnh:
  ```bash
  python tools/verify_patch_integrity.py
  ```
* Bản build chỉ được phép tạo ra khi đạt chuẩn tuyệt đối:
  - ❌ Lỗi cú pháp / lệch thẻ Tag: **`0 lỗi`**
  - ⚠️ Lỗi tiếng Nhật chưa dịch: **`0 dòng`**
  - ❌ Lỗi thiếu Assets / Font / CSS: **`0 lỗi`**

---

### 5. KIẾN TRÚC NO-ARCHIVE & BACKUP CHỌN LỌC SIÊU NHẸ (17MB)
* Thay vì sao lưu tệp `app.asar` 8.04 GB gây nghẽn ổ cứng HDD, hệ thống sử dụng cơ chế **No-Archive Folder Patcher**:
  - Giải nén 1 lần `app.asar` $\rightarrow$ `resources/app/` (nếu chưa giải nén).
  - Tạo thư mục sao lưu chọn lọc `resources/backup_original/` chỉ chứa kịch bản `.ks` và ảnh UI (loại trừ file `.gif` nặng), dung lượng chỉ **~17 MB** (tạo trong 0.05s).
  - Tự động xóa các file `.asar` khổng lồ trùng lặp (`app.asar`, `app.asar.disabled`, `app.asar.original.bak`) để giải phóng **16+ GB** dung lượng đĩa.
  - Vá trực tiếp tệp Việt hóa vào `resources/app/` trong **0.16 giây**.
  - Khôi phục bản gốc tiếng Nhật 1-Click tức thì (0.1s) từ `resources/backup_original/`.

---

### 6. GIAO DIỆN HIGH-DPI & TRẢI NGHIỆM END USER
* Mọi giao diện cài đặt (GUI Tkinter) phải bật `ctypes.windll.shcore.SetProcessDpiAwareness` để hiển thị sắc nét trên mọi tỷ lệ màn hình Windows (100% -> 200%).
* Các nút hành động chính (**⚡ CÀI ĐẶT PATCH**, **▶ KHỞI ĐỘNG GAME**, **↩ KHÔI PHỤC BẢN GỐC**) phải được cố định ở vị trí trung tâm, không bị log text đẩy tràn khung.

---

### 7. NHÚNG SẴN ASSETS & SỬA LỖI CONFIG TEXT PREVIEW
* Luôn đồng bộ đầy đủ font chữ tiếng Việt `NotoSansJP-Medium.ttf`, `NotoSansJP-Bold.ttf`, plugin `auto_wrap` và `tyrano/css/font.css`.
* Bản sửa lỗi xem trước văn bản trong menu Cài đặt (CONFIG) phải được nhúng trực tiếp vào `gMessageTester.js` để tránh lỗi AJAX bị Electron chặn.

---

### 8. GIỮ GÌN THƯ MỤC LÀM VIỆC SẠCH SẼ (CLEAN WORKSPACE)
* Không tạo các script one-off bừa bãi trong thư mục `tools/`.
* Chỉ duy trì và phát triển trên 5 công cụ chuẩn:
  1. `tools/build_pc_patch.py` (Master build)
  2. `tools/verify_patch_integrity.py` (Linter & QA)
  3. `tools/reimport_scenario.py` (Re-import & Code Guard)
  4. `tools/setup_fonts.py` (Font & CSS setup)
  5. `tools/unified_patch_installer.py` (Standalone installer)
* Sau khi biên dịch PyInstaller, phải tự động dọn sạch các tệp tạm `build/`, `dist/`, `.spec`, `patch_payload.zip`.

---

### 9. TIÊU CHUẨN VĂN PHONG DỊCH THUẬT (ANTI-MTL)
* Thoát ý tự nhiên thuần Việt theo hướng dẫn tại [`GEMINI_WORKSPACE_PROMPT.md`](file:///e:/HOME_/GEMINI_WORKSPACE_PROMPT.md).
* Loại bỏ 100% ký tự ngắt âm tiếng Nhật `っ` / `ッ`, chuyển hóa thành cảm xúc tiếng Việt (`...`, `!`, `──`, hoặc từ đệm).
* Tuân thủ đúng ma trận xưng hô giữa các nhân vật (Shun, Nagi, Rinko, Tsubomi, Hayato).

---

### 10. DUY TRÌ TÀI LIỆU DỰ ÁN (DOCUMENTATION INTEGRITY)
* Luôn cập nhật [`README.md`](file:///e:/HOME_/README.md) và tạo báo cáo [`walkthrough.md`](file:///C:/Users/Shimakaze/.gemini/antigravity/brain/85ce67f9-a1be-41ff-97cb-352b42945515/walkthrough.md) khi có bất kỳ thay đổi lớn về pipeline hoặc kịch bản.
