[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_datui.ks]

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
[bg  time="0"  method="fadeIn"  storage="sin_nagi_senmen_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[call  storage="sinnyu_nagi_bussyoku_datui.ks"  target="*ev_light_sentaku"  cond="f.bussyoku_sentakuki==0"  ]
[call  storage="sinnyu_nagi_bussyoku_datui.ks"  target="*ev_light_sentaku"  cond="f.bussyoku_sentakuki==1"  ]
[call  storage="sinnyu_nagi_bussyoku_datui.ks"  target="*ev_light_kago"  cond="f.bussyoku_kago==2"  ]
[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton"  ]
[clickable  storage="sinnyu_nagi_bussyoku_datui.ks"  x="401"  y="475"  width="100"  height="100"  target="*hosu"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_datui.ks"  x="340"  y="145"  width="157"  height="125"  target="*sentakumono"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_datui.ks"  x="453"  y="356"  width="100"  height="100"  target="*sentakuki"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_datui.ks"  x="638"  y="329"  width="100"  height="100"  target="*taoru"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_datui.ks"  x="561"  y="580"  width="100"  height="100"  target="*kago"  _clickable_img=""  ]
[s  ]
*hosu

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-200"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_hosu == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*hosu1"]

[elsif exp="f.bussyoku_hosu == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*hosu2"]

[elsif exp="f.bussyoku_hosu == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*hosu3"]

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

*sentakumono

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-150"  y="130"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_sentakumono == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sentakumono1"]

[elsif exp="f.bussyoku_sentakumono == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sentakumono2"]

[elsif exp="f.bussyoku_sentakumono == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sentakumono3"]

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

*sentakuki

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-130"  y="-20"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_sentakuki == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sentakuki1"]

[elsif exp="f.bussyoku_sentakuki == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sentakuki2"]

[elsif exp="f.bussyoku_sentakuki == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sentakuki3"]

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

*taoru

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="30"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_taoru == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*taoru1"]

[elsif exp="f.bussyoku_taoru == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*taoru2"]

[elsif exp="f.bussyoku_taoru == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*taoru3"]

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

*kago

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kago == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kago1"]

[elsif exp="f.bussyoku_kago == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kago2"]

[elsif exp="f.bussyoku_kago == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kago3"]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[cm  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="sinnyu_nagi.ks"  target="*top"  ]
[s  ]
*ev_light_sentaku

[tb_start_tyrano_code]
[image layer="2" x="459" y="319" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*ev_light_kago

[tb_start_tyrano_code]
[image layer="2" x=" 582" y="526" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
[tb_image_show  time="1000"  storage="default/d_ev.gif"  width="80"  height="80"  x="459"  y="319"  _clickable_img="sin_nagi_senmen_bussyoku.png" ]
