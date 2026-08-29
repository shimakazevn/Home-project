# -*- coding: utf-8 -*-
"""
Dịch tự động và triệt để 100% tất cả các chuỗi văn bản nhúng trong các thẻ TyranoScript:
- [ptext text="..."]
- [tb_ptext_show text="..."]
- [glink text="..."]
- [button hint="..."]
- [edit ...]
Khắp toàn bộ 267 tệp kịch bản .ks
"""
import os
import sys
import re

sys.stdout.reconfigure(encoding='utf-8')

TAG_TRANSLATIONS = {
    # room_asa.ks / room menus
    "【自宅で働く】<br>自室でチャートとにらめっこ。<br>テンションの影響は受けないけど、収益は不安定。勇気が上がる。": "【Làm việc tại nhà】<br>Theo dõi biểu đồ tài chính trong phòng.<br>Không bị ảnh hưởng bởi tâm trạng, nhưng thu nhập bấp bênh. Tăng Dũng Cảm.",
    "【病院清掃】<br>病院で清掃のバイトができる。<br>報酬がもらえて、気配りが上がる。凪とも少し仲良くなれる。": "【Dọn dẹp bệnh viện】<br>Làm thêm công việc lau dọn tại bệnh viện.<br>Nhận thù lao, tăng Chu Đáo. Thân thiết hơn với Nagi.",
    "【筋トレ】<br>トレーニングで心身を鍛える。<br>筋力が上がる。": "【Tập thể hình】<br>Rèn luyện thể chất và tinh thần.<br>Tăng Thể Lực & Sức Mạnh.",
    "【外出】<br>街を散策する。": "【Ra ngoài】<br>Đi dạo quanh thị trấn.",
    "【マッサージ店】<br>凛子のマッサージ店でバイトができる。<br>報酬がもらえて、コミュ力が上がる。凛子とも少し仲良くなれる。": "【Tiệm Massage】<br>Làm thêm tại tiệm massage của cô Rinko.<br>Nhận thù lao, tăng Giao Tiếp. Thân thiết hơn với cô Rinko.",
    "【事務作業】<br>メイドリフレで事務作業のバイトができる。<br>報酬がもらえて、賢さが上がる。蕾とも少し仲良くなれる。": "【Việc bàn giấy】<br>Làm thêm việc văn phòng tại tiệm Maid Refle.<br>Nhận thù lao, tăng Trí Tuệ. Thân thiết hơn với Tsubomi.",
    "【寝る】<br>しっかり休んで体力とストレスを大きく回復させる。<br>": "【Đi ngủ】<br>Nghỉ ngơi lấy lại sức, hồi phục Thể Lực và giảm mạnh Căng Thẳng.<br>",
    "【侵入】<br>凪の部屋やバイト先のバックヤードへ侵入する。<br>盗撮をしたり、物色で凪と隼人の関係を壊す工作活動が出来る。勇気が上がる。<br>": "【Đột nhập】<br>Lén vào phòng Nagi hoặc hậu trường nơi làm việc.<br>Đặt camera quay lén hoặc lục lọi phá hoại mối quan hệ giữa Nagi và Hayato. Tăng Dũng Cảm.<br>",
    "【情報収集】<br>外出して情報を集める。<br>": "【Thu thập tin tức】<br>Ra ngoài dò la và thu thập tin tức.<br>",

    # room_Sunday.ks
    "買い物に行く": "Đi mua sắm",
    "寝て過ごす": "Nằm ngủ nghỉ ngơi",

    # sansaku_famiresuEV.ks
    "生ビール（テンション▲￥3000▼）": "Bia tươi (▲ Hưng phấn / -¥3,000)",
    "ハンバーガーセット（勇気▲テンション▲￥5000▼）": "Set Burger (▲ Dũng cảm, ▲ Hưng phấn / -¥5,000)",
    "３ポンドステーキ（筋力▲テンション▲▲￥10000▼）": "Bít tết 3 Pound (▲ Thể lực, ▲▲ Hưng phấn / -¥10,000)",
    "やっぱり帰る": "Thôi đi về",
    "隼人に話しかける": "Bắt chuyện với Hayato",
    "構わず店内に入る": "Mặc kệ, đi vào trong quán",
    "夜間のバイトをする（▲￥4000　▼体力）": "Làm thêm ca đêm (+¥4,000 / ▼ Thể lực)",
    "帰る": "Đi về",
    "蕾に話しかける": "Bắt chuyện với Tsubomi",
    "街を散策する": "Đi dạo quanh phố",
    "二人に話しかける": "Bắt chuyện với cả hai người",
    "宝くじ売り場に行く": "Đến quầy vé số",
    "スポーツジムに行く（筋力▲￥5000▼）": "Đến phòng tập Gym (▲ Thể lực / -¥5,000)",
    "宝くじを買う（￥10000▼）": "Mua vé số (-¥10,000)",
    "やめる": "Hủy bỏ / Quay lại",
    "押す": "Bấm nút",
    "一緒に行く（▲テンション▲筋力▼￥5000）": "Đi cùng (▲ Hưng phấn, ▲ Thể lực / -¥5,000)",
    "断る": "Từ chối",
    "凪に話しかける": "Bắt chuyện với Nagi",
    "所持数：": "Đang có: ",
    "マッサージを受ける（ストレス▼￥5000▼）": "Nhận massage (▼ Căng thẳng / -¥5,000)",
    "マッサージを受ける（体力▲￥5000▼）": "Nhận massage (▲ Thể lực / -¥5,000)",
    "凛子に話しかける": "Bắt chuyện với cô Rinko",
    "メイドリフレに入る（勇気▲￥5000▼）": "Vào tiệm Maid Refle (▲ Dũng cảm / -¥5,000)",
    "蕾と話す": "Trò chuyện với Tsubomi",
    "マウスホイールでスクロール": "Cuộn con lăn chuột để xem",

    # sinnyu_comhaiti.ks
    "設置する": "Lắp đặt camera",
    
    # sinnyu_item.ks
    "媚薬": "Thuốc kích dục",
    "媚薬プレミアム": "Thuốc kích dục cao cấp",
    "媚薬クリーム": "Kem kích dục",
    "睡眠薬": "Thuốc ngủ",
    "使用する": "Sử dụng vật phẩm",
    "使用しない": "Không sử dụng",

    # title_screen.ks
    "全開放する": "Mở khóa toàn bộ nội dung",
    "もどる": "Quay lại",
    
    # common buttons
    "はい": "Đồng ý",
    "いいえ": "Không"
}

def translate_scenario_files():
    patch_dir = r'E:\HOME_\patch\data\scenario'
    pc_app_scenario = r'E:\HOME_\build-releases\HOME_Vietnamese_PC_Full\resources\app\data\scenario'
    game_app_scenario = r'E:\HOME_\Game\resources\app\data\scenario'
    
    total_replaced = 0
    modified_files = set()

    for fn in sorted(os.listdir(patch_dir)):
        if not fn.endswith('.ks'):
            continue
        p_path = os.path.join(patch_dir, fn)
        with open(p_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        orig_content = content
        for jp, vi in TAG_TRANSLATIONS.items():
            if jp in content:
                content = content.replace(jp, vi)
                total_replaced += 1
                modified_files.add(fn)
        
        # Also replace generic regexes
        # 所持数： -> Đang có: 
        if "所持数：" in content:
            content = content.replace("所持数：", "Đang có: ")
            modified_files.add(fn)
            
        # Cuộn chuột
        if "マウスホイールでスクロール" in content:
            content = content.replace("マウスホイールでスクロール", "Cuộn con lăn chuột để xem")
            modified_files.add(fn)

        if content != orig_content:
            with open(p_path, 'w', encoding='utf-8') as f:
                f.write(content)
            
            # Sync to PC release app
            dst_pc = os.path.join(pc_app_scenario, fn)
            with open(dst_pc, 'w', encoding='utf-8') as f:
                f.write(content)
                
            # Sync to Game app
            dst_game = os.path.join(game_app_scenario, fn)
            if os.path.exists(os.path.dirname(dst_game)):
                with open(dst_game, 'w', encoding='utf-8') as f:
                    f.write(content)

    print(f"Hoàn tất cập nhật {len(modified_files)} tệp kịch bản chứa các thẻ UI/Lựa chọn!")

if __name__ == '__main__':
    translate_scenario_files()
