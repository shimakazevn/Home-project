[_tb_system_call storage=system/_sinnyu_nagi_haiti_huro.ks]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_huro.png"  ]
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

;換気
[if exp="f.com_huro_kanki == 0 "]
[call target="*com_1"]
[endif]

;窓
[if exp="f.com_huro_mado == 0 "]
[call target="*com_2"]
[endif]

;浴槽
[if exp="f.com_huro_yokusou == 0 "]
[call target="*com_3"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数1の場合配置済みを表記

[if exp="f.com_huro_kanki == 1 "]
[call target="*done_1"]
[endif]

[if exp="f.com_huro_mado == 1 "]
[call target="*done_2"]
[endif]

[if exp="f.com_huro_yokusou == 1 "]
[call target="*done_3"]
[endif]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_com"  ]
[s  ]
*com_1

[tb_start_tyrano_code]
;換気
[layermode time="0" graphic="../fgimage/default/L_huro_kanki.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="406"  y="19"  width="120"  height="120"  target="*kakunin_huro_kanki"  _clickable_img=""  ]
[return  ]
*com_2

[tb_start_tyrano_code]
;窓
[layermode time="0" graphic="../fgimage/default/L_huro_mado.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="299"  y="285"  width="120"  height="120"  target="*kakunin_huro_mado"  _clickable_img=""  ]
[return  ]
*com_3

[tb_start_tyrano_code]
;浴槽
[layermode time="0" graphic="../fgimage/default/L_huro_yokusou.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="722"  y="571"  width="120"  height="120"  target="*kakunin_huro_yokusou"  _clickable_img=""  ]
[return  ]
*done_1

[tb_start_tyrano_code]
[image layer="2" x="417" y=" -5" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_2

[tb_start_tyrano_code]
[image layer="2" x="318" y="253" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_3

[tb_start_tyrano_code]
[image layer="2" x="714" y="625" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*com_1_setti

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*nasi"  cond="f.item_com_bousui==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti_bousui"  ]
[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*end"  cond="f.com_nasi==1"  ]
[tb_eval  exp="f.com_huro_kanki=1"  name="com_huro_kanki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[tb_start_tyrano_code]
; カメラが0の場合com_nasiに1を代入
[if exp="f.item_com_bousui==0"]
[eval exp="f.com_nasi= 1"]
[endif]

; カメラが1以上の場合com_nasiに0を代入
[if exp="f.item_com_bousui>=1"]
[eval exp="f.com_nasi= 0"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*end"  ]
*com_2_setti

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*nasi"  cond="f.item_com_bousui==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti_bousui"  ]
[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*end"  cond="f.com_nasi==1"  ]
[tb_eval  exp="f.com_huro_mado=1"  name="com_huro_mado"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[tb_start_tyrano_code]
; カメラが0の場合com_nasiに1を代入
[if exp="f.item_com_bousui==0"]
[eval exp="f.com_nasi= 1"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*end"  ]
*com_3_setti

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*nasi"  cond="f.item_com_bousui==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti_bousui"  ]
[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*end"  cond="f.com_nasi==1"  ]
[tb_eval  exp="f.com_huro_yokusou=1"  name="com_huro_yokusou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[tb_start_tyrano_code]
; カメラが0の場合com_nasiに1を代入
[if exp="f.item_com_bousui==0"]
[eval exp="f.com_nasi= 1"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*end"  ]
*setti_yameru

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_com"  ]
[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*sentaku_top"  ]
*nasi

[call  storage="sinnyu_comhaiti.ks"  target="*nasi"  ]
[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*sentaku_top"  ]
*end

[tb_start_tyrano_code]
;行動0で終了(初めての侵入用)
[if exp="f.sinnyu_hajimete == 5 && f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*off"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[tb_start_tyrano_code]
;行動0で終了
[if exp="f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]

[jump target="*sentaku_top"]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_nagi_haiti_huro.ks"  target="*sentaku_top"  