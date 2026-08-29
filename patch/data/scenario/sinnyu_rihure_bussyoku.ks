

[_tb_system_call storage=system/_sinnyu_rihure_bussyoku.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*idou_top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rihure_hikae_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
[jump  storage="sinnyu_rihure_bussyoku.ks"  target="*sentaku_top"  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_rihure_hikae_bussyoku.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
（Giờ thì, lục lọi thử xem sao.）[p]
[_tb_end_text]

[tb_hide_message_window  ]
*sentaku_top

[tb_hide_message_window  ]
[call  storage="sinnyu_item.ks"  target="*turn_m"  ]
[call  storage="sinnyu_item.ks"  target="*com"  ]
[call  storage="sinnyu_item.ks"  target="*idoubutton_rihure"  ]
[clickable  storage="sinnyu_rihure_bussyoku.ks"  x="593"  y="385"  width="100"  height="100"  target="*reizouko_rihure"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku.ks"  x="1004"  y="596"  width="100"  height="100"  target="*kyuukei"  _clickable_img=""  ]
[clickable  storage="sinnyu_rihure_bussyoku.ks"  x="924"  y="324"  width="100"  height="100"  target="*kouisitu"  _clickable_img=""  ]
[s  ]
[clickable  storage="sinnyu_rihure_bussyoku.ks"  x="42"  y="410"  width="100"  height="100"  target="*isyou"  _clickable_img=""  ]
*isyou

[camera  time="1500"  zoom="1.5"  wait="true"  x="-210"  y="50"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_isyou == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*isyou1"]

[elsif exp="f.bussyoku_isyou == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*isyou2"]

[elsif exp="f.bussyoku_isyou == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*isyou3"]

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

*reizouko_rihure

[camera  time="1500"  zoom="1.5"  wait="true"  x="-30"  y="-30"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_reizouko_rihure == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*reizouko1"]

[elsif exp="f.bussyoku_reizouko_rihure == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*reizouko2"]

[elsif exp="f.bussyoku_reizouko_rihure == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*reizouko3"]

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

*kyuukei

[camera  time="1500"  zoom="1.5"  wait="true"  x="110"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kyuukei == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kyukei1"]

[elsif exp="f.bussyoku_kyuukei == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kyukei2"]

[elsif exp="f.bussyoku_kyuukei == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kyukei3"]

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

*kouisitu

[camera  time="1500"  zoom="1.5"  wait="true"  x="190"  y="20"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_kouisitu == 0"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kouisitu1"]

[elsif exp="f.bussyoku_kouisitu == 1"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kouisitu2"]

[elsif exp="f.bussyoku_kouisitu == 2"]
[call storage="sinnyu_bussyoku_rihure_ev.ks" target="*kouisitu3"]

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
[bg  time="0"  method="fadeIn"  storage="back_rihure_hikaesitu.png"  ]
[cm  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="sinnyu_rihure.ks"  target="*top" ]
