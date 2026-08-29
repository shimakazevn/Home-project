[_tb_system_call storage=system/_sinnyu_byouin_bussyoku_rokka.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_rokka_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin"  ]
[clickable  storage="sinnyu_byouin_bussyoku_rokka.ks"  x="537"  y="44"  width="100"  height="100"  target="*eakon"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku_rokka.ks"  x="725"  y="478"  width="100"  height="100"  target="*konsento"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku_rokka.ks"  x="135"  y="380"  width="100"  height="100"  target="*rokka"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku_rokka.ks"  x="1083"  y="403"  width="100"  height="100"  target="*rokka2"  _clickable_img=""  ]
[s  ]
*eakon

[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_eakon == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*eakon1"]

[elsif exp="f.bussyoku_eakon == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*eakon2"]

[elsif exp="f.bussyoku_eakon == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*eakon3"]

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

*konsento

[camera  time="1500"  zoom="1.5"  wait="true"  x="120"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_konsento == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*konsento1"]

[elsif exp="f.bussyoku_konsento == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*konsento2"]

[elsif exp="f.bussyoku_konsento == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*konsento3"]

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

*rokka

[camera  time="1500"  zoom="1.5"  wait="true"  x="-200"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_rokka == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*rokka1_1"]

[elsif exp="f.bussyoku_rokka == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*rokka1_2"]

[elsif exp="f.bussyoku_rokka == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*rokka1_3"]

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

*rokka2

[camera  time="1500"  zoom="1.5"  wait="true"  x="200"  y="-60"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_rokka2 == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*rokka2_1"]

[elsif exp="f.bussyoku_rokka2 == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*rokka2_2"]

[elsif exp="f.bussyoku_rokka2 == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*rokka2_3"]

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
[bg  time="0"  method="crossfade"  storage="sin_byouin_ura.png"  ]
[cm  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="sinnyu_byouin.ks"  target="*top" ]
