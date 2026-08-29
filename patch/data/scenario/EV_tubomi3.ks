]
[_tb_system_call storage=system/_EV_tubomi3.ks]

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

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[call  storage="character.ks"  target="*tubomi_meido_nigate"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_date3_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
蕾「さて、と。　今日はデートコースだっけ？」[p]
蕾の元へ通うのも、すっかり慣れてきてしまった。[r]その分代金がかかっているのが悲しいところなんだけど。[p]
[舜]「何したいんだアメリアちゃんは」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]蕾「ファミレス！」[p]
[舜]（お腹空いてるのか？　まぁいいか…）[p]

[_tb_end_text]

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="back_famiresu2.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  ]
[call  storage="character.ks"  target="*tubomi_hudangi"  ]
[tb_start_text mode=1 ]
ファミレスに入るとすぐにソファ席へ案内される。[p]
蕾はご機嫌で座り、すぐにメニュー表を俺に差し出してくれた。[p]
#蕾
蕾「空いててよかったぁ。長居しても迷惑じゃなさそう」[p]
[舜]（意外と、根は真面目なんだよな）[p]
[舜]「そんなにモリモリ食べる気なのか…？」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]蕾「そんなわけないでしょ？　モデルなんだから。私は～…サラダとドリンクにしよ」[p]
器用にタッチパネルを操作し、注文を終える。[r]すぐに筆記用具と紙をテーブルに出した。[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]蕾「オーディション用紙を書きたかったの。家だとママに見られちゃうし。[r]食べながらでいいから、待ってて」[p]
[舜]「それはいいけど…」[p]
#蕾
蕾「ん～…特技は…ダンスかな？　あとポージングとか。[r]趣味は何だろ？　友達と長電話かなぁ」[p]
[舜]（待て待て…オーディション用紙に書くには平凡すぎないか）[p]
[舜]「あのさ…俺はやたら履歴書だけは書いたからなんとなくわかるんだけど」[p]
[舜]「オーディション面接で会ってみたいって思わせなきゃだめなんじゃないか？」[p]
#蕾
蕾「あっ…言われてみれば…じゃあ特技はリラクゼーションマッサージとか？　[r]でもママの店で練習してるとかでもいいの？」[p]
[舜]「面白いんじゃない？　詳しく聞きたくなるだろうし」[p]
#蕾
蕾「確かにそうかも。じゃあ趣味も別のほうがいいのかな」[p]
[舜]「だな、自分の売りが何かを伝えられなきゃ採用はもらえない」[p]
#蕾
蕾「へぇ…そういえばお兄ちゃんもそんなこと言ってたかも。[r]私はお兄ちゃんみたいに要領よくはできないんだけどさ」[p]
[舜]「正直でいいんだよ。嘘ついたりいい顔しても、バレた時の反動はデカいし」[p]
[舜]「自分そのままでいい。探せば、自分を求めてくれる場所はあるんだから」[p]
まさに自分に伝えたい言葉だった。[p]
世界を恨んで部屋の中に引きこもってるより、外に出たほうが幾分か気が楽だ。[r]蕾は「そっか、そうだよね」と嬉しそうに何度もうなずいた。[p]
#蕾
蕾「もうちょっと考えてみる…」[p]
蕾は唇を尖らせ、真剣に自己ＰＲを考えているようだ。[r]周りなんか見えていないようなその無防備な顔に見とれてしまう。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[bg  time="2500"  method="fadeInUp"  storage="event/tubomi3.png"  ]
[tb_cg  id="cg_tubomi3"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#蕾
蕾「ねぇ…」[p]
[舜]「うわっ、な、なんだよ」[p]
こちらを見た蕾とばっちり目が合い、慌てて視線をそらす。[r]どうせ「見ないで」とか言われるのだろうと覚悟した。しかし…[p]
#蕾
蕾「なんでそこまで私のために考えてくれるの？」[p]
嘘やごまかしがきかない瞳に、俺も背筋を伸ばした。[p]
[舜]「頑張ってる奴が目の前にいたら応援したくなるだろ」[p]
#蕾
蕾「へぇ…そっか。そうなんだ」[p]
蕾はほんの少しだけ口元を緩め、再びオーディション用紙に向き合う。[p]
そして──[p]
#蕾
蕾「できた！　あんたのおかげで、いいオーディション用紙になったと思う」[p]
無邪気な笑顔を見せてくれる。[r]蕾はそっとオーディション用紙を鞄にしまい、ストローに口をつけた。[p]
#蕾
蕾「ファッションショーにも雑誌にもバリバリ出るから。[r]知り合いだって自慢してもいいよ？」[p]
[舜]「おう、楽しみにしてる」[p]
#蕾
蕾「あ、本気にしてないでしょ～？　現実になるんだから！」[p]
蕾の笑顔を眺めながら、不覚にも可愛いと思ってしまった。[p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;体験版/6月末まで
[if exp="f.taikenban == 1"]
[jump storage="a_taikenban.ks" target="*END_taikenban"]
[endif]
[_tb_end_tyrano_code]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_tubomi3=1"  name="EV_tubomi3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  