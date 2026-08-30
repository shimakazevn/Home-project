# BỘ QUY TẮC BẤT KHẢ XÂM PHẠM DÀNH CHO AI AGENT (PROJECT RULES)
### Dự án: Việt Hóa Visual Novel HOME [RJ01556529]
### Áp dụng: Mọi AI Agent (Gemini, Antigravity, Claude, ChatGPT, Cursor, Copilot)

---

## 🛑 13 ĐIỀU RĂN TỐI THƯỢNG (THE 13 IRON COMMANDMENTS)

### 1. SINGLE SOURCE OF TRUTH (SSOT) DUY NHẤT TẠI `translation/`
* **Cơ sở dữ liệu kịch bản chính:** [`translation/text_export.xlsx`](file:///e:/HOME_/translation/text_export.xlsx) / [`.csv`](file:///e:/HOME_/translation/text_export.csv).
* **Cơ sở dữ liệu giao diện UI / Minigame / Shop:** [`translation/ui_export.xlsx`](file:///e:/HOME_/translation/ui_export.xlsx) / [`.csv`](file:///e:/HOME_/translation/ui_export.csv).
* **Cơ sở dữ liệu CDN Web Asset (Bảo vệ tuyệt đối):** [`upload_cache.db`](file:///e:/HOME_/upload_cache.db) (chứa 2.709 URL CDN cho bản Web - TUYỆT ĐỐI KHÔNG ĐƯỢC XÓA).
* **NGHIÊM CẤM:** Không được tạo file dịch rời rạc, file dictionary chia nhỏ (`p1_dict...`, `temp_trans...`) ở ngoài thư mục gốc hay trong `tools/`. Mọi dữ liệu dịch phải cập nhật trực tiếp vào `translation/`.

---

### 2. TỰA GAME CHÍNH XÁC DUY NHẤT: "HOME"
* Tên tác phẩm chuẩn là **HOME** [RJ01556529].
* **TUYỆT ĐỐI KHÔNG THÊM:** `(ROOM)` hoặc `ROOM` vào bất kỳ tài liệu, file mã nguồn, kịch bản, giao diện UI hay tiêu đề cửa sổ nào.

---

### 3. BẢO VỆ TÊN MẶC ĐỊNH NHÂN VẬT CHÍNH (`name.ks`)
* Màn hình nhập tên nhân vật chính (`name.ks`) bắt buộc phải luôn khởi tạo giá trị chữ cái Romaji/Latin:
  - Họ: **`Hidaka`**
  - Tên: **`Shun`**
* Thẻ `[edit]` phải luôn chứa thuộc tính `initial="Hidaka"` và `initial="Shun"`, đi kèm script gán biến:
  ```ks
  [iscript]
  f.familyname = 'Hidaka';
  f.name = 'Shun';
  [endscript]
  [edit left="430" top="392" width="200" height="40" size="26" maxchars="20" name="f.familyname" initial="Hidaka" reflect="false" ]
  [edit left="650" top="392" width="200" height="40" size="26" maxchars="20" name="f.name" initial="Shun" reflect="false" ]
  [iscript]
  $(".text_box").eq(0).val('Hidaka');
  $(".text_box").eq(1).val('Shun');
  [endscript]
  ```
* **NGHIÊM CẤM:** Tuyệt đối không để sót bất kỳ chữ Hán Nhật `日高` / `舜` nào hiển thị trong ô nhập liệu.

---

### 4. BẢO VỆ 100% MÃ LỆNH TYRANOSCRIPT (CODE GUARD)
* **TUYỆT ĐỐI KHÔNG DỊCH / KHÔNG SỬA / KHÔNG XÓA THẺ HỆ THỐNG:**
  `[if]`, `[endif]`, `[else]`, `[jump]`, `[call]`, `[macro]`, `[endmacro]`, `[iscript]`, `[endscript]`, `[commit]`, `[cm]`, `[tb_eval]`, `[chara_mod]`, `[playse]`.
* **Thẻ thoại phải giữ nguyên:** `[p]` (ở cuối câu), `[l]` (chờ click), `[r]` (xuống dòng), `[emb exp="..."]` (biến tên nhân vật/tiền tệ).
* **NGHIÊM CẤM DÙNG `\n`:** TyranoScript không nhận diện ký tự `\n` trong hộp thoại. Bắt buộc dùng thẻ `[r]` để xuống dòng.

---

### 5. ĐỐI CHIẾU CHỈ SỐ DÒNG CHÍNH XÁC (ZERO OVERWRITING)
* Trước khi thay thế kịch bản, phải đối chiếu với tệp gốc trong [`extracted_scripts/data/scenario/`](file:///e:/HOME_/extracted_scripts/data/scenario).
* Chỉ số `line_number` trong Excel phải trỏ chính xác vào dòng thoại của kịch bản gốc.
* Tuyệt đối không để dòng dịch trỏ nhầm vào dòng mã logic (như lệnh `[playse]` hoặc `[commit]`), vì sẽ làm treo engine.

---

### 6. BẮT BUỘC CHẠY KIỂM THỬ TỰ ĐỘNG & XÁC THỰC MÃ BĂM SHA256
* Trước khi cho phép cập nhật kịch bản hoặc đóng gói phân phối, AI **bắt buộc** phải chạy lệnh:
  ```bash
  python tools/verify_patch_integrity.py
  ```
* Bản patch chỉ được phép phát hành khi đạt chuẩn tuyệt đối:
  - ❌ Lỗi cú pháp / lệch thẻ Tag: **`0 lỗi`**
  - ⚠️ Lỗi tiếng Nhật chưa dịch: **`0 dòng`**
  - ❌ Lỗi thiếu Assets / Font / CSS: **`0 lỗi`**
  - 🔒 Xác thực chữ ký SHA256: **`360+ tệp khớp 100% (0 lỗi)`**

---

### 7. KIẾN TRÚC ONLINE AUTO-PATCHER & BẮT BUỘC `git push` ĐỒNG BỘ
* Hệ thống phân phối sử dụng kiến trúc **Trình Cài Đặt Trực Tuyến (Online Auto-Patcher & Updater)** tải qua `curl.exe` của Windows.
* **QUY TẮC BẮT BUỘC:** Mọi thay đổi kịch bản, sửa lỗi bản dịch sau khi test xong **BẮT BUỘC PHẢI CHẠY `git push origin main`** để tệp nén trên GitHub remote luôn đồng bộ với mã nguồn cục bộ. Người dùng chỉ cần bấm nút Cập nhật trên Launcher hiện có là có ngay bản mới mà không cần tải lại file EXE.

---

### 8. NGUYÊN TẮC: CẬP NHẬT KỊCH BẢN KHÔNG CẦN BUILD LẠI FILE EXE
* **Khi CHỈ sửa kịch bản (`.ks`), bản dịch, lời thoại, lựa chọn UI:**
  - **TUYỆT ĐỐI KHÔNG CHẠY LẠI PyInstaller** (`tools/build_pc_patch.py`) vì gây lãng phí thời gian và không cần thiết.
  - **Quy trình chuẩn:** Sửa/Re-export kịch bản $\rightarrow$ Chạy `verify_patch_integrity.py` $\rightarrow$ `git push origin main`.
* **KHI NÀO MỚI CẦN BUILD LẠI FILE EXE:**
  - **CHỈ DUY NHẤT KHI** có sự thay đổi trực tiếp trong mã nguồn của Trình cài đặt (`tools/unified_patch_installer.py`), ví dụ: cập nhật logic GUI Tkinter, nâng cấp động cơ tải `curl.exe`, thay đổi layout nút bấm Launcher hoặc đổi ảnh nền `installer_bg.png`.

---

### 9. KIẾN TRÚC NO-ARCHIVE & BACKUP CHỌN LỌC SIÊU NHẸ (17MB)
* Thay vì sao lưu tệp `app.asar` 8.04 GB gây nghẽn ổ cứng HDD, hệ thống sử dụng cơ chế **No-Archive Folder Patcher**:
  - Giải nén 1 lần `app.asar` $\rightarrow$ `resources/app/` (nếu chưa giải nén).
  - Tạo thư mục sao lưu chọn lọc `resources/backup_original/` chỉ chứa kịch bản `.ks` và ảnh UI (loại trừ file `.gif` nặng), dung lượng chỉ **~17 MB** (tạo trong 0.05s).
  - Tự động xóa các file `.asar` khổng lồ trùng lặp (`app.asar`, `app.asar.disabled`, `app.asar.original.bak`) để giải phóng **16+ GB** dung lượng đĩa.
  - Vá trực tiếp tệp Việt hóa vào `resources/app/` trong **0.16 giây**.
  - Khôi phục bản gốc tiếng Nhật 1-Click tức thì (0.1s) từ `resources/backup_original/`.

---

### 10. GIAO DIỆN LAUNCHER HUD VISUAL NOVEL
* Giao diện Trình cài đặt được thiết kế phong cách Game Launcher HUD:
  - Hiển thị hình nền Visual Novel chất lượng cao tràn màn hình (`tools/installer_bg.png`).
  - Thanh điều khiển Dock phẳng (Flat UI, High-contrast, Minimalist).
  - Không sử dụng hiệu ứng bo tròn tròn giả lập macOS/Apple.
  - Bật `ctypes.windll.shcore.SetProcessDpiAwareness` để hiển thị sắc nét trên mọi tỷ lệ màn hình Windows (100% -> 200%).

---

### 11. NHÚNG SẴN ASSETS & SỬA LỖI CONFIG TEXT PREVIEW
* Luôn đồng bộ đầy đủ font chữ tiếng Việt `NotoSansJP-Medium.ttf`, `NotoSansJP-Bold.ttf`, plugin `auto_wrap` và `tyrano/css/font.css`.
* Bản sửa lỗi xem trước văn bản trong menu Cài đặt (CONFIG) phải được nhúng trực tiếp vào `gMessageTester.js` để tránh lỗi AJAX bị Electron chặn.

---

### 12. GIỮ GÌN THƯ MỤC LÀM VIỆC SẠCH SẼ (CLEAN WORKSPACE)
* Không tạo các script one-off bừa bãi trong thư mục `tools/`.
* Chỉ duy trì và phát triển trên 5 công cụ chuẩn:
  1. `tools/build_pc_patch.py` (Master build)
  2. `tools/verify_patch_integrity.py` (Linter & QA & SHA256 Manifest)
  3. `tools/reimport_scenario.py` (Re-import & Code Guard)
  4. `tools/setup_fonts.py` (Font & CSS setup)
  5. `tools/unified_patch_installer.py` (Standalone Online Installer)
* Sau khi biên dịch PyInstaller, phải tự động dọn sạch các tệp tạm `build/`, `dist/`, `.spec`, `patch_payload.zip`.

---

### 13. TIÊU CHUẨN VĂN PHONG DỊCH THUẬT (ANTI-MTL)
* Thoát ý tự nhiên thuần Việt theo hướng dẫn tại [`GEMINI_WORKSPACE_PROMPT.md`](file:///e:/HOME_/GEMINI_WORKSPACE_PROMPT.md).
* Loại bỏ 100% ký tự ngắt âm tiếng Nhật `っ` / `ッ`, chuyển hóa thành cảm xúc tiếng Việt (`...`, `!`, `──`, hoặc từ đệm).
* Tuân thủ đúng ma trận xưng hô giữa các nhân vật (Shun, Nagi, Rinko, Tsubomi, Hayato).

---

### 14. BẢO VỆ TÍNH THUẦN KHIẾT CỦA THƯ MỤC PATCH PC (`patch/`)
* Thư mục `patch/` là gói payload tinh gọn chỉ dùng để vá game PC (chỉ chứa ~285 tệp).
* **CHỈ CHỨA:** Các tệp kịch bản `.ks` Việt hóa, font chữ Noto Sans (`data/others/font/`), plugin `auto_wrap` (`data/others/plugin/auto_wrap/`), `tyrano/css/font.css` và `data/system/Config.tjs`.
* **NGHIÊM CẤM:** Tuyệt đối không copy các thư mục plugin bên thứ ba (như `theme_kopanda_09_2/`) hay file ảnh gốc vào `patch/` vì game PC đã có sẵn trong `resources/app/`.

---

### 15. CẤM ÉP CSS SAI LỆCH VÀ BẢO VỆ THẺ TÊN NHÂN VẬT (`.chara_name_area`)
* **NGHIÊM CẤM:** Không được dùng CSS ép `font-size: ... !important` hay `line-height` cứng vào `.chara_name_area` hoặc `.message_inner`.
* Trong game **HOME**, nhà phát triển ẩn thẻ tên bằng `size=0` tại `(0, 0)` trong `message_window.ks` (tên nhân vật đã nằm trong thoại). Việc ép `font-size: 28px !important` sẽ làm hiện tên nhân vật ở góc trên màn hình và làm vỡ toàn bộ giao diện Vòng tròn hành động / Minigame.

---

### 16. ĐỊNH TUYẾN CHUẨN XÁC CỦA TRÌNH CÀI ĐẶT TRỰC TUYẾN (`parse_patch_from_zip`)
* Trình cài đặt `unified_patch_installer.py` khi tải `main.zip` từ GitHub **BẮT BUỘC** phải trỏ đúng vào thư mục **`patch/`** bên trong archive để lấy 285 tệp patch.
* **NGHIÊM CẤM:** Không được quét nhầm vào thư mục `data/` ở gốc repo (chứa hơn 1.100 tệp cũ) để tránh ghi đè làm hỏng bản cài PC của người dùng.

