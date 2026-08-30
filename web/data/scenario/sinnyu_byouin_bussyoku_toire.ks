[_tb_system_call storage=system/_sinnyu_byouin_bussyoku_toire.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_toire_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin"  ]
[clickable  storage="sinnyu_byouin_bussyoku_toire.ks"  x="581"  y="469"  width="100"  height="100"  target="*benki_byouin"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku_toire.ks"  x="401"  y="618"  width="100"  height="100"  target="*surippa"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku_toire.ks"  x="830"  y="310"  width="100"  height="100"  target="*doa"  _clickable_img=""  ]
[s  ]
*benki_byouin

[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_benki_byouin == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*benki_byouin1"]

[elsif exp="f.bussyoku_benki_byouin == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*benki_byouin2"]

[elsif exp="f.bussyoku_benki_byouin == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*benki_byouin3"]

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

*surippa

[camera  time="1500"  zoom="1.5"  wait="true"  x="-100"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_surippa == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*surippa1"]

[elsif exp="f.bussyoku_surippa == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*surippa2"]

[elsif exp="f.bussyoku_surippa == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*surippa3"]

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

*doa

[camera  time="1500"  zoom="1.5"  wait="true"  x="180"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_doa == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*doa1"]

[elsif exp="f.bussyoku_doa == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*doa2"]

[elsif exp="f.bussyoku_doa == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*doa3"]

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

[s  ]
