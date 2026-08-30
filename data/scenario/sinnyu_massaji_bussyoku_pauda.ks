
[_tb_system_call storage=system/_sinnyu_massaji_bussyoku_pauda.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rin_pauda_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_massaji"  ]
[clickable  storage="sinnyu_massaji_bussyoku_pauda.ks"  x="552"  y="285"  width="100"  height="100"  target="*syawaroom"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku_pauda.ks"  x="899"  y="220"  width="100"  height="100"  target="*kagami"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku_pauda.ks"  x="919"  y="597"  width="100"  height="100"  target="*gomibako_massaji"  _clickable_img=""  ]
[s  ]
*syawaroom

[camera  time="1500"  zoom="1.5"  wait="true"  x="-40"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_syawaroom == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*syawaroom1"]

[elsif exp="f.bussyoku_syawaroom == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*syawaroom2"]

[elsif exp="f.bussyoku_syawaroom == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*syawaroom3"]

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

*kagami

[camera  time="1500"  zoom="1.5"  wait="true"  x="120"  y="60"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kagami == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*kagami1"]

[elsif exp="f.bussyoku_kagami == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*kagami2"]

[elsif exp="f.bussyoku_kagami == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*kagami3"]

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

*gomibako_massaji

[camera  time="1500"  zoom="1.5"  wait="true"  x="180"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_gomibako_massaji == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*gomibako1"]

[elsif exp="f.bussyoku_gomibako_massaji == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*gomibako2"]

[elsif exp="f.bussyoku_gomibako_massaji == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*gomibako3"]

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