# 📖 HƯỚNG DẪN PIPELINE VIỆT HÓA CHUẨN — DỰ ÁN HOME (RJ01556529)

> **Quy tắc VÀNG:** `translation/text_export.xlsx` (và `translation/ui_export.xlsx`) là **Nguồn Chân Lý Duy Nhất (Single Source of Truth)**. 
> Mọi chỉnh sửa bản dịch chỉ thực hiện trong file Excel / Google Sheets, sau đó chạy lệnh build tự động. **KHÔNG** sửa tay trực tiếp vào các file `.ks` trong `patch/`.

---

## 🏗️ 1. SƠ ĐỒ KIẾN TRÚC PIPELINE

```
  Kịch Bản Gốc (.ks)           Bảng Dịch (Excel / Google Sheets)
   [extracted_scripts]         [translation/text_export.xlsx (Story)]
            │                  [translation/ui_export.xlsx (UI)]
            │                                 │
            └───────────────┬─────────────────┘
                            │
                            ▼
                  tools/reimport_scenario.py
                            │
                            ▼
              ┌─────────────────────────────┐
              │     Thư mục patch/          │
              │  ├── data/scenario/ (*.ks)  │
              │  ├── data/others/font/      │
              │  └── tyrano/css/font.css    │
              └─────────────┬───────────────┘
                            │
            ┌───────────────┼───────────────┐
            ▼               ▼               ▼
    [Windows PC Full] [Android APK]     [iOS IPA]
       (HOME.exe)     (*.apk Launcher)   (*.ipa Full)
```

---

## 🚀 2. CÁC LỆNH BUILD PHÁT HÀNH CHÍNH
- **Build toàn bộ PC + Android + iOS:** `python tools/master_build_release.py`
- **Build gói cài đặt APK & IPA:** `python tools/build_ipa_and_apk.py`
- **Kiểm tra chất lượng dịch (QA):** `python tools/validate_translation.py`

---

## 📋 3. QUY TRÌNH LÀM VIỆC CHUẨN (STANDARD WORKFLOW)

### Bước 1: Trích xuất kịch bản mới nhất (Nếu cần làm mới)
```powershell
python tools/export_text.py
```
*Lệnh này quét toàn bộ 267 file `.ks` và xuất ra `translation/text_export.xlsx` và `translation/text_export.csv`.*

### Bước 2: Dịch thuật trên Google Sheets / Excel
- Mở file `translation/text_export.xlsx` (hoặc import `text_export.csv` lên Google Sheets).
- Sử dụng Custom Prompt từ [`GEMINI_WORKSPACE_PROMPT.md`](file:///e:/HOME_/GEMINI_WORKSPACE_PROMPT.md) để dịch.
- Điền bản dịch tiếng Việt vào cột `vietnamese` (Cột H).
- **Lưu ý:** Giữ nguyên các tag `[r]`, `[p]`, `[emb exp="..."]`, `[舜]`.

### Bước 3: Kiểm tra chất lượng & Toàn vẹn mã tag (QA Audit)
```powershell
python tools/validate_translation.py
```
*Script tự động kiểm tra: tỷ lệ dịch %, lỗi lệch ngoặc `[]`, mất tag điều khiển, từ ngữ cấm.*

### Bước 4: Tái nhập bản dịch & Xây dựng game tiếng Việt
```powershell
python tools/build_vietnamese_game.py
```
*Script thực hiện trọn gói: Copy font Noto Sans $\rightarrow$ Nhập bản dịch vào `.ks` $\rightarrow$ Áp dụng CSS Auto-Wrap $\rightarrow$ Đồng bộ vào `Game/resources/app/`.*

### Bước 5: Chạy thử nghiệm game trên máy tính
- Chạy trực tiếp `Game\HOME.exe` để kiểm tra hiển thị font, ngắt dòng tiếng Việt và thoại trong game.

### Bước 6: Đóng gói phát hành đồng thời cho 3 Hệ Điều Hành
```powershell
python tools/build_multiplatform.py
```
*Script tự động build và đóng gói xuất ra thư mục `build-releases/releases/`:*
1. **Windows PC:** `HOME_VN_Patch_Only_v1.0.zip` (kèm file hướng dẫn chép patch)
2. **Web / HTML5:** `HOME_VN_Web_HTML5_v1.0.zip` (kèm launcher `Choi_Tren_Trinh_Duyet.bat` 1-click)
3. **Android / Mobile:** `HOME_VN_Android_Mobile_v1.0.zip` (chuẩn JoiPlay / TyranoPlayer / Chrome Mobile)
4. **Bảng mã băm:** `SHA256SUMS.txt` chống giả mạo file.

---

## 🎨 3. CƠ CHẾ FONT & AUTO-WRAP (NOTO SANS + CSS)

1. **Bộ Font Chuẩn:** `Noto Sans JP Medium` & `Noto Sans JP Bold` hỗ trợ 100% tiếng Việt có dấu, độ phủ glyph 1.000.
2. **Cơ Chế Auto Word-Wrap:**
   - Tự động ngắt dòng tiếng Việt không bị gãy từ nhờ rule CSS `word-break: break-word` và `overflow-wrap: break-word`.
   - Cân chỉnh `line-height: 1.45em` giúp hiển thị dấu tiếng Việt rõ ràng, không bị dính chữ.

---

## 📦 4. BỘ CÔNG CỤ TRONG THƯ MỤC `tools/`

| Tên Công Cụ | Chức Năng Chính |
|---|---|
| [`export_scenario.py`](file:///e:/HOME_/tools/export_scenario.py) | Xuất kịch bản sang XLSX / CSV và tách riêng UI |
| [`reimport_scenario.py`](file:///e:/HOME_/tools/reimport_scenario.py) | Nhập bản dịch từ XLSX / CSV vào `.ks` chuẩn 1:1 |
| [`setup_fonts.py`](file:///e:/HOME_/tools/setup_fonts.py) | Cài đặt font Noto Sans & CSS Auto-Wrap |
| [`validate_translation.py`](file:///e:/HOME_/tools/validate_translation.py) | Quét lỗi tag, kiểm tra QA tự động |
| [`build_vietnamese_game.py`](file:///e:/HOME_/tools/build_vietnamese_game.py) | Xây dựng bản game hoàn chỉnh để test trên PC |
| [`build_multiplatform.py`](file:///e:/HOME_/tools/build_multiplatform.py) | Đóng gói xuất bản trọn gói 3 OS (Windows, Web, Android) |
