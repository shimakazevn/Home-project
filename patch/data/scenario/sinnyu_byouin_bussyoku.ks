]
[_tb_system_call storage=system/_sinnyu_byouin_bussyoku.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*idou_top

[mask  time="700"  effect="slideInLeft"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_ura_bussyoku.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[tb_hide_message_window  ]
[jump  storage="sinnyu_byouin_bussyoku.ks"  target="*sentaku_top"  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_ura_bussyoku.png"  ]
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
[call  storage="sinnyu_item.ks"  target="*idoubutton_byouin"  ]
[clickable  storage="sinnyu_byouin_bussyoku.ks"  x="317"  y="519"  width="100"  height="100"  target="*sutokku"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku.ks"  x="459"  y="274"  width="100"  height="100"  target="*syuunou"  _clickable_img=""  ]
[clickable  storage="sinnyu_byouin_bussyoku.ks"  x="618"  y="196"  width="100"  height="100"  target="*keijiban"  _clickable_img=""  ]
[s  ]
*syuunou

[call  storage="sinnyu_item.ks"  target="*off"  ]
[camera  time="1500"  zoom="1.5"  wait="true"  x="-80"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_syuunou == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*syuunou1"]

[elsif exp="f.bussyoku_syuunou == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*syuunou2"]

[elsif exp="f.bussyoku_syuunou == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*syuunou3"]

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

*soujiyougu

[camera  time="1500"  zoom="1.5"  wait="true"  x="60"  y="0"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_soujiyougu == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*soujiyougu1"]

[elsif exp="f.bussyoku_soujiyougu == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*soujiyougu2"]

[elsif exp="f.bussyoku_soujiyougu == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*soujiyougu3"]

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

*keijiban

[camera  time="1500"  zoom="1.5"  wait="true"  x="0"  y="50"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_keijiban == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*keijiban1"]

[elsif exp="f.bussyoku_keijiban == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*keijiban2"]

[elsif exp="f.bussyoku_keijiban == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*keijiban3"]

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

*sutokku

[camera  time="1500"  zoom="1.5"  wait="true"  x="-200"  y="-120"  rotate="0"  layer="base"  ease_type="ease"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;テキストをコール

[if exp="f.bussyoku_soujiyougu == 0"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*soujiyougu1"]

[elsif exp="f.bussyoku_soujiyougu == 1"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*soujiyougu2"]

[elsif exp="f.bussyoku_soujiyougu == 2"]
[call storage="sinnyu_byouin_bussyoku_ev.ks" target="*soujiyougu3"]

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

[s  