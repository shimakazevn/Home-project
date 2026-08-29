]
[_tb_system_call storage=system/_room_Sunday.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="back_room.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  ]
*top

[tb_start_text mode=1 ]
[舜]「今日は日曜日か」[p]

[_tb_end_text]

[tb_start_tyrano_code]
;デートの予定が入ってる

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[舜]「特に用も無いし、どうしようかな」
[_tb_end_text]

[glink  color="btn_05_black"  storage="room_Sunday.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Đi mua sắm"  _clickable_img=""  target="*kaimono"  ]
[glink  color="btn_05_black"  storage="room_Sunday.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Nghỉ ngơi / Ngủ nướng"  _clickable_img=""  target="*neru"  ]
[s  ]
*deto

[tb_start_text mode=1 ]
[舜]「そういえば、今日は出かける予定があったんだっけ。準備して出かけよう」[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
;デート(凪)=========================================================================
;EV思い出のかけら2(恋人状態かつタイムカプセルを思い出している)
[if exp="f.koukando_nagi_koibito == 1 && f.omoide_para == 15"]
[jump storage="EV_omoidenokakera.ks" target="*top2"]

;恋人状態
[elsif exp="f.deto_nagi == 1 && f.koukando_nagi_koibito == 1"]
[jump storage="EV_date.ks" target="*top_nagi_koibito"]

;EV1_好感度0以上
[elsif exp="f.deto_nagi == 1 && f.koukando_nagi >= 0 && f.EV_nagi1 == 0"]
[jump storage="EV_nagi.ks" target="*top"]

;EV2_好感度20以上
[elsif exp="f.deto_nagi == 1 && f.koukando_nagi >= 20 && f.EV_nagi2 == 0"]
[jump storage="EV_nagi2.ks" target="*top"]

;EV3は好感度30以上で平日夜に自動発生する

;普通のデート
[elsif exp="f.deto_nagi == 1"]
[jump storage="EV_date.ks" target="*top_nagi"]
[endif]

;デート(凛子)=========================================================================
;恋人状態
[if exp="f.deto_rinko == 1 && f.koukando_rinko_koibito == 1"]
[jump storage="EV_date.ks" target="*top_rinko_koibito"]

;EV1_好感度0以上
[elsif exp="f.deto_rinko == 1 && f.koukando_rinko >= 0 && f.EV_rinko1 == 0"]
[jump storage="EV_rinko.ks" target="*top"]

;EV2_好感度10以上
[elsif exp="f.deto_rinko == 1 && f.koukando_rinko >= 10 && f.EV_rinko2 == 0"]
[jump storage="EV_rinko2.ks" target="*top"]

;EV3_好感度20以上
[elsif exp="f.deto_rinko == 1 && f.koukando_rinko >= 20 && f.EV_rinko3 == 0"]
[jump storage="EV_rinko3.ks" target="*top"]

;普通のデート
[elsif exp="f.deto_rinko == 1"]
[jump storage="EV_date.ks" target="*top_rinko"]
[endif]

;デート(蕾)=========================================================================
;恋人状態
[if exp="f.deto_tubomi == 1 && f.koukando_tubomi_koibito == 1"]
[jump storage="EV_date.ks" target="*top_tubom_koibito"]

;EV1_好感度0以上
[elsif exp="f.deto_tubomi == 1 && f.koukando_tubomi >= 0 && f.EV_tubomi1 == 0"]
[jump storage="EV_tubomi.ks" target="*top"]

;EV2_好感度10以上
[elsif exp="f.deto_tubomi == 1 && f.koukando_tubomi >= 10 && f.EV_tubomi2 == 0"]
[jump storage="EV_tubomi2.ks" target="*top"]

;EV3_好感度20以上
[elsif exp="f.deto_tubomi == 1 && f.koukando_tubomi >= 20 && f.EV_tubomi3 == 0"]
[jump storage="EV_tubomi3.ks" target="*top"]

;普通のデート
[elsif exp="f.deto_tubomi == 1"]
[jump storage="EV_date.ks" target="*top_tubomi"]
[endif]

;デート(隼人)=========================================================================
;普通の遊び
[if exp="f.deto_hayato == 1"]
[jump storage="EV_date.ks" target="*top_hayato"]
[endif]
[_tb_end_tyrano_code]

*kaimono

[tb_start_text mode=1 ]
[舜]「準備して出かけよう」[p]
[_tb_end_text]

[call  storage="BGM.ks"  target="*date"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*kaden"  ]
*neru

[tb_start_text mode=1 ]
[舜]「特に予定も無いし…寝て過ごそう……」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.para_taityou_updated+=30"  name="para_taityou_updated"  cmd="+="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
[tb_eval  exp="f.para_sutoresu_updated-=20"  name="para_sutoresu_updated"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*sutoresu_update"  ]
[tb_start_text mode=1 ]
[font color="yellow"]体力が上昇した[resetfont][r][font color="yellow"]ストレスが減少した[resetfont][r][font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[wait  time="1000"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*takarakuji

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.takarakuji=Math.floor(Math.random()*(30-1+1)+1)"  name="takarakuji"  cmd="="  op="r"  val="1"  val_2="30"  ]
[tb_start_text mode=1 ]
[舜]「そういえば、今日は先日買った宝くじの抽選日だったような」[p]
[舜]「ネットで結果が発表されてるみたいだ。どれどれ…」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;takarakuji  1～30
;1　/1等
;2～9　/2等
;10～23　/3等
;24～30　/ハズレ

[if exp="f.takarakuji == 1"]
[jump target="*takarakuji_1tou"]

[elsif exp="f.takarakuji >= 2 && f.takarakuji <= 9"]
[jump target="*takarakuji_2tou"]

[elsif exp="f.takarakuji >= 10 && f.takarakuji <= 23"]
[jump target="*takarakuji_3tou"]

[endif]
[_tb_end_tyrano_code]

*hazure

[tb_start_text mode=1 ]
[舜]「300円が一枚か…。まぁそんなもんだよな」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=300"  name="money_updated"  cmd="+="  op="t"  val="300"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.takarakuji=0"  name="takarakuji"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*takarakuji_3tou

[tb_start_text mode=1 ]
[舜]「1万円当選か…。1万円分買ってこの結果なら…まぁ、こんなもんだよな」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=10000"  name="money_updated"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.takarakuji=0"  name="takarakuji"  cmd="="  op="t"  val="0"  ]
[return  ]
*takarakuji_2tou

[tb_start_text mode=1 ]
[舜]「3万円当選した！やった、ラッキー！」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=30000"  name="money_updated"  cmd="+="  op="t"  val="30000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.takarakuji=0"  name="takarakuji"  cmd="="  op="t"  val="0"  ]
[return  ]
*takarakuji_1tou

[tb_start_text mode=1 ]
[舜]「10万円当選！やった！本当に当たるもんなんだなぁ…！」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=100000"  name="money_updated"  cmd="+="  op="t"  val="100000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.takarakuji=0"  name="takarakuji"  cmd="="  op="t"  val="0"  ]
[return  