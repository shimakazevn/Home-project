
[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_huro.ks]

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
[bg  time="0"  method="fadeIn"  storage="sin_nagi_huro_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[call  storage="sinnyu_nagi_bussyoku_huro.ks"  target="*ev_light_zaisu"  cond="f.bussyoku_zaisu==1"  ]
[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton"  ]
[clickable  storage="sinnyu_nagi_bussyoku_huro.ks"  x="282"  y="182"  width="100"  height="100"  target="*huromado"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_huro.ks"  x="407"  y="534"  width="100"  height="100"  target="*yokusou"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_huro.ks"  x="633"  y="60"  width="100"  height="100"  target="*syawa"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_huro.ks"  x="917"  y="306"  width="100"  height="100"  target="*syanpu"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_huro.ks"  x="983"  y="430"  width="100"  height="100"  target="*hurotaoru"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_huro.ks"  x="882"  y="597"  width="121"  height="100"  target="*zaisu"  _clickable_img=""  ]
[s  ]
*huromado

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-180"  y="100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_huromado == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huromado1"]

[elsif exp="f.bussyoku_huromado == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huromado2"]

[elsif exp="f.bussyoku_huromado == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huromado3"]

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

*yokusou

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-180"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_yokusou == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*yokusou1"]

[elsif exp="f.bussyoku_yokusou == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*yokusou2"]

[elsif exp="f.bussyoku_yokusou == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*yokusou3"]

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

*syawa

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_syawa == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syawa1"]

[elsif exp="f.bussyoku_syawa == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syawa2"]

[elsif exp="f.bussyoku_syawa == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syawa3"]

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

*syanpu

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="120"  y="-30"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_syanpu == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syanpu1"]

[elsif exp="f.bussyoku_syanpu == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syanpu2"]

[elsif exp="f.bussyoku_syanpu == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syanpu3"]

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

*hurotaoru

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="200"  y="-70"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_hurotaoru == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*hurotaoru1"]

[elsif exp="f.bussyoku_hurotaoru == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*hurotaoru2"]

[elsif exp="f.bussyoku_hurotaoru == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*hurotaoru3"]

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

*zaisu

[call  storage="sinnyu_nagi_bussyoku.ks"  target="*ev_light_off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="150"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_zaisu == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*zaisu1"]

[elsif exp="f.bussyoku_zaisu == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*zaisu2"]

[elsif exp="f.bussyoku_zaisu == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*zaisu3"]

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
[s  ]
*ev_light_zaisu

[tb_start_tyrano_code]
[image layer="2" x="897" y="550" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_huro_bussyoku.png"  ]
[tb_image_show  time="1000"  storage="default/d_ev.gif"  width="80"  height="80"  x="897"  y="550"  _clickable_img=""  name="img_80"  ]
