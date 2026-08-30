[_tb_system_call storage=system/_sansaku_massajiEV_rinkotubomi.ks]

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
[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
店内は空いており、いつものように穏やかな時間が流れている。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（蕾が来ているようだ。話しかけてみようかな？）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV_rinkotubomi.ks"  size="20"  text="二人に話しかける"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="マッサージを受ける（体力▲￥5000▼）"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_rinkotubomi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_rinkotubomi1

[tb_start_tyrano_code]
;二人共好き状態の場合
[if exp="f.koukando_rinko >= 30 && f.koukando_tubomi >= 30 "]
[jump target="*EV_rinkotubomi2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
凛子「うーん…この日、予約いっぱいだからもう１人いてくれたら嬉しいんだけど」[p]
蕾「それなら私がお店手伝うから」[p]
[舜]「あ、それなら俺が──」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]蕾「私が出勤するからいいんだってば…！　ママ、私で良いでしょ？」[p]
凛子「えっ？　連勤になるけど大丈夫…？　忙しいんじゃないの？」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]蕾「平気だよ。誰かさんはお喋りが苦手みたいだし、私のほうがお客さん受けもいいでしょ？」[p]
[舜]（ぐ…っ、正論すぎて言い返せねぇ）[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]凛子「ごめんね、[舜]くん。また必要な時に相談させてもらっていいかな？」[p]
[舜]「あ、は、はい…」[p]
[舜]（今日はこのくらいにしておいてやらぁ…）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_massajiEV_rinkotubomi.ks"  target="*end"  ]
*EV_rinkotubomi2

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]蕾「あっ、ど、どうしたの？　来るなら連絡頂戴よ」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「ひょっとして会いに来てくれた、とか？」[p]
蕾「それを言うなら、私に会いに来てくれたの！　そうでしょ？」[p]
[舜]「２人の顔を見に来たんだけど…」[p]
凛子「ふふ、[舜]くんは嬉しいこと言ってくれるね」[p]
蕾「え～、ママと私どっちに会いに来たのか気になるんだけど。」[p]
凛子「本人を前にしたら言いづらいわよね？　でもいいよ、正直に答えてくれて」[p]
蕾「私でしょ？」[p]
凛子「ふふ、わかってるから大丈夫よ。ね？　[舜]くん」[p]
[舜]（こ、これは答えづらいぞ…）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
