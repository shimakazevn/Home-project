# HOME - Dự án Việt Hóa Visual Novel (sorarevo)

Dự án dịch thuật tiếng Việt hoàn chỉnh cho tựa game Visual Novel **HOME** (Mã tác phẩm: `RJ01556529` - Phát triển bởi **sorarevo**).

---

## 🧭 Chiến lược Phát triển Dự án (Development Roadmap)

> [!IMPORTANT]
> **ĐỊNH HƯỚNG HIỆN TẠI: TẬP TRUNG 100% HOÀN THIỆN BẢN WINDOWS PC TRƯỚC**
> - **Giai đoạn 1 (Đang thực hiện):** Tập trung toàn bộ nguồn lực để biên dịch, hiệu đính, vá lỗi kịch bản, sửa nhãn nhảy (`*label`), căn chỉnh font chữ Noto Sans, kiểm thử toàn bộ các nhánh cốt truyện (Nagi, Rinko, Tsubomi) và đóng gói trực tiếp vào bản cài đặt Windows PC (`HOME.exe`).
> - **Giai đoạn 2 (Thực hiện sau khi PC hoàn tất 100%):** Sử dụng toàn bộ bản dịch chuẩn và ổn định từ bản PC để refactor, tối ưu hóa lại CDN/Web Audio và đồng bộ lên phiên bản Web Online (GitHub Pages).

---

## 🛠️ Hướng dẫn Làm việc & Cập nhật Bản PC (Dành cho Dev / Tester)

### 1. Cấu trúc dữ liệu nguồn dịch
- **Lời thoại kịch bản chính:** [translation/text_export.xlsx](file:///e:/HOME_/translation/text_export.xlsx) *(10,245 câu)*
- **Giao diện & Nút bấm bổ sung:** [translation/ui_export.csv](file:///e:/HOME_/translation/ui_export.csv)
- **Engine mã nguồn PC:** [unpacked_game_app/](file:///e:/HOME_/unpacked_game_app)
- **Thư mục game thực thi:** [HOME_/](file:///e:/HOME_/HOME_) (chứa `HOME.exe` và `resources/app.asar`)

### 2. Quy trình Cập nhật & Repack 1-Click
Mỗi khi bạn chỉnh sửa xong câu từ trong file Excel hoặc CSV:
1. Lưu file Excel / CSV.
2. Nhấp đúp vào file kịch bản tự động tại thư mục gốc:
   👉 **[REPACK_GAME_PC.bat](file:///e:/HOME_/REPACK_GAME_PC.bat)**
3. Công cụ sẽ tự động:
   - Xuất toàn bộ 267 tệp kịch bản `.ks` tiếng Việt chuẩn.
   - Tự động sửa các lỗi typo nhãn gốc của nhà phát triển Nhật.
   - Tích hợp font chữ tiếng Việt `Noto Sans JP` và plugin ngắt dòng tự động `auto_wrap`.
   - Repack toàn bộ ~8.2 GB tài nguyên (hình ảnh, video, âm thanh gốc + patch tiếng Việt) vào tệp `resources/app.asar`.
4. Mở file **[HOME_/HOME.exe](file:///e:/HOME_/HOME_/HOME.exe)** để kiểm thử ngay lập tức.

---

## 🎮 Hệ thống Lưu trữ (Save Game) trên PC

- Bản PC được cấu hình `configSave=file` để lưu và nạp trực tiếp các tệp `.sav` chuẩn trên ổ cứng:
  - `HOME_/HOME_tyrano_data.sav`: Dữ liệu 5 slot lưu game chính.
  - `HOME_/HOME_sf.sav`: Dữ liệu System Flags (mở khóa CG gallery, hồi tưởng, kỷ niệm).
  - `HOME_/HOME_tyrano_quick_save.sav`: Dữ liệu Lưu nhanh (Quick Save).
- Để chuyển save từ bản web sang PC, bạn chỉ cần nạp file save vào `HOME_tyrano_data.sav` thông qua công cụ import có sẵn trong thư mục `tools/`.

---

## ⌨️ Phím tắt khi chơi bản PC

* **Enter / Space / Click chuột trái:** Đọc tiếp câu thoại
* **Ctrl (giữ):** Tua nhanh cốt truyện (Fast Skip)
* **L:** Mở nhật ký hội thoại đã đọc (Backlog)
* **H / Click chuột phải:** Ẩn/Hiện khung thoại để ngắm hình nền hoặc CG
* **Esc / Nút Menu:** Mở màn hình Cài đặt, Lưu/Nạp game

---

## 📜 Bản quyền & Miễn trừ trách nhiệm

* Tác phẩm gốc thuộc bản quyền của nhà phát triển **sorarevo** (DLsite RJ01556529).
* Bản patch tiếng Việt này được thực hiện phi thương mại nhằm mục đích chia sẻ và học tập trong cộng đồng.
* Vui lòng mua bản quyền tác phẩm gốc trên DLsite để ủng hộ tác giả!
