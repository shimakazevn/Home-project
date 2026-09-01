# HOME - Bản Dịch Việt Hóa Visual Novel

Dự án bản dịch tiếng Việt cho Visual Novel **HOME** (Mã tác phẩm: RJ01556529, phát triển bởi sorarevo).

- **Nhóm dịch**: Shimakaze VN
- **Trạng thái**: Hoàn thành 100% cốt truyện chính và giao diện trò chơi (10.273 câu thoại và mục UI)
- **Hỗ trợ nền tảng**: Windows PC & Trình duyệt Web (Web Mobile & Desktop)
- **Bản chơi online trên Web**: [https://shimakazevn.github.io/Home-project/](https://shimakazevn.github.io/Home-project/)

---

## 1. Hướng Dẫn Cài Đặt Bản PC

### Cách cài đặt bằng Auto-Patcher (Khuyên dùng)
1. Tải bộ cài đặt mới nhất tại: [https://github.com/shimakazevn/Home-project/releases](https://github.com/shimakazevn/Home-project/releases) (file `CAI_DAT_PATCH_VIET_HOA.exe`).
2. Đặt file `CAI_DAT_PATCH_VIET_HOA.exe` vào cùng thư mục chứa `HOME.exe` của game gốc.
3. Chạy `CAI_DAT_PATCH_VIET_HOA.exe`.
4. Bấm nút **Cài Đặt Patch Việt Hóa**. Quá trình vá file diễn ra trực tiếp vào thư mục `resources/app/` trong chưa đầy 1 giây.
5. Khi hoàn tất, bấm **Khởi Động Game** để bắt đầu chơi.

> **Khôi phục tiếng Nhật gốc**: Trong bảng cài đặt, bấm nút **Khôi Phục Bản Gốc**. Trình cài đặt sẽ tự phục hồi lại các file kịch bản tiếng Nhật ban đầu từ thư mục backup (`resources/backup_original/`).

---

## 2. Bản Web Standalone (Chơi Trực Tiếp Trên Trình Duyệt)

Phiên bản Web cho phép trải nghiệm toàn bộ game trực tiếp trên trình duyệt mà không cần cài đặt:
- Hỗ trợ lưu trữ tiến trình qua IndexedDB (không lo bị giới hạn dung lượng 5MB của localStorage).
- Giải mã âm thanh trực tiếp qua Web Audio Engine và kết nối tài nguyên CDN Blogger.
- Tự động nhận diện thiết bị và hỗ trợ thanh điều khiển HUD cho điện thoại.
- Giữ nguyên cấu hình font chữ, giao diện cài đặt, tốc độ đọc và âm thanh đồng bộ như bản PC.

---

## 3. Cấu Trúc Mã Nguồn

```
├── translation/              # Dữ liệu dịch nguồn (SSOT)
│   ├── text_export.xlsx      # Toàn bộ thoại kịch bản (9.922 dòng)
│   ├── text_export.csv       # Bản text UTF-8
│   ├── ui_export.xlsx        # Văn bản UI, lựa chọn, minigame, shop (351 mục)
│   └── ui_export.csv         # Bản text UI UTF-8
├── extracted_scripts/        # Kịch bản gốc tiếng Nhật đối chiếu (Read-only)
├── patch/                    # Payload kịch bản dịch và font cho bản PC
├── web/                      # Mã nguồn bản chạy trên nền Web
├── dist_pc/                  # Trình cài đặt bản PC
├── dist_web/                 # Bản build tĩnh xuất bản Web
├── tools/                    # Công cụ hỗ trợ và build
│   ├── build_pc_patch.py     # Đóng gói trình cài đặt PC
│   ├── build_web_release.py  # Đóng gói và deploy bản Web
│   ├── verify_patch_integrity.py # Kiểm thử cấu trúc tag và đối chiếu SHA256
│   └── unified_patch_installer.py # Mã nguồn bộ cài đặt Tkinter cho PC
├── BUILD_PATCH_PC.bat        # Lệnh nhanh build bản PC
├── BUILD_WEB.bat             # Lệnh nhanh build bản Web
└── DEPLOY_WEB.bat            # Lệnh nhanh deploy lên nhánh gh-pages
```

---

## 4. Dành Cho Người Tham Gia Dịch Thuật & Kỹ Thuật

### Chỉnh sửa kịch bản
1. Chỉnh sửa văn bản trong `translation/text_export.xlsx` hoặc `translation/ui_export.xlsx`.
2. Kiểm tra tính toàn vẹn cú pháp thẻ tag:
   ```bash
   python tools/verify_patch_integrity.py
   ```
3. Sau khi xác nhận không còn lỗi thẻ hoặc thiếu file, đẩy thay đổi lên repo:
   ```bash
   git push origin main
   ```
   Trình cài đặt PC trực tuyến sẽ tự động nhận diện bản cập nhật mới nhất từ kho lưu trữ mà không cần người dùng tải lại file cài đặt.

### Đóng gói hoặc Deploy bản Web
- Chạy `BUILD_WEB.bat` hoặc lệnh:
  ```bash
  python tools/build_web_release.py
  ```
- Deploy trực tiếp lên GitHub Pages:
  ```bash
  python tools/build_web_release.py --deploy
  ```

---

## 5. Phím Tắt Khi Chơi Bản PC

- **Enter / Space / Chuột trái**: Đọc tiếp câu tiếp theo
- **Ctrl (giữ)**: Tua nhanh qua đoạn đã đọc (Skip)
- **L**: Mở lịch sử hội thoại (Backlog)
- **H / Chuột phải**: Ẩn/hiện khung thoại để xem ảnh nền
- **Esc**: Mở menu chính (Lưu, Nạp, Cài đặt)

---

## 6. Lưu Ý Bản Quyền

- Game gốc thuộc bản quyền của tác giả **sorarevo** (DLsite: RJ01556529).
- Bản dịch tiếng Việt được thực hiện hoàn toàn phi thương mại nhằm mục đích chia sẻ và trải nghiệm ngôn ngữ cho cộng đồng.
- Vui lòng mua bản quyền game trên DLsite để ủng hộ tác giả.
