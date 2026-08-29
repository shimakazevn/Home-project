[_tb_system_call storage=system/_sinnyu_rihure_sekkyaku_haiti.ks]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="back_rihure_sekkyaku.png"  ]
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

;high
[if exp="f.com_rifurereception_high == 0 "]
[call target="*com_1"]
[endif]

;low
[if exp="f.com_rifurereception_low == 0 "]
[call target="*com_2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数1の場合配置済みを表記

[if exp="f.com_rifurereception_high == 1 "]
[call target="*done_1"]
[endif]

[if exp="f.com_rifurereception_low == 1 "]
[call target="*done_2"]
[endif]


[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_rihure_com"  ]
[s  ]
*com_1

[tb_start_tyrano_code]
;high
[layermode time="0" graphic="../fgimage/default/rifurereception_high.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="542"  y="84"  width="120"  height="120"  target="*kakunin_rifurereception_high"  _clickable_img=""  ]
[return  ]
*com_2

[tb_start_tyrano_code]
;low
[layermode time="0" graphic="../fgimage/default/rifurereception_low.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="805"  y="448"  width="120"  height="120"  target="*kakunin_rifurereception_low"  _clickable_img=""  ]
[return  ]
*done_1

[tb_start_tyrano_code]
[image layer="2" x="534" y="44" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_2

[tb_start_tyrano_code]
[image layer="2" x="872" y="430" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*com_1_setti

[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_rifurereception_high=1"  name="com_rifurereception_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*end"  ]
*com_2_setti

[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_rifurereception_low=1"  name="com_rifurereception_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*end"  ]
*setti_yameru

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_rihure_com"  ]
[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*sentaku_top"  ]
*nasi

[call  storage="sinnyu_comhaiti.ks"  target="*nasi"  ]
[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*sentaku_top"  ]
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

[jump  storage="sinnyu_rihure_sekkyaku_haiti.ks"  target="*sentaku_top" ]
