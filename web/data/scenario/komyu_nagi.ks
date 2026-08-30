[_tb_system_call storage=system/_komyu_nagi.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.koukando_nagi_koibito=1"  name="koukando_nagi_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin2.png"  cross="false"  ]
[call  storage="character.ks"  target="*nagi_sigotogi"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;音声ストップ
[stopse buf=1]
;レイヤー2を消す
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_text mode=4 ]
（何を話そうかな？）
[_tb_end_text]

[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="雑談"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="プレゼント"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="デートに誘う"  target="*deto_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="夕食に誘う"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="適当に切り上げる"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[call  storage="komyu_nagi.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[s  ]
*koibito

[glink  color="btn_05_yellow"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="えっちしたい"  target="*H"  x="990"  y="160"  _clickable_img=""  ]
[return  ]
*deto_top

[jump  storage="komyu_nagi.ks"  target="*deto_on"  cond="f.deto_nagi==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto_yoteiari"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;状態別デートの約束(凪)

[if exp="f.koukando_nagi_koibito == 1"]
[jump target="*deto_koibito_seikou"]

[elsif exp="f.koukando_nagi < 10"]
[jump target="*deto_nigate_seikou"]

[elsif exp="f.koukando_nagi < 20"]
[jump target="*deto_hutuu_seikou"]

[elsif exp="f.koukando_nagi < 30"]
[jump target="*deto_yuukou_seikou"]

[else]
[jump target="*deto_suki_seikou"]

[endif]
[_tb_end_tyrano_code]

*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_凪
;苦手0-9 普通10-19 友好20-29 好き30以上

[if exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_3yuukou"]

[endif]
[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_nagi.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[jump  storage="komyu_purezento.ks"  target="*purezento_nagi"  ]
*yuusyoku_top

[tb_start_tyrano_code]
;手持ち5000円未満でトップに戻る
[if exp="f.money < 5000"]
[jump target="*okanenasi"]
[endif]

;好感度別で一緒に食事ができる確率が変化_凪

[if exp="f.koukando_nagi < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_nagi < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_nagi < 30"]
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
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
当たり障りのない話題をふってみた。[r]凪は少し気まずそうにしながらも笑顔で相槌を打ってくれる。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]

[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
たわいもない話をふってみた。[r]凪は少し照れくさそうに笑いながら相槌を返してくれる。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]

[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
冗談まじりの話をふってみたら、凪は人懐っこい笑顔を見せてくれた。[p]
会話が途切れても気まずさはなく、[r]隣にいるのがすごく当たり前のことのように感じる。[p]

[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
こちらの話に興味を持ってくれているのが伝わってくる。[r]凪はまっすぐに目を見つめてきて、視線が合うと照れくさそうにはにかんだ。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"]凪「わぁ、可愛い。ありがとう…！でも本当に貰ってもいいの？[r]　ちょっと申し訳ないような…」[p]
凪「それに私にはちょっと派手じゃない？」[p]
[舜]「似合うと思うけど」[p]
凪「そうかな？　ふふっ、ありがとう。挑戦してみるね」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"]凪「いい香り…！　美味しそう！　[r]ふふ、[舜]ちゃんもこんなオシャレなプレゼントできるようになったんだね」[p]
凪「ちゃんと種類にもこだわってくれたの？　なんだか嬉しい」[p]
凪「休憩中に飲むのも良いかも。仕事も頑張れそうだよ。ありがとね」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「わっ…！　ゲームだぁ、しかも昔のものだよね？　これ…小さい頃に遊んだことある。[r][舜]ちゃんともやったよね？」[p]
[舜]「そうだよな？　懐かしいなと思って」[p]
凪「覚えててくれたんだ…！　嬉しい。よく手に入ったね。早くプレイしたいなぁ」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「わぁ綺麗…！どうしたの急に。花束だなんて…」[p]
凪「嬉しいけど、なんだか気恥ずかしいね…ふふっ。ありがと」[p]
凪「しおれちゃったら可哀想だから、早く帰って花瓶に飾ってあげなくちゃ」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"]凪「え～！[舜]ちゃんがメイク道具を…？　わざわざコスメカウンターに行ったの？」[p]
[舜]「あぁ、店員さんに聞いて選んだんだ」[p]
凪「そうだったんだ。[r]気持ちはすっごく嬉しいんだけど…なんだか想像するとおかしくて…ふふ！」[p]
凪「ありがとね。大切に使わせてもらうね」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]凪「わー、美味しそう…！　丁度お腹空いてたんだぁ。嬉しい！」[p]
[舜]「美味しいって聞いたからさ。凪に食べさせたくて」[p]
凪「ふふ、美味しいものを知った時に、私の顔を思い出してくれるのが嬉しいな」[p]
凪「あとでいただくね。楽しみっ」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_kettei2

[return  ]
*pure_kettei_teisi

[tb_eval  exp="f.pure_kettei_on=1"  name="pure_kettei_on"  cmd="="  op="t"  val="1"  ]
[return  ]
[s  ]
*kaeru_nigate_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_nigate_seikou"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_nigate_sippai"  ]
*kaeru_hutuu_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_hutuu_seikou"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_hutuu_sippai"  ]
*kaeru_yuukou_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(4-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="4"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_yuukou_seikou"  cond="f.issyonikaeru_ran>1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_yuukou_sippai"  ]
*kaeru_suki_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(9-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="9"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_suki_sippai"  cond="f.issyonikaeru_ran==0"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_suki_seikou"  ]
*kaeru_nigate_seikou

[tb_start_text mode=1 ]
凪「えっ…うん。あ、でも…緊張しちゃって何話していいかわかんないね…」[p]
凪「黙ったままになっちゃったらごめん…」[p]
[舜]（黙ったままって…一緒に帰る意味あんのか？）[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_nigate_sippai

[tb_start_text mode=1 ]
凪「えっ、ご、ごめん…今日は忙しくて…ほんとごめんね」[p]
[舜]（少しは話せると思ったけど…ダメだったか）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaeru_hutuu_seikou

[tb_start_text mode=1 ]
凪「あ、うん、いいよ。用意してくるから少しだけ待ってて？　」[p]
凪「もし急いでるなら先に帰ってもいいからね」[p]
[舜]「待ちます待ってます…！」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_hutuu_sippai

[tb_start_text mode=1 ]
凪「えっと…、ごめんね。今日はちょっと忙しくて。ほんとにごめんね」[p]
凪「気を付けて帰ってね」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaeru_yuukou_seikou

[tb_start_text mode=1 ]
凪「ふふ、ひょっとして迷子になっちゃいましたか？　[r]じゃあ一緒に帰ってあげようかな」[p]
凪「なんてね…珍しいね、[舜]ちゃんが誘ってくれるなんて」[p]
凪「一緒に帰ろ。ちょっと待ってて」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_yuukou_sippai

[tb_start_text mode=1 ]
凪「残念、今日は忙しいんだ～」[p]
凪「また今度ね…！　その時は寄り道しながら一緒に帰ろ」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaeru_suki_seikou

[tb_start_text mode=1 ]
凪「えっ…う、うん。すぐ帰る支度するから少しだけ待ってて…！」[p]
凪「なんだか嬉しいな、久しぶりに[舜]ちゃんと一緒に帰れるね」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_suki_sippai

[tb_start_text mode=1 ]
凪「あぁ…残念…今日は一緒に帰れないんだ…ごめんね」[p]
凪「私も[舜]ちゃんと並んで帰りたかったなぁ…また絶対誘ってね？」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[tb_start_tyrano_code]
;恋人状態
[if exp="f.koukando_nagi_koibito == 1 && f.syokuji_ran == 0"]
[call target="*syokuji_koibito_sippai"]
[endif]

[if exp="f.koukando_nagi_koibito == 1"]
[call target="*syokuji_koibito_seikou"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
凪「えっ？う、うん。でも私、食べてる時におしゃべりするの苦手だけど…」[p]
凪「それでもいいなら…」[p]
[舜]（だんまりしたままの夕飯にならないように気を付けないとな）[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
凪「ごめんなさい…忙しくてちょっと難しい、かな…」[p]
凪「せっかく誘ってくれたのにごめんね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
凪「あ、うんいいよ、お腹もすいてたし。何か食べに行く？」[p]
凪「すぐ食べて帰るなら病院の食堂もあるよ。安いし美味しいけど」[p]
[舜]「うーん、それもいいけど。他のところにしようか」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
凪「あ…ごめんね。今日はどうしても忙しくって…また今度誘ってくれると嬉しいな」[p]
[舜]（だよな…残念、断られちゃったな）[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
凪「丁度お腹空いてたんだ～。嬉しいな、どこに食べに行こうか！」[p]
凪「[舜]ちゃんのおすすめは、どこかある？　ふふ、楽しみ」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
凪「え～、残念…！　今日はちょっと忙しいんだ～」[p]
凪「また誘ってね。次は絶対に行くから」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
凪「夕ご飯？　うん、行きたい…！　ふふ、[舜]ちゃんとご飯楽しみだな」[p]
凪「何食べようか～？　私は[舜]ちゃんとなら、なんでもいいよ」[p]
凪「２人で食べたら、どんなものでも美味しいでしょ」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
凪「行きたいけど…今日は先約があって行けないの。でも断っちゃえば──」[p]
[舜]「いや、いいよいいよ！　そっちを優先して…！」[p]
凪「そう？　本当にごめんね？　また今度誘ってね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_koibito_seikou

[tb_start_text mode=1 ]
凪「うん、行こう行こう。[r]高級フレンチ行きたいなんて言われたらどうする？」[p]
[舜]「も、もちろん！」[p]
凪「ふふ、そんなこと言わないよ？　でも頑張ってくれてありがと。大好き」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_koibito_sippai

[tb_start_text mode=1 ]
凪「あ、ごめんなさい、今日は難しいかも…」[p]
凪「その代わり、今度ウチでご飯食べようよ。一緒に作ろ？」[p]
凪「[舜]ちゃんと家でご飯食べるのなんて、久しぶりだもんね。楽しそう」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ無理か）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*deto_nigate_seikou

[tb_start_text mode=1 ]
凪「どこか出かけるの？　うん、空いてるから…かまわないけど」[p]
凪「でも久しぶりに話すから、ちょっとだけでいいかな？」[p]
[舜]（オッケーはもらえたけど。まだ距離を感じるな）[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_hutuu_seikou

[tb_start_text mode=1 ]
凪「あ、うん。もちろん。」[p]
凪「デートだって言われたらちょっと困っちゃうけど…一緒にお出かけするくらいならいいよ」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_yuukou_seikou

[tb_start_text mode=1 ]
凪「私でいいの？　[舜]ちゃん、なんだか誘い慣れしてる…？」[p]
凪「ふふ、冗談だよ、誘ってくれてありがとう」[p]
凪「昔みたいに、いろいろなところに出かけるの楽しみ」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_suki_seikou

[tb_start_text mode=1 ]
凪「え、で、デート？　それ…期待しちゃうよ…？」[p]
凪「って、だめだよね…喜んじゃ。でも、すごく嬉しい…」[p]
凪「どこに行こうか、ワクワクしちゃうな」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_koibito_seikou

[tb_start_text mode=1 ]
凪「[舜]ちゃんからデートのお誘いしてくれるなんて嬉しいな」[p]
凪「どこに行く？　昔みたいにお花を見に行くのでもいいし、ゲーム屋さんもいいね」[p]
凪「[舜]ちゃんとなら、どこに行っても楽しいから」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凪とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_on

[tb_start_text mode=1 ]
凪「お出かけ、楽しみだね」[p]
凪「当日は気合入れて行くから…よろしくね？」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*deto_yoteiari

[tb_start_text mode=1 ]
(そういえば、その日は予定があったはずだ。誘うのはまた今度にしておこう）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（一度にまとめて渡すのは、やっぱり気を遣わせるよな）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*H

[cm  ]
[jump  storage="komyu_H.ks"  target="*nagi"  ]
