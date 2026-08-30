[_tb_system_call storage=system/_a_Debugroom.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.sinnyu_koudou_count=5"  name="sinnyu_koudou_count"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated+=100000"  name="money_updated"  cmd="+="  op="t"  val="100000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.month=6"  name="month"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.EV_hatukinmu_nagi=3"  name="EV_hatukinmu_nagi"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.EV_hatukinmu_rinko=1"  name="EV_hatukinmu_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.EV_hatukinmu_tubomi=2"  name="EV_hatukinmu_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_nagi_on=1"  name="chara_nagi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_tubomi_on=1"  name="chara_tubomi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_eval  exp="f.item_com=10"  name="item_com"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[tb_eval  exp="f.item_com_bousui=7"  name="item_com_bousui"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_koudou_count=5"  name="sinnyu_koudou_count"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
*top

[glink  color="white"  storage="a_Debugroom.ks"  size="20"  text="2週目にする"  x="576"  y="677"  width="114"  height="20"  _clickable_img=""  target="*2syuume"  ]
[glink  color="white"  storage="a_Debugroom.ks"  size="20"  text="３週目にする"  x="781"  y="676"  width="114"  height="20"  _clickable_img=""  target="*3syuume"  ]
[glink  color="white"  storage="a_Debugroom.ks"  size="20"  text="4週目にする"  x="990"  y="677"  width="114"  height="20"  _clickable_img=""  target="*4syuume"  ]
[glink  color="btn_15_yellow"  storage="a_Debugroom.ks"  size="20"  text="はじめからスタート"  x="28"  y="64"  width="231"  height="50"  _clickable_img=""  target="*hajimekara"  ]
[glink  color="btn_15_blue"  storage="a_Debugroom.ks"  size="20"  text="７月からスタート"  x="281"  y="64"  width="231"  height="50"  _clickable_img=""  target="*7gatukara"  ]
[glink  color="btn_15_lime"  storage="a_Debugroom.ks"  size="20"  text="8月からスタート"  x="540"  y="64"  width="231"  height="50"  _clickable_img=""  target="*8gatukara"  ]
[glink  color="btn_02_yellow"  storage="a_Debugroom.ks"  size="20"  text="コミュ評価（凪）"  x="8"  y="192"  width=""  height=""  _clickable_img=""  target="*komyu_nagi"  ]
[glink  color="btn_02_yellow"  storage="a_Debugroom.ks"  size="20"  text="コミュ評価（凛子）"  x="8"  y="261"  width=""  height=""  _clickable_img=""  target="*komyu_rinko"  ]
[glink  color="btn_02_yellow"  storage="a_Debugroom.ks"  size="20"  text="コミュ評価（蕾）"  x="8"  y="331"  width=""  height=""  _clickable_img=""  target="*komyu_tubomi"  ]
[glink  color="btn_02_yellow"  storage="a_Debugroom.ks"  size="20"  text="コミュ評価（隼人）"  x="8"  y="401"  width=""  height=""  _clickable_img=""  target="*komyu_hayato"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋-4（凪）"  x="248"  y="192"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋+4（凪）"  x="248"  y="259"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4purasu"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き-4（凪）"  x="251"  y="327"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き+4（凪）"  x="251"  y="398"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4purasu"  ]
[glink  color="btn_02_red"  storage="a_Debugroom.ks"  size="20"  text="本命（凪）"  x="263"  y="472"  width=""  height=""  _clickable_img=""  target="*honmei_nagi"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋-4（凛子）"  x="407"  y="195"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4_rinko"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋+4（凛子）"  x="407"  y="260"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4purasu_rinko"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き-4（凛子）"  x="410"  y="330"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4_rinko"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き+4（凛子）"  x="413"  y="399"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4purasu_rinko"  ]
[glink  color="btn_02_red"  storage="a_Debugroom.ks"  size="20"  text="本命（凛子）"  x="422"  y="470"  width=""  height=""  _clickable_img=""  target="*honmei_rinko"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋-4（蕾）"  x="585"  y="193"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4_tubomi"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋+4（蕾）"  x="585"  y="260"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4purasu_tubomi"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き-4（蕾）"  x="587"  y="328"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4_tubomi"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き+4（蕾）"  x="586"  y="397"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4purasu_tubomi"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋-4（隼人）"  x="742"  y="191"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4_hayato"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="純粋+4（隼人）"  x="742"  y="264"  width=""  height=""  _clickable_img=""  target="*komyu_jyunsui_4prasu_hayato"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き-4（隼人）"  x="741"  y="328"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4_hayato"  ]
[glink  color="btn_02_white"  storage="a_Debugroom.ks"  size="20"  text="好き+4（隼人）"  x="742"  y="396"  width=""  height=""  _clickable_img=""  target="*komyu_suki_4purasu_hayato"  ]
[glink  color="btn_02_red"  storage="a_Debugroom.ks"  size="20"  text="本命（蕾）"  x="590"  y="468"  width=""  height=""  _clickable_img=""  target="*honmei_tubomi"  ]
[glink  color="btn_02_green"  storage="a_Debugroom.ks"  size="20"  text="体験版仕様にする"  x="1031"  y="128"  width=""  height=""  _clickable_img=""  target="*taikenban"  ]
[glink  color="btn_02_green"  storage="a_Debugroom.ks"  size="20"  text="テンション＋5"  x="1034"  y="196"  width=""  height=""  _clickable_img=""  target="*ten"  ]
[glink  color="btn_02_green"  storage="a_Debugroom.ks"  size="20"  text="全員恋人状態にする"  x="263"  y="548"  width="445"  height="66"  _clickable_img=""  target="*koibito"  ]
[glink  color="btn_02_purple"  storage="a_Debugroom.ks"  size="12"  text="侵入病院開放"  x="1033"  y="282"  width=""  height=""  _clickable_img=""  target="*sinnyu_byouin"  ]
[glink  color="btn_02_purple"  storage="a_Debugroom.ks"  size="12"  text="侵入リフレ開放"  x="1034"  y="322"  width=""  height=""  _clickable_img=""  target="*sinnyu_rihure"  ]
[glink  color="btn_02_purple"  storage="a_Debugroom.ks"  size="12"  text="侵入マッサージ店開放"  x="1035"  y="360"  width=""  height=""  _clickable_img=""  target="*sinnyu_massa"  ]
[glink  color="btn_02_black"  storage="a_Debugroom.ks"  size="20"  text="侵入する(マップ)"  x="1160"  y="403"  width=""  height=""  _clickable_img=""  target="*sinnyu_map"  ]
[glink  color="btn_02_black"  storage="a_Debugroom.ks"  size="20"  text="侵入する(凪)"  x="1031"  y="413"  width=""  height=""  _clickable_img=""  target="*sinnyu_nagi"  ]
[glink  color="btn_02_black"  storage="a_Debugroom.ks"  size="20"  text="買い物する"  x="1031"  y="479"  width=""  height=""  _clickable_img=""  target="*kaimono"  ]
[glink  color="btn_02_black"  storage="a_Debugroom.ks"  size="20"  text="自室（朝）"  x="1031"  y="545"  width=""  height=""  _clickable_img=""  target="*room"  ]
[glink  color="btn_02_black"  storage="a_Debugroom.ks"  size="20"  text="自室（夜）"  x="1155"  y="536"  width=""  height=""  _clickable_img=""  target="*room_yoru"  ]
[glink  color="btn_02_black"  storage="a_Debugroom.ks"  size="20"  text="散策"  x="1031"  y="607"  width=""  height=""  _clickable_img=""  target="*sansaku"  ]
[glink  color="btn_30_red"  storage="a_Debugroom.ks"  size="20"  text="最終日にジャンプ"  x="806"  y="61"  width=""  height=""  _clickable_img=""  target="*saisyuubi"  ]
[s  ]
*2syuume

[tb_eval  exp="f.week=2"  name="week"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*3syuume

[tb_eval  exp="f.week=3"  name="week"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*4syuume

[tb_eval  exp="f.week=4"  name="week"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*taikenban

[call  storage="a_taikenban.ks"  target="*top"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*sinnyu_nagi

[tb_ptext_hide  time="0"  ]
[jump  storage="sinnyu_nagi.ks"  target="*top0"  ]
*kaimono

[tb_eval  exp="f.money_updated+=50000"  name="money_updated"  cmd="+="  op="t"  val="50000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*top"  ]
*ten

[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*room

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="room_asa.ks"  target="*top0"  ]
*room_yoru

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*sansaku

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="sansaku.ks"  target="*top"  ]
*komyu_nagi

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_rinko

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_tubomi

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_hayato

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*koibito

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.koukando_nagi_koibito=1"  name="koukando_nagi_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_rinko_koibito=1"  name="koukando_rinko_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_tubomi_koibito=1"  name="koukando_tubomi_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_jyunsui_nagi -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4purasu

[tb_eval  exp="f.komyu_insyou_jyunsui_nagi+=4"  name="komyu_insyou_jyunsui_nagi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4_rinko

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_jyunsui_rinko -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4purasu_rinko

[tb_eval  exp="f.komyu_insyou_jyunsui_rinko+=4"  name="komyu_insyou_jyunsui_rinko"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4_tubomi

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_jyunsui_tubomi -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4purasu_tubomi

[tb_eval  exp="f.komyu_insyou_jyunsui_tubomi+=4"  name="komyu_insyou_jyunsui_tubomi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_suki_nagi -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4purasu

[tb_eval  exp="f.komyu_insyou_suki_nagi+=4"  name="komyu_insyou_suki_nagi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4_rinko

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_suki_rinko -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4purasu_rinko

[tb_eval  exp="f.komyu_insyou_suki_rinko+=4"  name="komyu_insyou_suki_rinko"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4_tubomi

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_suki_tubomi -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4purasu_tubomi

[tb_eval  exp="f.komyu_insyou_suki_tubomi+=4"  name="komyu_insyou_suki_tubomi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*saisyuubi

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[tb_eval  exp="f.month=8"  name="month"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.week=4"  name="week"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.mon=0"  name="mon"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sun=1"  name="sun"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*honmei_nagi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.puro_kuria_nagi4=1"  name="puro_kuria_nagi4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_rinko3=0"  name="puro_kuria_rinko3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_tubomi3=0"  name="puro_kuria_tubomi3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*honmei_rinko

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.puro_kuria_nagi4=0"  name="puro_kuria_nagi4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_rinko3=1"  name="puro_kuria_rinko3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_tubomi3=0"  name="puro_kuria_tubomi3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*honmei_tubomi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.puro_kuria_nagi4=0"  name="puro_kuria_nagi4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_rinko3=0"  name="puro_kuria_rinko3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_tubomi3=1"  name="puro_kuria_tubomi3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4_hayato

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_suki_hayato -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_suki_4purasu_hayato

[tb_eval  exp="f.komyu_insyou_suki_hayato+=4"  name="komyu_insyou_suki_hayato"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4_hayato

[tb_start_tyrano_code]
[eval exp="f.komyu_insyou_jyunsui_hayato -= 4"]
[_tb_end_tyrano_code]

[jump  storage="a_Debugroom.ks"  target="*top"  ]
*komyu_jyunsui_4prasu_hayato

[tb_eval  exp="f.komyu_insyou_jyunsui_hayato+=4"  name="komyu_insyou_jyunsui_hayato"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*sinnyu_byouin

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.sinnyu_byouin_on=1"  name="sinnyu_byouin_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*sinnyu_rihure

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.sinnyu_rihure_on=1"  name="sinnyu_rihure_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*sinnyu_massa

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_eval  exp="f.sinnyu_massaji_on=1"  name="sinnyu_massaji_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*sinnyu_map

[tb_ptext_hide  time="0"  ]
[jump  storage="sinnyu.ks"  target="*top"  ]
*hajimekara

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[tb_eval  exp="f.month=8"  name="month"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.week=4"  name="week"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.mon=0"  name="mon"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sun=1"  name="sun"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="room_asa.ks"  target="*top"  ]
*7gatukara

[tb_eval  exp="f.month=7"  name="month"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sun=0"  name="sun"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="room_asa.ks"  target="*top"  ]
*8gatukara

[tb_eval  exp="f.month=8"  name="month"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sun=0"  name="sun"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[jump  storage="room_asa.ks"  target="*top"  ]
