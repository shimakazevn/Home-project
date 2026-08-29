]
[_tb_system_call storage=system/_EV_tubomi.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="knock.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_date1_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
蕾「おかえりなさいませご主人様。アメリアでございます」[p]
[_tb_end_text]

[call  storage="character.ks"  target="*tubomi_meido_hutuu"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_text mode=1 ]
明るい声なのに、なぜだか怒気を含んでいるのがよーくわかる。[p]
メイドにあるまじき態度だが、[r]そんなこと言おうもんならとんでもない反撃が来るのはわかりきっている。[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif" wait="false"]蕾「はぁ……いいわよね、あんたは。いつも暇そうで羨ましいわ。[r]私は朝からずっとバタバタしてて、本当に忙しいのよ」[p]
ドアを閉めた途端に愛想は消え失せ、しかめっ面になる。[r]俺が本物のご主人様なら、こんな怖いメイドは願い下げだ。[p]
[舜]「デートしようよ。表のバイトでは同じ職場なんだし」[p]
#蕾
蕾「表とか裏とか、変な言い方やめてよ！[r]　リフレは変なことする店じゃないの、来てくれた人を元気にする仕事なんだから！」[p]
[舜]「そんな怒るなよ。わかったから…！」[p]
#蕾
蕾「デートしてほしいなら、オプション付けてよ。店外デートコースもあるから」[p]
蕾が指さしたメニュー表には『店外デート』の文字が確かにある。[p]
こんなものがある時点で、マッサージ店と言い張るには無理があるだろうと思ったが、ぐっとこらえた。[p]
[舜]「いいよ、バイト代も入ったし。デートコースで」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif" wait="false"]蕾「はぁ？　ママからのバイト代、そうやって無駄使いするのなんかムカつく」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]蕾「まぁいいや。オプション分バイト代増えるしね。準備してくる。[r]５分したら迎えに来るから待ってて？」[p]
相変わらず素っ気ないまま言い捨て、蕾は個室を出て行った。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="event/tubomi1.png"  ]
[tb_cg  id="cg_tubomi1"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*date"  ]
[tb_start_text mode=1 ]
[舜]（こ、これ本当にデートなのか）[p]
ズンズンと先を歩く女の子のうしろをついていくのがデートなのだろうか。[r]俺なら『古き良きＲＰＧ体験コース』とでも名前を付けるところだ。[p]
蕾はあちこちのショップ前で立ち止まり、洋服を手に取っていく。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#蕾
蕾「これ可愛い～！　買っちゃおうかなぁ」[p]
[舜]「そんなに服必要か？　さっきから何着も買ってるだろ」[p]
#蕾
蕾「うわ…それ、女の子に言わないほうがい台詞トップ１０に入ると思うよ」[p]
[舜]「いや、だって…」[p]
#蕾
蕾「必要経費！　オーディションで着るんだから」[p]
蕾はしまった、という顔をしたあとすぐにため息ついた。[p]
#蕾
蕾「言わないつもりだったのに…無駄使いって思われるよりいっか」[p]
#蕾
蕾「私、モデルになりたいの。小さい頃から芸能界に入りたくて…」[p]
#蕾
蕾「だから事務所に入るために、あちこちオーディション受けてるとこ」[p]
[舜]「へぇ、初耳だな」[p]
#蕾
蕾「当たり前でしょ？　誰にも言ったことないもの。まだ受かったこともないし…」[p]
#蕾
蕾「第一歩も踏み出せてないのに、誰にも言えないわよ」[p]
蕾は自嘲するような、切なそうな表情を見せる。[p]
オーディションに合格しない自分に苛立ち、ふがいなさを感じているようだった。[p]
[舜]「行動起こしてる時点で第一歩だろ」[p]
#蕾
蕾「ありがと…でも受からなきゃ意味がないでしょ」[p]
#蕾
蕾「私より可愛い子なんていっぱいいるってことはわかってるわよ。[r]だからこそ私らしさを見せなくちゃ」[p]
[舜]「ん？　それならオーディションで着る服はもっとシンプルなほうがいいんじゃない？」[p]
#蕾
蕾「可愛いほうがいいんじゃないの？　個性も見てもらえるし」[p]
[舜]「本人の魅力を見るんだから、あんまり華美じゃないほうがいいだろ」[p]
蕾は「うーん」と唸るように考え込む。[p]
#蕾
蕾「まぁ、参考程度に聞いておくわ。帰ったら調べてみる」[p]
#蕾
蕾「じゃあ次のお店に行くわよ！　ついてきてもいいからね」[p]
[舜]「お前…！　これ店のオプションだろ！」[p]
突っ込みつつも、えらそうなメイドのうしろをおとなしくついていった。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_tubomi1=1"  name="EV_tubomi1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  