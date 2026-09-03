
[_tb_system_call storage=system/_profile_nagi.ks]

*top

[call  storage="system.ks"  target="*fade_in_effect"  ]
[chara_hide  name="kankei"  time="0"  wait="true"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="back_puro_nagi.png"  ]
[tb_start_tyrano_code]
;好感度を四捨五入して 小数第1位まで残す
[eval exp="f.koukando_rinko  = Number(f.koukando_rinko.toFixed(1))"]
[eval exp="f.koukando_nagi   = Number(f.koukando_nagi.toFixed(1))"]
[eval exp="f.koukando_tubomi = Number(f.koukando_tubomi.toFixed(1))"]
[eval exp="f.koukando_hayato = Number(f.koukando_hayato.toFixed(1))"]


;思い出のコール(MAX13)===================
[if exp="f.omoide_para >= 13"]
[call target="*omoide_2"]
[elsif exp="f.omoide_para >= 7"]
[call target="*omoide_1"]
[else]
[call target="*omoide_0"]
[endif]


;好感度のコール(MAX30)===================
[if exp="f.koukando_nagi_koibito >= 1"]
[call target="*koukando_5"]
[elsif exp="f.koukando_nagi >= 30"]
[call target="*koukando_4"]
[elsif exp="f.koukando_nagi >= 20"]
[call target="*koukando_3"]
[elsif exp="f.koukando_nagi >= 10"]
[call target="*koukando_2"]
[elsif exp="f.koukando_nagi >= 1"]
[call target="*koukando_1"]
[elsif exp="f.koukando_nagi <= 0"]
[call target="*koukando_0"]
[endif]


;警戒度のコール(MAX15)===================
[if exp="f.keikaido >= 15"]
[call target="*keikaido_2"]
[elsif exp="f.keikaido >= 10"]
[call target="*keikaido_1"]
[else]
[call target="*keikaido_0"]
[endif]

;クリア条件============================
;隼人との関係が険悪
[if exp="f.kankei >= 30"]
[call target="*condition_0"]
[endif]

;凪の好感度が大好き（恋人）
[if exp="f.koukando_nagi_koibito == 1"]
[call target="*condition_1"]
[endif]

;勇気、気配りが100以上
[if exp="f.para_yuuki_display >= 100 && f.para_kikubari_display >= 100"]
[call target="*condition_2"]
[endif]

;凪が本命
[if exp="f.puro_kuria_nagi4 == 1"]
[call target="*condition_3"]
[endif]
[_tb_end_tyrano_code]

[call  storage="profile_nagi.ks"  target="*huku_tuukin"  ]
[call  storage="system.ks"  target="*fade_out_effect"  ]
*kigae_top

[tb_start_tyrano_code]
;部屋着ボタン
[button name="puro" target=*heyagi graphic="../fgimage/default/puro_button_heyagi_off.png" enterimg="../fgimage/default/puro_button_heyagi.png" clickimg=../fgimage/default/puro_button_heyagi.png x=350 y=680]

;通勤服ボタン
[button name="puroe" target=*tuukin graphic="../fgimage/default/puro_button_tuukin_off.png" enterimg="../fgimage/default/puro_button_tuukin.png" clickimg=../fgimage/default/puro_button_tuukin.png x=470 y=680]

;仕事服ボタン
[button name="puroe" target=*sigoto graphic="../fgimage/default/puro_button_sigoto_off.png" enterimg="../fgimage/default/puro_button_sigoto.png" clickimg=../fgimage/default/puro_button_sigoto.png x=590 y=680]

;デート服ボタン
[button name="puro" target=*deto graphic="../fgimage/default/puro_button_deto_off.png" enterimg="../fgimage/default/puro_button_deto.png" clickimg=../fgimage/default/puro_button_deto.png x=710 y=680]

;タブ_凪
[button graphic="../fgimage/default/puro_tabu_nagi_on.png" target="*tabu_nagi" name="puro" x=241 y=0 ]

;タブ_凛子
[button graphic="../fgimage/default/puro_tabu_rinko.png" enterimg="../fgimage/default/puro_tabu_rinko_on.png" clickimg=../fgimage/default/puro_tabu_rinko.png target="*tabu_rinko" name="puro" x=704 y=0 ]

;タブ_蕾
[button graphic="../fgimage/default/puro_tabu_tubomi.png" enterimg="../fgimage/default/puro_tabu_tubomi_on.png" clickimg=../fgimage/default/puro_tabu_tubomi.png target="*tabu_tubomi" name="puro" x=472 y=0 ]

;戻る
[button graphic="../fgimage/default/tm_modoru_on.png" enterimg="../fgimage/default/tm_modoru_off.png" clickimg=../fgimage/default/tm_modoru_on.png target="*modoru" name="puro" x=1192 y=632 ]

[anim name="puro" opacity=0 time=0]
[anim name="puro" opacity=255 time=0]
[_tb_end_tyrano_code]

[s  ]
[tb_start_tyrano_code]
*heyagi
[call target="*huku_heyagi"]
[jump target="*end"]

*tuukin
[call target="*huku_tuukin"]
[jump target="*end"]

*sigoto
[call target="*huku_sigoto"]
[jump target="*end"]

*deto
[call target="*huku_deto"]
[jump target="*end"]

*end

[_tb_end_tyrano_code]

[jump  storage="profile_nagi.ks"  target="*kigae_top"  ]
*omoide_0

[tb_image_show  time="0"  storage="default/puro_omoide0.png"  width="200"  height="200"  x="16"  y="488"  _clickable_img=""  name="img_27"  ]
[return  ]
*omoide_1

[tb_image_show  time="0"  storage="default/puro_omoide1.png"  width="200"  height="200"  x="16"  y="488"  _clickable_img=""  name="img_30"  ]
[return  ]
*omoide_2

[tb_image_show  time="0"  storage="default/puro_omoide2.png"  width="200"  height="200"  x="16"  y="488"  _clickable_img=""  name="img_33"  ]
[return  ]
*koukando_0

[tb_image_show  time="0"  storage="default/puro_koukando0.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_36"  ]
[return  ]
*koukando_1

[tb_image_show  time="0"  storage="default/puro_koukando1.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_39"  ]
[return  ]
*koukando_2

[tb_image_show  time="0"  storage="default/puro_koukando2.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_42"  ]
[return  ]
*koukando_3

[tb_image_show  time="0"  storage="default/puro_koukando3.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_45"  ]
[return  ]
*koukando_4

[tb_image_show  time="0"  storage="default/puro_koukando4.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_48"  ]
[return  ]
*koukando_5

[tb_image_show  time="0"  storage="default/puro_koukando5.png"  width="200"  height="200"  x="16"  y="88"  _clickable_img=""  name="img_51"  ]
[return  ]
*keikaido_0

[tb_image_show  time="0"  storage="default/puro_keikaido0.png"  width="200"  height="200"  x="16"  y="288"  _clickable_img=""  name="img_54"  ]
[return  ]
*keikaido_1

[tb_image_show  time="0"  storage="default/puro_keikaido1.png"  width="200"  height="200"  x="16"  y="288"  _clickable_img=""  name="img_57"  ]
[return  ]
*keikaido_2

[tb_image_show  time="0"  storage="default/puro_keikaido2.png"  width="200"  height="200"  x="16"  y="288"  _clickable_img=""  name="img_60"  ]
[return  ]
*condition_0

[tb_image_show  time="0"  storage="default/puro_condition_nagi2.png"  width="312"  height="40"  x="960"  y="152"  name="img_63"  ]
[return  ]
*condition_1

[tb_image_show  time="0"  storage="default/puro_condition_nagi1.png"  width="312"  height="40"  x="960"  y="200"  _clickable_img=""  name="img_66"  ]
[return  ]
*condition_2

[tb_image_show  time="0"  storage="default/puro_condition_nagi4.png"  width="312"  height="40"  x="960"  y="248"  _clickable_img=""  name="img_69"  ]
[return  ]
*condition_3

[tb_image_show  time="0"  storage="default/puro_condition_nagi3.png"  width="312"  height="40"  x="960"  y="296"  _clickable_img=""  name="img_63"  ]
[return  ]
*huku_heyagi

[jump  storage="profile_nagi.ks"  target="*nodata"  cond="sf.puro_nagi_heyagi==0"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x="195" y=" 76" storage="../fgimage/default/puro_nagi_heyagi.png" time="500" ]
[_tb_end_tyrano_code]

[return  ]
*huku_tuukin

[jump  storage="profile_nagi.ks"  target="*nodata"  cond="sf.puro_nagi_tuukin==0"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x="195" y=" 76" storage="../fgimage/default/puro_nagi_tuukin.png" time="500" ]
[_tb_end_tyrano_code]

[return  ]
*huku_sigoto

[jump  storage="profile_nagi.ks"  target="*nodata"  cond="sf.puro_nagi_sigoto==0"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x="195" y=" 76" storage="../fgimage/default/puro_nagi_sigoto.png" time="500" ]
[_tb_end_tyrano_code]

[return  ]
*huku_deto

[jump  storage="profile_nagi.ks"  target="*nodata"  cond="sf.puro_nagi_deto==0"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[image layer="2" x="195" y=" 76" storage="../fgimage/default/puro_nagi_deto.png" time="500" ]
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
