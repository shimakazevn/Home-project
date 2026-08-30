[_tb_system_call storage=system/_sinnyu_nagi_haiti_toilet.ks]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_toire.png"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[cm  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;変数0の場合カメラ配置場所を表記

;トイレドア
[if exp="f.com_toilet_door == 0 "]
[call target="*com_1"]
[endif]

;便座
[if exp="f.com_toilet_seat == 0 "]
[call target="*com_2"]
[endif]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数1の場合配置済みを表記

[if exp="f.com_toilet_door == 1 "]
[call target="*done_1"]
[endif]

[if exp="f.com_toilet_seat == 1 "]
[call target="*done_2"]
[endif]


[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_com"  ]
[s  ]
*com_1

[tb_start_tyrano_code]
;トイレドア
[layermode time="0" graphic="../fgimage/default/L_toilet_door.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="796"  y="527"  width="177"  height="138"  target="*kakunin_toilet_door"  _clickable_img=""  ]
[return  ]
*com_2

[tb_start_tyrano_code]
;便座
[layermode time="0" graphic="../fgimage/default/L_toilet_seat.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="573"  y="371"  width="120"  height="120"  target="*kakunin_toilet_seat"  _clickable_img=""  ]
[return  ]
*done_1

[tb_start_tyrano_code]
[image layer="2" x="892" y="556" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_2

[tb_start_tyrano_code]
[image layer="2" x="579" y="413" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*com_1_setti

[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_toilet_door=1"  name="com_toilet_door"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*end"  ]
*com_2_setti

[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*nasi"  cond="f.item_com_bousui==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti_bousui"  ]
[tb_eval  exp="f.com_toilet_seat=1"  name="com_toilet_seat"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*end"  ]
*setti_yameru

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_com"  ]
[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*sentaku_top"  ]
*nasi

[call  storage="sinnyu_comhaiti.ks"  target="*nasi"  ]
[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*sentaku_top"  ]
*end

[tb_start_tyrano_code]
;行動0で終了(初めての侵入用)
[if exp="f.sinnyu_hajimete == 5 && f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]
[_tb_end_tyrano_code]

[cm  ]
[call  storage="sinnyu_item.ks"  target="*off"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[tb_start_tyrano_code]
;行動0で終了
[if exp="f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]

[jump target="*sentaku_top"]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_nagi_haiti_toilet.ks"  target="*sentaku_top"  ]
