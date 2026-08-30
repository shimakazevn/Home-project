
[_tb_system_call storage=system/_komyu_nagi_kaeru.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top

[tb_eval  exp="f.komyu_koudoukaisuu=5"  name="komyu_koudoukaisuu"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.love=0"  name="love"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="kyara_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*set"  ]
[cm  ]
[tb_ptext_hide  time="0"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="komyu_nagi_kaeru.ks"  target="*nagi2"  cond="f.koukando_nagi>29"  ]
[call  storage="komyu_nagi_kaeru.ks"  target="*nagi1"  cond="f.koukando_nagi<30"  ]
[tb_show_message_window  ]
*end_top

[tb_start_tyrano_code]
;好感度によって雰囲気の表記が変わる（凪）
;嫌い→気まずい　苦手→気まずい　普通→和やか　友好→楽しげ　好き→楽しげ

;好感度によって行動回数の表記が変わる（凪）
;嫌い0→1苦手1-9→1普通10-19→2友好20-29→2好き30→
;3淫猥（飼い馴らし状態※未実装）もしくは淫猥変数が4以上

[if exp="f.komyu_kaeru_inwai >= 4 "]
[jump target="*huniki_5"]

[elsif exp="f.koukando_nagi >= 30 "]
[jump target="*huniki_4"]

[elsif exp="f.koukando_nagi == 0 "]
[jump target="*huniki_1"]

[elsif exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9 "]
[jump target="*huniki_1"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19 "]
[jump target="*huniki_1"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29 "]
[jump target="*huniki_2"]

[endif]


[_tb_end_tyrano_code]

*huniki_1

[call  storage="komyu_nagi_kaeru_hato.ks"  target="*set"  ]
[tb_eval  exp="f.komyu_huniki=0"  name="komyu_huniki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[chara_show  name="komyu_huniki"  time="0"  wait="false"  storage="chara/163/huniki_0.png"  width="155"  height="46"  left="-1"  top="90"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*koudou"  ]
*huniki_2

[tb_eval  exp="f.love=10"  name="love"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*set"  ]
[tb_eval  exp="f.komyu_huniki=2"  name="komyu_huniki"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[chara_show  name="komyu_huniki"  time="0"  wait="false"  storage="chara/163/huniki_1.png"  width="155"  height="46"  left="-1"  top="90"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*koudou"  ]
*huniki_3

[tb_eval  exp="f.love=20"  name="love"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*set"  ]
[tb_eval  exp="f.komyu_huniki=4"  name="komyu_huniki"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[chara_show  name="komyu_huniki"  time="0"  wait="false"  storage="chara/163/huniki_2.png"  width="155"  height="46"  left="-1"  top="90"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*koudou"  ]
*huniki_4

[tb_eval  exp="f.love=30"  name="love"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*set"  ]
[tb_eval  exp="f.komyu_huniki=6"  name="komyu_huniki"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[chara_show  name="komyu_huniki"  time="0"  wait="false"  storage="chara/163/huniki_2.png"  width="155"  height="46"  left="-1"  top="90"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*koudou"  ]
*huniki_5

[tb_eval  exp="f.komyu_huniki=8"  name="komyu_huniki"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[chara_show  name="komyu_huniki"  time="0"  wait="false"  storage="chara/163/huniki_3.png"  width="155"  height="46"  left="-1"  top="90"  reflect="false"  ]
*huniki_5_2

[chara_hide  name="komyu_huniki"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_huniki"  time="0"  wait="false"  storage="chara/163/huniki_3.png"  width="155"  height="46"  left="-1"  top="90"  reflect="false"  ]
[return  ]
*koudou

[tb_eval  exp="f.komyu_koudoukaisuu=5"  name="komyu_koudoukaisuu"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[chara_show  name="komyu_koudou"  time="0"  wait="false"  storage="chara/157/koudou_5.png"  width="117"  height="36"  left="-1"  top="143"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*komyukomando"  ]
*komyukomando

[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
……………[p]
[_tb_end_text]

[tb_start_tyrano_code]
;好感度別で導入会話が変化する_凪


[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[jump target="*koukandobetu_kome_kimadui"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[jump target="*koukandobetu_kome_kimadui"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[jump target="*koukandobetu_kome_odayaka"]

[elsif exp="f.koukando_nagi >= 30"]
[jump target="*koukandobetu_kome_suki"]

[endif]
[_tb_end_tyrano_code]

*koukandobetu_kome_kimadui

[tb_start_text mode=1 ]
Nagi「Ừm thì, tớ không giỏi nói chuyện cho lắm. Nếu cậu thấy chán thì cho tớ xin lỗi nhé.」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*koukandobetu_kome_end"  ]
*koukandobetu_kome_odayaka

[tb_start_text mode=1 ]
Nagi「Thỉnh thoảng hai đứa cùng đi về thế này cũng hay nhỉ.」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*koukandobetu_kome_end"  ]
*koukandobetu_kome_suki

[tb_start_text mode=1 ]
Nagi「Chỉ cần ở bên cậu là tớ đã thấy vui rồi. Cứ như thể chúng mình được quay trở lại ngày xưa vậy.」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*koukandobetu_kome_end"  ]
*koukandobetu_kome_end

[tb_start_text mode=4 ]
（Mình có nên bắt chuyện thử không nhỉ?）
[_tb_end_text]

*komyukomando2

[call  storage="komyu_nagi_kaeru.ks"  target="*huniki_5_2"  cond="f.love>99"  ]
[tb_start_tyrano_code]
;コミュコマンド表示
;終わる
[button target=*owaru enterimg=komyu_owaru2.png clickimg=komyu_owaru.png x=1175 y=30 graphic=komyu_owaru.png name="komyu_icon,fx_icon"]
;誘う
[button target=*sasou enterimg=komyu_sasou2.png clickimg=komyu_sasou.png x=1075 y=30 graphic=komyu_sasou.png name="komyu_icon,fx_icon"]
;告白する
[button target=*kokuhaku enterimg=komyu_koku2.png clickimg=komyu_koku.png x=972 y=30 graphic=komyu_koku.png name="komyu_icon,fx_icon"]
;踏み込んだ会話
[button target=*humikonda enterimg=komyu_kaiwa2.png clickimg=komyu_kaiwa.png x=872 y=30 graphic=komyu_kaiwa.png name="komyu_icon,fx_icon"]
;日常会話
[button target=*nitijyoukaiwa enterimg=komyu_nitijyou2.png clickimg=komyu_nitijyou.png x=772 y=30 graphic=komyu_nitijyou.png name="komyu_icon,fx_icon"]


[anim name="komyu_icon" opacity=0 time=0]
[anim name="komyu_icon" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*nitijyoukaiwa

[cm  ]
[tb_start_text mode=4 ]
（Nên nói chuyện gì đây nhỉ?）

[_tb_end_text]

[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="220"  width="227"  height="56"  text="Chủ đề A: Thời tiết"  _clickable_img=""  target="*nitijyoukaiwa_a"  ]
[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="300"  width="227"  height="56"  text="Chủ đề B: Khu chung cư"  _clickable_img=""  target="*nitijyoukaiwa_b"  ]
[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="380"  width="227"  height="56"  text="Chủ đề C: Công việc"  _clickable_img=""  target="*nitijyoukaiwa_c"  ]
[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="460"  width="227"  height="56"  text="Chủ đề D: Sở thích"  _clickable_img=""  target="*nitijyoukaiwa_d"  ]
[tb_start_tyrano_code]
;コミュコマンド表示
;終わる
[button target=*owaru enterimg=komyu_owaru2.png clickimg=komyu_owaru.png x=1175 y=30 graphic=komyu_owaru.png name="komyu_icon,fx_icon"]
;誘う
[button target=*sasou enterimg=komyu_sasou2.png clickimg=komyu_sasou.png x=1075 y=30 graphic=komyu_sasou.png name="komyu_icon,fx_icon"]
;告白する
[button target=*kokuhaku enterimg=komyu_koku2.png clickimg=komyu_koku.png x=972 y=30 graphic=komyu_koku.png name="komyu_icon,fx_icon"]
;踏み込んだ会話
[button target=*humikonda enterimg=komyu_kaiwa2.png clickimg=komyu_kaiwa.png x=872 y=30 graphic=komyu_kaiwa.png name="komyu_icon,fx_icon"]
;日常会話
[button target=*nitijyoukaiwa enterimg=komyu_nitijyou2.png clickimg=komyu_nitijyou.png x=772 y=30 graphic=komyu_nitijyou.png name="komyu_icon,fx_icon"]


[anim name="komyu_icon" opacity=0 time=0]
[anim name="komyu_icon" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*humikonda

[cm  ]
[tb_start_text mode=4 ]
[font color="yellow"]（Có vẻ như Năng lực giao tiếp sẽ được thử thách đây）[resetfont]

[_tb_end_text]

[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="220"  width="227"  height="56"  text="Chủ đề A: Kỷ niệm cũ"  _clickable_img=""  target="*humikonda_a"  ]
[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="300"  width="227"  height="56"  text="Chủ đề B: Người mình thích"  _clickable_img=""  target="*humikonda_b"  ]
[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="380"  width="227"  height="56"  text="Chủ đề C: Kết hôn"  _clickable_img=""  target="*humikonda_c"  ]
[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="460"  width="227"  height="56"  text="Muốn làm tình"  _clickable_img=""  target="*humikonda_d"  ]
[tb_start_tyrano_code]
;コミュコマンド表示
;終わる
[button target=*owaru enterimg=komyu_owaru2.png clickimg=komyu_owaru.png x=1175 y=30 graphic=komyu_owaru.png name="komyu_icon,fx_icon"]
;誘う
[button target=*sasou enterimg=komyu_sasou2.png clickimg=komyu_sasou.png x=1075 y=30 graphic=komyu_sasou.png name="komyu_icon,fx_icon"]
;告白する
[button target=*kokuhaku enterimg=komyu_koku2.png clickimg=komyu_koku.png x=972 y=30 graphic=komyu_koku.png name="komyu_icon,fx_icon"]
;踏み込んだ会話
[button target=*humikonda enterimg=komyu_kaiwa2.png clickimg=komyu_kaiwa.png x=872 y=30 graphic=komyu_kaiwa.png name="komyu_icon,fx_icon"]
;日常会話
[button target=*nitijyoukaiwa enterimg=komyu_nitijyou2.png clickimg=komyu_nitijyou.png x=772 y=30 graphic=komyu_nitijyou.png name="komyu_icon,fx_icon"]


[anim name="komyu_icon" opacity=0 time=0]
[anim name="komyu_icon" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*sasou

[cm  ]
[call  storage="komyu_nagi_kaeru.ks"  target="*sasou_base"  cond="f.love<69"  ]
[tb_start_tyrano_code]
;食事に誘う＿love70以下でジャンプ
[if exp="f.love <= 70"]
[jump target="*sasou_deto"]
[endif]
[_tb_end_tyrano_code]

[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="220"  width="227"  height="56"  text="Rủ đi ăn tối"  _clickable_img=""  target="*sasou_a"  ]
*sasou_deto

[tb_start_tyrano_code]
;デートに誘う＿love70以下でジャンプ
[if exp="f.love <= 70"]
[jump target="*sasou_etti"]
[endif]
[_tb_end_tyrano_code]

[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="300"  width="227"  height="56"  text="Rủ đi hẹn hò"  _clickable_img=""  target="*sasou_b"  ]
*sasou_etti

[tb_start_tyrano_code]
;えっちしたい＿love99以下でジャンプ
[if exp="f.love <= 99"]
[jump target="*sasou_end"]
[endif]
[_tb_end_tyrano_code]

[glink  color="btn_03_white"  storage="komyu_nagi_kaeru.ks"  size="20"  x="1020"  y="380"  width="227"  height="56"  text="Muốn làm tình"  _clickable_img=""  target="*sasou_c"  ]
*sasou_end

[tb_start_tyrano_code]
;コミュコマンド表示
;終わる
[button target=*owaru enterimg=komyu_owaru2.png clickimg=komyu_owaru.png x=1175 y=30 graphic=komyu_owaru.png name="komyu_icon,fx_icon"]
;誘う
[button target=*sasou enterimg=komyu_sasou2.png clickimg=komyu_sasou.png x=1075 y=30 graphic=komyu_sasou.png name="komyu_icon,fx_icon"]
;告白する
[button target=*kokuhaku enterimg=komyu_koku2.png clickimg=komyu_koku.png x=972 y=30 graphic=komyu_koku.png name="komyu_icon,fx_icon"]
;踏み込んだ会話
[button target=*humikonda enterimg=komyu_kaiwa2.png clickimg=komyu_kaiwa.png x=872 y=30 graphic=komyu_kaiwa.png name="komyu_icon,fx_icon"]
;日常会話
[button target=*nitijyoukaiwa enterimg=komyu_nitijyou2.png clickimg=komyu_nitijyou.png x=772 y=30 graphic=komyu_nitijyou.png name="komyu_icon,fx_icon"]


[anim name="komyu_icon" opacity=0 time=0]
[anim name="komyu_icon" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*sasou_base

[tb_start_text mode=1 ]
[font color="yellow"]（Để lúc nào nói chuyện sôi nổi hơn chút nữa rồi hẵng tính）[resetfont][p]
[_tb_end_text]

[return  ]
*kokuhaku

[cm  ]
[tb_start_text mode=4 ]
[font color="yellow"]（Có vẻ như Dũng khí sẽ được thử thách đây） 【Khuyến nghị: Dũng khí "A"】[resetfont]

[_tb_end_text]

[glink  color="btn_03_black"  storage="komyu_nagi_kaeru.ks"  size="20"  text="Tỏ tình"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*kokuhaku2"  ]
[glink  color="btn_03_black"  storage="komyu_nagi_kaeru.ks"  size="20"  text="Hủy"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*komyukomando"  ]
[s  ]
*kokuhaku2

[cm  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[chara_hide  name="komyu_huniki"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="komyu_koudou"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[call  storage="character.ks"  target="*nagi_sotogi"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[mask_off  time="800"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;好感度別で告白に成功するか変化する_凪

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[jump target="*kokuhaku_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[jump target="*kokuhaku_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[jump target="*kokuhaku_yuukou"]

[elsif exp="f.koukando_nagi >= 30 || f.koukando_nagi == 30 "]
[jump target="*kokuhaku_suki"]

[endif]

[_tb_end_tyrano_code]

*kokuhaku_nigate

[tb_start_text mode=1 ]
Tỏ tình → Bị Nagi từ chối một cách lạnh lùng (Chưa triển khai)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Bầu không khí bỗng chốc trở nên gượng gạo.[p]
Nagi「T-Tớ, tớ xin phép về trước đây!」[p]
Nagi「Xin lỗi cậu!」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kokuhaku_end"  ]
*kokuhaku_hutuu

[tb_start_text mode=1 ]
Tỏ tình → Bị Nagi từ chối một cách bình thường (Chưa triển khai)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Bầu không khí bỗng chốc trở nên gượng gạo.[p]
Nagi「T-Tớ, tớ xin phép về trước đây!」[p]
Nagi「Xin lỗi cậu!」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kokuhaku_end"  ]
*kokuhaku_yuukou

[tb_start_text mode=1 ]
Tỏ tình → Bị Nagi từ chối một cách khó xử (Chưa triển khai)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Bầu không khí bỗng chốc trở nên gượng gạo.[p]
Nagi「T-Tớ, tớ xin phép về trước đây!」[p]
Nagi「Xin lỗi cậu!」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kokuhaku_end"  ]
*kokuhaku_suki

[tb_start_text mode=1 ]
Tỏ tình → Kích hoạt flag Sự kiện tỏ tình (Chưa triển khai)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Bầu không khí bỗng chốc trở nên gượng gạo.[p]
Nagi「T-Tớ, tớ xin phép về trước đây!」[p]
Nagi「Xin lỗi cậu!」[p]
[_tb_end_text]

*kokuhaku_end

[jump  storage="komyu_nagi_kaeru.ks"  target="*end4"  ]
*owaru

[cm  ]
[tb_start_text mode=1 ]
（Mình cũng chẳng cần thiết phải gượng ép bắt chuyện làm gì.）[p]
（Cứ im lặng thế này đi.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="komyu_huniki"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="komyu_koudou"  time="0"  wait="false"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="2"]
[_tb_end_tyrano_code]

[call  storage="character.ks"  target="*nagi_sotogi"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Cảm ơn cậu đã đưa tớ về. Vậy thì... chúc ngủ ngon nhé.」[p]
[_tb_end_text]

[chara_hide  name="kyara_nagi"  time="500"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
（Trông em ấy có vẻ hơi buồn thì phải.）[p]
（Lẽ ra mình nên nói chuyện gì đó thì hơn chăng?）[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*end4"  ]
[s  ]
*nitijyoukaiwa_a

[tb_start_tyrano_code]
;日常会話A＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouA_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouA_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouA_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouA_suki"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*nitijyoukaiwa_b

[tb_start_tyrano_code]
;日常会話B＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouB_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouB_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouB_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouB_suki"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*nitijyoukaiwa_c

[tb_start_tyrano_code]
;日常会話C＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouC_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouC_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouC_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouC_suki"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*nitijyoukaiwa_d

[tb_start_tyrano_code]
;日常会話D＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouD_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouD_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouD_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*nitijyouD_suki"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*humikonda_a

[tb_start_tyrano_code]
;踏み込んだ会話A＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*omoideA_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*omoideA_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*omoideA_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*omoideA_suki"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.humikonda_komyuP=0"  name="humikonda_komyuP"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*humikonda_b

[tb_start_tyrano_code]
;踏み込んだ会話B＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*sukinahitoB_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*sukinahitoB_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*sukinahitoB_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*sukinahitoB_suki"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.humikonda_komyuP=0"  name="humikonda_komyuP"  cmd="="  op="t"  val="0"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*humikonda_c

[tb_start_tyrano_code]
;踏み込んだ会話C＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*kekkonC_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*kekkonC_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*kekkonC_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*kekkonC_suki"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.humikonda_komyuP=0"  name="humikonda_komyuP"  cmd="="  op="t"  val="0"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*humikonda_d

[tb_start_tyrano_code]
;踏み込んだ会話D＿好感度別にジャンプ

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*ettiD_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*ettiD_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*ettiD_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call storage="komyu_nagi_kaeru_humikonda.ks" target="*ettiD_suki"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.humikonda_komyuP=0"  name="humikonda_komyuP"  cmd="="  op="t"  val="0"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*end"  ]
*sasou_a

[wait  time="500"  ]
[tb_start_tyrano_code]
;好感度別で確率が変化_凪

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[jump target="*gohan_seikou_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[jump target="*gohan_seikou_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[jump target="*gohan_seikou_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[jump target="*gohan_seikou_suki"]

[endif]
[_tb_end_tyrano_code]

*gohan_seikou_nigate

[tb_start_text mode=1 ]
Rủ đi ăn (Thành công) Kém[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*gohan_seikou_hutuu

[tb_start_text mode=1 ]
Rủ đi ăn (Thành công) Bình thường[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*gohan_seikou_yuukou

[tb_start_text mode=1 ]
Rủ đi ăn (Thành công) Thân thiện[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*gohan_seikou_suki

[tb_start_text mode=1 ]
Rủ đi ăn (Thành công) Thích[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*sasou_b

[jump  storage="komyu_nagi_kaeru.ks"  target="*sasou_b2"  cond="f.deto_nagi==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*sasou_deto_jyuuhuku"]
[endif]
[_tb_end_tyrano_code]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide  name="komyu_huniki"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="komyu_koudou"  time="0"  wait="false"  pos_mode="false"  ]
[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[call  storage="character.ks"  target="*nagi"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;好感度別で確率が変化_凪

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[jump target="*sasou_b_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[jump target="*sasou_b_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[jump target="*sasou_b_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[jump target="*sasou_b_suki"]

[endif]
[_tb_end_tyrano_code]

*sasou_b_nigate

[tb_start_text mode=1 ]
【Rủ đi hẹn hò】 Chưa triển khai (Kém)[p]
Nagi「Ừm, OK.」[p]
Nagi「Vậy thì thứ Bảy tuần sau nhé. Tớ sẽ mong chờ lắm đấy.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Thứ Bảy tuần sau à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b_hutuu

[tb_start_text mode=1 ]
【Rủ đi hẹn hò】 Chưa triển khai (Bình thường)[p]
Nagi「Ừm, OK.」[p]
Nagi「Vậy thì thứ Bảy tuần sau nhé. Tớ sẽ mong chờ lắm đấy.」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Thứ Bảy tuần sau à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b_yuukou

[tb_start_text mode=1 ]
【Rủ đi hẹn hò】 Chưa triển khai (Thân thiện)[p]
Nagi「Ừm, OK.」[p]
Nagi「Vậy thì thứ Bảy tuần sau nhé. Tớ sẽ mong chờ lắm đấy.」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Thứ Bảy tuần sau à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b_suki

[tb_start_text mode=1 ]
【Rủ đi hẹn hò】 Chưa triển khai (Thích)[p]
Nagi「Ừm, OK.」[p]
Nagi「Vậy thì thứ Bảy tuần sau nhé. Tớ sẽ mong chờ lắm đấy.」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Thứ Bảy tuần sau à, phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b2

[tb_start_text mode=1 ]
【Mời hẹn hò (Đã mời)】Chưa khả dụng[p]
Nagi「Mau tới thứ Bảy đi nào.」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_deto_jyuuhuku

[tb_start_text mode=1 ]
（Nhớ không nhầm thì ngày nghỉ tới mình có lịch mất rồi.）[p]
（Lần này đành thôi vậy.）[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*komyukomando2"  ]
*sasou_c

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide  name="komyu_huniki"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="komyu_koudou"  time="0"  wait="false"  pos_mode="false"  ]
[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[call  storage="character.ks"  target="*nagi"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;好感度別で確率が変化_凪

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[jump target="*sasou_c_nigate"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[jump target="*sasou_c_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[jump target="*sasou_c_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[jump target="*sasou_c_suki"]

[endif]
[_tb_end_tyrano_code]

*sasou_c_nigate

[tb_start_text mode=1 ]
【Muốn làm tình】Chưa khả dụng (Không thích)[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_c_hutuu

[tb_start_text mode=1 ]
【Muốn làm tình】Chưa khả dụng (Bình thường)[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_c_yuukou

[tb_start_text mode=1 ]
【Muốn làm tình】Chưa khả dụng (Thân thiện)[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_c_suki

[tb_start_text mode=1 ]
【Muốn làm tình】Chưa khả dụng (Thích)[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*end

[tb_eval  exp="f.komyu_koudoukaisuu-=1"  name="komyu_koudoukaisuu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*end2"  cond="f.komyu_koudoukaisuu==0"  ]
[call  storage="komyu_nagi_kaeru.ks"  target="*nagi2"  cond="f.love>99"  ]
[call  storage="komyu_nagi_kaeru.ks"  target="*huniki_5_2"  cond="f.love>99"  ]
[tb_start_tyrano_code]
;ハートMAXでハートエフェクト追加
[if exp="f.love >= 100 && f.kaiwa_hato_max == 0 "]
[call storage="komyu_nagi_kaeru_nitijyoukaiwa.ks" target="*kaiwa_max"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;行動回数の表記が変わる（共通）

[if exp="f.komyu_koudoukaisuu == 4 "]
[jump target="*end_koudou4"]

[elsif exp="f.komyu_koudoukaisuu == 3 "]
[jump target="*end_koudou3"]

[elsif exp="f.komyu_koudoukaisuu == 2 "]
[jump target="*end_koudou2"]

[elsif exp="f.komyu_koudoukaisuu == 1 "]
[jump target="*end_koudou1"]

[endif]
[_tb_end_tyrano_code]

*end_koudou4

[chara_hide  name="komyu_koudou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_koudou"  time="0"  wait="false"  storage="chara/157/koudou_4.png"  width="117"  height="36"  left="-1"  top="143"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*komyukomando2"  ]
*end_koudou3

[chara_hide  name="komyu_koudou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_koudou"  time="0"  wait="false"  storage="chara/157/koudou_3.png"  width="117"  height="36"  left="-1"  top="143"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*komyukomando2"  ]
*end_koudou2

[chara_hide  name="komyu_koudou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_koudou"  time="0"  wait="false"  storage="chara/157/koudou_2.png"  width="117"  height="36"  left="-1"  top="143"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*komyukomando2"  ]
*end_koudou1

[chara_hide  name="komyu_koudou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_koudou"  time="0"  wait="false"  storage="chara/157/koudou_1.png"  width="117"  height="36"  left="-1"  top="143"  reflect="false"  ]
[jump  storage="komyu_nagi_kaeru.ks"  target="*komyukomando2"  ]
*end2

[chara_hide  name="komyu_koudou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_koudou"  time="0"  wait="false"  storage="chara/157/koudou_0.png"  width="117"  height="36"  left="-1"  top="143"  reflect="false"  ]
*end3

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide  name="komyu_huniki"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="komyu_koudou"  time="0"  wait="false"  pos_mode="false"  ]
[tb_ptext_hide  time="0"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[cm  ]
[bg  time="500"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
（Về đến nhà mất rồi.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
;好感度別でセリフが変化

[if exp="f.koukando_nagi == 0 || f.koukando_nagi == 1 || f.koukando_nagi == 2 || f.koukando_nagi == 3 || f.koukando_nagi == 4 || f.koukando_nagi == 5 || f.koukando_nagi == 6 || f.koukando_nagi == 7 || f.koukando_nagi == 8 || f.koukando_nagi == 9"]
[call target="*kaeri_serihu_hutuu"]

[elsif exp="f.koukando_nagi == 10 || f.koukando_nagi == 11 || f.koukando_nagi == 12 || f.koukando_nagi == 13 || f.koukando_nagi == 14 || f.koukando_nagi == 15 || f.koukando_nagi == 16 || f.koukando_nagi == 17 || f.koukando_nagi == 18 || f.koukando_nagi == 19"]
[call target="*kaeri_serihu_hutuu"]

[elsif exp="f.koukando_nagi == 20 || f.koukando_nagi == 21 || f.koukando_nagi == 22 || f.koukando_nagi == 23 || f.koukando_nagi == 24 || f.koukando_nagi == 25 || f.koukando_nagi == 26 || f.koukando_nagi == 27 || f.koukando_nagi == 28 || f.koukando_nagi == 29"]
[call target="*kaeri_serihu_yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[call target="*kaeri_serihu_suki"]

[endif]
[_tb_end_tyrano_code]

*end4

[jump  storage="room_yoru.ks"  target="*top"  ]
*nagi1

[bg  time="0"  method="crossfade"  storage="kaeri_nagi.png"  ]
[return  ]
*nagi2

[bg  time="0"  method="crossfade"  storage="kaeri_nagi2.png"  ]
[return  ]
*kaeri_serihu_hutuu

[tb_start_text mode=1 ]
Nagi「Cảm ơn cậu đã đưa tớ về nhà nhé.」（Hội thoại hảo cảm bình thường）[p]
[舜]「Có gì đâu, dù sao cũng cùng khu chung cư mà.」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kaeri_lovemax"  cond="f.love>99"  ]
[tb_start_text mode=1 ]
Nagi「Cũng đúng nhỉ.[r]Vậy thì, chúc ngủ ngon.」[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+='0.5'"  name="koukando_nagi"  cmd="+="  op="t"  val="0.5"  ]
[return  ]
*kaeri_serihu_yuukou

[tb_start_text mode=1 ]
Nagi「Cảm ơn cậu đã đưa tớ về nhà nhé.」（Hội thoại hảo cảm thân thiện）[p]
[舜]「Có gì đâu, dù sao cũng cùng khu chung cư mà.」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kaeri_lovemax"  cond="f.love>99"  ]
[tb_start_text mode=1 ]
Nagi「Cũng đúng nhỉ.[r]Vậy thì, chúc ngủ ngon.」[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+='0.5'"  name="koukando_nagi"  cmd="+="  op="t"  val="0.5"  val_2="undefined"  ]
[return  ]
*kaeri_serihu_suki

[tb_start_text mode=1 ]
Nagi「Cảm ơn cậu đã đưa tớ về nhà nhé.」（Hội thoại hảo cảm bình thường）[p]
[舜]「Có gì đâu, dù sao cũng cùng khu chung cư mà.」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kaeri_lovemax"  cond="f.love>99"  ]
[tb_start_text mode=1 ]
Nagi「Cũng đúng nhỉ.[r]Vậy thì, chúc ngủ ngon.」[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[return  ]
*kaeri_lovemax

[tb_start_text mode=1 ]
Nagi「Với lại nhé.」[p]
[舜]「?」[p]
[_tb_end_text]

[chara_mod  name="kyara_nagi"  time="500"  cross="false"  storage="chara/153/adv_nagi_job_tere.gif"  ]
[tb_start_text mode=1 ]
Nagi「Hôm nay tớ vui lắm. Bữa sau lại cùng về nữa nhé.」[p]
Nagi「Vậy thì, chúc ngủ ngon.」[p]
[_tb_end_text]

[chara_hide  name="kyara_nagi"  time="500"  wait="false"  pos_mode="false"  ]
[tb_start_text mode=1 ]
（Cô ấy đỏ mặt rồi đi về mất.）[p]
（Cảm giác như mình đã thân thiết với Nagi hơn một chút.）[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[return  ]
*undefined