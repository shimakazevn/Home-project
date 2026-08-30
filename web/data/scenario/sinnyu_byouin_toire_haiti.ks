[_tb_system_call storage=system/_sinnyu_byouin_toire_haiti.ks]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_toire.png"  ]
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

;ホルダー
[if exp="f.com_hospitaltoilet_holder == 0 "]
[call target="*com_1"]
[endif]

;便座
[if exp="f.com_hospitaltoilet_seat == 0 "]
[call target="*com_2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数1の場合配置済みを表記

[if exp="f.com_hospitaltoilet_holder == 1 "]
[call target="*done_1"]
[endif]

[if exp="f.com_hospitaltoilet_seat == 1 "]
[call target="*done_2"]
[endif]

[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin_com"  ]
[s  ]
*com_1

[tb_start_tyrano_code]
;ホルダー
[layermode time="0" graphic="../fgimage/default/hospitaltoilet_holder.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="71"  y="363"  width="120"  height="120"  target="*kakunin_hospitaltoilet_holder"  _clickable_img=""  ]
[return  ]
*com_2

[tb_start_tyrano_code]
;low
[layermode time="0" graphic="../fgimage/default/hospitaltoilet_seat.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="578"  y="392"  width="120"  height="120"  target="*kakunin_hospitaltoilet_seat"  _clickable_img=""  ]
[return  ]
*done_1

[tb_start_tyrano_code]
[image layer="2" x="39" y="397" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_2

[tb_start_tyrano_code]
[image layer="2" x="616" y="458" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*com_1_setti

[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_hospitaltoilet_holder=1"  name="com_hospitaltoilet_holder"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*end"  ]
*com_2_setti

[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*nasi"  cond="f.item_com_bousui==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti_bousui"  ]
[tb_eval  exp="f.com_hospitaltoilet_seat=1"  name="com_hospitaltoilet_seat"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*end"  ]
*setti_yameru

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin_com"  ]
[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*sentaku_top"  ]
*nasi

[call  storage="sinnyu_comhaiti.ks"  target="*nasi"  ]
[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*sentaku_top"  ]
*end

[call  storage="sinnyu_item.ks"  target="*off"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[tb_start_tyrano_code]
;行動0で終了
[if exp="f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]

[jump target="*sentaku_top"]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_byouin_toire_haiti.ks"  target="*sentaku_top"  ]
