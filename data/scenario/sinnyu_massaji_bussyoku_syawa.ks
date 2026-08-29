

[_tb_system_call storage=system/_sinnyu_massaji_bussyoku_syawa.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rin_syawa_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_massaji"  ]
[clickable  storage="sinnyu_massaji_bussyoku_syawa.ks"  x="803"  y="33"  width="100"  height="100"  target="*raito"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku_syawa.ks"  x="523"  y="263"  width="100"  height="100"  target="*ameniteli"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku_syawa.ks"  x="977"  y="262"  width="100"  height="100"  target="*hurodoa"  _clickable_img=""  ]
[s  ]
*raito

[camera  time="1500"  zoom="1.5"  wait="true"  x="80"  y="120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_raito == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*raito1"]

[elsif exp="f.bussyoku_raito == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*raito2"]

[elsif exp="f.bussyoku_raito == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*raito3"]

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

*ameniteli

[camera  time="1500"  zoom="1.5"  wait="true"  x="-20"  y="20"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_ameniteli== 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*ameniteli1"]

[elsif exp="f.bussyoku_ameniteli == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*ameniteli2"]

[elsif exp="f.bussyoku_ameniteli == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*ameniteli3"]

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

*hurodoa

[camera  time="1500"  zoom="1.5"  wait="true"  x="150"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_hurodoa == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*hurodoa1"]

[elsif exp="f.bussyoku_hurodoa == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*hurodoa2"]

[elsif exp="f.bussyoku_hurodoa == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*hurodoa3"]

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