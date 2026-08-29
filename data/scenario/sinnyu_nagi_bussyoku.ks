[_tb_system_call storage=system/_sinnyu_nagi_bussyoku.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*idou_top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[cm  ]
[call  storage="sinnyu_item.ks"  target="*off_busssyokugo"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_DK_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[jump  storage="sinnyu_nagi_bussyoku.ks"  target="*sentaku_top"  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_nagi_DK_bussyoku.png"  ]
[chara_show  name="base"  time="0"  wait="false"  storage="chara/136/ui_base_shinnyu.png"  width="1280"  height="104"  top="-1"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
（Giờ thì, lục lọi thử xem sao.）[p]
[_tb_end_text]

[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_nagi_bussyoku.ks"  target="*ev_light"  cond="f.bussyoku_reizouko==2"  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton"  ]
[clickable  storage="sinnyu_nagi_bussyoku.ks"  x="33"  y="340"  width="100"  height="100"  target="*reizouko"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku.ks"  x="268"  y="173"  width="100"  height="100"  target="*kittin"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku.ks"  x="559"  y="273"  width="100"  height="100"  target="*mado"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku.ks"  x="955"  y="212"  width="100"  height="100"  target="*syokkidana"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku.ks"  x="1011"  y="363"  width="100"  height="100"  target="*denwa"  _clickable_img=""  ]
[s  ]
*reizouko

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-220"  y="10"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_reizouko == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*reizouko1"]

[elsif exp="f.bussyoku_reizouko == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*reizouko2"]

[elsif exp="f.bussyoku_reizouko == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*reizouko3"]

[elsif exp="f.bussyoku_reizouko == 3"]
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

*kittin

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-220"  y="70"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kittin == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kittin1"]

[elsif exp="f.bussyoku_kittin == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kittin2"]

[elsif exp="f.bussyoku_kittin == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*kittin3"]

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

*mado

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="20"  y="50"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_mado == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*mado1"]

[elsif exp="f.bussyoku_mado == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*mado2"]

[elsif exp="f.bussyoku_mado == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*mado3"]

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

*syokkidana

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="100"  y="30"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_syokkidana == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syokkidana1"]

[elsif exp="f.bussyoku_syokkidana == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syokkidana2"]

[elsif exp="f.bussyoku_syokkidana == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*syokkidana3"]

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

*denwa

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="100"  y="-40"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_denwa == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*denwa1"]

[elsif exp="f.bussyoku_denwa == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*denwa2"]

[elsif exp="f.bussyoku_denwa == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*denwa3"]

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

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;初めての侵入の場合カメラ設置は必須(戻れない)
[if exp="f.sinnyu_hajimete == 3"]
[jump storage="sinnyu_nagi.ks" target="*haiti"]
[endif]
[_tb_end_tyrano_code]

[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="base"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sinnyu_item.ks"  target="*off"  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]

[_tb_end_tyrano_code]

[cm  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="sinnyu_nagi.ks"  target="*top"  ]
[s  ]
*ev_light

[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[image layer="2" x="36" y="284" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*ev_light_off

[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[return  