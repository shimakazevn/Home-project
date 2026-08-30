[_tb_system_call storage=system/_komyu_H.ks]

[bg  time="0"  method="crossfade"  storage="back_byouin.png"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*nagi

[tb_start_text mode=4 ]
（どこに誘おうか）
[_tb_end_text]

[tb_start_tyrano_code]
;狂愛、肉便器状態でジャンプ
[if exp="f.komyu_insyou_jyunsui_nagi <= -1 "]
[jump target="*nagi_kyouai"]
[endif]

[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="凪の部屋でしたい"  _clickable_img=""  target="*nagi_H1_jyunai"  ]
[glink  color="btn_05_blue"  storage="komyu_nagi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="戻る"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;病院でしたい（凪の部屋でしている事）
[if exp="f.nagi_H1_jyunai == 1 "]
[call target="*nagi_H2"]
[endif]

;お風呂で遊びたい（ローションを所持している事）
[if exp="f.itemEV_oil == 1 "]
[call target="*nagi_H3"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*nagi_H2

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="病院でしたい"  _clickable_img=""  target="*nagi_H2_jyunai"  ]
[return  ]
*nagi_H3

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="ローションで遊びたい"  _clickable_img=""  target="*nagi_H3_jyunai"  ]
[return  ]
*nagi_H1_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif" wait="false"]凪「もちろん。ゆっくり楽しもうね♡　早く帰りたくなっちゃうよ…」[p]
凪「楽しみで、このあとずっとそわそわしちゃう…変に思われたらどうしよう」[p]
凪「…イチャイチャしたあとは、そのまま泊まっていく？　[r]なんて、[舜]ちゃんは忙しいか」[p]
[_tb_end_text]

[jump  storage="EV_nagi_J.ks"  target="*EV1_top"  ]
[s  ]
*nagi_H2_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif" wait="false"]凪「えっ…それは…いいのかな？　誰かに見つかっちゃったらどうしよう」[p]
[舜]「大丈夫だよ。この時間はバックルームに人も少ないし、個室トイレなら誰も入ってこないよ」[p]
[舜]「少しイチャイチャするくらいなら問題ないって」[p]
凪「でも…ドキドキしちゃう。短い時間なら…平気かな？」[p]
凪「声、頑張ってこらえるから…あの…あんまり激しくしないでね？」[p]
[舜]（それは凪次第かな）[p]
[_tb_end_text]

[jump  storage="EV_nagi_J.ks"  target="*EV3_top"  ]
[s  ]
*nagi_H3_jyunai

[tb_start_text mode=1 ]
[舜]「後で会いに行くから、仕事が終わったら連絡してよ」[p]
凪「うんっ、また会えると思うと顔がニヤけちゃう。また連絡するね」[p]
[_tb_end_text]

[jump  storage="EV_nagi_J.ks"  target="*EV2_top"  ]
[s  ]
*nagi_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="凪の部屋でしたい"  _clickable_img=""  target="*nagi_H1_kyouai_talk"  ]
[glink  color="btn_05_blue"  storage="komyu_nagi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="戻る"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;ベランダでしたい（凪の部屋でしている事）
[if exp="f.nagi_H1_kyouai == 1 "]
[call target="*nagi_H2_kyouai"]
[endif]

;俺の部屋でしたい（SMグッズを所持している事）
[if exp="f.itemEV_SM == 1 "]
[call target="*nagi_H3_kyouai"]
[endif]


[_tb_end_tyrano_code]

[s  ]
*nagi_H2_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="ベランダでしたい"  _clickable_img=""  target="*nagi_H2_kyouai_talk"  ]
[return  ]
*nagi_H3_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="俺の部屋でしたい"  _clickable_img=""  target="*nagi_H3_kyouai_talk"  ]
[s  ]
[return  ]
*nagi_H1_kyouai_talk

[tb_start_text mode=1 ]
凪「うん…今日は[舜]ちゃんにどんなことされちゃうんだろ…ドキドキしてる…」[p]
凪「私が知らなかった気持ちいいこと、教えてくれるんでしょ…♡」[p]
凪「楽しみ…もうムズムズしちゃってる♡　[r][舜]ちゃんが満足するまでめちゃくちゃにしてね…」[p]
[_tb_end_text]

[jump  storage="EV_nagi_R.ks"  target="*EV1_top"  ]
[s  ]
*nagi_H2_kyouai_talk

[tb_start_text mode=1 ]
[舜]「夜に部屋に行くから」[p]
凪「あ…うん…これって、期待してもいいやつだよね？」[p]
凪「楽しみで身体が熱くなって来ちゃった。なるべく早く帰るから……楽しみにしてるね」[p]
[_tb_end_text]

[jump  storage="EV_nagi_R.ks"  target="*EV2_top"  ]
[s  ]
*nagi_H3_kyouai_talk

[tb_start_text mode=1 ]
凪「[舜]ちゃんの部屋で、めちゃくちゃにされちゃうんだ…」[p]
凪「[舜]ちゃんがそうしてほしいって言うなら、なんでもするからね♡」[p]
凪「もう我慢できないみたい…[r]今すぐ、[舜]ちゃんの家にに行きたいな…[舜]ちゃんを気持ちよくするよ」[p]
[_tb_end_text]

[jump  storage="EV_nagi_R.ks"  target="*EV3_top"  ]
[s  ]
*rinko

[tb_start_text mode=4 ]
（どこに誘おうか）
[_tb_end_text]

[tb_start_tyrano_code]
;狂愛、肉便器状態でジャンプ
[if exp="f.komyu_insyou_jyunsui_rinko<= -1 "]
[jump target="*rinko_kyouai"]
[endif]

[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="マッサージ店でしたい"  _clickable_img=""  target="*rinko_H1_jyunai"  ]
[glink  color="btn_05_blue"  storage="komyu_rinko.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="戻る"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;シャワールームでしたい（マッサージ店でしている事）
[if exp="f.rinko_H1_jyunai == 1 "]
[call target="*rinko_H2"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*rinko_H2

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="シャワールームでしたい"  _clickable_img=""  target="*rinko_H2_jyunai"  ]
[return  ]
*rinko_H1_jyunai

[tb_start_text mode=1 ]
[舜]「閉店後にまた来ますよ」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"]凛子「ありがとう、待ってるね。…ふふ、また[舜]くんと会えると思うと、お仕事頑張れそう」[p]
[_tb_end_text]

[jump  storage="EV_rinko_J.ks"  target="*EV1_top"  ]
[s  ]
*rinko_H2_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif" wait="false"]凛子「あ…[舜]くん、また変なこと考えてる？　実は…私も同じ…ふふ、楽しみね」[p]
凛子「でも、もちろんお店が終わった後よ？」[p]
[_tb_end_text]

[jump  storage="EV_rinko_J.ks"  target="*EV2_top"  ]
[s  ]
*rinko_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="マッサージ店でしたい"  _clickable_img=""  target="*rinko_H1_kyouai_talk"  ]
[glink  color="btn_05_blue"  storage="komyu_rinko.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="戻る"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;ローションで遊びたい（ローションを所持していること）
[if exp="f.itemEV_oil == 1 "]
[call target="*rinko_H2_kyouai"]
[endif]

;3人でしたい（凛子と蕾が「狂愛」もしくは「肉便器」状態）
[if exp="f.komyu_insyou_jyunsui_rinko <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call target="*rinko_H3_kyouai"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*rinko_H2_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="ローションで遊びたい"  _clickable_img=""  target="*rinko_H2_kyouai_talk"  ]
[return  ]
*rinko_H3_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="3人でしたい"  _clickable_img=""  target="*rinko_H3_kyouai_talk"  ]
[return  ]
*rinko_H1_kyouai_talk

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif" wait="false"]凛子「[舜]くん…もしかして興奮してるの？　抑えきれないって顔してるから…」[p]
凛子「ふふ…実は私もドキドキしてる。…お仕事が終わってから、ゆっくり遊ぼうね」[p]
[_tb_end_text]

[jump  storage="EV_rinko_R.ks"  target="*EV2_top"  ]
[s  ]
*rinko_H2_kyouai_talk

[tb_start_text mode=1 ]
[舜]「閉店後にまた来ますよ」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif" wait="false"]凛子「ええ、分かったわ。…今日はちょっと予約が多くてバタバタしちゃうかも…」[p]
[_tb_end_text]

[jump  storage="EV_rinko_R.ks"  target="*EV1_top"  ]
[s  ]
*rinko_H3_kyouai_talk

[tb_start_text mode=1 ]
凛子「……どうしたの？ 何か伝えたいことがあるのかな…。いつもと様子が違うもの」[p]
舜「はい。俺たちにとってとても大事な話です。閉店後に、また来ます」[p]
凛子「……そう、分かったわ」[p]
[_tb_end_text]

[jump  storage="EV_3P.ks"  target="*top"  ]
[s  ]
*tubomi

[tb_start_text mode=4 ]
（どこに誘おうか）
[_tb_end_text]

[tb_start_tyrano_code]
;狂愛、肉便器状態でジャンプ
[if exp="f.komyu_insyou_jyunsui_tubomi<= -1 "]
[jump target="*tubomi_kyouai"]
[endif]

[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="リフレでしたい"  _clickable_img=""  target="*tubomi_H1_jyunai"  ]
[glink  color="btn_05_blue"  storage="komyu_tubomi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="戻る"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;ローションで遊びたい（ローションを所持していること）
[if exp="f.itemEV_oil == 1 "]
[call target="*tubomi_H2"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*tubomi_H2

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="ローションで遊びたい"  _clickable_img=""  target="*tubomi_H2_jyunai"  ]
[return  ]
*tubomi_H1_jyunai

[tb_start_text mode=1 ]
[舜]「今日のシフト最後までだろ？また連絡するよ」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]蕾「…うん、わかった。終わったらすぐに連絡するから！」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_J.ks"  target="*EV1_top"  ]
[s  ]
*tubomi_H2_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]蕾「部屋に連れ込もうとしてるの？　何するつもり…？　あ、言わなくていいからね？」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]蕾「言われちゃうと…意識してこのあと変な感じになっちゃうでしょ…」[p]
蕾「行ってからのお楽しみでいいから…あ、お楽しみって…恥ずかしいこと言っちゃった」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_J.ks"  target="*EV2_top"  ]
[s  ]
*tubomi_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="リフレでしたい"  _clickable_img=""  target="*tubomi_H1_kyouai_talk"  ]
[glink  color="btn_05_blue"  storage="komyu_tubomi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="戻る"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;自分の部屋でしたい（リフレでしている事）
[if exp="f.tubomi_H1_kyouai == 1 "]
[call target="*tubomi_H2_kyouai"]
[endif]

;3人でしたい（凛子と蕾が「狂愛」もしくは「肉便器」状態）
[if exp="f.komyu_insyou_jyunsui_rinko <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call target="*tubomi_H3_kyouai"]
[endif]

[_tb_end_tyrano_code]

[s  ]
*tubomi_H2_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="自分の部屋でしたい"  _clickable_img=""  target="*tubomi_H2_kyouai_talk"  ]
[return  ]
*tubomi_H3_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="3人でしたい"  _clickable_img=""  target="*tubomi_H3_kyouai_talk"  ]
[return  ]
*tubomi_H1_kyouai_talk

[tb_start_text mode=1 ]
[舜]「今日のシフト最後までだろ？また連絡するよ」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]蕾「ん…じゃあ…お店が終わったあとにね…」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_R.ks"  target="*EV1_top"  ]
[s  ]
*tubomi_H2_kyouai_talk

[tb_start_text mode=1 ]
[舜]「今日はどうする？仕事が終わったら家においでよ」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]蕾「えっと…じゃあ、お邪魔しちゃおうかな…♡ そこまでお願いされちゃうと断れないわよね」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_R.ks"  target="*EV2_top"  ]
[s  ]
*tubomi_H3_kyouai_talk

[tb_start_text mode=1 ]
[舜]「そうだな…とりあえず凛子さんに会いに行こうか」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]蕾「もしかして、私達のことママに伝えるつもり…？」[p]
[_tb_end_text]

[jump  storage="EV_3P.ks"  target="*top"  ]
[s  ]
