[_tb_system_call storage=system/_EV_item_Spirytus_nagi.ks]

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

[glink  color="btn_05_black"  storage="EV_item_Spirytus_nagi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="使用する"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_nagi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="使用しない"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]（まぁいいか。今回は止めておこう）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
・・・凪と少し仲良くなれた気がする[p]
夕食代を支払った 　[font color="yellow"]-￥5000[p]
テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*yes

[cm  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[舜]（相手が席を立ったタイミングで使ってみよう…）[p]
[舜]（カプセルの中だけを入れて…と。[r]意外と水に溶けやすいな。これならバレないだろう）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*nagi_sotogi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_item1_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
火照った頬に当たる夜風が、なんとも心地よい。[r]気づけば、家の前までたどり着いていた。[p]
#凪
凪「あ～おいしかった！[r]隼人と食べる時は高いお店で緊張してばかりだから…なんか新鮮だったなぁ」[p]
[舜]「おい、比べんなよ。自慢か？」[p]
#凪
凪「違うよ、楽しかったってこと」[p]
凪はご機嫌で俺の腕にじゃれつく。[r]ふわりといい香りがして、不覚にもドキッとしてしまう。[p]
[舜]（スピリタスカプセルの効果が出ているようだな…）[p]
ドリンクに混ぜた量は少なめにしたはずだった。[r]にしても、凪はほろ酔い程度で足取りもしっかりしている。[p]
[舜]（凪ってもしかして、めちゃくちゃ酒強い…？）[p]
#凪
凪「焼き鳥も美味しかったし。つくねも、ねぎまも。あ、ポテトフライも美味しかったな」[p]
[舜]「いろいろ選んで食べてたもんな」[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]凪「うん……私、自分で選ぶのって苦手だと思ってた」[p]
[_tb_end_text]

[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
#凪
凪「着る服も、髪型も、女の子としての立ち振る舞いも…ぜんぶ隼人が教えてくれたの」[p]
[舜]「はぁ？　そんなことまで？」[p]
#凪
凪「うん。私、無頓着だから、女の子らしいことってあまり分からなくて……[r]だから、助かるなって思ってた」[p]
#凪
凪「でも、選ぶのは楽しいんだね。[舜]ちゃんがいなきゃ気づけなかった」[p]
[舜]「そうだよ。昔、凪は慣れた相手にはめちゃくちゃ強引だったじゃん」[p]
[舜]「いきなり、男の子の裸見たい、とか言い出してさ。俺服脱がされたんだぞ」[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif"]凪「え、私そんなことしたっけ？」[p]
凪が目を丸くし、うーんと考え込むポーズになる。[p]
真剣に記憶の引き出しを漁っているようだ。これは思い出してもらわなきゃ困る。[p]
俺はあの時、なかなかの辱めを受けたのだから。[p]
[舜]「凪も脱いで、結局２人で風呂入っただろ」[p]
確か小学生…凪は幼稚園くらいだったか。凪もハッとしたような表情になり、頬を両手で押さえた。[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「そういえば、裸見せっこした…！　恥ずかしい…ごめんなさい」[p]
[舜]「まぁ昔の話だから。子供の頃は興味津々だったんだろ」[p]
#凪
凪「も～、言い方よくないってば。子供の頃のことだから、許して…」[p]
凪が恥ずかしそうにうつむいたあと、急に立ち止まった。[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]凪「でも…なんだか懐かしいね…そういうのも」[p]
凪が顔を上げこちらを向く。その瞳はかすかに潤んでいた。[p]
酔っているせいだけじゃない、他の感情が確かにそこに込められているとすぐにわかった。[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"][舜]「今、やってみる…？」[p]
声が震えそうになるのを、必死で隠す。[p]
[舜]「お互い裸になるっていうなら、考えてもいいかも」[p]
凪は赤い顔のままコクリとうなずく。[p]
#凪
凪「うん…そういうのも楽しい、かもね」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
そのあと、どう帰ったのか記憶はおぼろげだ。酔っていたわけじゃない。[p]
ただ静かな興奮と、俺たちはどうなってしまうのだろうという期待と混乱があったからだ。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sin_nagi_nagiroom_yoru.png"  ]
[tb_start_text mode=1 ]
部屋に着くなり俺はすぐに服を脱ぎ捨てる。[p]
もじもじと下着を脱ぎ、目も合わせられない凪の姿に激しく興奮していた。[p]
[_tb_end_text]

[bg  time="2000"  method="fadeInUp"  storage="event/item_spirytus_nagi.png"  ]
[tb_cg  id="cg_item_spirytus"  ]
[tb_start_text mode=1 ]
[舜]「凪…」[p]
喉がからからに乾いている。声を出すのがやっとだった。凪がちらりとこちらを向き、恥ずかしそうに顔を伏せる。[p]
#凪
凪「[舜]ちゃん、大きくなってる…」[p]
[舜]「うん…」[p]
#凪
凪「私のこと……そういうふうに、見てくれてるの？」[p]
不安と期待が入り混じったような、震える声。[p]
[舜]「……もっと、凪のこと知りたい。見せてほしい」[p]
凪はゆっくりと頷き、脚をゆるやかに開いた。[p]
かすかな明かりが彼女の輪郭を柔らかく照らし出す。[r]凪の体は想像していた以上にいやらしかった。[p]
#凪
凪「見えてる…？　何か、言ってよ…恥ずかしい…」[p]
[舜]「……綺麗だよ。信じられないくらい……」[p]
性器をしごき始めた俺を見ながら、凪が驚いた声を漏らす。[p]
鼓動が早くなり、呼吸が熱を帯びていく。[p]
静けさの中にふたりの気配だけが濃く残り、すべての感覚が研ぎ澄まされていくようだった。[p]
[舜]「俺だけさせる気？」[p]
#凪
凪「恥ずかしい、よ…でも──」[p]
少しためらいながら、凪も足の間へ指を這わせる。[p]
すぐにクチュリと濡れたような音が響いた。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="teman1.mp3"  fadein="true"  loop="true"  ]
[tb_start_text mode=1 ]
凪はびくりと体を震わせたあと、ゆっくりと指先を動かし始める。[p]
#凪
凪「んっ…はぁっ、あぁ♡」[p]
#凪
凪「[舜]ちゃん…♡　あぁ、[舜]ちゃんっ♡　見られちゃってる…」[p]
[舜]「うん、見てるよ。凪のこと」[p]
#凪
凪「こんな恥ずかしいことするの、初めてっ…♡　はぁ、だめ、なのに…」[p]
#凪
凪「ダメなのに、気持ちいい…♡」[p]
互いの姿に目を奪われながら、それぞれ激しく指を動かす。[p]
沈黙のなかに、呼吸の乱れと凪の吐息が静かに響いていた。[p]
[舜]「も、出る…」[p]
#凪
凪「私も…イッちゃう…！」[p]
凪は足を一層開き、腰を浮かせる。[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[wait  time="2000"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凪
凪「あっ♡　んぅっ♡　んっ、んんんっ♡」[p]
唇を噛み締めながら、凪が体を震わせる。[p]
同時に俺の頭の中と手の中で熱が弾けた。[p]
#凪
凪「やだ…こんな、恥ずかしいこと……[舜]ちゃんの前で……」[p]
[舜]「遊び、だから…遊んだだけだ。服、着ればおしまいだ」[p]
俺はまだ興奮冷めやらぬまま、脱ぎ捨てた服をかき集める。[p]
ゆっくり動き出す凪の気配を感じながら、俺は心から彼女と次のステップに進みたいと考えていた。[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_item_supiritasu"  ]
[tb_start_text mode=1 ]
・・・凪と少し仲良くなれた気がする[p]
夕食代を支払った 　[font color="yellow"]-￥5000[p]
テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_nagi=1"  name="itemEV_supiritasu_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[call  storage="system.ks"  target="*fade_in"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_hiru.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi_hutuu"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="nagi.mp3"  ]
[tb_start_text mode=1 ]
ゴミ捨て場で、ふと顔を上げると――そこに凪がいた。[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「あ……えっと……」[p]
気まずそうに立ち尽くす凪。[p]
昨日の出来事を思い出しているのだろう、頬は真っ赤に染まり、目も合わせようとしない。[r]指先がそわそわと動き、落ち着きがない。[p]
[舜]「おはよう」[p]
凪「おっ、おはよう！　きょ、今日も暑いね～……あはは……。[r]は、はやく行かなきゃ、遅れちゃう！」[p]
無理に明るく振る舞おうとしているのが、逆に空回りしているのが伝わってきた。[p]
[舜]「うん、頑張ってね」[p]
笑顔で送り出すと、凪は一瞬、足を止めた。そして――[p]
凪「……。あの、昨日のこと……」[p]
小さな声で言いかけたが、すぐにかぶりを振って、[p]
凪「や、やっぱりいい！ 行ってきます！！」[p]
顔を真っ赤にしたまま、まるで逃げるように駆け出して行った。[p]

[_tb_end_text]

[call  storage="system.ks"  target="*fade_in"  ]
[chara_hide  name="kyara_nagi_sabun2"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[tb_start_text mode=1 ]
[舜]（……そんなに照れなくても）[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.itemEV_supiritasu_nagi=2"  name="itemEV_supiritasu_nagi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1000"  ]
[return  ]
