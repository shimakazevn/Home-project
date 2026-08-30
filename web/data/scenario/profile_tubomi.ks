[_tb_system_call storage=system/_profile_tubomi.ks]

*top

[call  storage="system.ks"  target="*fade_in_effect"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="back_puro_tubomi.png"  ]
[tb_start_tyrano_code]
;好感度のコール(MAX30)===================
[if exp="f.koukando_tubomi_koibito >= 1"]
[call target="*koukando_5"]
[elsif exp="f.koukando_tubomi >= 30"]
[call target="*koukando_4"]
[elsif exp="f.koukando_tubomi >= 20"]
[call target="*koukando_3"]
[elsif exp="f.koukando_tubomi >= 10"]
[call target="*koukando_2"]
[elsif exp="f.koukando_tubomi >= 1"]
[call target="*koukando_1"]
[elsif exp="f.koukando_tubomi <= 0"]
[call target="*koukando_0"]
[endif]

;クリア条件============================
;蕾の好感度が大好き（恋人）
[if exp="f.koukando_tubomi_koibito == 1"]
[call target="*condition_0"]
[endif]

;賢さ、コミュ力が100以上
[if exp="f.para_kasikosa_display >= 100 && f.para_komyu_display >= 100"]
[call target="*condition_1"]
[endif]

;蕾が本命
[if exp="f.puro_kuria_tubomi3 == 1"]
[call target="*condition_2"]
[endif]

[_tb_end_tyrano_code]

[call  storage="profile_tubomi.ks"  target="*huku_sihuku"  ]
[call  storage="system.ks"  target="*fade_out_effect"  ]
*kigae_top

[tb_start_tyrano_code]
;仕事服ボタン
[button name="puro" target=*sigoto graphic="../fgimage/default/puro_button_sigoto_off.png" enterimg="../fgimage/default/puro_button_sigoto.png" clickimg=../fgimage/default/puro_button_sigoto.png x=470 y=680]

;私服ボタン
[button name="puro" target=*sihuku graphic="../fgimage/default/puro_button_sihuku_off.png" enterimg="../fgimage/default/puro_button_sihuku.png" clickimg=../fgimage/default/puro_button_sihuku.png x=590 y=680]

;タブ_凪
[button graphic="../fgimage/default/puro_tabu_nagi.png" enterimg="../fgimage/default/puro_tabu_nagi_on.png" clickimg=../fgimage/default/puro_tabu_nagi_on.png target="*tabu_nagi" name="puro" x=241 y=0 ]

;タブ_凛子
[button graphic="../fgimage/default/puro_tabu_rinko.png" enterimg="../fgimage/default/puro_tabu_rinko_on.png" clickimg=../fgimage/default/puro_tabu_rinko_on.png target="*tabu_rinko" name="puro" x=704 y=0 ]

;タブ_蕾
[button graphic="../fgimage/default/puro_tabu_tubomi_on.png" enterimg="../fgimage/default/puro_tabu_tubomi_on.png" clickimg=../fgimage/default/puro_tabu_tubomi_on.png target="*tabu_tubomi" name="puro" x=472 y=0 ]

;戻る
[button graphic="../fgimage/default/tm_modoru_on.png" enterimg="../fgimage/default/tm_modoru_off.png" clickimg=../fgimage/default/tm_modoru_on.png target="*modoru" name="puro" x=1192 y=632 ]

[anim name="puro" opacity=0 time=0]
[anim name="puro" opacity=255 time=0]
[_tb_end_tyrano_code]

[s  ]
[tb_start_tyrano_code]
*hadaka
[call target="*huku_hadaka"]
[jump target="*end"]

*sigoto
[call target="*huku_sigoto"]
[jump target="*end"]

*sihuku
[call target="*huku_sihuku"]
[jump target="*end"]

*end

[_tb_end_tyrano_code]

[cm  ]
[jump  storage="profile_tubomi.ks"  target="*kigae_top"  ]
*koukando_0

[tb_image_show  time="0"  storage="default/puro_koukando0.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_17"  ]
[return  ]
*koukando_1

[tb_image_show  time="0"  storage="default/puro_koukando1.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_20"  ]
[return  ]
*koukando_2

[tb_image_show  time="0"  storage="default/puro_koukando2.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_23"  ]
[return  ]
*koukando_3

[tb_image_show  time="0"  storage="default/puro_koukando3.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_26"  ]
[return  ]
*koukando_4

[tb_image_show  time="0"  storage="default/puro_koukando4.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_29"  ]
[return  ]
*koukando_5

[tb_image_show  time="0"  storage="default/puro_koukando5.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_32"  ]
[return  ]
*condition_0

[tb_image_show  time="0"  storage="default/puro_condition_tubomi1.png"  width="312"  height="40"  x="960"  y="152"  ]
[return  ]
*condition_1

[tb_image_show  time="0"  storage="default/puro_condition_tubomi3.png"  width="312"  height="40"  x="960"  y="200"  ]
[return  ]
*condition_2

[tb_image_show  time="0"  storage="default/puro_condition_tubomi2.png"  width="312"  height="40"  x="960"  y="248"  ]
[return  ]
*huku_hadaka

[jump  storage="profile_tubomi.ks"  target="*nodata"  cond="sf.puro_tubomi_hadaka==0"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x=" 151" y=" 64" storage="../fgimage/default/puro_tubomi_hadaka.png" time="500" ]
[_tb_end_tyrano_code]

[return  ]
*huku_sigoto

[jump  storage="profile_tubomi.ks"  target="*nodata"  cond="sf.puro_tubomi_sigoto==0"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x=" 151" y=" 64" storage="../fgimage/default/puro_tubomi_sigoto.png" time="500" ]
[_tb_end_tyrano_code]

[return  ]
*huku_sihuku

[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x=" 151" y=" 64" storage="../fgimage/default/puro_tubomi_sihuku.png" time="500" ]
[_tb_end_tyrano_code]

[return  ]
*nodata

[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x=" 140" y=" 64" storage="../fgimage/default/puro_nodata.png" time="200" ]
[_tb_end_tyrano_code]

[return  ]
*modoru

[call  storage="system.ks"  target="*fade_in_effect"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="system.ks"  target="*fade_out_effect"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*tabu_nagi

[jump  storage="profile_nagi.ks"  target="*top"  ]
*tabu_rinko

[jump  storage="profile_rinko.ks"  target="*top"  ]
*tabu_tubomi

[jump  storage="profile_tubomi.ks"  target="*top"  ]
