[_tb_system_call storage=system/_komyu_hayato.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  cross="false"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
*top

[cm  ]
[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
（何を話そうかな？）
[_tb_end_text]

[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="雑談"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="プレゼント"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="お金かして"  target="*okane_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="夕食に誘う"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="適当に切り上げる"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[s  ]
*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_隼人
;嫌い0 苦手1-9 普通10-19 友好20-29 好き30〜

[if exp="f.koukando_hayato >= 1 && f.koukando_hayato <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_hayato >= 10 && f.koukando_hayato <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_hayato >= 20 && f.koukando_hayato <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_hayato >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_0kirai"]

[endif]

[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_hayato.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[jump  storage="komyu_purezento.ks"  target="*purezento_hayato"  ]
*okane_top

[tb_start_tyrano_code]
;好感度別で金を借りられる確率が変化_隼人

;ATMの場合
[if exp="f.kan_atm_hayato == 1"]
[jump target="*okane_atm"]
[endif]

;洗脳相手
[if exp="f.kan_sennouaite_hayato == 1"]
[jump target="*okane_sennou"]
[endif]

[if exp="f.koukando_hayato < 10"]
[jump target="*okane_nigate_ran"]

[elsif exp="f.koukando_hayato < 20"]
[jump target="*okane_hutuu_ran"]

[elsif exp="f.koukando_hayato < 30"]
[jump target="*okane_yuukou_ran"]

[else]
[jump target="*okane_suki_ran"]

[endif]
[_tb_end_tyrano_code]

*yuusyoku_top

[tb_start_tyrano_code]
;手持ち5000円未満でトップに戻る
[if exp="f.money < 5000"]
[jump target="*okanenasi"]
[endif]

;好感度別で一緒に食事ができる確率が変化_隼人

[if exp="f.koukando_hayato < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_hayato < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_hayato < 30"]
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
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
なんの遠慮もなく話題をふってくるあたり、こいつには人見知りという概念がないらしい。[r]とはいえ俺にとってはやはり苦手なタイプだ。[p]
少しだけ立ち話を交わすうちに、ほんのわずかに心の距離が縮まった気がした。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
その顔は自信がみなぎっているように見えた。[r]俺にとっては苦手なタイプだが、異性に対しても裏表がなくどこまでもさわやかな奴だと思う。[p]
ほんの少しだけ、心の距離が縮まった気がした。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
人見知りの俺にもためらうことなく話しかけてくる。[r]こちらとの距離をまったく感じていないのが伝わってくる。[p]
ほんの少しだけ、心の距離が縮まった気がした。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
屈託のない表情で楽しげに話しかけてくる。[r]どうやら、いつの間にか俺はこいつの中で「友人枠」に入ったらしい。[p]
ほんの少しだけ、心の距離が縮まった気がした。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「あ、いや…なにこれ。不用品なの？」[p]
隼人「そうだ、このアクセサリー凪に贈るか。[r]俺からってことで…そっちのほうが凪も喜ぶから」[p]
（微妙な空気になってしまった）[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「高級なコーヒー豆じゃん！　いい香りだなぁ」[p]
隼人「さっそく豆を挽いて、飲んでみるか。[r]こんないいプレゼントもあるのか…まさかお前に教わるとは」[p]
隼人「俺も女の子におしゃれなプレゼントができるようにもっと腕を磨かないとな」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_hayato+=2"  name="koukando_hayato"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「おぉ、いいねゲーム。[r]俺、丁度気になってたんだ。空いた時間にやってみるか」[p]
隼人「ほら、今ってゲーム好きな可愛い子も多いし。[r]ちょっとでもかじっておくと、話が盛り上がるんだよな」[p]
隼人「今度アニメとかゲームとかで、知りたいことあったら聞くよ。よろしくな」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_hayato+=1"  name="koukando_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「え、花束…？」[p]
隼人「祝い事以外で男同士で花を贈るってないだろ…ズレすぎ」[p]
（微妙な空気になってしまった）[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]隼人「コスメ…？」[p]
隼人「あー、いいや…でも物に罪はないし。とりあえず、これは蕾に贈っとくわ」[p]
隼人「マジで、贈る相手のこと考えてプレゼントは選んだほうがいいぞ」[p]
（微妙な空気になってしまった）[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「うまそー…！　でもさすがにここまで甘いもん食えないな」[p]
隼人「時間もあるし、母さんの店に差し入れで持っていくか。喜ぶよ」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_hayato+=1"  name="koukando_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*okane_nigate_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_nigate_seikou"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_nigate_sippai"  ]
*okane_hutuu_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_hutuu_sippai"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_hutuu_seikou"  ]
*okane_yuukou_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_yuukou_sippai"  cond="f.issyonikaeru_ran>1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_yuukou_seikou"  ]
*okane_suki_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_suki_sippai"  cond="f.issyonikaeru_ran==0"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_suki_seikou"  ]
*okane_nigate_seikou

[tb_start_text mode=1 ]
隼人「マジで…？　お前なぁ…社会人なんだから恥ずかしいと思えよ」[p]
隼人「今回だけだからな！？　絶対に返せよ…！」[p]
隼人「あと、マジで母さんと蕾に金たかるのだけはやめろよ？」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]3000円もらった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=3000"  name="money_updated"  cmd="+="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_nigate_sippai

[tb_start_text mode=1 ]
隼人「お前さ…金貸してなんてよく平気で言えたな…」[p]
隼人「知り合いに借りるくらいなら、消費者金融で借りようぜ？」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_hutuu_seikou

[tb_start_text mode=1 ]
隼人「まぁいいけど…あんまり人に金貸してくれとか言わないほうがいいぞ？」[p]
隼人「信用に関わるから…まぁ、はい。これで足りる？」[p]
隼人「早めに返せよ？」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]5000円もらった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_hutuu_sippai

[tb_start_text mode=1 ]
隼人「いくら知り合いだって、金の切れ目が縁の切れ目だから」[p]
隼人「そういうとこ、ルーズにすんのよくないぞ」[p]
隼人「っつーか、貯金くらいしとけよ…」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_yuukou_seikou

[tb_start_text mode=1 ]
隼人「金足りないの？　まぁいいよ、これくらいしか渡せないけど」[p]
隼人「ま、返すのはいつでもいいよ」[p]
隼人「いざとなったらバイト代から天引きするからさ…はは、冗談だよ」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]10000円もらった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=10000"  name="money_updated"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_yuukou_sippai

[tb_start_text mode=1 ]
隼人「あー、悪い、今持ち合わせがないんだわ」[p]
隼人「また今度な！　どうしても足りなきゃ連絡くれよ」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_suki_seikou

[tb_start_text mode=1 ]
隼人「いいけど。バイト代そんな少ないんだっけ？」[p]
隼人「まー、今物価も高いもんな…カツカツじゃしんどいか」[p]
隼人「ほら…余裕ができてから返してくれりゃいいからさ」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]15000円もらった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=15000"  name="money_updated"  cmd="+="  op="t"  val="15000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_suki_sippai

[tb_start_text mode=1 ]
隼人「悪い、今現金を持ってないんだわ…」[p]
隼人「大丈夫か？　奢るくらいならできるから。苦しくなったら声かけてくれよ」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_atm

[call  storage="statusUP.ks"  target="*jyouken_cleared"  ]
[tb_start_text mode=1 ]
隼人「あぁ、いいよ。ホラ、これくらいで足りるか？」[p]
隼人「おまえって、ホント無頓着だよな、でもなんかほっとけないんだよな」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]20000円もらった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=20000"  name="money_updated"  cmd="+="  op="t"  val="20000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_sennou

[call  storage="statusUP.ks"  target="*jyouken_cleared"  ]
[tb_start_text mode=1 ]
隼人「まったく…、おまえには敵わないよ。これで勘弁してくれ。俺の金が無くなる」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]20000円もらった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=20000"  name="money_updated"  cmd="+="  op="t"  val="20000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran>1"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(10-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="10"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_suki_sippai"  cond="f.syokuji_ran==0"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
隼人「ん？　俺と飯？　まぁ、いいけど…ちょっとだけな？」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
隼人「男同士が顔付き合わせて飯食ってるの、寂しすぎるだろ。無理無理」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
隼人「まー、いいけど。[r]あ、女の子とご飯食べる時の注意聞きたいの？」[p]
隼人「レッスン料として奢ってくれるなら、教えてあげてもいいぜ」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
隼人「あー、わるいね、俺男とはご飯行かないって決めてるから」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
隼人「お、いいね。何食う？　何か希望があれば店選ぶよ」[p]
隼人「ここは、俺の腕の見せ所っしょ」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
隼人「あ、悪いな。今日は女の子と先約があって…また今度な？」[p]
隼人「ちなみに凪には秘密で。よろしく」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
隼人「いいね。実は、俺もちょうど誘おうかなって思ってたんだ。[r]タイミングバッチリだな。」[p]
隼人「話したいこと山ほどあるからさ。覚悟して付き合ってもらうぜ？」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
隼人「ごめん、行きたいとこなんだけど。厳しいな…」[p]
隼人「今度埋め合わせさせてよ。[r]俺も色々話したいって思ってたからさ。また連絡する」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ無理か）[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（いや、そもそもなんで俺がこいつにプレゼントせにゃならんのだ）[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
