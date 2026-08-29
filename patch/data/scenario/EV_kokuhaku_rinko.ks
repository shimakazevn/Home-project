]
[_tb_system_call storage=system/_EV_kokuhaku_rinko.ks]

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
[bg  time="0"  method="crossfade"  storage="back_room0.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_kokuhaku_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
突然の着信音に驚きながら画面を見ると、凛子さんの名前があった。[p]
[舜]（凛子さん？　なんだろう…）[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="500"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[tb_start_text mode=1 ]
#凛子
凛子「あ、[舜]くん。突然ごめんなさい…今大丈夫だった？」[p]
[舜]「はい、１人なんで何もやることないですから」[p]
#凛子
凛子「ふふ、そう…あの…それじゃ呼び出したら来てくれるかしら？」[p]
[舜]「え？　はい、もちろんです。お店に行けばいいですか？」[p]
#凛子
凛子「ううん。違うの。今日はね──」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_tera.png"  ]
[call  storage="character.ks"  target="*rinko_mohuku_hutuu"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
すでに凛子さんが来ていて、静かにこちらを待っていた。[p]
黒い喪服に身を包んだその姿は、どこか儚くもあり、[r]同時にしっとりとした大人の美しさを湛えていた。[p]
彼女はふとこちらに気づき、少しだけ微笑んだ。[r]その仕草ひとつが胸に響く。[p]
#凛子
凛子「ありがとう…急に呼び出しちゃってごめんなさいね。どうしても[舜]くんと行きたくて」[p]
いつもと違いどこか悲しそうに見える。[r]言葉に詰まる俺を見ながら、凛子さんは「こっち」と先に歩き出した。[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]凛子「驚いたでしょう？　『亡くなった旦那の墓参りに一緒に行って』だなんて」[p]
[舜]「い、いえ…俺も…挨拶しなきゃって思ってたんで」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]凛子「そう言ってくれてよかった。今日で10回忌なの」[p]
寂しそうに言う凛子さんは、俺の知らない『誰かの妻』の顔をしていた。[p]

[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="event/rinko5.png"  ]
[tb_cg  id="cg_rinko_kokuhaku"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kodomo.mp3"  ]
[tb_start_text mode=1 ]
墓石の前に膝をつき、凛子さんは両手を合わせる。[r]綺麗な花と缶ビール、お菓子が備えられていた。[p]
#凛子
凛子「昼間に蕾と隼人と来たから。お花もお線香もあげてあるのよ。[r]でもね、[舜]くんのことをどうしても紹介したくて…」[p]
#凛子
凛子「事故だったの…[r]いつもみたいに朝出かけていって…今くらいの時間かな。電話が鳴った」[p]
#凛子
凛子「彼が事故に遭ったって電話だった。[r]慌てて病院に駆け込んだんだけど…間に合わなかったわ」[p]
凛子さんの声はどこまでも穏やかだ。[r]さんざん悩み悲しんだ果てに、ようやく前を向いて歩き出した人の声だ、と思った。[p]
#凛子
凛子「しばらくは何もできなくて、引きこもりみたいになっちゃって」[p]
#凛子
凛子「それでも、子供たちもいたから。周りに支えられてここまで来たのよ」[p]
[舜]「すごいです…」[p]
これくらいしか言えない自分が情けなかった。[p]
だから彼女は、引きこもった自分に優しかったのだと初めて気づいた。[p]
#凛子
凛子「ううん、全然。何も考えずに来ただけよ」[p]
俺は墓石に向かい手を合わせる。[r]会ったことがない彼女の旦那さんへ届くように呟いた。[p]
[舜]「俺、凛子さんにはお世話になってます」[p]
[舜]「凛子さんは頑張ってるんで…俺、手伝いたいって思ってます」[p]
#凛子
凛子「ね？　あなた…[舜]くんはとてもいい子でしょう」[p]
凛子さんの優しい声に応えるように、強い風が吹き抜ける。[p]
凛子さんの香りでもなく自分の香りでもない、[p]
爽やかな大人の男性がつける香水の香りがした。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="fadeInDown"  storage="back_kaerimiti_yuu.png"  ]
[call  storage="character.ks"  target="*rinko_mohuku_hutuu"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="love.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#凛子
凛子「今日は来てくれてありがとうね」[p]
[舜]「いえ…会えてよかったです」[p]
#凛子
凛子「ありがとう…あのね、今日[舜]くんに言いたいことがあったの」[p]
凛子さんは立ち止まり、俺をまっすぐ見つめる。[p]
#凛子
凛子「旦那に会いに行った帰りにこんなことを言うのは、少し勝手かもしれないけれど…」[p]
#凛子
凛子「子供たちも手を離れて、ようやく自分の人生を見つめ直す時が来たのかなって思うの」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「私…私ね…[舜]くんと会って、久しぶりに“私もまだ一人の女性なんだ”って感じられたの」[p]
#凛子
凛子「これからの人生、もし[舜]くんがそばにいてくれたら、こんなに幸せなことはないと思う」[p]
#凛子
凛子「私、年上だし戸惑わせてしまったらごめんね。[r]でも、もし気持ちが同じなら――私とお付き合いしてくれませんか？」[p]
その声は静かでありながらも揺るぎなく、彼女の覚悟と想いの強さがはっきりと伝わってくる。[p]
こんなふうに真っ直ぐに想いを伝えてくれる彼女を、初めて見た気がした。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[舜](凛子さんが俺を…？　俺は──)
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_kokuhaku_rinko.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Đồng ý nhận lời"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_kokuhaku_rinko.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Từ chối"  _clickable_img=""  target="*no"  ]
[s  ]
*yes

[tb_eval  exp="f.koukando_rinko_koibito=1"  name="koukando_rinko_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_text mode=1 ]
[舜]「もちろんです…俺から告白させてくださいよ…」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]凛子「ふふっ、こういう時は年上の役得なの」[p]
凛子さんは頬をほんのりと染めながら、穏やかで幸せそうな微笑みを浮かべている。[p]
[舜]「だめですよ、それは男の役目だと思ってます。――好きです。俺と付き合ってください」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「ええ、喜んで」[p]
[舜]「これから、うち、来ませんか」[p]
これ以上何も言わなくても伝わるだろう。凛子さんは潤んだ瞳のままコクリとうなずく。[p]
#凛子
凛子「じゃあ…行こうかな」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
並んで歩き出す。何も言わずとも、自然と手を取り指先を絡めていた。[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_kokuhaku"  ]
[jump  storage="H_rinko_hajimete.ks"  target="*top"  ]
*H_back

[bg  time="2000"  method="crossfade"  storage="back_room_genkan.png"  ]
[call  storage="character.ks"  target="*rinko_mohuku_hutuu"  ]
[tb_start_text mode=1 ]
[舜]「家まで送りますよ」[p]
#凛子
凛子「いいのいいの…家のそばで蕾か隼人に会ったら驚かせちゃうし。ここで大丈夫」[p]
#凛子
凛子「２人に報告するのは、もう少し後にしたいから…今日はありがとう」[p]
[舜]「いえ、こちらこそ…」[p]
#凛子
凛子「あの、ね…[舜]くん。年上なのに浮かれてるなんて思われそうだけど…」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]凛子「[舜]くんと付き合えて本当に嬉しいの。これからよろしくね」[p]
凛子さんは少し乱れた髪を直しながら、手を振り歩き出す。[p]
俺は彼女の姿が見えなくなるまで見送っていた。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]凛子と恋人状態になった[resetfont][p]
[_tb_end_text]

[jump  storage="room_yoru.ks"  target="*top"  ]
*no

[cm  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_kokuhaku_rinko{number}.mp3" number=28]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「すみません、俺は──」[p]
#凛子
凛子「あ、これ以上は言わなくていいよ…」[p]
凛子さんの穏やかな声が聞こえる。[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]凛子「断るほうが、きっと一番つらいよね。だから…謝らないで。[r]ちゃんと向き合ってくれて、本当にありがとう。」[p]
[舜]「いえ…」[p]
#凛子
凛子「それじゃあ、ここで…」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
そう言い残し、彼女は足早に去っていった。[p]
その後ろ姿に声をかけることはできず、俺はただ、その場に立ち尽くしていた。[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_kokuhaku"  ]
[jump  storage="room_yoru.ks"  target="*top"  