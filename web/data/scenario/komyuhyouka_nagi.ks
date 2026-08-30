
[_tb_system_call storage=system/_komyuhyouka_nagi.ks]

[tb_show_message_window  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*fade_in"  ]
[cm  ]
[tb_hide_message_window  ]
[call  storage="character.ks"  target="*taijyou"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="komyu_insyou.png"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[tb_start_tyrano_code]
;ボタン表示（好き）
[button target=*suki enterimg=komyu_suki2.png clickimg=komyu_suki2.png  x=816 y=48 graphic=komyu_suki.png]

;ボタン表示（嫌い）
[button target=*kirai enterimg=komyu_kirai2.png clickimg=komyu_kirai2.png  x=816 y=568 graphic=komyu_kirai.png]

;ボタン表示（純粋）
[button target=*jyunsui enterimg=komyu_jyun2.png clickimg=komyu_jyun2.png  x=1088 y=296 graphic=komyu_jyun.png]

;ボタン表示（支配）
[button target=*sihai enterimg=komyu_sihai2.png clickimg=komyu_sihai2.png  x=568 y=296 graphic=komyu_sihai.png]
[_tb_end_tyrano_code]

[s  ]
*suki

[cm  ]
[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_suki_nagi+=1"  name="komyu_insyou_suki_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[tb_start_tyrano_code]
;ボタン表示（好き）戻る
[button target=*suki_modoru enterimg=komyu_suki2_2.png clickimg=komyu_suki2.png  x=816 y=48 graphic=komyu_suki_2.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ボタン表示（終了）
[button target=*syuuryou enterimg=komyu_end2.png clickimg=komyu_end.png   x=1112 y=648 graphic=komyu_end.png]
[_tb_end_tyrano_code]

[s  ]
*suki_modoru

[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_suki_nagi-=1"  name="komyu_insyou_suki_nagi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[jump  storage="komyuhyouka_nagi.ks"  target="*top"  ]
*kirai

[cm  ]
[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_suki_nagi-=1"  name="komyu_insyou_suki_nagi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[tb_start_tyrano_code]
;ボタン表示（嫌い）戻る
[button target=*kirai_modoru enterimg=komyu_kirai2_2.png clickimg=komyu_kirai2.png  x=816 y=568 graphic=komyu_kirai_2.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ボタン表示（終了）
[button target=*syuuryou enterimg=komyu_end2.png clickimg=komyu_end.png  x=1112 y=648 graphic=komyu_end.png]
[_tb_end_tyrano_code]

[s  ]
*kirai_modoru

[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_suki_nagi+=1"  name="komyu_insyou_suki_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[jump  storage="komyuhyouka_nagi.ks"  target="*top"  ]
*jyunsui

[cm  ]
[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_jyunsui_nagi+=1"  name="komyu_insyou_jyunsui_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[tb_start_tyrano_code]
;ボタン表示（純粋）戻る
[button target=*jyunsui_modoru enterimg=komyu_jyun2_2.png clickimg=komyu_jyun2.png  x=1088 y=296 graphic=komyu_jyun_2.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ボタン表示（終了）
[button target=*syuuryou enterimg=komyu_end2.png clickimg=komyu_end.png  x=1112 y=648 graphic=komyu_end.png]
[_tb_end_tyrano_code]

[s  ]
*jyunsui_modoru

[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_jyunsui_nagi-=1"  name="komyu_insyou_jyunsui_nagi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[jump  storage="komyuhyouka_nagi.ks"  target="*top"  ]
*sihai

[cm  ]
[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_jyunsui_nagi-=1"  name="komyu_insyou_jyunsui_nagi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[tb_start_tyrano_code]
;ボタン表示（支配）戻る
[button target=*sihai_modoru enterimg=komyu_sihai2_2.png clickimg=komyu_sihai2.png  x=568 y=296 graphic=komyu_sihai_2.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ボタン表示（終了）
[button target=*syuuryou enterimg=komyu_end2.png clickimg=komyu_end.png  x=1112 y=648 graphic=komyu_end.png]
[_tb_end_tyrano_code]

[s  ]
*sihai_modoru

[chara_hide  name="komyu_hyouka"  time="0"  wait="true"  pos_mode="false"  ]
[tb_eval  exp="f.komyu_insyou_jyunsui_nagi+=1"  name="komyu_insyou_jyunsui_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_point.ks"  target="*top"  ]
[jump  storage="komyuhyouka_nagi.ks"  target="*top"  ]
*syuuryou

[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_hide  name="komyu_hyouka"  time="0"  wait="false"  pos_mode="false"  ]
[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[mask_off  time="600"  effect="fadeOut"  ]
[return  ]
