[_tb_system_call storage=system/_komyu_rinko.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.koukando_rinko_koibito=1"  name="koukando_rinko_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  cross="false"  ]
[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[call  storage="BGM.ks"  target="*rinko"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;音声ストップ
[stopse buf=3]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
（何を話そうかな？）
[_tb_end_text]

[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="雑談"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="プレゼント"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="デートに誘う"  target="*deto_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="夕食に誘う"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="適当に切り上げる"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[call  storage="komyu_rinko.ks"  target="*koibito"  cond="f.koukando_rinko_koibito==1"  ]
[s  ]
*koibito

[glink  color="btn_05_yellow"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="えっちしたい"  target="*H"  x="990"  y="160"  _clickable_img=""  ]
[return  ]
*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_凛子
;苦手0-9 普通10-19 友好20-29 好き30〜

[if exp="f.koukando_rinko >= 0 && f.koukando_rinko <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_rinko >= 10 && f.koukando_rinko <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_rinko >= 20 && f.koukando_rinko <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_rinko >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_3yuukou"]

[endif]

[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_rinko.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[jump  storage="komyu_purezento.ks"  target="*purezento_rinko"  ]
*deto_top

[jump  storage="komyu_rinko.ks"  target="*deto_sasoenai1"  cond="f.deto_rinko==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto_sasoenai2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;状態別デートの約束(凛子)

[if exp="f.koukando_rinko_koibito == 1"]
[jump target="*deto_koibito_seikou"]

[elsif exp="f.koukando_rinko < 10"]
[jump target="*deto_nigate_seikou"]

[elsif exp="f.koukando_rinko < 20"]
[jump target="*deto_hutuu_seikou"]

[elsif exp="f.koukando_rinko < 30"]
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

;好感度別_凛子

[if exp="f.koukando_rinko < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_rinko < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_rinko < 30"]
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
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
凛子は控えめに微笑みながら話題をふってくれた。[r]まだどこか距離は感じるものの、こちらに興味を持とうとしてくれているのが伝わってくる。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
凛子は微笑みながら自然と話題をふってくれた。[r]その視線や仕草には、どこか以前よりも柔らかさが感じられる。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
凛子は柔らかな笑みを浮かべながら話題をふってくれた。[r]まっすぐこちらを見つめていて、仕草にも親しみを感じることができた。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
凛子は微笑みながら楽しそうに話題をふってくれた。[r]その言葉のひとつひとつには、こちらへの優しさがにじんでいて自然と胸があたたかくなった。[p]
ほんの少しだけ心の距離が近づいた気がする。[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「綺麗ね。ありがとう…こんなに素敵なもの、いただいちゃっていいの？」[p]
凛子「でも、値段も高かったでしょう…？　なんだか申し訳ないな…」[p]
凛子「もちろん気持ちは嬉しいよ。大切にするからね」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「いい香り…あ、コーヒー豆…！　[r]しかも、私の好きな豆の種類ね。すごい、そこまで調べてくれたのね」[p]
凛子「ありがとう。あとで美味しくいただくね」[p]
凛子「ふふ、[舜]くんのおかげでこのコーヒー豆がもっと好きになっちゃった」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「ありがとう。[r]これ、[舜]くんが好きなゲームなの？　へぇ、私はゲームに詳しくないから…」[p]
凛子「でも[舜]くんの好きなものを知れて嬉しいよ。ありがとう」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「素敵…！　綺麗な花束ね。え、これを私に…？」[p]
凛子「ふふ、嬉しい。[r]男の人から花束を貰うことなんてないから…なんだかお姫様にでもなった気分」[p]
凛子「あ、やだ。お姫様だなんて。図々しいかな…ふふ、つい浮かれてしまって」[p]
凛子「ありがとう。大切に飾らせてもらうわね」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「ありがとう、このコスメはちょっと若い子用のものかも…[r]あ、でもせっかくだから使ってみようかな」[p]
凛子「案外、似合うかもしれないし…[r]自分じゃ選ばないものと出会えるのは、プレゼントの良さだし素敵なことよね」[p]
凛子「試してみるね？　[舜]くん、ありがとう」[p]
(まずまず喜んでくれたようだ)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]凛子「わぁ、美味しそう…！　仕事中に小腹が空いちゃうことも多いから、ありがたいな」[p]
凛子「でも甘くて良い匂いで…一気に全部食べちゃいそう」[p]
[舜]「え？　いいじゃないですか。独り占めしてください」[p]
凛子「だめよ。だって…大人は太っちゃったら、なかなか痩せないんだからね？」[p]
凛子「ムチムチになったら、責任取ってもらっちゃおっかな…？　[r]ふふ、冗談よ。ありがとうね」[p]
（すごく喜んでくれたようだ）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*deto_nigate_seikou

[tb_start_text mode=1 ]
凛子「デート、かぁ…そうね[r]お店に来てくれたら、お茶くらいは出せるけど…それでもいいかな？」[p]
[舜]「もちろん！」[p]
凛子「お客さんの予約がない時に遊びに来てね」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凛子とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_hutuu_seikou

[tb_start_text mode=1 ]
凛子「ふふっ、私を誘ってくれるの？　ありがとう」[p]
凛子「でも予約がいっぱいで、外に出る時間がないから[r]お店に来てくれたら、ゆっくりお話できるよ」[p]
[舜]（やったぜ！）[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凛子とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_yuukou_seikou

[tb_start_text mode=1 ]
凛子「デート？　ふふ、とっても素敵なお誘いなんだけど」[p]
凛子「しばらくは忙しくて難しそうなの。その代わりお店に来るのはどう？[r]美味しいお菓子とお茶でおもてなしできるよ」[p]
[舜]（やったぜ！）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凛子とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_suki_seikou

[tb_start_text mode=1 ]
凛子「えっ…嬉しい…[舜]くんと出かけたら楽しいだろうな」[p]
凛子「でも仕事があるから出かけるのは難しくて…あの、もしよかったら──」[p]
凛子「お店に、来ない？　２人きりでゆっくり話せるよ？」[p]
[舜]「もちろん行きます！」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凛子とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_koibito_seikou

[tb_start_text mode=1 ]
凛子「もちろん…！　ふふ、デートだなんて楽しみ」[p]
凛子「[舜]くんのおかげで、毎日ときめいていてお肌も調子がいいみたい」[p]
凛子「どこに行こうか、一緒に考えなくちゃね」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凛子とデートの約束をした[resetfont][p]
（次の休日か、忘れないようにしないとな）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(0-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="0"  ]
[tb_start_tyrano_code]
;恋人状態(食事)
[if exp="f.koukando_rinko_koibito == 1 && f.syokuji_ran == 0"]
[jump target="*syokuji_koibito_sippai"]
[endif]

[if exp="f.koukando_rinko_koibito == 1"]
[jump target="*syokuji_koibito_seikou"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
凛子「そうね…それも楽しいかも」[p]
凛子「でもお店があるから、うちで簡単な食事でもしよっか」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
凛子「ごめんなさい…ちょっと食事には行けないかな…また明日ね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
凛子「そうね…それも楽しいかも」[p]
凛子「ふふっ…じゃあ、うちで簡単な食事でもどう？お店もあるし…ちょっとだけなら、ね」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
凛子「ごめんなさい、やらなくちゃいけないことがあって」[p]
凛子「お疲れ様、気をつけて帰ってね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
凛子「ふふ、嬉しいお誘いありがと。」[p]
凛子「じゃあ、よかったらうちで軽く食べていかない？お店もあるし、気を使わなくていいから」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
凛子「行きたいけど…用事があるの。また誘って？」[p]
凛子「その時は、私がご馳走するからね」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
凛子「え、夕飯？　ふふ、嬉しい…男の子にご飯に誘ってもらえるなんて」[p]
凛子「うふふ、よかったら、うちで軽く食べていかない？[r]お店もあるし…二人きりで、ゆっくり話せるから」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
凛子「ごめんなさい…ちょっと忙しくて。でも誘ってくれて嬉しかった」[p]
凛子「もしよかったら、また誘って？　その時は絶対に行くから…」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_koibito_seikou

[tb_start_text mode=1 ]
凛子「もちろん。あなたと一緒なら、どこでも楽しいよ」[p]
凛子「ふふ、浮かれすぎかな？　嬉しくて…」[p]
凛子「ねぇ、今日はうちで食べない？あなたのために手料理、作ってあげたいな」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_koibito_sippai

[tb_start_text mode=1 ]
凛子「残念…用事があって駄目なの。[r]代わりに、今度ウチにご飯を食べに来るのはどう？」[p]
凛子「[舜]くんの好きなもの、なんでも作って待ってるから」[p]
凛子「いっそ、泊まっていってくれてもいい…からね？」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ無理か）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*deto_sasoenai1

[tb_start_text mode=1 ]
凛子「お店で待ってるね？ お仕事の話抜きで、ゆっくり話せるといいね」[p]
[_tb_end_text]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*deto_sasoenai2

[tb_start_text mode=1 ]
(そういえば、その日は予定があったはずだ。誘うのはまた今度にしておこう）[p]
[_tb_end_text]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*H

[jump  storage="komyu_H.ks"  target="*rinko"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（一度に渡したら、なんか俺が必死みたいだしな…）[p]
[_tb_end_text]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
