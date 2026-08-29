[_tb_system_call storage=system/_sinnyu_byouin_rokka_haiti.ks]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_rokka.png"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[cm  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
*sentaku_top

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;変数0の場合カメラ配置場所を表記

;コンセント
[if exp="f.com_hospitallocker_konsento == 0 "]
[call target="*com_1_1"]
[endif]

;low
[if exp="f.com_hospitallocker_low == 0 "]
[call target="*com_2"]
[endif]

;凪のロッカー
[if exp="f.com_hospitallocker_nagirocker == 0 "]
[call target="*com_3"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数1の場合配置済みを表記

[if exp="f.com_hospitallocker_konsento == 1 "]
[call target="*done_1"]
[endif]

[if exp="f.com_hospitallocker_low == 1 "]
[call target="*done_2"]
[endif]

[if exp="f.com_hospitallocker_nagirocker == 1 "]
[call target="*done_3"]
[endif]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin_com"  ]
[s  ]
*com_1

[tb_start_tyrano_code]
;換気
[layermode time="0" graphic="../fgimage/default/hospitallocker_konsento.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="549"  y="12"  width="120"  height="120"  target="*kakunin_hospitallocker_konsento"  _clickable_img=""  ]
[return  ]
*com_1_1

[tb_start_tyrano_code]
;換気
[layermode time="0" graphic="../fgimage/default/hospitallocker_konsento.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="549"  y="10"  width="120"  height="120"  target="*kakunin_hospitallocker_konsento2"  _clickable_img=""  ]
[return  ]
*com_2

[tb_start_tyrano_code]
;low
[layermode time="0" graphic="../fgimage/default/hospitallocker_low.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="561"  y="465"  width="120"  height="120"  target="*kakunin_hospitallocker_low"  _clickable_img=""  ]
[return  ]
*com_3

[tb_start_tyrano_code]
;凪ロッカー
[layermode time="0" graphic="../fgimage/default/hospitallocker_nagirocker.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="921"  y="422"  width="120"  height="120"  target="*kakunin_hospitallocker_nagirocker"  _clickable_img=""  ]
[return  ]
*done_1

[tb_start_tyrano_code]
[image layer="2" x="552" y="-18" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_2

[tb_start_tyrano_code]
[image layer="2" x="566" y="515" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_3

[tb_start_tyrano_code]
[image layer="2" x="975" y="454" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*com_1_1_setti

[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_hospitallocker_konsento=1"  name="com_hospitallocker_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*end"  ]
*com_1_setti

[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_hospitallocker_konsento=1"  name="com_hospitallocker_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*end"  ]
*com_2_setti

[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_hospitallocker_low=1"  name="com_hospitallocker_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*end"  ]
*com_3_setti

[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_hospitallocker_nagirocker=1"  name="com_hospitallocker_nagirocker"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*end"  ]
*setti_yameru

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin_com"  ]
[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*sentaku_top"  ]
*nasi

[call  storage="sinnyu_comhaiti.ks"  target="*nasi"  ]
[jump  storage="sinnyu_byouin_rokka_haiti.ks"  target="*sentaku_top"  ]
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