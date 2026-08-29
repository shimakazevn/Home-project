]
[_tb_system_call storage=system/_EV_kokuhaku_tubomi.ks]

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

[bg  time="1000"  method="crossfade"  storage="sora.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_kokuhaku_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「あれ？蕾から着信だ」[p]
[舜]「もしもし、どうした？ リフレで何かあったのか？」[p]
#蕾
蕾「…あ、あの……えっと。」[p]
[_tb_end_text]

[call  storage="BGM.ks"  target="*love1"  ]
[tb_start_text mode=1 ]
#蕾
蕾「ううん、そうじゃなくて……。[r]も、もし近くにいるなら、一緒に帰れたらなって……駄目？」[p]
[舜]「いいよ。リフレまで行くから、店の前で待ってて」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
急いでリフレに向かうと、すでに蕾が待っていた。[p]
いつものように「遅い！」と文句を言われるのを覚悟していたが、[r]今日はめずらしく大人しい様子だった。[p]
それどころか、いつもの元気もなく、笑顔もなければ口数も少ない。[r]あの意地悪な冗談さえ、今日は影を潜めていた。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_kaerimiti_yoru.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_hutuu"  ]
[tb_start_text mode=1 ]
俺はあえて深く聞かず、蕾と並んで帰り道を歩き始めた。[p]
[舜]「何かあったのか？　まさか客に何かされたとか…」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_03c.gif"]蕾「それ、あんたが言う？　違う。オーディションで失敗しただけよ」[p]
蕾は力なく笑い、通り道にあった公園に入っていく。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[chara_hide  name="kyara_tubomi_sabun"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_tubomi"  time="0"  wait="true"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾がブランコに腰を下ろしたので、俺も真似して隣のブランコに座る。[r]徐々に彼女の声が湿ったモノに変わっていった。[p]
[_tb_end_text]

[bg  time="2000"  method="fadeInDown"  storage="event/tubomi5.png"  ]
[tb_cg  id="cg_tubomi_kokuhaku"  ]
[tb_start_text mode=1 ]
#蕾
蕾「会場に行ったら、私なんかより可愛くて綺麗でスタイルのいい子がいっぱいいるんだもん」[p]
#蕾
蕾「私、超場違いでさ…恥ずかしかった。もう帰りたくてしょうがなくて。頭の中も真っ白で…」[p]
その大きな瞳に、いまにも涙が零れそうだった。けれど、彼女は必死にこらえている。[p]
#蕾
蕾「でも、そうなっちゃう自分が1番許せない。[r]逃げ出しちゃうくらいの覚悟だったんだ、って…がっかりした」[p]
[舜]「いや、わかる、わかるよ…[r]俺なんて、言いたいことが言えなくて、変な汗かいて、気を失いかけたことだってある」[p]
たくさんの人に値踏みされるあの感覚。[r]就職面接のたびに、自信を砕かれ、何度も立ちすくんだあの日々。[p]
あの痛みは、誰よりわかっているつもりだった。[p]
#蕾
蕾「ふふっ、それはさすがにダサすぎ…」[p]
こわばっていた蕾の表情が少しだけ緩んだ気がした。[p]
[舜]「ほらな？　俺のがはるかにひどいだろ」[p]
#蕾
蕾「ありがとう…慰めてくれてるんでしょ。おかげでちょっと元気出た」[p]
#蕾
蕾「でも…あんたは今、うまくいってるじゃない」[p]
#蕾
蕾「ママから見たら最高のバイトくんだし。[r]自分にとってぴったりの場所に立てば輝けるんだね」[p]
[舜]「こんなふうになるなんて、自分が1番驚いてる」[p]
#蕾
蕾「ふふっ、何それ…！」[p]
今度は声を上げて笑ってくれる。[p]
#蕾
蕾「私にもそういう場所、あるかな？　新しい夢探してみるのもいいかも」[p]
#蕾
蕾「ごめんね、いろいろ付き合ってもらったのに」[p]
[舜]「別に謝ることないって。俺何もしてないし」[p]
#蕾
蕾「私はしてもらったって思ってるの！　[r]ねぇ、私頑張るからさ…この先も見ててくれない？」[p]
[舜]「え？　そのつもりだけど？」[p]
#蕾
蕾「なにそのうすいリアクション！　…もう！　鈍感なんだから！」[p]
[舜]「な、なんだよ…！　わかりやすく言えよ」[p]
#蕾
蕾「……だから」[p]
ぽつりと口を開いたあと、蕾はしばらく黙り込んだ。[r]小さく息を吸って、でもすぐには言葉が続かない。[p]
目を伏せたまま、唇がかすかに震えていた。[p]
#蕾
蕾「……一度しか言わないからね」[p]
#蕾
蕾「ちゃんと聞いてよ？」[p]
静かに顔を上げて、目を合わせる。[r]その瞳には、もう迷いがなかった。[p]
#蕾
蕾「私……[舜]のこと、好きなの」[p]
#蕾
蕾「彼氏になってよ……」[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[舜](マジかよ…！　俺の気持ちは──)
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_kokuhaku_tubomi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="受け入れる"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_kokuhaku_tubomi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="断る"  _clickable_img=""  target="*no"  ]
[s  ]
*yes

[tb_eval  exp="f.koukando_tubomi_koibito=1"  name="koukando_tubomi_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_text mode=1 ]
一瞬、言葉が出てこなかった。だけど、心はもう決まっていた。[p]
[舜]「……そういうことなら、もちろん」[p]
#蕾
蕾「ホント？　私でいいの？　生意気だし振り回されちゃうかもよ？」[p]
[舜]「それでもいい。むしろ…めちゃくちゃ努力家で、可愛いし」[p]
#蕾
蕾「なっ…いきなりかっこいいこと言うなんて。[舜]にドキッとさせられちゃったじゃない。」[p]
ふと、蕾と目が合った。[r]その瞳の奥にある想いを、はっきりと感じた気がした。[p]
#蕾
蕾「……ねぇ」[p]
#蕾
蕾「今日は……このまま帰りたくない」[p]
#蕾
蕾「もっと、[舜]と一緒にいたい」[p]
震えるような声。だけど、その言葉には真っ直ぐな気持ちが込められていた。[p]
[舜]「……じゃあ、うち来る？」[p]
#蕾
蕾「うん…」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
そっと手を差し出すと、蕾の手がそっと重なった。[r]少しだけうつむきながらも、そのぬくもりはしっかりと伝わってくる。[p]
俺はその手を優しく握りしめ、ふたりでゆっくりと歩き出した。[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="tubomi_kokuhaku"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top"  ]
*H_back

[bg  time="1000"  method="crossfade"  storage="back_room_yoru0.png"  ]
[tb_start_text mode=1 ]
乱れた髪を指でそっと整えながら、蕾は恥ずかしそうに顔を伏せた。[p]
#蕾
蕾「……なんか、顔見るの恥ずかしい。あんたは平気なの？　悔しい……」[p]
その言葉に返す間もなく、蕾が身を寄せてきて、頬にふわりと唇が触れる。[r]驚いた俺の顔を見て、蕾はいたずらっぽく微笑んだ。[p]
#蕾
蕾「ふふっ、余裕ぶってるの、ズルいもん」[p]
俺が何か言うより早く、蕾はそっと手をつないだ。[r]この先、きっと彼女に振り回されっぱなしになる――そんな未来が、なんとなく目に浮かんだ。[p]
でもそれは、案外悪くないかもしれない、なんて思った。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]蕾と恋人状態になった[resetfont][p]
[_tb_end_text]

[jump  storage="room_yoru.ks"  target="*top"  ]
*no

[tb_eval  exp="f.koukando_tubomi_huru=1"  name="koukando_tubomi_huru"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="back_kaerimiti_yoru.png"  ]
[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="8"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_03c.gif"  width="832"  height="832"  left="242"  top="8"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_kokuhaku_tubomi{number}.mp3" number=29]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「ごめん…」[p]
#蕾
蕾「…そう、そっか。ママのこと好きなの？」[p]
[舜]「……」[p]
蕾は涙を一杯にためて、笑い声を上げる。[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]蕾「ダッサ、振られちゃったんだけど！　[r]でもスッキリしたからいいや…新しい1歩踏み出せそう」[p]
#蕾
蕾「ありがとね。じゃあ…」[p]
[_tb_end_text]

[call  storage="character.ks"  target="*taijyou"  ]
[tb_start_text mode=1 ]
くるりと振り向き、彼女は走り去っていく。俺はその背中を見送った。[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="tubomi_kokuhaku"  ]
[jump  storage="room_yoru.ks"  target="*top"  