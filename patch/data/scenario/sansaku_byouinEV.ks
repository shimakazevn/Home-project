]
[_tb_system_call storage=system/_sansaku_byouinEV.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
（いつも通り院内は患者で込み合っている）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（めずらしく凪はいないみたいだ）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="Khám bệnh (Hồi Thể lực / -5,000 Yên)"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="Quay về nhà"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*sinsatu

[jump  storage="sansaku_byouinEV.ks"  target="*okanenasi"  cond="f.money<5000"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event/sigoto_nagi.png"  ]
[tb_cg  id="cg_sigoto_nagi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.para_taityou_updated+=20"  name="para_taityou_updated"  cmd="+="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
凪「最近すごく頑張ってるね。あんまり無理しすぎないでね。[r]疲れたときは、ちゃんと休むのも大事だよ」[p]
（体が少し軽くなった気がする）[p]
[_tb_end_text]

[tb_start_tyrano_code]
;好感度UP（小）
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.7).toFixed(1))"]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_start_text mode=1 ]
[font color="yellow"]体力が20上昇した[resetfont][r][font color="yellow"]テンションが少し上がった[resetfont][r][font color="yellow"]5000円支払った[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ診察も受けられないか）[p]
（仕方ない。今日は諦めよう）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  ]
*kaeru

[tb_start_text mode=1 ]
（気になるものも無いし、特に用はないな）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  