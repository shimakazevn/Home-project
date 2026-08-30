[_tb_system_call storage=system/_sansaku_byouinEV_nagihayato.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
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
夕食時のせいだろうか、院内はいつも以上に静かだ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（凪と隼人がいる。話しかけてみようかな？）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_byouinEV_nagihayato.ks"  size="20"  text="二人に話しかける"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="診察を受ける（体力▲￥5000▼）"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin2.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_hayatonagi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_nagihayato1

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*EV_nagihayato2"  cond="f.koukando_nagi>29"  ]
[tb_start_text mode=1 ]
[舜]「あれ？　偶然だな、なんの話してたんだ？」[p]
凪「あ、[舜]ちゃん…」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「恋人同士の話をしてたんだよ」[p]
隼人「デートはどこに行こうかとか…結婚の挨拶はいつにしようとか、式場はどこがいいとか」[p]
凪「え？　えっと、そんな話はしてなかったけど…」[p]
隼人「これからしようと思ってたトコだから」[p]
[舜]（完全に牽制されてるな…）[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]凪「ごめんね[舜]ちゃん、また今度」[p]
[舜]「あぁ、また今度な」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*end"  ]
*EV_nagihayato2

[tb_start_text mode=1 ]
[舜]「よっ、凪！」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「[舜]ちゃん…！　どうしたの？　こんなところで…偶然だね」[p]
凪「会えると思ってなかったから…嬉しいな」[p]
隼人「幼馴染だからって、ずいぶん親し気に声かけてくるんだな」[p]
凪「いいの、[舜]ちゃんとは昔からずーっと変わらない関係なんだから。ね？　[舜]ちゃん」[p]
[舜]「んー、そうだな」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「う…でも、一応俺と付き合ってるんだからさ…周りの目もあるし…」[p]
凪「そうかな？　別に私は大丈夫だよ？」[p]
[舜]「まぁまぁ、彼氏としてはやっぱり他の男の存在は気になるだろうから。また連絡するよ」[p]
凪「うん、待ってるね…！」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*koibito

[tb_start_text mode=1 ]
[舜]（隼人がいる…今はやめておこう）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  ]
