]
[_tb_system_call storage=system/_komyu_tubomi.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  cross="false"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[call  storage="character.ks"  target="*tubomi_hudangi"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;音声ストップ
[stopse buf=2]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_text mode=4 ]
（何を話そうかな？）
[_tb_end_text]

[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="雑談"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="プレゼント"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="デートに誘う"  target="*deto_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="夕食に誘う"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="適当に切り上げる"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[call  storage="komyu_tubomi.ks"  target="*koibito"  cond="f.koukando_tubomi_koibito==1"  ]
[s  ]
*koibito

[glink  color="btn_05_yellow"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="えっちしたい"  target="*H"  x="990"  y="160"  _clickable_img=""  ]
[return  ]
*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_蕾
;苦手0-9 普通10-19 友好20-29 好き30〜

[if exp="f.koukando_tubomi >= 0 && f.koukando_tubomi <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_tubomi >= 10 && f.koukando_tubomi <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_tubomi >= 20 && f.koukando_tubomi <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_tubomi >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_3yuukou"]

[endif]



[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_tubomi.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[jump  storage="komyu_purezento.ks"  target="*purezento_tubomi"  ]
*deto_top

[jump  storage="komyu_tubomi.ks"  target="*deto_sasoenai1"  cond="f.deto_tubomi==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto_sasoenai2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;状態別デートの約束(蕾)

[if exp="f.koukando_tubomi_koibito == 1"]
[jump target="*deto_koibito_seikou"]

[elsif exp="f.koukando_tubomi < 10"]
[jump target="*deto_nigate_seikou"]

[elsif exp="f.koukando_tubomi < 20"]
[jump target="*deto_hutuu_seikou"]

[elsif exp="f.koukando_tubomi < 30"]
[jump target="*deto_yuukou_seikou"]

[else]
[jump target="*deto_suki_seikou"]

[endif]
[_tb_end_tyrano_code]

*yuusyoku_top

[tb_start_tyrano_code]
;手持ち5000円未満でトップに戻る
[if exp="f.money < 5000"]
[jump target="*okanenasi"]
[endif]

;好感度別で一緒に食事ができる確率が変化_蕾

[if exp="f.koukando_tubomi < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_tubomi < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_tubomi < 30"]
[jump target="*syokuji_yuukou_ran"]

[else]
[jump target="*syokuji_suki_ran"]

[endif]

[_tb_end_tyrano_code]

*end_top

[tb_start_text mode=1 ]
（別に仲良くする必要も無いな）[p]
[_tb_end_text]

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*end

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
蕾は視線を逸らしたままつまらなそうに話を聞いている。[r]その様子からは苛立ちの気配さえ感じ取れる。[p]
適当な話題をふってその場を切り上げることにした。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
蕾はどこか気だるげに話を聞いている。[r]不愛想だが完全に無関心というわけではないようだ。[p]
空気が重くなる前にその場を切り上げることにした。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
蕾は穏やかに微笑みながらこちらの話に耳を傾けてくれている。[r]会話は自然と続き、目が合うと軽くうなずいてくれた。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
蕾はこちらの話に耳を傾けながら、時折微笑んでくれる。[r]まっすぐに向けられた眼差しには特別な温もりが感じられた。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]蕾「素敵！　ありがとう…！　これ高いから自分じゃ手が届かなかったから嬉しい」[p]
蕾「つけてくれる？」[p]
[舜]「もちろん…はいはいどうぞ」[p]
蕾「ありがとう…！　[r]どう？　似合ってる？　ま、私ならどんなものでもに合っちゃうと思うけど」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]蕾「コーヒー豆？　へー、あんたもコーヒーの味とかわかるんだ？」[p]
蕾「私普段豆からコーヒーを入れることとかないから…試してみよっかな。[r]ママもきっと喜ぶと思うし」[p]
蕾「あ、ママのお店に置いといて、休憩時間にみんなで飲むのもいいんじゃない？　[r]うん、それがいいかも」[p]
[舜]（蕾にあげたつもりだったんだけど…お店への差し入れみたいになっちゃったな）[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]蕾「なんでゲーム…？　私ゲームなんてやらないんだけど…」[p]
蕾「気持ちはありがたいんだけどさ…[r]自分が喜ぶものはみんなが喜ぶって言うの、間違いだからね？」[p]
蕾「っていうか、女の子に自分の趣味を押し付けるのはよくないよ？」[p]
[舜]（うっ…叱られてしまった）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]蕾「えっ、花束？　ふふ、ステージ終わりにファンから貰ったみたいね」[p]
蕾「いつか両手に抱えきれないほどの花束を受け取れるかなー」[p]
蕾「な、何ニヤニヤしてるのよ…！　ただ将来の夢を話しただけじゃない…！」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]蕾「え、すごい…！　あんた、どうやってこのコスメ選んだの？」[p]
[舜]「店員に聞いた」[p]
蕾「やるじゃない。見直したかも。ふふ、すっごく嬉しい。ありがとね」[p]
蕾「早く使ってみたいな～。似合うかどうか、ちゃんと見てよね？」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]蕾「わぁ、美味しそ…甘くていい香り～」[p]
蕾「はっ…！　でもっ、今ダイエット中なのよね…くぅ～、甘い誘惑をくれるだなんて…」[p]
蕾「ちょっとくらいなら食べてもいい、かな？」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*deto_nigate_seikou

[tb_start_text mode=1 ]
蕾「あんたと？…まぁ、別にいいけど」[p]
蕾「その代わり、私が行きたいところに行くから文句言わないでよ」[p]
[舜]（成功…なのか？）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]蕾とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_hutuu_seikou

[tb_start_text mode=1 ]
蕾「デート？　じゃあ美味しいモノご馳走してもらおうかな～」[p]
[舜]「まさか高級店じゃないだろうな」[p]
蕾「ふっふっふ、それは行ってのお楽しみって事にしましょ」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]蕾とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_yuukou_seikou

[tb_start_text mode=1 ]
蕾「デート？　どこに行く？　私、この前ＳＮＳで見たんだけど…」[p]
[舜]「ん！？　結局オッケーなの？　ダメなの？」[p]
蕾「え？　オッケーのその先の話をしてるんだってば。どこに行こっか」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]蕾とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_suki_seikou

[tb_start_text mode=1 ]
蕾「デート？　ストレートに誘われると…なんか恥ずかしいね」[p]
蕾「もちろん行くわ！　すっごく楽しみ…！」[p]
蕾「何着て行こうかな～。ね、どんな服が好きかあとで教えてよ」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]蕾とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_koibito_seikou

[tb_start_text mode=1 ]
蕾「すごい、偶然…！　私もどこかに行こうって声かけようと思ってたとこ」[p]
蕾「でもデートに誘ってもらえるって、やっぱり嬉しいかも[r]ね、もう１回言ってよ。デート行こうよって」[p]
[舜](なんだかものすごく喜んでくれてるぞ）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]蕾とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(4-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="4"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran>1"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(10-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="10"  ]
[tb_start_tyrano_code]
;恋人状態(食事)
[if exp="f.koukando_tubomi_koibito == 1 && f.syokuji_ran == 0"]
[jump target="*syokuji_koibito_sippai"]
[endif]

[if exp="f.koukando_tubomi_koibito == 1"]
[jump target="*syokuji_koibito_seikou"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*syokuji_suki_sippai"  cond="f.syokuji_ran==0"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
蕾「別にいいけど…お店のデートコースってことでいいでしょ？」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
蕾「嫌よ。じゃあね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
蕾「まぁいいわよ。もちろんあんたの奢りよね？」[p]
蕾「あ、それなら駅前のフレンチ行きましょ。ＳＮＳで見て気になってたの」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
蕾「あ～、忙しいしダイエット中だからパスさせて」[p]
蕾「お買い物に付き合ってほしい、とかなら一緒に回ってあげる。[r]もちろん有料で、ね？」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
蕾「丁度お腹空いてたの。行きましょ！　[r]その代わり、ヘルシーなお店一択だからね？」[p]
蕾「女の子ががっつり夕飯食べるわけないでしょ！　文句言わずに付き合って」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
蕾「ごめんね、今ダイエットしてるから外食は控えてるの」[p]
蕾「可愛くありたいって気持ち、わかるでしょ？　ってわけで、また今度ね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
蕾「えっ、行きたい！　ご飯食べに行きましょ」[p]
蕾「あんたが行きたいとこなら、どこでもいいわよ…[r]一緒にいられるだけで楽しいし」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
蕾「も～、早く誘ってよ～。行けないじゃない」[p]
[舜]「だよな、忙しそうだし無理しなくても──」[p]
蕾「だめ！　次は絶対に行くから…！　[r]スケジュール合わせてご飯食べに行きましょ」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_koibito_seikou

[tb_start_text mode=1 ]
蕾「あ、私もＳＮＳで見つけたお店、一緒に行きたいって思ってたの」[p]
蕾「何が食べたいって希望があれば、そのお店に行きましょ。[r]私はなんでもいいわよ…」[p]
蕾「あ、あんたと一緒ならなんでも美味しいから…あー恥ずかしっ！」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_koibito_sippai

[tb_start_text mode=1 ]
蕾「残念、今日は駄目なの。[r]なんだ～、誘ってもらえるってわかってたら空けといたのに…」[p]
蕾「今度夕飯美味しいもの食べよ？　約束だからね！」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ無理か）[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
[call  storage="komyu_tubomi.ks"  target=""  ]
*deto_sasoenai1

[tb_start_text mode=1 ]
蕾「デート、楽しみ。ね、行く先のこと色々調べちゃった」[p]
蕾「あとでチャットで送るから見ておいてよ？」[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*deto_sasoenai2

[tb_start_text mode=1 ]
（たしか次の休みは予定が入ってたな）[p]
（今回はやめておこう）[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*H

[jump  storage="komyu_H.ks"  target="*tubomi"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（あんまり渡しすぎると、絶対図に乗るからな）[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  