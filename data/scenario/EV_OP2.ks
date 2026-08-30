[_tb_system_call storage=system/_EV_OP2.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*save

[cm  ]
[jump  storage="room_yoru_save.ks"  target="*op"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
*top

[wait  time="2000"  ]
[tb_show_message_window  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="back_room0.png"  ]
[tb_start_text mode=1 ]
[舜]「まずは、凪の行動パターンを把握する必要があるな──」[p]
凪は平日の朝、決まった時間になると、いつもきっちりと家を出ていく。[r]その姿には、まるで精密に組まれた時計のような規則正しさがあった。[p]
彼女が団地の階段を下りてくるのは、だいたい午前7時15分から30分のあいだ。[r]少し寝坊した日でも、大きく時間がずれることはない。[p]
足取りは軽く、顔にはどこか凛とした雰囲気が漂っていた。[p]
団地の中庭では、犬の散歩中の住人や、新聞を取りに来た老人たちが彼女に軽く挨拶を送る。[r]凪はそれに柔らかく頷き返し、そのまま上浪駅方面へと姿を消すのが日課だった。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_dantimae_hiru.png"  ]
[tb_start_text mode=1 ]
以前、近所の主婦が立ち話をしていたとき、[r]ふとした拍子にその行き先について耳にしたことがある。[p]
「凪さん、上浪総合病院に勤めてるのよ。たしか看護助手だったかしらね」[r]そう言っていた。[p]
その会話の内容は曖昧だったが、複数の住人が同じことを口にしていたことから、信憑性は高い。[p]
規則的な生活、淡々とした出勤。[r]それらが、彼女の裏にある事情を、ますます謎めいたものにしていた。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_start_text mode=1 ]
[舜]「はぁ、くそ……なんでこんなに人が多いんだよ……」[p]
時計の針はすでに午前8時を回っていた。[r]通りは、忙しなく働く社会人たちでごった返している。[p]
人混みを避けるように道を一本外れ、人気の少ない通りへと足を向けた。[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="back_massajiten.png"  ]
[tb_start_text mode=1 ]
[舜]（こんなところに……マッサージ店なんてあったっけ？　[r]この辺り、ほんとに店の入れ替わりが激しいな）[p]
ふと目に留まった店のガラスには、「店員募集」と書かれた紙が貼られていた。[p]
[舜]（こぢんまりした店だな。もしかして店主一人でやってるのか？[r]おばあちゃんとかだったら、気も楽なんだけど）[p]
？？？「ん？　あれ？　バイト探してる人？」[p]
[舜]「あ、いや、俺は──」[p]
いきなり声をかけられ、目を白黒させ振り返ると──[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="500"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
そこに立っていたのは──間違いない。凪と一緒にいた、あの男だった。[p]
どうして、コイツは何者なのかと一気に『？』が脳内に弾ける。[p]
？？？「俺はここで働いてるわけじゃないんだけど。俺の母さんがオーナーで店主なんだ」[p]
その口調は軽く、妙に親しげだった。[p]
？？？「怪しいマッサージ店とかじゃないよ。息子の俺が言うのもなんだけど、腕は確かだから」[p]
？？？「俺、成瀬隼人（なるせはやと）。強引にごめんね」[p]
隼人、と名乗った男はにこやかにマッサージ店のドアを開けてくれる。[r]名前まで爽やかなのかよ、とこっそり舌打ちした。[p]
隼人「バイト、探してたんでしょ？　[r]男の人が来てくれたら、母さんも嬉しいと思うんだよね」[p]
思わず「いや、俺は違う」と口に出しそうになったが──その言葉を飲み込む。[p]
冷静になれ。これはむしろ、こいつの素性を探るチャンスじゃないか。[r]凪を追いかけたい衝動を押し殺し、俺は隼人の言葉に合わせることにした。[p]
隼人「最近、施術を勘違いした変な客が多いって困ってたから。[r]男がいたら変態って手出しづらいじゃん？」[p]
その軽快な口ぶりと調子の良さに少し戸惑いつつも、[r]俺は曖昧に相槌を打ちながら、隼人のあとについて、おずおずと店内へと足を踏み入れた。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeInLeft"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[chara_hide  name="kyara_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_hayato_sabun"  time="0"  wait="false"  pos_mode="false"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[mask_off  time="1000"  effect="fadeOutLeft"  ]
[tb_start_text mode=1 ]
[舜]（まぁ俺に失うものはないしな…）[p]
隼人「母さーん。バイト探してるって人がポスター見てくれてたよ」[p]
[_tb_end_text]

[call  storage="character.ks"  target="*2kyara_hayatorinko"  ]
[call  storage="BGM.ks"  target="*rinko"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_op_rinko{number}.mp3" number=1]
[vostart]

;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_op_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
？？？「え？　本当？」[p]
顔を出したのはおっとりとした雰囲気の綺麗な女性だった。[p]
[舜]（はっ？　こんな美人がこの男の母親…？）[p]
目じりに多少の年齢は感じるが、自分の母親と同年代だとは思えない。[r]女性はニコニコしながら「こちらへどうぞ」と奥の部屋へ招き入れてくれた。[p]
#凛子
？？？「隼人がいきなり呼び止めちゃったのね。ごめんなさいね」[p]
#凛子
？？？「私はこの店のオーナーで店主の成瀬凛子（なるせりんこ）と言います」[p]
[舜]「は、はい。俺は[日高] [舜]です」[p]
#凛子
凛子「そう、[舜]くん。いい名前ね…バイトを探してるの？」[p]
[舜]「ええ…いろいろあって仕事を辞めて…とりあえずバイトを探そうかなって」[p]
#凛子
凛子「そうだったの…えらいね、すぐにお仕事を探そうとして」[p]
すぐ横からツインテールの若い女の子が顔を出す。[p]

[_tb_end_text]

[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="500"  ]
[call  storage="character.ks"  target="*3kyara_hayatorinkotubomi"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
気の強そうな顔をしているが、こちらもびっくりするほどに美少女だった。[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif" wait="false"]？？？「お兄ちゃんと同い年くらいじゃん。それで仕事してないの？　なんかヤバくない？」[p]
[舜]（はぁ？　なんだコイツ…）[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_02c.gif" wait="false" ]凛子「もう！　蕾。そんなこと言わないの。みんなそれぞれ事情があるんだから」[p]
#凛子
凛子「ごめんなさいね[舜]くん。この子、まだ世間知らずでワガママだから」[p]
[舜]（店主の娘なのか。そういえば目元が似てる気が…）[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif" wait="false"  ]凛子「娘にも手伝ってもらってるの。バイトさんがいないから」[p]
隼人「母さん、自分の店を開業したんだけどさ。最近忙しくて手が回らないんだって」[p]
#凛子
凛子「そうなの。ベッドメイキングとか、タオルの洗濯をお願いできたら嬉しくて」[p]
#凛子
凛子「慣れてきたらお客さんの対応と、マッサージもしてもらえたらいいなって」[p]
[舜]（うっ…接客かぁ。避けたいとこだけど）[p]
#蕾
蕾「えぇ？　この人大丈夫？　なんか暗くない？　接客なんか──」[p]
[舜]「で、できる。お願いします」[p]
かちんときて、ついうなずいてしまった。[p]
途端にぱっと凛子さんの顔が明るくなる。[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false" ]凛子「本当？　よかった。じゃあ連絡先だけあとで教えてくれる？」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif" wait="false"][舜]（しまった…つい…）[p]
蕾はむくれたまま俺を見つめている。[p]
気づかないふりをして、俺は凛子さんの話を聞いていた──[p]
[_tb_end_text]

[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="EV_OP_map.ks"  target="*top"  ]
