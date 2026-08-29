]
[_tb_system_call storage=system/_EV_nagi.ks]

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

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_date_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（夢見てるみたいだ……窓から眺めていた相手と、こうやって並んで歩いてるなんて）[p]
ちらりと隣を盗み見ると、凪がきょろきょろと周りを見回しながら歩いている。[r]緊張とほんの少しの居心地の悪さを感じながら街の中を進んでいく。[p]
[舜]「別に目的もなくフラフラ歩くだけでいいのか？」[p]
#凪
凪「うん。普段もこんなふうに買い物してるの。いつもは一人だけどね」[p]
――隼人は？そう聞きかけて、飲み込んだ。[p]
[舜]（でもなぁ…１５年ぶりくらいだろ。何を話せばいいんだ…）[p]
ふと、凪が指をさした。[p]
#凪
凪「[舜]ちゃん、見て！　あのお店まだあるよ。文房具屋さん、覚えてる？」[p]
[舜]「ああ。香り付きの消しゴム、売ってたっけな」[p]
#凪
凪「うん。ひとつだけ選んでいいよって言われたのに、選べなくて……」[p]
[舜]「消しゴム並べてフリーズしてたろ。店のおっちゃん、めちゃくちゃ心配してた」[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif" wait="false"]凪「すごいっ、よく覚えてるね…！」[p]
凪が驚いたように笑う。その顔は、あの頃と少しも変わらない。[p]
[舜]（なんだ…話してなかった時間なんてあっという間に飛び越せるじゃないか）[p]
街の中を歩きながら、あちこち指さし幼い頃の思い出話をした。[r]凪が迷子になって迎えに行ったこと。当時人気だったアニメの下敷きを買いに来たこと…[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif" wait="false"]凪「すごいね、[舜]ちゃんなんでも覚えてる」[p]
街の中に残る古い商店を見ながら、記憶が一気に溢れて止まらない。[r]なぜ今まで忘れていたんだろうと不思議になるほどだった。[p]
[舜]（あのまま、ずっと凪と疎遠にならずにいたら…何か変わってたんだろうか）[p]
胸がチクリと痛む。そんな俺の気持ちも知らずに、凪は無邪気に微笑んでいる。[p]
#凪
凪「ねえ、ここ覚えてる？」[p]
指差した先には、レトロなゲーム機が並んだショップ。[p]
#凪
凪「実はここ、一緒に来たかったんだ。小さい頃、うちでいっぱいゲームしたよね？」[p]
[舜]「あぁ、覚えてる…！　めちゃくちゃムキになってバトルしたっけ」[p]
#凪
凪「うちのゲーム機、まだ現役だよ。最近遊んであげてないけど……」[p]
[舜]「お、いいね」[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif" wait="false"]凪「懐かしのゲーム、買って帰ろ？　[r]それで…うちでゲーム大会なんてどうですか？　お兄さん」[p]
まっすぐな視線に、思わずドキリとする。でも、断る理由なんてひとつもなかった。[p]
[舜]「おう」[p]
できるだけ明るく、自然に返事をした。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
久しぶりに訪れた幼馴染の家。[p]
正直、少しばかり色っぽい空気になるのかと身構えていたけれど──[p]
[_tb_end_text]

[call  storage="character.ks"  target="*nagi_heyagi"  ]
[tb_start_text mode=1 ]
#凪
凪「さぁ、準備万端だよ。どのゲームからやろっか？」[p]
軽やかな声とともにリビングへ戻ってきた凪は、部屋着に着替えていた。[p]
オーバーサイズのTシャツに短いスカートというラフな格好。[r]肩の力が抜けたようなその姿に、どこか安心感がある。[p]
[舜]「ぉお……外と雰囲気違うな」[p]
#凪
凪「家だと楽な格好の方が好きなの。[r]おしゃれなんて分からないし、ほんとはしたくないけど、[r]会社に行くときだけしかたなくしてる感じかな」[p]
照れ笑いを浮かべながら、床にごろんと座る凪。[p]
[舜]（そうか…普段から無理してるのかも）[p]
彼女の飾らない言葉が、静かに胸にしみこんでいく。[p]
思っていたような「色っぽさ」はなかったが、[r]それ以上に大切な何かがこの部屋にはある気がした。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="event/nagi1.png"  ]
[tb_cg  id="cg_nagi1"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
#凪
凪「え、嘘！　[舜]ちゃん強くない！？　なんでぇ」[p]
[舜]「さんざんやり込んだから、手が忘れてないんだよ」[p]
画面越しに繰り広げられる対戦。[r]懐かしさと楽しさが交ざって、部屋の中が笑い声で満たされていく。[p]
やがて、ゲームの手が止まった瞬間、ふと凪が呟いた。[p]
#凪
凪「覚えてる？　昔、私が泣きながら“お母さんの誕生日プレゼント買いたい”って言ったの」[p]
[舜]「雑貨屋まで一緒に行って、タオル選んだっけ」[p]
#凪
凪「うん。でもお金が足りなくて、私パニックになって……泣いちゃって」[p]
[舜]「それで、俺が小遣い出して──“内緒だよ、凪が買ったんだから”って」[p]
#凪
凪「……本当にそう言ったんだよ。あれ、私、ずっと覚えてる」[p]
キラキラした目を向けられ、なんだか気恥ずかしいような不思議な気持ちになる。[p]
過去の自分のほうが今よりもずっと大人だったのかもしれない。[r]けれど幼い頃の自分の姿にうまくピントが合わず、首をかしげるしかできなかった。[p]
#凪
凪「あのタオル、お母さんまだ使ってるの。病院にも持って行ってるんだよ」[p]
[舜]「そうか……。お母さん、ずっと体調よくないのか？」[p]
#凪
凪「うん。でも、そんなに深刻な状態じゃないよ。[r]ただ……元気なうちに安心させたいんだ。だから、結婚したいって思うの」[p]
[舜]（そうか……結婚を見据えている理由がなんとなくわかった気がする）[p]
#凪
凪「さっ、もう１回やろ。次は勝つ！」[p]
[舜]「受けて立つ」[p]
楽しそうにコントローラーを持つ凪を盗み見る。[p]
見た目はちゃんと大人の女性なのに、会話も行動も昔とそんなに変わっていない。[r]なんだかそれがとても不思議だった。[p]
[舜]（隼人には、ゲーム好きだって隠してんのかな）[p]
でも今はそんなことを聞くのは野暮だろう。[p]
俺は画面へ体を向け、コントローラーを握り直した。[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="sf.puro_nagi_heyagi=1"  name="puro_nagi_heyagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_nagi1=1"  name="EV_nagi1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  