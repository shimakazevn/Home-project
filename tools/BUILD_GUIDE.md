# 📖 HƯỚNG DẪN XÂY DỰNG & PHÁT HÀNH — DỰ ÁN HOME (RJ01556529)

> **Quy tắc:** `translation/` là nguồn lưu trữ dữ liệu bản dịch tiếng Việt. 
> Dự án tập trung phát hành hai phiên bản chính:
> 1. **Web Game Online / PWA (GitHub Pages)**
> 2. **Bản cài đặt Patch PC (Windows)**

---

## 🏗️ 1. SƠ ĐỒ PHÁT HÀNH DỰ ÁN

```
  Dữ liệu Bản dịch Tiếng Việt
         [translation/]
               │
               ▼
   ┌───────────────────────┐
   │    Thư mục patch/     │
   │  ├── data/scenario/   │
   │  ├── data/others/     │
   │  └── tyrano/          │
   └───────────┬───────────┘
               │
       ┌───────┴───────┐
       ▼               ▼
  [Web Game]      [PC Patch]
 (GitHub Pages)   (Windows)
```

---

## 🚀 2. CÁC LỆNH BUILD & DEPLOY CHÍNH

- **Build Web Distribution:**
  ```powershell
  python tools/build_web_release.py
  ```
- **Deploy tự động lên GitHub Pages:**
  ```powershell
  python tools/deploy_gh_pages.py
  ```
- **Xây dựng bản Patch cho PC:**
  ```powershell
  python tools/build_vietnamese_game.py
  ```

---

## 🎨 3. CƠ CHẾ WEB GAME & PWA

1. **Blogger CDN & Audio Steganography:**
   - Hơn 2.700 assets hình ảnh & âm thanh được nạp trực tiếp qua CDN dung lượng cao.
   - Nhạc BGM/SE được giải mã Bit-Exact thời gian thực từ ảnh Stego PNG.

2. **Chế độ Chơi Ngoại Tuyến (Offline Mode):**
   - Tích hợp IndexedDB cho phép người chơi tải toàn bộ dữ liệu về thiết bị để chơi không cần mạng.

3. **Giao diện Tiện ích Độc quyền:**
   - Nút cài đặt góc trái tích hợp Lưu nhanh, Nạp nhanh, Quản lý sao lưu `.sav`, Bật/Tắt toàn màn hình và Tự đọc/Tua nhanh.
