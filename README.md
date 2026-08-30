# HOME - Dự Án Việt Hóa Visual Novel Hoàn Chỉnh [RJ01556529]

> **Tựa tác phẩm:** HOME  
> **Nhà phát triển:** sorarevo (DLsite RJ01556529)  
> **Phiên bản Patch:** v2.0.0 (Bản Windows PC Hoàn Chỉnh 100%)  
> **Đội ngũ dịch thuật:** Shimakaze VN Translation Team  
> **Tiến độ:** **10.273 / 10.273 câu/mục (100% cốt truyện + 100% giao diện UI)**  

---

## 🧭 1. Cấu Trúc Thư Mục Làm Việc Chuẩn Chỉ (Workspace Architecture)

Dự án được quy hoạch theo chuẩn kiến trúc mô-đun hóa, đảm bảo tính phân tách rõ ràng và không bị lộn xộn:

```
E:\HOME_\
├── 📁 translation/              # [SSOT] Trung tâm dữ liệu nguồn dịch duy nhất
│   ├── text_export.xlsx         # Cơ sở dữ liệu 9.922 câu thoại kịch bản chính
│   ├── text_export.csv          # Bản sao lưu CSV dạng text chuẩn UTF-8-BOM
│   ├── ui_export.xlsx           # Cơ sở dữ liệu 351 mục giao diện, lựa chọn, minigame, shop
│   ├── ui_export.csv            # Bản sao lưu CSV giao diện
│   └── export_metadata.json     # Metadata đồng bộ kịch bản
│
├── 📁 extracted_scripts/        # [Baseline] 267 tệp kịch bản .ks gốc tiếng Nhật (Bất biến)
│   └── data/scenario/           # Dùng làm mốc đối chiếu bảo vệ mã lệnh hệ thống
│
├── 📁 patch/                    # [Staging] Thư mục tài nguyên patch cấu hình sẵn
│   ├── data/others/font/        # Font chữ Noto Sans JP (Medium & Bold) hỗ trợ tiếng Việt
│   ├── data/others/plugin/      # Plugin Auto-Wrap ngắt dòng và bản sửa lỗi CONFIG
│   └── tyrano/css/font.css      # Cấu hình CSS font chữ toàn cục cho engine
│
├── 📁 dist_pc/                  # [Release Payload] Đầu ra sau khi biên dịch
│   ├── CAI_DAT_PATCH_VIET_HOA.exe # Trình cài đặt Standalone 1-Click GUI (Tkinter High-DPI)
│   ├── CAI_DAT_NHANH.bat        # Batch khởi chạy cài đặt nhanh dự phòng
│   └── Huong_Dan_Cai_Dat.txt    # Tệp hướng dẫn cài đặt chi tiết cho End User
│
├── 📁 tools/                    # [Tooling Suite] Bộ công cụ tự động hóa & kiểm thử
│   ├── build_pc_patch.py        # Master Script tự động thực thi 7 bước đóng gói
│   ├── verify_patch_integrity.py# Cổng kiểm thử tự động (0 lỗi tag, 0 sót tiếng Nhật)
│   ├── reimport_scenario.py     # Trích xuất và vá kịch bản kèm bộ lọc Code Guard
│   ├── setup_fonts.py           # Cài đặt font chữ Noto Sans & CSS Auto-Wrap
│   └── unified_patch_installer.py# Engine cài đặt Standalone ASAR streaming
│
├── 📁 HOME_/                    # Thư mục game cục bộ dùng để kiểm thử trực tiếp (HOME.exe)
├── 📦 HOME_VietHoa_PC_Patch.zip # Tệp ZIP phân phối chính thức siêu nén (chỉ chứa 1 file EXE duy nhất ~19 MB)
├── ⚡ BUILD_PATCH_PC.bat        # 1-Click Biên dịch và kiểm thử toàn bộ bản patch
└── ⚡ CAI_DAT_PATCH_VIET_HOA.bat# 1-Click Khởi chạy trình cài đặt patch
```

---

## 🚀 2. Hướng Dẫn Dành Cho Người Chơi (End User)

### Cách cài đặt cực kỳ đơn giản (1-Click):
1. Tải về và giải nén tệp: **[`HOME_VietHoa_PC_Patch.zip`](file:///e:/HOME_/HOME_VietHoa_PC_Patch.zip)**.
2. Đặt các tệp trong thư mục giải nén vào cùng thư mục chứa file `HOME.exe` của game.
3. Chạy file **`CAI_DAT_PATCH_VIET_HOA.exe`** (hoặc nhấp đúp **`CAI_DAT_NHANH.bat`**).
4. Nhấn nút lớn: **⚡ [CÀI ĐẶT PATCH VIỆT HÓA]**.
5. Sau 5-7 giây khi quá trình vá file hoàn tất, nhấn **▶ [KHỞI ĐỘNG GAME]** để trải nghiệm!

> [!TIP]
> - **Khôi phục bản gốc:** Trình cài đặt tự động tạo bản sao lưu gốc tại `resources/app.asar.original.bak`. Bạn có thể nhấn nút **↩ [KHÔI PHỤC BẢN GỐC]** bất kỳ lúc nào để quay về tiếng Nhật nguyên bản.
> - **Không cần cài đặt phụ trợ:** File `.exe` độc lập 100%, không yêu cầu cài Python hay Node.js.

---

## 🛠️ 3. Hướng Dẫn Quy Trình Làm Việc (Dành Cho Dịch Giả & Kỹ Thuật Viên)

### A. Chỉnh sửa và cập nhật bản dịch:
- **Chỉnh sửa kịch bản cốt truyện:** Mở tệp [`translation/text_export.xlsx`](file:///e:/HOME_/translation/text_export.xlsx).
- **Chỉnh sửa giao diện UI / Nút bấm / Minigame:** Mở tệp [`translation/ui_export.xlsx`](file:///e:/HOME_/translation/ui_export.xlsx).
- **Quy tắc dịch thuật:** Tuân thủ hướng dẫn tại [`GEMINI_WORKSPACE_PROMPT.md`](file:///e:/HOME_/GEMINI_WORKSPACE_PROMPT.md) (Giữ nguyên thẻ `[...]`, giữ ngoặc `「...」`, dùng `[r]` để xuống dòng, không dùng MTL thô).

### B. Biên dịch và đóng gói chỉ với 1 thao tác:
Sau khi chỉnh sửa xong file Excel, chỉ cần nhấp đúp chuột vào:
👉 **[`BUILD_PATCH_PC.bat`](file:///e:/HOME_/BUILD_PATCH_PC.bat)** (hoặc chạy lệnh `python tools/build_pc_patch.py`).

Hệ thống sẽ tự động thực thi chu trình khép kín trong **12 giây**:
1. Cài đặt font chữ Noto Sans & cấu hình CSS Auto-Wrap.
2. Đọc dữ liệu từ `translation/` và xuất 267 tệp `.ks` có lọc **Code Guard**.
3. Đồng bộ Plugin giao diện, hình ảnh nút bấm, sửa lỗi menu CONFIG.
4. Chạy bộ kiểm thử tự động `verify_patch_integrity.py` (Đảm bảo 0 lỗi tag & 0 điểm mù).
5. Nén payload `patch_payload.zip`.
6. Biên dịch mã nguồn PyInstaller thành Standalone `CAI_DAT_PATCH_VIET_HOA.exe`.
7. Đóng gói tệp phát hành `HOME_VietHoa_PC_Patch.zip` và dọn dẹp sạch sẽ build cache.

---

## 🛡️ 4. Các Công Nghệ & Điểm Cải Tiến Kỹ Thuật Đột Phá

| Tính năng kỹ thuật | Mô tả chi tiết |
|---|---|
| **No-Archive Folder Patcher** | Giải nén 1 lần và vá trực tiếp lên thư mục `resources/app/` chỉ trong **0.16 giây** mà không cần repack lại file `app.asar` 8.04 GB. Hoàn toàn không gây nghẽn đĩa cứng HDD. |
| **Lightweight Backup (~17MB)** | Cơ chế sao lưu chọn lọc siêu nhẹ chỉ lưu kịch bản `.ks` và ảnh UI (loại trừ các file `.gif` nặng), giúp sao lưu và khôi phục 1-Click trong tích tắc. |
| **Code Guard Validator** | Bộ lọc thông minh tự động ngăn chặn việc ghi đè nhầm các thẻ code hệ thống (`[if]`, `[endif]`, `[jump]`, `[macro]`, `@eval`), loại bỏ hoàn toàn lỗi văng game `[if]と[endif]の数が一致しません`. |
| **High-DPI Aware GUI** | Giao diện cài đặt Tkinter Dark theme hiện đại, tự động co giãn theo tỷ lệ màn hình Windows (100%, 125%, 150%, 200%), không bị tràn khung hay che khuất nút bấm. |
| **Noto Sans VN & CSS Engine** | Nhúng trực tiếp font Noto Sans JP hỗ trợ tiếng Việt đầy đủ bảng mã Unicode dựng sẵn, khắc phục triệt để lỗi mất chữ, lỗi ô vuông và lỗi tràn viền hộp thoại. |
| **Config Preview Patch** | Nhúng thẳng dữ liệu xem trước tiếng Việt và cấu hình style vào `gMessageTester.js`, giải quyết dứt điểm lỗi khung xem trước Text Preview bị trắng tinh trong menu Cài đặt. |

---

## ⌨️ 5. Phím Tắt Điều Khiển Khi Chơi Game

* **Enter / Space / Chuột trái:** Đọc tiếp câu thoại kế tiếp.
* **Ctrl (giữ):** Tua nhanh cốt truyện (Fast Skip).
* **L:** Xem nhật ký hội thoại đã đọc (Backlog).
* **H / Chuột phải:** Ẩn / Hiện khung hội thoại để xem toàn cảnh hình nền hoặc CG.
* **Esc / Nút Menu:** Mở màn hình Cài đặt (CONFIG), Lưu (SAVE) / Nạp (LOAD) game.

---

## 📜 6. Bản Quyền & Tuyên Bố Miễn Trừ Trách Nhiệm

* Tác phẩm gốc thuộc toàn quyền sở hữu trí tuệ của nhà phát triển **sorarevo** (DLsite RJ01556529).
* Bản patch tiếng Việt này được thực hiện phi thương mại bởi **Shimakaze VN Translation Team** nhằm mục đích phục vụ cộng đồng học tập và trải nghiệm.
* Nghiêm cấm mọi hành vi mua bán, trục lợi thương mại từ bản patch này.
* Xin vui lòng mua bản quyền tác phẩm gốc trên DLsite để ủng hộ nhà phát triển tiếp tục ra mắt những tựa game hấp dẫn!
