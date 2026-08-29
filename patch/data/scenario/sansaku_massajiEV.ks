]
[_tb_system_call storage=system/_sansaku_massajiEV.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
繁華街の喧騒の中で、ひときわ落ち着いた空気が漂うマッサージ店が目にとまった。[p]
まるで別世界のような静けさが感じられる。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
ちょっと入ってみようかな？
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="Massage thư giãn (Giảm Stress / -5,000 Yên)"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="Quay về nhà"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*sinsatu

[jump  storage="sansaku_massajiEV.ks"  target="*okanenasi"  cond="f.money<5000"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="event/sigoto_rinko.png"  ]
[tb_cg  id="cg_sigoto_rinko"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;ストレス-
; 変数が1未満だった場合スルー
[if exp="f.para_sutoresu_updated < 1"]
[jump target="*sutoresu_zero"]
[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.para_sutoresu_updated-=10"  name="para_sutoresu_updated"  cmd="-="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*sutoresu_update"  ]
*sutoresu_zero

[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
凛子「……ちょっとお疲れ気味かな？はいっ。うん、顔色少し良くなったみたい。よかった」[p]
（少し心が軽くなった気がする）[p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_start_text mode=1 ]
[font color="yellow"]ストレスが10減少した[resetfont][r][font color="yellow"]テンションが少し上がった[resetfont][r][font color="yellow"]5000円支払った[resetfont][p]
[_tb_end_text]

[tb_start_tyrano_code]
;好感度UP（小）
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.7).toFixed(1))"]
[_tb_end_tyrano_code]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ断られるか）[p]
（仕方ない。今日は諦めよう）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  