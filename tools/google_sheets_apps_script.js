/**
 * GOOGLE APPS SCRIPT: AUTO TRANSLATE CHO GOOGLE SHEETS BẰNG GEMINI
 * Hướng dẫn cài đặt:
 * 1. Mở Google Sheet chứa file text_export.xlsx (hoặc text_export.csv).
 * 2. Vào Tiện ích mở rộng (Extensions) -> Apps Script.
 * 3. Dán toàn bộ mã này vào và nhấn Lưu (Ctrl+S).
 * 4. Tải lại trang Google Sheet -> Menu "🚀 DỊCH GAME AI" sẽ xuất hiện trên thanh công cụ!
 */

const GEMINI_MODEL = "gemini-2.0-flash"; // hoặc gemini-1.5-flash

function onOpen() {
  const ui = SpreadsheetApp.getUi();
  ui.createMenu('🚀 DỊCH GAME AI')
    .addItem('🔑 Cài Đặt Gemini API Key', 'setApiKey')
    .addSeparator()
    .addItem('⚡ Dịch Các Dòng Đang Chọn', 'translateSelectedRows')
    .addItem('⏩ Dịch 50 Dòng Trống Tiếp Theo', 'translateNext50Rows')
    .addToUi();
}

function setApiKey() {
  const ui = SpreadsheetApp.getUi();
  const res = ui.prompt('CÀI ĐẶT GEMINI API KEY', 'Nhập khóa API Gemini (lấy miễn phí tại aistudio.google.com):', ui.ButtonSet.OK_CANCEL);
  if (res.getSelectedButton() == ui.Button.OK) {
    const key = res.getResponseText().trim();
    if (key) {
      PropertiesService.getUserProperties().setProperty('GEMINI_API_KEY', key);
      ui.alert('Thành công', 'Đã lưu Gemini API Key!', ui.ButtonSet.OK);
    }
  }
}

function getApiKey() {
  let key = PropertiesService.getUserProperties().getProperty('GEMINI_API_KEY');
  if (!key) {
    setApiKey();
    key = PropertiesService.getUserProperties().getProperty('GEMINI_API_KEY');
  }
  return key;
}

const SYSTEM_INSTRUCTION = `
Bạn là chuyên gia dịch thuật Visual Novel Nhật - Việt chất lượng cao.
5 ĐIỀU RĂN TỐI THƯỢNG:
1. BẢO VỆ 100% THẺ TAG: Tuyệt đối KHÔNG dịch, KHÔNG xóa ký tự trong [...] (như [r], [p], [emb exp="..."], [舜], [日高], [chara_mod ...]).
   - Khi gặp thẻ [chara_mod ...] hoặc [playse ...] gắn ở đầu câu thoại: GIỮ NGUYÊN NGUYÊN VẸN TOÀN BỘ THẺ [chara_mod ...], chỉ dịch phần lời thoại Tên「...」[p] phía sau.
   - ENGINE KHÔNG HỖ TRỢ \\n: Để xuống dòng trong hộp thoại game BẮT BUỘC dùng thẻ [r]. CẤM dùng '\\n' hoặc Enter xuống dòng vật lý trong ô.
2. GIỮ NGUYÊN DÒNG 1:1: Mảng trả về phải có số phần tử bằng đúng mảng đầu vào.
3. VĂN PHONG TỰ NHIÊN & TRUNG THỰC: Dịch mượt mà, thoát ý thuần Việt giàu cảm xúc NHƯNG TUYỆT ĐỐI KHÔNG BỊA ĐẶT / PHÓNG TÁC / LUYÊN THUYÊN sai nghĩa gốc; giữ đúng độ dài súc tích và nhịp điệu câu văn gốc để không tràn khung thoại.
   - TUYỆT ĐỐI BỎ KÝ TỰ NGẮT ÂM TIẾNG NHẬT 'っ' / 'ッ': Không để sót chữ 'っ' trong câu Việt. Chuyển thành dấu '...', '!', từ đệm cảm thán hoặc lặp âm ngắt (Sh-Shun...).
   - CẤM DÙNG EMOJI trong câu dịch.
4. MA TRẬN XƯNG HÔ & CẤM KỴ TUYỆT ĐỐI:
   - CẤM NHẦM QUAN HỆ MẸ CON: Rinko & Tsubomi là MẸ CON RUỘT -> Bắt buộc xưng "MẸ - CON" (kể cả trong cảnh 3P). CẤM xưng chị - em!
   - CẤM Tsubomi gọi Shun là "anh hai" ("Anh hai/お兄ちゃん" CHỈ DÙNG CHO ANH RUỘT HAYATO; với Shun gọi là "anh" / "chủ nhân").
   - Nagi: thường ngày tớ - Shun-chan; 18+/hẹn hò: em - anh Shun; với bạn trai Hayato: em - anh Hayato.
   - Rinko: thường ngày cô/chị - cháu/Shun-kun; 18+: em - anh / chị - em; với các con (Hayato, Tsubomi): MẸ - CON.
   - Tsubomi: thường ngày em - anh (tsundere); làm Maid: em - Quý khách/Chủ nhân; 18+: em - anh; với Hayato: em - anh hai; với Rinko: con - mẹ.
   - Hayato: tôi - cậu / anh - chú mày (thù địch: tao - mày); với Nagi: anh - em; với mẹ Rinko: con - mẹ; với Tsubomi: anh - em.
   - Nam chính độc thoại （...）: tôi / mình.
5. BẢNG TỪ 18+ & VĂN PHONG H-SCENE:
   - DỊCH BÌNH THƯỜNG, TRỰC TIẾP, CẤM SẾN SÚA / HOA MỸ QUÁ ĐÀ (Không dùng văn phong ngôn tình diễm tình).
   - Bốn cấp độ nhạy cảm Kaihatsu: Cấp 0 (Chống cự ngượng ngùng) -> Cấp 1 (Chớm thức tỉnh khoái cảm) -> Cấp 2 (Chủ động uốn éo rên rỉ) -> Cấp 3 (Nghiện dâm, cầu xin bắn vào trong).
   - パイズリ -> kẹp ngực / ép ngực (CẤM dùng paizuri)
   - おちんちん / 肉棒 -> con cu / dương vật (CẤM dùng cây cu)
   - おまんこ / 秘部 -> cô bé / chỗ đó / bướm (CẤM dùng âm đạo trong dirty talk)
   - フェラ -> bú cu / mút cu (CẤM dùng oral)
   - 中出し -> xuất tinh trong / bắn vào trong
`;

function translateBatch(items) {
  const apiKey = getApiKey();
  if (!apiKey) return null;

  const url = `https://generativelanguage.googleapis.com/v1beta/models/${GEMINI_MODEL}:generateContent?key=${apiKey}`;
  const userPrompt = `Hãy dịch các câu sau sang tiếng Việt (Format JSON mảng [ { "id": number, "vietnamese": string } ]):\n` + JSON.stringify(items);

  const payload = {
    contents: [{ role: "user", parts: [{ text: userPrompt }] }],
    systemInstruction: { parts: [{ text: SYSTEM_INSTRUCTION }] },
    generationConfig: {
      temperature: 0.2,
      responseMimeType: "application/json"
    }
  };

  const options = {
    method: "post",
    contentType: "application/json",
    payload: JSON.stringify(payload),
    muteHttpExceptions: true
  };

  try {
    const response = UrlFetchApp.fetch(url, options);
    const json = JSON.parse(response.getContentText());
    if (json.candidates && json.candidates[0].content.parts[0].text) {
      return JSON.parse(json.candidates[0].content.parts[0].text);
    }
  } catch (e) {
    Logger.log("Lỗi gọi Gemini API: " + e);
  }
  return null;
}

function translateSelectedRows() {
  const sheet = SpreadsheetApp.getActiveSheet();
  const range = sheet.getActiveRange();
  const startRow = range.getRow();
  const numRows = range.getNumRows();

  if (startRow === 1) {
    SpreadsheetApp.getUi().alert('Vui lòng không chọn hàng tiêu đề!');
    return;
  }

  processRows(sheet, startRow, numRows);
}

function translateNext50Rows() {
  const sheet = SpreadsheetApp.getActiveSheet();
  const lastRow = sheet.getLastRow();
  const vnValues = sheet.getRange(2, 8, lastRow - 1, 1).getValues();

  let targetStart = -1;
  let count = 0;

  for (let i = 0; i < vnValues.length; i++) {
    const val = String(vnValues[i][0] || '').trim();
    if (!val || val.toLowerCase() === 'none') {
      if (targetStart === -1) targetStart = i + 2;
      count++;
      if (count >= 50) break;
    }
  }

  if (targetStart === -1) {
    SpreadsheetApp.getUi().alert('Tất cả các dòng trong bảng đã được dịch xong 100%!');
    return;
  }

  processRows(sheet, targetStart, count);
}

function processRows(sheet, startRow, numRows) {
  const data = sheet.getRange(startRow, 1, numRows, 10).getValues();
  const items = [];
  const rowIndices = [];

  for (let i = 0; i < data.length; i++) {
    const rowId = data[i][0]; // Cột A
    const speaker = data[i][4]; // Cột E
    const origJp = data[i][6]; // Cột G
    const sceneType = data[i][9]; // Cột J

    if (origJp) {
      items.push({ id: rowId, speaker: speaker, text: origJp, scene: sceneType });
      rowIndices.push(startRow + i);
    }
  }

  if (items.length === 0) return;

  SpreadsheetApp.getActiveSpreadsheet().toast(`Đang gửi ${items.length} dòng tới Gemini...`, 'Đang dịch', 10);
  const result = translateBatch(items);

  if (result && Array.isArray(result)) {
    const map = {};
    result.forEach(r => { if (r.id) map[r.id] = r.vietnamese; });

    for (let i = 0; i < items.length; i++) {
      const id = items[i].id;
      if (map[id]) {
        sheet.getRange(rowIndices[i], 8).setValue(map[id]); // Ghi vào Cột H (vietnamese)
      }
    }
    SpreadsheetApp.getActiveSpreadsheet().toast(`Đã dịch xong và lưu ${items.length} dòng!`, 'Hoàn tất', 5);
  } else {
    SpreadsheetApp.getUi().alert('Lỗi: Không nhận được kết quả từ Gemini API. Vui lòng kiểm tra API Key hoặc kết nối mạng.');
  }
}
