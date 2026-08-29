]
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
・・・・・・・・・・・・・・・[p]
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
凪「えっと、私おしゃべりするの苦手で。退屈だったらごめんね」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*koukandobetu_kome_end"  ]
*koukandobetu_kome_odayaka

[tb_start_text mode=1 ]
凪「二人で帰るのも、たまにはいいね」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*koukandobetu_kome_end"  ]
*koukandobetu_kome_suki

[tb_start_text mode=1 ]
凪「一緒にいるだけで楽しい。なんだか、昔に戻ったみたいだね」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*koukandobetu_kome_end"  ]
*koukandobetu_kome_end

[tb_start_text mode=4 ]
（何か話しかけてみようか）
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
（何を話そうかな）

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
[font color="yellow"]（コミュ力が試されそうだ）[resetfont]

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
[font color="yellow"]（もう少し会話が弾んでからにしよう）[resetfont][p]
[_tb_end_text]

[return  ]
*kokuhaku

[cm  ]
[tb_start_text mode=4 ]
[font color="yellow"]（勇気が試されそうだ）【推奨：勇気「A」】[resetfont]

[_tb_end_text]

[glink  color="btn_03_black"  storage="komyu_nagi_kaeru.ks"  size="20"  text="Tỏ tình"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*kokuhaku2"  ]
[glink  color="btn_03_black"  storage="komyu_nagi_kaeru.ks"  size="20"  text="Thôi, dừng lại"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*komyukomando"  ]
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
告白→そっけなく凪に断られる（未実装）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
なんとなく気まずい雰囲気になってしまった。[p]
凪「わっ、わたし、先に帰ります！」[p]
凪「ごめんなさい！」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kokuhaku_end"  ]
*kokuhaku_hutuu

[tb_start_text mode=1 ]
告白→普通に凪に断られる（未実装）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
なんとなく気まずい雰囲気になってしまった。[p]
凪「わっ、わたし、先に帰ります！」[p]
凪「ごめんなさい！」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kokuhaku_end"  ]
*kokuhaku_yuukou

[tb_start_text mode=1 ]
告白→困った感じで断られる（未実装）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
なんとなく気まずい雰囲気になってしまった。[p]
凪「わっ、わたし、先に帰ります！」[p]
凪「ごめんなさい！」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kokuhaku_end"  ]
*kokuhaku_suki

[tb_start_text mode=1 ]
告白→告白イベントのフラグが立つ（未実装）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
なんとなく気まずい雰囲気になってしまった。[p]
凪「わっ、わたし、先に帰ります！」[p]
凪「ごめんなさい！」[p]
[_tb_end_text]

*kokuhaku_end

[jump  storage="komyu_nagi_kaeru.ks"  target="*end4"  ]
*owaru

[cm  ]
[tb_start_text mode=1 ]
（別に無理して話す必要は無いな）[p]
（このまま黙っていよう）[p]
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
凪「送ってくれてありがとう。それじゃ…おやすみ」[p]
[_tb_end_text]

[chara_hide  name="kyara_nagi"  time="500"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
（少し寂しそうだったな）[p]
（何か話した方が良かったかな？）[p]
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
食事に誘う（成功）苦手[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*gohan_seikou_hutuu

[tb_start_text mode=1 ]
食事に誘う（成功）普通[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*gohan_seikou_yuukou

[tb_start_text mode=1 ]
食事に誘う（成功）友好[p]
[_tb_end_text]

[call  storage="deto_gohan.ks"  target="*nagi"  ]
[jump  storage="room_yoru.ks"  target="*top"  cond=""  ]
*gohan_seikou_suki

[tb_start_text mode=1 ]
食事に誘う（成功）好き[p]
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
【デートに誘う】未実装（苦手）[p]
凪「うん、OK」[p]
凪「じゃあ、次の土曜日ね。楽しみにしてるね」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（来週の土曜日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b_hutuu

[tb_start_text mode=1 ]
【デートに誘う】未実装（普通）[p]
凪「うん、OK」[p]
凪「じゃあ、次の土曜日ね。楽しみにしてるね」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（来週の土曜日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b_yuukou

[tb_start_text mode=1 ]
【デートに誘う】未実装（友好）[p]
凪「うん、OK」[p]
凪「じゃあ、次の土曜日ね。楽しみにしてるね」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（来週の土曜日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b_suki

[tb_start_text mode=1 ]
【デートに誘う】未実装（好き）[p]
凪「うん、OK」[p]
凪「じゃあ、次の土曜日ね。楽しみにしてるね」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（来週の土曜日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_b2

[tb_start_text mode=1 ]
【デートに誘う（既に誘ってる）】未実装[p]
凪「はやく土曜日来ないかな。」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_deto_jyuuhuku

[tb_start_text mode=1 ]
（たしか次の休みは予定が入ってたな）[p]
（今回はやめておこう）[p]
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
【えっちしたい】未実装（苦手）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_c_hutuu

[tb_start_text mode=1 ]
【えっちしたい】未実装（普通）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_c_yuukou

[tb_start_text mode=1 ]
【えっちしたい】未実装（友好）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*sasou_c_suki

[tb_start_text mode=1 ]
【えっちしたい】未実装（好き）[p]
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
（家についてしまった）[p]
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
凪「家まで送ってくれてありがとう」（好感度普通会話）[p]
舜「いえいえ、同じ団地だしな」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kaeri_lovemax"  cond="f.love>99"  ]
[tb_start_text mode=1 ]
凪「それもそうだね。[r]それじゃ、おやすみ」[p]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+='0.5'"  name="koukando_nagi"  cmd="+="  op="t"  val="0.5"  ]
[return  ]
*kaeri_serihu_yuukou

[tb_start_text mode=1 ]
凪「家まで送ってくれてありがとう」（好感度友好会話）[p]
舜「いえいえ、同じ団地だしな」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kaeri_lovemax"  cond="f.love>99"  ]
[tb_start_text mode=1 ]
凪「それもそうだね。[r]それじゃ、おやすみ」[p]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+='0.5'"  name="koukando_nagi"  cmd="+="  op="t"  val="0.5"  val_2="undefined"  ]
[return  ]
*kaeri_serihu_suki

[tb_start_text mode=1 ]
凪「家まで送ってくれてありがとう」（好感度普通会話）[p]
舜「いえいえ、同じ団地だしな」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*kaeri_lovemax"  cond="f.love>99"  ]
[tb_start_text mode=1 ]
凪「それもそうだね。[r]それじゃ、おやすみ」[p]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[return  ]
*kaeri_lovemax

[tb_start_text mode=1 ]
凪「あとね」[p]
舜「？」[p]
[_tb_end_text]

[chara_mod  name="kyara_nagi"  time="500"  cross="false"  storage="chara/153/adv_nagi_job_tere.gif"  ]
[tb_start_text mode=1 ]
凪「すっごく楽しかったよ。また一緒に帰ろうね」[p]
凪「それじゃ、おやすみ」[p]
[_tb_end_text]

[chara_hide  name="kyara_nagi"  time="500"  wait="false"  pos_mode="false"  ]
[tb_start_text mode=1 ]
（顔を赤くして帰ってしまった）[p]
（少しだけ凪と仲良くなれた気がする）[p]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[return  ]
*undefined