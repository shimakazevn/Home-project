]
[_tb_system_call storage=system/_sinnyu_rihure_bussyoku_kouisitu.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rihure_sityakusitu_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_rihure"  ]
[clickable  storage="sinnyu_rihure_bussyoku_kouisitu.ks"  x="337"  y="61"  width="100"  height="100"  target="*tenjyou_rihure"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku_kouisitu.ks"  x="293"  y="458"  width="100"  height="100"  target="*pureto"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku_kouisitu.ks"  x="668"  y="609"  width="100"  height="100"  target="*yuka"  _clickable_img=""  ]
[s  ]
*tenjyou_rihure

[camera  time="1500"  zoom="1.5"  wait="true"  x="-100"  y="120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_tenjyou_rihure == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*tenjyou1"]

[elsif exp="f.bussyoku_tenjyou_rihure == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*tenjyou2"]

[elsif exp="f.bussyoku_tenjyou_rihure == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*tenjyou3"]

[else]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*reizouko4"]


[endif]
[_tb_end_tyrano_code]

[reset_camera  time="700"  wait="true"  layer="base"  ]
[tb_eval  exp="f.sinnyu_koudou_count-=1"  name="sinnyu_koudou_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="sinnyu_item.ks"  target="*off_busssyokugo"  ]
[tb_start_tyrano_code]
;行動0で終了
[if exp="f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]

[jump target="*sentaku_top"]
[_tb_end_tyrano_code]

*pureto

[camera  time="1500"  zoom="1.5"  wait="true"  x="-120"  y="-50"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_pureto == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*pureto1"]

[elsif exp="f.bussyoku_pureto == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*pureto2"]

[elsif exp="f.bussyoku_pureto == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*pureto3"]

[else]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*reizouko4"]


[endif]
[_tb_end_tyrano_code]

[reset_camera  time="700"  wait="true"  layer="base"  ]
[tb_eval  exp="f.sinnyu_koudou_count-=1"  name="sinnyu_koudou_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="sinnyu_item.ks"  target="*off_busssyokugo"  ]
[tb_start_tyrano_code]
;行動0で終了
[if exp="f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]

[jump target="*sentaku_top"]
[_tb_end_tyrano_code]

*yuka

[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_yuka == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*yuka1"]

[elsif exp="f.bussyoku_yuka == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*yuka2"]

[elsif exp="f.bussyoku_yuka == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*yuka3"]

[else]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*reizouko4"]

[endif]
[_tb_end_tyrano_code]

[reset_camera  time="700"  wait="true"  layer="base"  ]
[tb_eval  exp="f.sinnyu_koudou_count-=1"  name="sinnyu_koudou_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="sinnyu_item.ks"  target="*off_busssyokugo"  ]
[tb_start_tyrano_code]
;行動0で終了
[if exp="f.sinnyu_koudou_count == 0"]
[jump storage="sinnyu_nagi.ks" target="*end"]
[endif]

[jump target="*sentaku_top"]
[_tb_end_tyrano_code]