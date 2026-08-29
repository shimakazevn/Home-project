]
[_tb_system_call storage=system/_sansaku_hankagaiEV_tubomihayato.ks]

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
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
[舜](相変わらず人が多くて疲れるな）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（隼人と蕾がいる。話しかけてみようかな？）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_tubomihayato.ks"  size="20"  text="Bắt chuyện với cả hai người"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hansu"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_tubomi.ks"  size="20"  text="Đi dạo quanh phố"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sansaku"  ]
[s  ]
*hansu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_hayatotubomi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_tubomihayato1

[jump  storage="sansaku_hankagaiEV_tubomihayato.ks"  target="*EV_tubomihayato2"  cond="f.koukando_tubomi>29"  ]
[tb_start_text mode=1 ]
蕾「ねー、お兄ちゃん、ご飯一緒に食べようよ～。最近全然話せてないんだもん」[p]
隼人「いいけど…あんまり高い店は今日は勘弁してな？　給料日前だし」[p]
[舜]「あ、ご飯食べに行くとこだったのか…」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]蕾「まさかあんたも一緒に行きたい、なんて言わないよね？」[p]
蕾「家族でご飯食べようとしてるんだから、空気読んで遠慮してよ？」[p]
[舜]（食べに行きたいなんて言ってないだろうが）[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「ぷっ、ふふ、まぁまぁ…そんな邪険にするなよ蕾」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]蕾「だってさぁ…お兄ちゃんと並ぶと余計にがっかりしちゃうっていうか」[p]
[舜]（なんつー嫌な兄妹だ…　さっさと帰って美味いもん食おっと）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_hankagaiEV_tubomihayato.ks"  target="*end"  ]
*EV_tubomihayato2

[tb_start_text mode=1 ]
蕾「お兄ちゃん、偶然だね。どこか行くとこ？」[p]
隼人「いや、今日は早く上がれたから帰ろうかなと思って…どこか食事でも行くか？」[p]
[舜]「あ、蕾…」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]蕾「え、嘘、…こんなとこで会えるなんて思わなかった」[p]
蕾「どこか行くところだったの？　まさか…女の子に会いに行くとかじゃないでしょうね？」[p]
[舜]「まさか…買い物した帰りだよ。時間あればご飯でも──」[p]
蕾「行く！　あのね、駅前のファミレスでフルーツフェアしてるんだ～。行こうよ」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「は？　いつからそんなに仲良くなったんだよ…」[p]
蕾「ごめんねお兄ちゃん、今日はパス！　また今度にして？」[p]
隼人「嘘だろ…」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  