[_tb_system_call storage=system/_sinnyu.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.sinnyu_byouin_on=1"  name="sinnyu_byouin_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_massaji_on=1"  name="sinnyu_massaji_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_rihure_on=1"  name="sinnyu_rihure_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=0"  name="sinnyu_hajimete"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
*top

[tb_start_tyrano_code]
;アイテムの購入数によってターン数を導入

[if exp="f.turnLV == 0"]
[call target="*turnLV0"]

[elsif exp="f.turnLV == 1"]
[call target="*turnLV1"]

[elsif exp="f.turnLV == 2"]
[call target="*turnLV2"]

[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;初めての侵入EV
[if exp="f.sinnyu_hajimete == 1"]
[jump storage="EV_sinnyu.ks" target="*top"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
; カメラが1以上の場合com_nasiに0を代入
[if exp="f.item_com_bousui>=1"]
[eval exp="f.com_nasi= 0"]
[endif]

;凪宅以外開放されていない場合はマップを表示させない
[if exp="f.sinnyu_byouin_on == 0 && f.sinnyu_massaji_on == 0 && f.sinnyu_rihure_on == 0"]
[jump target="*danti"]
[endif]
[_tb_end_tyrano_code]

[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="tm_bg.png"  cross="false"  ]
[tb_show_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Chúc các bạn chơi game thật vui vẻ![p]
[_tb_end_text]

[tb_hide_message_window  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="kintyou3.mp3"  ]
[tb_start_tyrano_code]
;病院が開放されている場合
[if exp="f.sinnyu_byouin_on == 1"]
[call target="*button_byouin"]
[endif]

;マッサージ店が開放されている場合
[if exp="f.sinnyu_massaji_on == 1"]
[call target="*button_massa"]
[endif]

;リフレが開放されている場合
[if exp="f.sinnyu_rihure_on == 1"]
[call target="*button_rihure"]
[endif]

;凪宅
[button target=*danti enterimg="../fgimage/default/tm_danchi_on.png" clickimg="../fgimage/default/tm_danchi_on.png" x=24 y=104 graphic="../fgimage/default/tm_danchi_off.png" name="sansaku_icon"]
;戻る
[button target=*modoru enterimg="../fgimage/default/tm_modoru_off.png" clickimg="../fgimage/default/tm_modoru_off.png" x=1192 y=632 graphic="../fgimage/default/tm_modoru_on.png" name="sansaku_icon"]

[anim name="sansaku_icon" opacity=0 time=0]
[anim name="sansaku_icon" opacity=255 time=300]

[_tb_end_tyrano_code]

[s  ]
*button_byouin

[tb_start_tyrano_code]
;ボタン表示
;病院
[button target=*byouin enterimg="../fgimage/default/tm_biyouin_on.png" clickimg="../fgimage/default/tm_biyouin_on.png" x=776 y=96 graphic="../fgimage/default/tm_biyouin_off.png" name="sansaku_icon"]
[_tb_end_tyrano_code]

[return  ]
*button_massa

[tb_start_tyrano_code]
;ボタン表示
;マッサージ店
[button target=*massaji enterimg="../fgimage/default/tm_relaxation_on.png" clickimg="../fgimage/default/tm_relaxation_on.png" x=560 y=200 graphic="../fgimage/default/tm_relaxation_off.png" name="sansaku_icon"]


[_tb_end_tyrano_code]

[return  ]
*button_rihure

[tb_start_tyrano_code]
;ボタン表示
;メイドリフレ
[button target=*rihure enterimg="../fgimage/default/tm_maidrefre_on.png" clickimg="../fgimage/default/tm_maidrefre_on.png" x=0 y=424 graphic="../fgimage/default/tm_maidrefre_off.png" name="sansaku_icon"]

[_tb_end_tyrano_code]

[return  ]
*byouin

[cm  ]
[jump  storage="sinnyu_byouin.ks"  target="*top0"  ]
*massaji

[cm  ]
[jump  storage="sinnyu_massaji.ks"  target="*top0"  ]
*rihure

[cm  ]
[jump  storage="sinnyu_rihure.ks"  target="*top0"  ]
*danti

[cm  ]
[jump  storage="sinnyu_nagi.ks"  target="*top0"  ]
*modoru

[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Trân trọng cảm ơn tất cả các bạn![p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_room0.png"  ]
[wait  time="500"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[jump  storage="room_asa.ks"  target="*top"  ]
*turnLV0

[tb_eval  exp="f.sinnyu_koudou_count=3"  name="sinnyu_koudou_count"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*turnLV1

[tb_eval  exp="f.sinnyu_koudou_count=4"  name="sinnyu_koudou_count"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[return  ]
*turnLV2

[tb_eval  exp="f.sinnyu_koudou_count=5"  name="sinnyu_koudou_count"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[return ]
