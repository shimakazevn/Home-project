[_tb_system_call storage=system/_EV_nagi2.ks]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom.png"  ]
[call  storage="character.ks"  target="*nagi_heyagi"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_date2_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
いつものように凪とゲームを楽しんでいる時だった──[p]
#凪
凪「ねぇ[舜]ちゃん、今日は夏らしいことしない？」[p]
[舜]「え、夏？　いやぁ…熱い中出かけるのはなぁ」[p]
ずっと引きこもりっきりだった体で、いきなり炎天下の中を歩くのはハードルが高すぎる。[p]
彼氏なら最悪の答えだろうが、今の俺たちは幼馴染だ。遠慮なく嫌な顔をした。[p]
#凪
凪「ふふ、大丈夫だよ。それは私も同じだから。歩き回らないよ」[p]
#凪
凪「子供の頃、団地の子供会で海に行ったこと覚えてる？」[p]
[舜]「あ～、あったような…」[p]
#凪
凪「ウチ、両親とも働いてたから。忙しくてかまってもらえなくて…」[p]
#凪
凪「夏休みに出かけた思い出なんてそれくらいだったから、すごく嬉しかったし楽しかった」[p]
#凪
凪「もしよければまた行かない？　夏の思い出に」[p]
[舜]「え、海に？　混雑するぞ？」[p]
#凪
凪「大丈夫だよ、私に考えがあるから」[p]
自信満々な凪の様子に、うなずくしかない。[p]
でも凪がそう言うのならきっと本当にアイディアがあるのだろう。[r]一体どうするつもりなのかと俺は窓の外の入道雲を見ながら考えていた。[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="1000"  ]
[playbgm  volume="50"  time="1500"  loop="true"  storage="umi.mp3"  fadein="true"  ]
[wait  time="1500"  ]
[call  storage="uireset.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="sora.jpg"  ]
[mask_off  time="1600"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
数時間後──[p]
俺たちは月夜に照らされた浜辺に立っていた。[p]
#凪
凪「ほら！　夜は誰も人がいないでしょう？」[p]
凪は嬉しそうに俺を見上げる。[r]花火をしてる若者がいるかと思ったが、浜にも海にも人の気配はなかった。[p]
#凪
凪「昼間だと人の目も気になるし、恥ずかしいから。夜が1番だよね」[p]
#凪
凪「あと、暑くない！」[p]
凪は上着を脱ぎ、波打ち際へ走っていく。[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="2000"  method="crossfade"  storage="event/nagi2.png"  ]
[tb_cg  id="cg_nagi2"  ]
[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
[舜]「夜の海って怖くないの？」[p]
#凪
凪「[舜]ちゃん怖がりなんだ。夜の病院もなかなかだよ？」[p]
からかうような凪の言葉に苦笑する。[p]
[舜]「そういう怖いじゃないって。何かあったら大変だろってこと」[p]
#凪
凪「大丈夫だよ…[舜]ちゃんが見ていてくれるんでしょ？　目離さないでくれるもん」[p]
甘える様な声にドキリとする。[p]
月の光を浴びた凪は普段とは全然違って見えた。[r]艶っぽくて、彼女はもう大人の女なのだと改めて実感させられる。[p]
[舜]「そりゃ見てるけど…」[p]
#凪
凪「…ありがとう、[舜]ちゃん」[p]
その時、海水がばしゃりとかかる。[r]俺をずぶ濡れにした張本人は、子供のような顔で笑っていた。[p]
[舜]「おい！」[p]
#凪
凪「だってぼんやりしてるから…！」[p]
言いながらも容赦なく水をかけてくる。[r]俺も必死に抵抗し、２人共あっという間にずぶ濡れだ。[p]
#凪
凪「ふふ、あははっ…も～、びしょ濡れだよ」[p]
#凪
凪「でも楽しい…こんなに笑ったの久しぶり」[p]
海の中で、凪がくるりと一回りする。その神秘的な姿に、また見惚れてしまう。[p]
#凪
凪「付き合ってくれてありがとう。[舜]ちゃんがいてくれなかったら海に来られなかった」[p]
[舜]「なんで？　デートとかは？　しないの？」[p]
ドギマギしつつ尋ねると、凪はほんの少しだけ気まずそうな表情になる。[p]
#凪
凪「隼人とは…こういうふうにリラックスして喋れないから」[p]
[舜]「そうなのか？」[p]
#凪
凪「私がいいトコ見せようとしすぎてるのかもしれないけど…」[p]
#凪
凪「あんまり子供っぽいところ見せたり、だらしないと嫌な顔をされてる気がして」[p]
女慣れしていそうな隼人の顔を思い出す。[r]自分の理想を凪に重ね合わせているのかもしれない。[p]
#凪
凪「私がだめだからいけないんだけどね…」[p]
#凪
凪「だからこうやって笑えるのは、[舜]ちゃんとだけ」[p]
嬉しそうにする幼馴染の顔を見ながら、俺も深くうなずいていた。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_nagi2=1"  name="EV_nagi2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
