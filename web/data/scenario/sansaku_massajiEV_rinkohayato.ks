[_tb_system_call storage=system/_sansaku_massajiEV_rinkohayato.ks]

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
（隼人が来ているようだ。話しかけてみようかな？）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV_rinkohayato.ks"  size="20"  text="二人に話しかける"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="マッサージを受ける（体力▲￥5000▼）"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_hayatorinko"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_rinkohayato1

[jump  storage="sansaku_massajiEV_rinkohayato.ks"  target="*EV_rinkohayato2"  cond="f.koukando_rinko>29"  ]
[tb_start_text mode=1 ]
隼人「新しいバイトのアイツ、どんな感じ？」[p]
凛子「真面目に働いてくれてるよ？　ちょっとコミュニケーションが苦手みたいだけど…」[p]
隼人「えっ。客商売でしょ。大丈夫かなあいつ…」[p]
[舜]「こんにちはー」[p]
凛子「あら、こんにちは。今日はバイト入ってなかったはずだけど」[p]
隼人「用事もないのに、顔出すなんてずいぶん時間があるんだな…うらやましいよ」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]凛子「もー、そんなこと言わないの」[p]
凛子「[舜]くん、仕事熱心でとっても助かってるよ。いつもありがとう」[p]
[舜]（凛子さんはこんなに優しいのに…なんで隼人みたいな奴が育ったんだ？）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_massajiEV_rinkohayato.ks"  target="*end"  ]
*EV_rinkohayato2

[tb_start_text mode=1 ]
隼人「母さん、最近はお店の人手は足りてる感じ？」[p]
凛子「ええ。[舜]くんが真面目に仕事してくれてるから…」[p]
[舜]「凛子さん、お疲れ様です」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「あら？　[舜]くん…！　どうしたの？　わざわざ会いに来てくれた？」[p]
[舜]「凛子さんの顔を見に来ました」[p]
凛子「嬉しいこと言ってくれるのね。私も[舜]くんの顔を見られて嬉しいよ」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「えっ…？　なんか距離近くない？」[p]
凛子「そう？　心の距離が近いってことかも」[p]
隼人「は？　マジでどういうことだよ…！」[p]
凛子「秘密よ…ふふ、ね？　[舜]くん」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]二人の好感度が上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
