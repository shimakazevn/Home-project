

[_tb_system_call storage=system/_sinnyu_rihure_bussyoku_sekkyaku.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rihure_settai_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_rihure"  ]
[clickable  storage="sinnyu_rihure_bussyoku_sekkyaku.ks"  x="357"  y="276"  width="100"  height="100"  target="*kami"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku_sekkyaku.ks"  x="512"  y="421"  width="100"  height="100"  target="*gomibako_rihure"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku_sekkyaku.ks"  x="624"  y="513"  width="100"  height="100"  target="*bed_rihure"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku_sekkyaku.ks"  x="842"  y="462"  width="100"  height="100"  target="*telissyu"  _clickable_img=""  ]
[s  ]
*kami

[camera  time="1500"  zoom="1.5"  wait="true"  x="-100"  y="40"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kami == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kami1"]

[elsif exp="f.bussyoku_kami == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kami2"]

[elsif exp="f.bussyoku_kami == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kami3"]

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

*gomibako_rihure

[camera  time="1500"  zoom="1.5"  wait="true"  x="-40"  y="-80"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_gomibako_rihure == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*gomibako1"]

[elsif exp="f.bussyoku_gomibako_rihure == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*gomibako2"]

[elsif exp="f.bussyoku_gomibako_rihure == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*gomibako3"]

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

*bed_rihure

[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_bed_rihure == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*bed1"]

[elsif exp="f.bussyoku_bed_rihure == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*bed2"]

[elsif exp="f.bussyoku_bed_rihure == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*bed3"]

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

*telissyu

[camera  time="1500"  zoom="1.5"  wait="true"  x="210"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_telissyu == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*telissyu1"]

[elsif exp="f.bussyoku_telissyu == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*telissyu2"]

[elsif exp="f.bussyoku_telissyu == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*telissyu3"]

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