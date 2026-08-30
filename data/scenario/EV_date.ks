[_tb_system_call storage=system/_EV_date.ks]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_nagi

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[tb_start_text mode=1 ]
凪「[舜]ちゃんと歩き回っていろんなお店見るだけでも楽しいね」[p]
[舜]「でもそろそろ疲れてきただろ？　少し休むか」[p]
凪「大丈夫だよ…？　まだ歩けるから──」[p]
[舜]「口数が減ったから。凪は昔から疲れてきたら喋らなくなるだろ」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"]凪「えっ、ふふ、私のこと本当によく見てくれてるんだね。嬉しい」[p]
凪「じゃあ…お言葉に甘えちゃおうかな。[r]ホントはちょっと疲れてきたなって思ってたから…」[p]
凪「カフェでお茶しよ。えーっと、あ、このお店にしようかな」[p]
[_tb_end_text]

*modoru_nagi

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="奢る(▼￥5000)"  _clickable_img=""  target="*nagi_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="奢ってもらう"  _clickable_img=""  target="*nagi_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="割り勘(▼￥2500)"  _clickable_img=""  target="*nagi_3"  ]
[s  ]
*nagi_1

[jump  storage="EV_date.ks"  target="*okanenasi_nagi"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「カウンターで注文みたいだな。何がいい？」[p]
凪「あ、お代…」[p]
[舜]「いいから。これくらい。凪は席に座ってて」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「あ、ありがとう…[舜]ちゃん、なんだかかっこよくなっちゃったね」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*nagi_end"  ]
*nagi_2

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP +0.5
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「ごめん、持ち合わせがなくて…」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]凪「あ、いいよ。私がご馳走するね？　何がいい？」[p]
[舜]（うっ、店員の視線が痛い…こんなことなら無理しても払うって言えばよかったか」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*nagi_end"  ]
*nagi_3

[jump  storage="EV_date.ks"  target="*okanenasi_nagi"  cond="f.money<2500"  ]
[tb_eval  exp="f.money_updated-=2500"  name="money_updated"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「それぞれ自分の分は自分で払う感じでいい？」[p]
凪「うん、もちろんだよ。自分の分は自分で払わせて」[p]
凪「ふふ、隼人は自分が払うっていつも支払ってくれちゃうから[r]いつも申し訳ないなって思ってたの」[p]
[舜]（アイツは全額支払ってんのか…さすがだな）[p]
[_tb_end_text]

*nagi_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_mod  name="kyara_nagi_sabun2"  time="0"  cross="true"  storage="chara/179/ADV_nagi_01_00c.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（あっという間だったな…）[p]
凪「じゃあ、ちょっと寄りたいところがあるから、ここでバイバイね」[p]
凪「今日は本当に楽しかったよ、ありがとう。また誘ってね！」[p]
[舜]「もちろん」[p]
[舜]（楽しんでくれたみたいでよかった）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated-=2501"  name="money_updated"  cmd="-="  op="t"  val="2501"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_tubomi

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_yuukou"  ]
[tb_start_text mode=1 ]
蕾「あ、見て見て！　この帽子可愛い～！　[r]日よけにもなりそう。どう？　似合う？」[p]
[舜]「いいんじゃないか？」[p]
蕾「うーん…使い勝手もよさそうだし、買っちゃおっかな」[p]
蕾「でも今月服も買っちゃったし、美容院でトリートメントもしちゃったし。[r]使い過ぎかな」[p]
[_tb_end_text]

*modoru_tubomi

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="買ってあげる(▼￥5000)"  _clickable_img=""  target="*tubomi_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="無視する"  _clickable_img=""  target="*tubomi_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="ロボプラをねだる"  _clickable_img=""  target="*tubomi_3"  ]
[s  ]
*tubomi_1

[jump  storage="EV_date.ks"  target="*okanenasi_tubomi"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「俺が買うよ。ほら、レジ持ってくから」[p]
蕾「え、いいの？　あんたが買ってくれるなんて…」[p]
[舜]「いらないの？」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]蕾「いるっ！　ありがとう…！　ふふ、嬉しい。大切にするから」[p]
[舜]（生意気なんだけど、嬉しそうな顔は可愛いんだよな…）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*tubomi_end"  ]
*tubomi_2

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP +0.5
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「…………」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]蕾「なんで聞こえてない振りするのよ。買ってほしいなんて言ってないでしょ」[p]
[舜]「買ってくれって言われてんのかと思った」[p]
蕾「も～、ホントに女心がわかってないんだから！」[p]
蕾「ねだってイヤイヤ買ってもらっても嬉しくないんだからね？」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]蕾「って、説明しても難しいか…まぁいいわ。また今度自分で買うから」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*tubomi_end"  ]
*tubomi_3

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「それ買うなら、さっき見たロボプラ買ってほしいんだけど」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif"]蕾「はぁ！？　女の子にねだるって…しかもオモチャでしょ？」[p]
[舜]「オモチャじゃない。大人のたしなみだから」[p]
蕾「私には同じに感じるんだけど…もー、いいから。自分のものは自分で買ってよね」[p]
[_tb_end_text]

*tubomi_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_mod  name="kyara_tubomi_sabun"  time="0"  cross="true"  storage="chara/181/ADV_tubomi_00_00c.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あー楽しかった！　じゃ、ここでいいわ」[p]
[舜]「送らなくていいのか？」[p]
蕾「そう言うキャラじゃないでしょ。いーから！　また誘ってね」[p]
[舜]（おおっ、満足してもらえたみたいだな）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが大きく上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated-=2501"  name="money_updated"  cmd="-="  op="t"  val="2501"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_hayato

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[tb_start_text mode=1 ]
隼人「そろそろ腹減らない？　なんか食ってこうぜ」[p]
隼人「おっ！　ラッキー！　行列のラーメン屋、今日は並ばずに入れそうだ」[p]
隼人「ラーメンでいい？　ま、おしゃれなカフェでランチってガラじゃないだろ？」[p]
[舜]「まぁ、いいけど…」[p]
[舜]（有名なラーメン屋ってけっこう値段高いんだよな…）[p]
[_tb_end_text]

*modoru_hayato

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="奢る(▼￥5000)"  _clickable_img=""  target="*hayato_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="奢ってもらう"  _clickable_img=""  target="*hayato_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="割り勘(▼￥2500)"  _clickable_img=""  target="*hayato_3"  ]
[s  ]
*hayato_1

[jump  storage="EV_date.ks"  target="*okanenasi_hayato"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_hayato+=2"  name="koukando_hayato"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「ここは俺が払うよ。今日は買い物に付き合ってもらったから」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「マジで？　ラッキー！　じゃあお言葉に甘えよっかな」[p]
[舜]（ここで恩を売っとくのも悪くないよな）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*hayato_end"  ]
*hayato_2

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「あ、財布忘れた。　奢ってくれ」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「はぁ？　まぁ、いいけど…女の子には奢ってもらおうとすんなよ？」[p]
[舜]（お前だから言ってんだよ！）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*hayato_end"  ]
*hayato_3

[jump  storage="EV_date.ks"  target="*okanenasi_hayato"  cond="f.money<2500"  ]
[tb_eval  exp="f.money_updated-=2500"  name="money_updated"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_hayato+=1"  name="koukando_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「じゃ、割り勘ってことで」[p]
隼人「まぁ、男同士なんだから当然だよな。じゃ、先に食券買っとくわ」[p]
隼人「あ、わかってると思うけど。女の子相手にはちゃんと奢れよ？」[p]
[_tb_end_text]

*hayato_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_mod  name="kyara_hayato_sabun"  time="0"  cross="true"  storage="chara/177/ADV_hayato_00c.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
隼人「じゃあ俺、寄ってくとこあるから。もう行くわ」[p]
隼人「気を付けて帰れよ。楽しかった、じゃあな」[p]
[舜]（こういうこと、サラッと言えちゃうとこがモテるんだろうな…）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_eval  exp="f.deto_hayato=0"  name="deto_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated-=4500"  name="money_updated"  cmd="-="  op="t"  val="4500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_rinko

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_massajiten2.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_yuukou"  ]
[tb_start_text mode=1 ]
凛子「簡単なおもてなししかできなくてごめんなさいね？」[p]
凛子「[舜]くんが来てくれるなら、お菓子とかいろいろ準備しておけばよかったな」[p]
[舜]「いえ、凛子さんに会いに来たんで」[p]
凛子「ふふ、上手なんだから」[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[舜]（そういえば、なにか手土産を持ってきてたような）
[_tb_end_text]

*modoru_rinko

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="ケーキセット(▼￥5000)"  _clickable_img=""  target="*rinko_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="駄菓子(▼￥1000)"  _clickable_img=""  target="*rinko_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="手ぶら"  _clickable_img=""  target="*rinko_3"  ]
[s  ]
*rinko_1

[jump  storage="EV_date.ks"  target="*okanenasi_rinko"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「あ、これ…凛子さんにお土産です。駅前に新しいケーキ屋ができてたんで」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「わあ、美味しそう…！　気を使うことなかったのに…なんだか申し訳ないな」[p]
凛子「でも、嬉しい。ね、これ２人で食べちゃおっか。蕾には内緒で」[p]
[舜]「え、いいんですか？」[p]
凛子「うん、蕾もダイエット中だって言ってたから。ふふ、［舜］くんと共犯ね」[p]
[舜]（喜んでもらえたみたいだ。よかった）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*rinko_end"  ]
*rinko_2

[jump  storage="EV_date.ks"  target="*okanenasi_rinko"  cond="f.money<1000"  ]
[tb_eval  exp="f.money_updated-=1000"  name="money_updated"  cmd="-="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「駄菓子の詰め合わせを買ってきたんです。よかったら食べてください」[p]
凛子「え、いいの？　わーっ！　どれも全部懐かしい…！」[p]
凛子「小さい頃によく食べたっけ。ありがとう[舜]くん」[p]
凛子「休憩中にゆっくり食べさせてもらうね」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*rinko_end"  ]
*rinko_3

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP +0.5
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「すみません、何か買って来ればよかった」[p]
凛子「いいのいいの、そんなに気を使わないで？」[p]
凛子「こうやってお茶を飲みながらゆっくり話すだけで充分楽しいんだから」[p]
凛子「[舜]くんのお話聞くのが、１番のご褒美だよ」[p]
[_tb_end_text]

*rinko_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="back_massajiten_yoru.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_hutuu"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ありがとう、来てくれて。いい気分転換になったよ」[p]
凛子「仕事でも頼らせてもらっちゃうからね？　気を付けて帰ってね」[p]
[舜]「はい、じゃあまた…」[p]
[舜]（凛子さんとゆっくり話ができてラッキーだったな）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top_nagi_koibito

[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[bg  time="0"  method="crossfade"  storage="back_himawari.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
どこまでも続く黄色の波。[p]
その中に入り込んでしまえば、凪の姿はあっという間に見えなくなりそうだ。[p]
俺たちにとって思い出の…想いを伝え合った大事な場所だ。[p]
凪「何度来ても楽しいね…それに、幸せな気持ちになる」[p]
[舜]「遠くに行ったら、探せないからな？」[p]
凪「 [舜]ちゃんに探してもらうの悪くないけど…」[p]
[舜]「お、おいおい──」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif" wait="false"]凪「でも大丈夫！　いなくならないよ。[舜]ちゃんの隣でこの景色見ていたいから」[p]
凪「来年も再来年も、ずーっと…おじいちゃんおばあちゃんになっても。見たい」[p]
凪は目を輝かせて、空を仰ぐ。[p]
[舜]「そうだな…」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif" wait="false"] 凪「あ、ひまわり摘んでいっていいんだよね？　お母さんの病院に飾りたいの」[p]
[舜]「じゃあ綺麗な花選んで持ってこう。両手で抱えきれないくらい」[p]
凪「え～？　駄目だよ、飾りきれない！」[p]
そう言いながらも、凪は幸せそうだった。[p]
病室を埋めるほどのひまわりの花の中で驚く凪の母さんと、大笑いする凪の姿を想像し吹き出す。[p]
[舜]「いいじゃん、綺麗なんだから」[p]
凪「花瓶に入るだけにしよ。その代わり、お母さんが元気になった時ここに一緒に来るの」[p]
幸せそうな凪を見ながら、俺は凪と凪の母さんと俺が並んでる姿を想像してみる。[p]
きっと幸せだろう…俺はもう１度どこまでも続く黄色の波を見つめた。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top_rinko_koibito

[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_hutuu"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
店の前にスタンドボードを置こう、と言い出したのは凛子さんだった。[p]
メニューも値段も書いて、[r]ご新規のお客さんに入ってもらいやすくするのだと意気込んでたはずなのだけど。[p]
凛子「うーん…イメージと違うなぁ」[p]
文字を書いては消し書いては消し、凛子さんの顔はすっかり泣きそうになっている。[p]
スタンドボードは、チョークの消し跡で真っ白だ。[p]
[舜]「大丈夫ですか」[p]
凛子「もっとオシャレになるはずだったの。こう…綺麗な文字と立体的な絵があって」[p]
[舜]「なるほど…」[p]
凛子「でもよく考えてみたら、どっちも自分で書かなくちゃいけないんだものね」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_02c.gif" wait="false"]凛子「困ったな…私が書いたんじゃ、オシャレにならない」[p]
弱り切った、といった表情で凛子さんはため息をつく。[p]
[舜]「あの、よければ俺が書きましょうか。凛子さんの理想通りかわかんないですけど」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"]凛子「本当！？　是非お願い…！」[p]
チョークを握り凛子さんの言う通りにメニューと値段、気持ちばかりのイラストを描く。[p]
凛子「えっ、[舜]くんすっごく上手…！　こんなにオシャレになるなんて」[p]
[舜]「そうですか？」[p]
凛子「ホントホント！　すごいよ…！　まさか[舜]くんにデザイナーのセンスがあったなんて」[p]
凛子「そうだ！　今度お店の名刺とかポスターも作っちゃおうか。デザインは[舜]くん」[p]
[舜]「いいんですかプロじゃなくて」[p]
凛子「だって[舜]くん、すごく上手なんだもん。これから、いろいろ頼んじゃおうかな」[p]
[舜]「勘弁してくださいよ」[p]
キラキラとした凛子さんの顔を見ていると、いくらでも付き合ってもいいかと思ってしまう。[p]
普段は大人の彼女が見せてくれる子供っぽい顔を独り占めできるのなら、[r]無茶ぶりに応えるのもいいのかもしれない。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top_tubom_koibito

[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[bg  time="0"  method="crossfade"  storage="back_himawari.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_yuukou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「こんな綺麗な場所があったなんて知らなかった…！」[p]
ひまわり畑の中で蕾が声を上げる。[p]
目をキラキラさせながら、ひまわりの中を縫うように歩いていく。[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]蕾「ひょっとして、前にデートで来たとか？」[p]
[舜]「まさか。小さい頃に来たことがあったんだよ」[p]
蕾「へぇ、ホント～？」[p]
疑いの目を向けられるが、本当なのだから焦りようもない。[p]
[舜]「ホントだよ」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif" wait="false"]蕾「それならいいけど！」[p]
ぱっと表情が明るくなる。ひまわりのようなキラキラとした笑顔はとても眩しかった。[p]
きっと今、ひまわり畑を見に来ている恋人たちも同じように感じてることだろう。[p]
[舜]「今日はけっこう混んでるなぁ」[p]
蕾「友達に会っちゃったらどうしよう」[p]
[舜]「え、俺のこと紹介するの嫌だ？」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]蕾「そういうわけじゃないけど…恋人を紹介するの初めてだし、恥ずかしいっていうか」[p]
蕾は恥ずかしそうに口をすぼめる。[p]
その仕草もたまらなく可愛らしかった。[p]
[舜]「じゃ、俺が上手に自己紹介するよ」[p]
背の高いひまわりに紛れ、そっと蕾の手を握る。[p]
蕾にとっていい彼氏でいようと心に決めるのだった。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*okanenasi_nagi

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_nagi"  ]
*okanenasi_tubomi

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_tubomi"  ]
*okanenasi_rinko

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_rinko"  ]
*okanenasi_hayato

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_hayato"  ]
*okanenasi_serihu

[tb_start_text mode=1 ]
（…と思ったけどさすがにこの手持ちじゃ奢れないよな）[p]
[_tb_end_text]

[return  ]
