]
[_tb_system_call storage=system/_EV_item_Spirytus_rinko.ks]

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

[wait  time="1000"  ]
[bg  time="2000"  method="fadeIn"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]（そういえば、スピリタスカプセルを持っていたな）[p]
[舜]（今ならバレずに相手の飲み物に入れられそうだ…）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
スピリタスカプセルを使用しますか？（所持数：[emb exp="f.item_supiritasu"]）
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_rinko.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="使用する"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_rinko.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="使用しない"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]（まぁいいか。今回は止めておこう）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
・・・凛子さんと少し仲良くなれた気がする[p]
夕食代を支払った 　[font color="yellow"]-￥5000[p]
テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*yes

[cm  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[舜]（相手が席を立ったタイミングで使ってみよう…）[p]
[舜]（カプセルの中だけを入れて…と。[r]意外と水に溶けやすいな。これならバレないだろう）[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten3.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="H3.mp3"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_item1_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
凛子さんを支えたまま、施術室の扉を開ける。[p]
彼女の体はほんのりと汗ばんで熱い…[r]俺が凛子さんのドリンクに混ぜたスピリタスカプセルが、効果を発揮し始めたらしい。[p]
#凛子
凛子「ごめんなさい、少しだけのつもりだったのに、酔っ払っちゃったのかしら」[p]
[舜]「疲れてたんじゃないですかね」[p]
#凛子
凛子「[舜]くん、ごめんなさいね…重いでしょう？」[p]
[舜]「全然ですよ。頼ってください」[p]
そう話してる間にも酔いが回っているようだ。[r]彼女は耳まで真っ赤にし、熱い吐息を漏らした。[p]
その反応があまりに色っぽくて、自然と股間が固くなっていく。[p]
[舜]「お客さん用のマットレスを使いますよ？　いいですよね」[p]
#凛子
凛子「ええ。ありがとう。もう立ってるのもやっとで…[舜]くんがいてくれてよかった」[p]
凛子さんの柔らかい胸の感触と、甘い香りを感じながらマットレスへ下ろす。[p]
#凛子
凛子「ふーっ…変だわ。頭がくらくらして…」[p]
胸を上下させて荒い呼吸を繰り返している。[p]
[舜]「これ、水です。お店のモノですけど。飲んでください」[p]
#凛子
凛子「あぁ、ありがとう」[p]
ふたを開けたペットボトルを差し出すと、凛子さんは喉を鳴らし水を飲んだ。[r]口からこぼれた水が顎を伝い、胸元へ落ちる。[p]
[舜]「大丈夫ですか？」[p]
#凛子
凛子「平気… [舜]くん、やっぱり男の子ね。[r]力も強くて肩も広くて。支えてもらいながらドキドキしちゃった」[p]
凛子さんの瞳が潤んでいるのは、酔いだけのせいじゃないとすぐにわかった。[p]
唇から覗く舌と同じように、目の端までほんのり赤くなっている。[p]
#凛子
凛子「お礼、しなくちゃね…」[p]
凛子さんは俺の手を掴み、自分の胸元へともっていった。[p]
熱く柔らかな感触が手のひらから伝わってくる。[r]少し力を入れたら指が沈み込んでしまいそうだ。[p]
胸とはこんなにも柔らかいものだったのか…と感動と興奮が波のように押し寄せる。[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「ふふ、[舜]くんも顔が赤くなっちゃったわね……恥ずかしい？」[p]
[舜]「いいんですか…」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「ん…好きにして？　知らないことがあれば何でも教えてあげる♡」[p]
[舜]（こ、こんなうまくいっていいものなのか！？）[p]
妄想はしていたが、いざ現実になると指が震えた。[p]
このまま酔っ払った凛子さんを好き放題していいのだろうか？[p]
その時、彼女の指先が俺の股間を撫でた。[r]すでにそこはガチガチになり熱を持っている。[p]
#凛子
凛子「私じゃその気にならない？　でもここは、準備できてるみたいよ？」[p]
[舜]「エロ過ぎて興奮してます」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凛子
凛子「ふふっ、じゃあ…来て？」[p]
凛子さんは上気した顔のままマットレスの上で服を脱いでいく。[p]
柔らかそうな体があらわになり、俺の我慢も限界に達していた──[p]
[_tb_end_text]

[jump  storage="H_rinko_supiritasu.ks"  target="*top"  ]
*H_back

[tb_start_text mode=1 ]
脱力した凛子さんにキスする。[r]柔らかな唇の感触を味わいながら、想像以上にうまくいった喜びをかみしめていた。[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
・・・凛子さんと少し仲良くなれた気がする[p]
夕食代を支払った 　[font color="yellow"]-￥5000[p]
テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_rinko=1"  name="itemEV_supiritasu_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
『ごめんなさい、昨夜の記憶がなくて。迷惑かけなかった？』[p]
凛子さんからのメッセージが届いていた。[p]
俺は『大丈夫ですよ、俺は寝かせてすぐ帰ったので』とだけ返しスマホを閉じる。[p]
[舜](酔っ払ったせいで記憶がないみたいだな…ちょっと残念だけど)[p]
昨夜の挑発的な凛子さんの視線を思い出すと、下半身が熱くなる。[p]
あわよくばまた…と思っていたが、次は別の方法を考える必要がありそうだ。[p]
[舜]（まぁ、それも楽しいか）[p]
次はどんな痴態が見れるのか、妄想するだけでニヤけてしまう。俺は期待に胸をふくらませていた。[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_supiritasu_rinko=2"  name="itemEV_supiritasu_rinko"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1500"  ]
[return  