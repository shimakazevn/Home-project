[_tb_system_call storage=system/_sinnyu_nagi.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top0

[mask  time="700"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[free_layermode time="0"]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_DK.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[call  storage="BGM.ks"  target="*sinnyu"  ]
[tb_start_text mode=1 ]
(…お邪魔します…と)[p]
[_tb_end_text]

[wait  time="500"  ]
*top

[tb_start_text mode=4 ]
(さてと、どうしようかな)
[_tb_end_text]

[wait  time="800"  ]
[jump  storage="sinnyu_nagi.ks"  target="*end"  cond="f.sinnyu_koudou_count==0"  ]
[call  storage="sinnyu_item.ks"  target="*item"  ]
[call  storage="sinnyu_item.ks"  target="*turn"  ]
[tb_start_tyrano_code]
;帰宅ボタン
[button target=*end enterimg=shinnyu_command_kitaku_on.png clickimg=shinnyu_command_kitaku.png x=568 y=384 graphic=shinnyu_command_kitaku.png name="sinnyu"]
;物色ボタン
[button target=*bussyoku enterimg=shinnyu_command_busshoku_on.png clickimg=shinnyu_command_busshoku.png x=736 y=120 graphic=shinnyu_command_busshoku.png name="sinnyu"]
;配置ボタン
[button target=*haiti enterimg=shinnyu_command_haichi_on.png clickimg=shinnyu_command_haichi.png x=400 y=120 graphic=shinnyu_command_haichi.png name="sinnyu"]

[anim name="sinnyu" opacity=0 time=0]
[anim name="sinnyu" opacity=255 time=700]
[_tb_end_tyrano_code]

[s  ]
*haiti

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="1000"  method="fadeIn"  storage="black.jpg"  ]
[bg  time="1000"  method="fadeIn"  storage="sin_nagi_DK.png"  ]
[jump  storage="sinnyu_nagi_haiti.ks"  target="*top0"  ]
*bussyoku

[call  storage="sinnyu_item.ks"  target="*off"  ]
[jump  storage="sinnyu_nagi_bussyoku.ks"  target="*top"  ]
*end

[cm  ]
[tb_start_tyrano_code]
;初めての侵入の場合カメラ設置は必須(設置していない場合は移動カウントを＋１してカメラ設置を強制)

[if exp="f.sinnyu_hajimete == 5"]
[jump storage="sinnyu_nagi.ks" target="*end2"]

[elsif exp="f.sinnyu_hajimete == 2 && f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*hajimete"]

[elsif exp="f.sinnyu_hajimete == 2"]
[jump storage="sinnyu_nagi.ks" target="*hajimete"]

[endif]

*end2

[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*off"  ]
[reset_camera  time="0"  wait="true"  ]
[chara_hide  name="base"  time="0"  wait="false"  pos_mode="false"  ]
[bg  time="1000"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.item_on=0"  name="item_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]（もうこんな時間か…。あまり長居はすべきじゃないな）[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="sora.jpg"  ]
[tb_start_text mode=1 ]
[舜]（よし、そろそろ帰ろう……）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=1"  name="tension"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*hajimete

[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]（そういえば小型カメラを持っていたな）[p]
[舜][font color="yellow"]（せっかく持って来たんだから、どこかにカメラを設置してみるかな）[resetfont][p]

[_tb_end_text]

[tb_eval  exp="f.sinnyu_koudou_count=1"  name="sinnyu_koudou_count"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=3"  name="sinnyu_hajimete"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="sinnyu_nagi.ks"  target="*haiti"  ]
