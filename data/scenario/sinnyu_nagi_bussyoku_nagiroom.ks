
[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_nagiroom.ks]

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
[bg  time="0"  method="fadeIn"  storage="sin_nagi_nagiroom_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  target="*ev_light_pc"  cond="f.bussyoku_pc==1"  ]
[call  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  target="*ev_light_pc"  cond="f.bussyoku_pc==2"  ]
[call  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  target="*ev_light_tansu"  cond="f.bussyoku_tansu==0"  ]
[call  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  target="*ev_light_tansu"  cond="f.bussyoku_tansu==1"  ]
[call  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  target="*ev_light_huton"  cond="f.bussyoku_huton==2"  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton"  ]
[clickable  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  x="282"  y="541"  width="100"  height="100"  target="*gomibako"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  x="300"  y="387"  width="100"  height="100"  target="*pc"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  x="496"  y="384"  width="100"  height="100"  target="*senpuuki"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  x="829"  y="210"  width="100"  height="100"  target="*tana"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  x="888"  y="339"  width="100"  height="100"  target="*tansu"  _clickable_img=""  ]
[clickable  storage="sinnyu_nagi_bussyoku_nagiroom.ks"  x="1044"  y="537"  width="99"  height="94"  target="*huton"  _clickable_img=""  ]
[s  ]
*gomibako

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-200"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_gomibako == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*gomibako1"]

[elsif exp="f.bussyoku_gomibako == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*gomibako2"]

[elsif exp="f.bussyoku_gomibako == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*gomibako3"]

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

*pc

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-200"  y="-70"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール
;凪と隼人の関係（0～9「１（普通）」10～19「２（微妙）」20～29「３（苦手）」30「４（嫌））

[if exp="f.bussyoku_pc == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*pc1"]

[elsif exp="f.bussyoku_pc == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*pc2"]

; 凪と恋人状態
[elsif exp="f.koukando_nagi_koibito == 1"]
[call storage="sinnyu_PC.ks" target="*5"]

; 凪と隼人の関係性によって内容が変化 0～9「１（普通）」
[elsif exp="f.bussyoku_pc >= 2 && f.kankei < 10"]
[call storage="sinnyu_PC.ks" target="*1"]

; 10～19「２（微妙）」
[elsif exp="f.bussyoku_pc >= 2 && f.kankei >= 10 && f.kankei < 20"]
[call storage="sinnyu_PC.ks" target="*2"]

; 20～29「３（苦手）」
[elsif exp="f.bussyoku_pc >= 2 && f.kankei >= 20 && f.kankei < 30"]
[call storage="sinnyu_PC.ks" target="*3"]

; 30～「４（嫌）」
[elsif exp="f.bussyoku_pc >= 2 && f.kankei >= 30"]
[call storage="sinnyu_PC.ks" target="*4"]

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

*senpuuki

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-100"  y="-100"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_senpuuki == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*senpuuki1"]

[elsif exp="f.bussyoku_senpuuki == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*senpuuki2"]

[elsif exp="f.bussyoku_senpuuki == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*senpuuki3"]

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

*tana

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="180"  y="60"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_tana == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*tana1"]

[elsif exp="f.bussyoku_tana == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*tana2"]

[elsif exp="f.bussyoku_tana == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*tana3"]

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

*tansu

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="180"  y="-30"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_tansu == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*tansu1"]

[elsif exp="f.bussyoku_tansu == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*tansu2"]

[elsif exp="f.bussyoku_tansu == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*tansu3"]

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

*huton

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="180"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_huton == 0"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huton1"]

[elsif exp="f.bussyoku_huton == 1"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huton2"]

[elsif exp="f.bussyoku_huton == 2"]
[call storage="sinnyu_nagi_bussyoku_ev.ks" target="*huton3"]

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
*ev_light_pc

[bg  time="0"  method="fadeIn"  storage="sin_nagi_nagiroom_bussyoku.png"  ]
[tb_start_tyrano_code]
[image layer="2" x="310" y="352" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*ev_light_tansu

[tb_start_tyrano_code]
[image layer="2" x="904" y="287" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
*ev_light_huton

[tb_start_tyrano_code]
[image layer="2" x="1053" y="488" storage="default/d_ev.gif" time="0" ]
[_tb_end_tyrano_code]

[return  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom_bussyoku.png"  ]
[tb_image_show  time="1000"  storage="default/d_ev.gif"  width="80"  height="80"  x="310"  y="352"  _clickable_img=""  name="img_102"  ]
