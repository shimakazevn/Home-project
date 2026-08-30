
[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_toire.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[cm  ]
[call  storage="sinnyu_item.ks"  target="*off_busssyokugo"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_toire_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton"  ]
[clickable  storage="sinnyu_nagi_bussyoku_toire.ks"  x="408"  y="170"  width="100"  height="100"  target="*kabekake"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_toire.ks"  x="577"  y="118"  width="100"  height="100"  target="*komado"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_toire.ks"  x="607"  y="206"  width="100"  height="100"  target="*poti"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_toire.ks"  x="579"  y="428"  width="100"  height="100"  target="*benki"  _clickable_img=""  ]
[s  ]
*kabekake

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-150"  y="60"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kabekake == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kabekake1"]

[elsif exp="f.bussyoku_kabekake == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kabekake2"]

[elsif exp="f.bussyoku_kabekake == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kabekake3"]

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

*komado

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_komado == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*komado1"]

[elsif exp="f.bussyoku_komado == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*komado2"]

[elsif exp="f.bussyoku_komado == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*komado3"]

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

*poti

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="80"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_poti == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*poti1"]

[elsif exp="f.bussyoku_poti == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*poti2"]

[elsif exp="f.bussyoku_poti == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*poti3"]

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

*benki

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_benki == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*benki1"]

[elsif exp="f.bussyoku_benki == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*benki2"]

[elsif exp="f.bussyoku_benki == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*benki3"]

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
*modoru

[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[call  storage="sinnyu_item.ks"  target="*off"  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[cm  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="sinnyu_nagi.ks"  target="*top"  ]
