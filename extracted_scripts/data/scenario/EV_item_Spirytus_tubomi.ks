]
[_tb_system_call storage=system/_EV_item_Spirytus_tubomi.ks]

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

[glink  color="btn_05_black"  storage="EV_item_Spirytus_tubomi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="使用する"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_tubomi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="使用しない"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]（まぁいいか。今回は止めておこう）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
・・・蕾と少し仲良くなれた気がする[p]
夕食代を支払った 　[font color="yellow"]-￥5000[p]
テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
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
[bg  time="0"  method="crossfade"  storage="back_hankagai_yoru.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_item1_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
蕾「次はサラダバーとか行ってみたい。それでぇ、思いっきり食べて～」[p]
蕾が上機嫌で饒舌になっていく。[r]どうやら、さっき飲み物に混ぜたスピリタスが体の中で効果を発揮し始めたらしい。[p]
#蕾
蕾「っていうか、食べても太らなきゃいいのに～」[p]
[舜]「ムチムチしててもいいんじゃん？」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]蕾「あはははっ！　それはぁ、あんたの考え、でしょっ？　ふふふっ」[p]
耳まで真っ赤でとろんとした瞳になっている。酔っ払っているのは明らかだった。[p]
そのうち、呂律すら回らなくなり足元もおぼつかなくなっていく。[p]
#蕾
蕾「あれ？　おかしい…地面がふわふわして…」[p]
[舜]（やっぱスピリタスカプセルって効果すごいな…）[p]
ドリンクに混ぜる量は少なめにしたはずだ。[r]それでも彼女の体の大きさ的に前後不覚になるには充分な量だったのかもしれない。[p]
[舜]「あー、もう危ない危ない。気分悪いんじゃないのか？」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]蕾「だーいじょうぶらってばぁ。うふふ、気分がいいみたい～」[p]
しかしすぐに腰が抜けたように歩けなくなり、俺は華奢な彼女を支える。[p]
[舜]「少し休んでいくか…」[p]
#蕾
蕾「ホテルでとか、言わないれよ～？　あんたなんかとホテルに入らないから～！」[p]
[舜]（くっ…ホテルに連れ込んでやろうと思ってたのに。そこだけはしっかりしてんな）[p]
[舜]「わかってるよ。すぐそこがリフレだから。行こう。もう営業も終わってるし、問題ないだろ」[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="H3.mp3"  ]
[tb_start_text mode=1 ]
店内の電気をつけ、蕾と共に個室に入った。[p]
いつもは客に規定のサービスをする場所。でも今は、ルールも限界も存在しない。[r]一層ぐったりとした蕾を布団の上に寝かせると、同時にふわりと甘い香りがした。[p]
[舜]「ついたついた。ほら、水」[p]
店舗に置かれているペットボトルの水を蕾に差し出す。[p]
彼女はとろんとした顔のまま水を飲み、大きく息を吐いた。[p]
#蕾
蕾「なんか酔っ払ってるみたい…変、お酒なんか飲んでないのに」[p]
[舜]「店が間違えて出したのかもな」[p]
#蕾
蕾「も～。やだぁ…体あっつい」[p]
蕾の潤んだ目に見つめられ、俺はもう限界寸前だった。[p]
[舜]「じゃあ服脱がないとな」[p]
#蕾
蕾「やらぁ、え、あ、ちょっと…」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
彼女の細身の体に覆いかぶさり服をめくり上げる。[p]
下着も同時にズレ、柔らかそうな胸がプルンとこぼれた。[p]
#蕾
蕾「だめらってばぁ…」[p]
抵抗するように手足を動かすが、すでに酔っ払った彼女に俺を押し戻すほどの力はない。[p]
真っ白な肌に、細身の柔らかそうな体。どう楽しんでやろうか──[p]
[_tb_end_text]

[jump  storage="H_tubomi_supiritasu.ks"  target="*top"  ]
*back

[bg  time="2000"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[tb_start_text mode=1 ]
#蕾
蕾「はぁっ♡　はぁっ♡　はぁっ♡　もうやらぁ…♡」[p]
体を震わせながら蕾は首だけをイヤイヤと振る。[p]
そしてそのまま目を閉じ、寝息を立て始めた。[p]
[舜]（寝ちゃったか、もう少し楽しめそうだったけど。まぁいいや）[p]
普段は見た目や格好にこだわりを持つ彼女が、俺の前で裸をさらしている。[p]
だらしなく足まで開き、割れ目からは体液もあふれ…それだけで充分だ。[p]
俺はスマホを取り出し、1枚だけモデル志望の少女の写真を撮った。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
・・・蕾と少し仲良くなれた気がする[p]
夕食代を支払った 　[font color="yellow"]-￥5000[p]
テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_tubomi=1"  name="itemEV_supiritasu_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
メッセージの着信音が鳴り、スマホを開く──[p]
『昨夜の記憶がないんだけど。変なことしてないでしょうね？』[p]
蕾からのメッセージが届いていた。[p]
[舜]「やっぱ覚えてなかったか」[p]
『何もしてない。眠いっていうから寝かせただけだろ』[r]ためらうことなく返信する。体も拭いたし、服も着せた。証拠はない…[p]
俺のスマホのアルバムの中以外には。[p]
俺はもう1度昨夜撮った写真を開き、眺めていた。[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_supiritasu_tubomi=2"  name="itemEV_supiritasu_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1500"  ]
[return  