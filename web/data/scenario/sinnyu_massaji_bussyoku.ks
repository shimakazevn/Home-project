[_tb_system_call storage=system/_sinnyu_massaji_bussyoku.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*idou_top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rin_sejyutusitu_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
[jump  storage="sinnyu_massaji_bussyoku.ks"  target="*sentaku_top"  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rin_sejyutusitu_bussyoku.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
（さてと、適当に漁ってみるか）[p]
[_tb_end_text]

[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_massaji"  ]
[clickable  storage="sinnyu_massaji_bussyoku.ks"  x="136"  y="5"  width="100"  height="100"  target="*tenjyou"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku.ks"  x="881"  y="356"  width="100"  height="100"  target="*tana_massaji"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku.ks"  x="505"  y="409"  width="329"  height="176"  target="*bed"  _clickable_img=""  ]
[clickable  storage="sinnyu_massaji_bussyoku.ks"  x="19"  y="246"  width="100"  height="100"  target="*katen"  _clickable_img=""  ]
[s  ]
*tenjyou

[camera  time="1500"  zoom="1.5"  wait="true"  x="-160"  y="120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_tenjyou == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*tenjyou1"]

[elsif exp="f.bussyoku_tenjyou == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*tenjyou2"]

[elsif exp="f.bussyoku_tenjyou == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*tenjyou3"]

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

*tana_massaji

[camera  time="1500"  zoom="1.5"  wait="true"  x="180"  y="-60"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_tana_massaji == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*tana1"]

[elsif exp="f.bussyoku_tana_massaji == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*tana2"]

[elsif exp="f.bussyoku_tana_massaji == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*tana3"]

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

*bed

[camera  time="1500"  zoom="1.5"  wait="true"  x="-70"  y="-60"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_bed == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*bed1"]

[elsif exp="f.bussyoku_bed == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*bed2"]

[elsif exp="f.bussyoku_bed == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*bed3"]

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

*katen

[camera  time="1500"  zoom="1.5"  wait="true"  x="-180"  y="50"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_katen == 0"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*katen1"]

[elsif exp="f.bussyoku_katen == 1"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*katen2"]

[elsif exp="f.bussyoku_katen == 2"]
[call storage="sinnyu_bussyoku_massaji_ev.ks" target="*katen3"]

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
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[call  storage="sinnyu_item.ks"  target="*off"  ]
[bg  time="0"  method="crossfade"  storage="sin_rin_sejyutusitu.png"  ]
[cm  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="sinnyu_massaji.ks"  target="*top"  ]
