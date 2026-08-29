]
[_tb_system_call storage=system/_EV_rinko3.ks]

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
[bg  time="0"  method="crossfade"  storage="back_massajiten3.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="rinko.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_date3_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
久しぶりの店休日。[r]うつぶせになった凛子さんを見下ろしながら、俺はぺこりと頭を下げた。[p]
緊張しながらオイルを両手に塗り、柔らかな肌に触れる。[r]ムチムチとした凛子さんの体は俺の手のひらを程よく押し返してくれた。[p]
#凛子
凛子「ん…気持ちいいよ、上手だね[舜]くん」[p]
今日までマッサージの仕方を学び、ようやく実践練習ができるのだ。[r]いいところを見せなくてはと思うと余計に肩に力が入ってしまう。[p]
#凛子
凛子「リラックスだよ、[舜]くん。緊張はお客さんに伝わっちゃうから」[p]
[舜]「はい…！」[p]
太ももを上に撫で上げた瞬間、凛子さんの体がびくりと反応する。[p]
#凛子
凛子「んっ…♡」[p]
[舜]（今の反応…めちゃくちゃエロかったぞ…）[p]
オイルで艶々と光った太ももとお尻が眩しい。[r]緊張がなくなっていくと同時に、徐々にいやらしい気持ちが膨らみ始めた。[p]
いけないと思いつつも、凛子さんの足にわざと固くなった下半身を押し付ける。[p]
[舜]「す、すいません…」[p]
#凛子
凛子「平気。　仕方ないよ、男の子だもん」[p]
[舜]「凛子さんの中に入りたいです」[p]
#凛子
凛子「えっ…？」[p]
凛子さんは驚きの声を上げ、体を起こした。[p]
[_tb_end_text]

[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[tb_start_text mode=1 ]
#凛子
凛子「もし良かったら、手でしてあげようか？」[p]
[舜]「…いえ。そうじゃなくて。ちゃんと、凛子さんと繋がりたいんです。セックスがしたい」[p]
その言葉に、凛子さんの表情がわずかに曇った。[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]凛子「それだけは…ダメ。ね？　間違いは起こせないでしょう？」[p]
[舜]「俺、責任は取ります。ちゃんと…本気なんです」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_02c.gif"]凛子「もう…そんなこと、簡単に言っちゃだめよ。[舜]くんはまだ若いんだから」[p]
凛子さんの声は優しいけれど、どこか切なげだった。[p]
#凛子
凛子「お願い、これ以上困らせないで。ね？　[r]この話は、もうおしまいにしましょう。もしものことがあったら…私、きっと受け止めきれない」[p]
彼女は悲しげに目を伏せ、その仕草が胸に痛いほど突き刺さった。[p]
（…俺を受け入れてくれてたんじゃなかったのか？　違ったのか？　[r]ただ俺が舞い上がっていただけ？）[p]
心の中で渦巻いていた悲しみは、次第に怒りへと形を変えていく。[r]気づけば、言葉が先に口をついていた。[p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[舜]「……他の客とは、してるんじゃないんですか？」[p]
#凛子
凛子「……え？」[p]
[舜]「どうして俺だけが駄目なんですか！」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#凛子
凛子「……ちがう。ちがうのよ、[舜]くん……私、そんなつもりじゃ……」[p]
[舜]「少し、少し触れるだけですから。痛くしませんから……！」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凛子
凛子「い、いや…！やめて[舜]くん……！」[p]
[_tb_end_text]

[wait  time="800"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="binta.mp3"  fadein="false"  ]
[wait  time="1500"  ]
[bg  time="2000"  method="crossfade"  storage="event/rinko3.png"  ]
[tb_cg  id="cg_rinko3"  ]
[call  storage="BGM.ks"  target="*love_R"  ]
[tb_start_text mode=1 ]
視界が揺れた。鋭い音とともに、左の頬に熱が走る。[r]何が起こったのか一瞬わからず、思考が停止する。[p]
頬を叩かれた――凛子さんに。[p]
信じられない、というよりも、ただ呆然としていた。[r]彼女の手がまだ微かに震えているのが見える。[p]
目を大きく見開いた凛子さんは、言葉を探すように唇をわななかせていた。[p]
その瞳には怒りよりも恐れと悲しみが滲んでいて、今にも泣き出しそうだった。[p]
#凛子
凛子「…今日は、ここまでにしましょう。お疲れさま」[p]
[舜]「……」[p]
俺は言葉を返すことができなかった。何を言えばよかったのかも分からなかった。[p]
荷物をまとめる手が震えていた。[p]
頭の中は真っ白で、視線を合わせることもできず、逃げるようにして店を後にした。[p]
[_tb_end_text]

[stopbgm  time="500"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="back_room_yoru.png"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="love.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
混乱が落ち着くと同時に、凛子さんへの罪悪感が一気にあふれ出す。[r]思い出すのはあの泣き出しそうな顔ばかり──[p]
[舜](俺、ダサ…なんであんなこと言っちゃったんだ)[p]
彼女を傷つけたかもしれないと思うと、いてもたってもいられなくなる。[p]
[舜](謝らないと…でも今から押し掛けるわけにはいかないよな)[p]
少し考えたあと、凛子さんに電話をかけることにした。[r]数回のコール音のあと、伺うような凛子さんの声が聞こえる。[p]
#凛子
凛子「もしもし…」[p]
[舜]「あの、凛子さん…さっきはすみませんでした」[p]
[舜]「俺、凛子さんが好きなんです。だから焦っちゃって」[p]
#凛子
凛子「ううん、いいの。こちらこそ大人げなくてごめんね？」[p]
#凛子
凛子「バイト辞めるって言われたらどうしようかと思っちゃった」[p]
受話器越しに聞こえた凛子さんの声は、思っていたよりもずっと明るかった。[r]その穏やかな響きに、胸の奥がふっと軽くなるのを感じる。[p]
安心と共に、もう一度、きちんと「申し訳ありませんでした」と[r]頭を下げるように言葉を口にした。[p]
#凛子
凛子「ふふっ、だからもういいってば。[r]仲直り、ね？　…マッサージの練習は、また一からやり直しだね」[p]
冗談めかしたその言葉に、思わず小さく笑ってしまう。[p]
[舜]（やっぱり凛子さんは大人だな…俺はまだまだだ）[p]
そんな自分が少し情けなくて、[r]でも同時に――この人となら少しずつ変われるかもしれない。[r]そう思いながら、そっと電話を切った。[p]

[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;体験版/6月末まで
[if exp="f.taikenban == 1"]
[jump storage="a_taikenban.ks" target="*END_taikenban"]
[endif]
[_tb_end_tyrano_code]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_rinko3=1"  name="EV_rinko3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  