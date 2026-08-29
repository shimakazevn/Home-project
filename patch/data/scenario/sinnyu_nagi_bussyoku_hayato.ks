[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_hayato.ks]

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
[bg  time="0"  method="fadeIn"  storage="sin_nagi_haharoom_bussyoku.png"  ]
[call  storage="sinnyu_nagi_bussyoku_hayato.ks"  target="*ev_light_huku"  cond="f.bussyoku_huku==1"  ]
[call  storage="sinnyu_nagi_bussyoku_hayato.ks"  target="*ev_light_kaban"  cond="f.bussyoku_kaban==1"  ]
[call  storage="sinnyu_nagi_bussyoku_hayato.ks"  target="*ev_light_kaban"  cond="f.bussyoku_kaban==2"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[call  storage="sinnyu_nagi_bussyoku_hayato.ks"  target="*ev_light_huku"  cond="f.bussyoku_huku==1"  ]
[call  storage="sinnyu_nagi_bussyoku_hayato.ks"  target="*ev_light_kaban"  cond="f.bussyoku_kaban==1"  ]
[call  storage="sinnyu_nagi_bussyoku_hayato.ks"  target="*ev_light_kaban"  cond="f.bussyoku_kaban==2"  ]
[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton"  ]
[clickable  storage="sinnyu_nagi_bussyoku_hayato.ks"  x="205"  y="99"  width="100"  height="155"  target="*huku"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_hayato.ks"  x="382"  y="440"  width="100"  height="100"  target="*kaban"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_hayato.ks"  x="429"  y="547"  width="100"  height="100"  target="*gomibako"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_hayato.ks"  x="871"  y="463"  width="100"  height="100"  target="*sibutu"  _clickable_img=""  ]
[s  ]
*huku

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-210"  y="100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_huku == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huku1"]

[elsif exp="f.bussyoku_huku == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huku2"]

[elsif exp="f.bussyoku_huku == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huku3"]

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

*kaban

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-130"  y="-90"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kaban == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kaban1"]

[elsif exp="f.bussyoku_kaban == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kaban2"]

[elsif exp="f.bussyoku_kaban == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kaban3"]

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

*gomibako

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-100"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_gomibako_hayato == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*gomibako_hayato1"]

[elsif exp="f.bussyoku_gomibako_hayato == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*gomibako_hayato2"]

[elsif exp="f.bussyoku_gomibako_hayato == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*gomibako_hayato3"]

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

*sibutu

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="150"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_sibutu == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sibutu1"]

[elsif exp="f.bussyoku_sibutu == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sibutu2"]

[elsif exp="f.bussyoku_sibutu == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*sibutu3"]

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
*ev_light_huku

[tb_start_tyrano_code]
[image layer="2" x=" 223" y="127" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*ev_light_kaban

[tb_start_tyrano_code]
[image layer="2" x=" 392" y="404" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_haharoom_bussyoku.png"  ]
[tb_image_show  time="1000"  storage="default/d_ev.gif"  width="80"  height="80"  x="223"  y="127"  _clickable_img=""  name="img_80"  ]
[tb_image_show  time="1000"  storage="default/d_ev.gif"  width="80"  height="80"  x="392"  y="404"  _clickable_img="" ]
