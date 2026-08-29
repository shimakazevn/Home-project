[_tb_system_call storage=system/_sinnyu_nagi_haiti_datui.ks]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_senmen.png"  ]
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

;鏡
[if exp="f.com_senmenjyo_kagami == 0 "]
[call target="*com_1"]
[endif]

;コンセント
[if exp="f.com_senmenjyo_konsento == 0 "]
[call target="*com_2"]
[endif]

;洗濯機
[if exp="f.com_senmenjyo_sentakuki == 0 "]
[call target="*com_3"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数1の場合配置済みを表記

[if exp="f.com_senmenjyo_kagami == 1 "]
[call target="*done_1"]
[endif]

[if exp="f.com_senmenjyo_konsento == 1 "]
[call target="*done_2"]
[endif]

[if exp="f.com_senmenjyo_sentakuki == 1 "]
[call target="*done_3"]
[endif]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_com"  ]
[s  ]
*com_1

[tb_start_tyrano_code]
;鏡
[layermode time="0" graphic="../fgimage/default/L_senmenjyo_kagami.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="598"  y="74"  width="120"  height="120"  target="*com_senmenjyo_kagami"  _clickable_img=""  ]
[return  ]
*com_2

[tb_start_tyrano_code]
;コンセント
[layermode time="0" graphic="../fgimage/default/L_senmenjyo_konsento.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="601"  y="484"  width="120"  height="120"  target="*com_senmenjyo_konsento"  _clickable_img=""  ]
[return  ]
*com_3

[tb_start_tyrano_code]
;洗濯機
[layermode time="0" graphic="../fgimage/default/L_senmenjyo_sentakuki.gif" mode="screen"]
[_tb_end_tyrano_code]

[clickable  storage="sinnyu_comhaiti.ks"  x="435"  y="296"  width="120"  height="120"  target="*com_senmenjyo_sentakuki"  _clickable_img=""  ]
[return  ]
*done_1

[tb_start_tyrano_code]
[image layer="2" x="605" y="40" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_2

[tb_start_tyrano_code]
[image layer="2" x="560" y="513" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*done_3

[tb_start_tyrano_code]
[image layer="2" x="426" y="304" storage="default/done.png" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*com_1_setti

[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_senmenjyo_kagami=1"  name="com_senmenjyo_kagami"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*end"  ]
*com_2_setti

[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_senmenjyo_konsento=1"  name="com_senmenjyo_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*end"  ]
*com_3_setti

[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*nasi"  cond="f.item_com==0"  ]
[call  storage="sinnyu_comhaiti.ks"  target="*setti"  ]
[tb_eval  exp="f.com_senmenjyo_sentakuki=1"  name="com_senmenjyo_sentakuki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_hajimete=5"  name="sinnyu_hajimete"  cmd="="  op="t"  val="5"  ]
[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*end"  ]
*setti_yameru

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_com"  ]
[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*sentaku_top"  ]
*nasi

[call  storage="sinnyu_comhaiti.ks"  target="*nasi"  ]
[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*sentaku_top"  ]
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

[jump  storage="sinnyu_nagi_haiti_datui.ks"  target="*sentaku_top" ]
