[_tb_system_call storage=system/_EV_TrueEND_nagi.ks]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom.png"  ]
[call  storage="character.ks"  target="*nagi_yuukou"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_ END2_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
恋人になったからといって、いきなり大人の付き合いができるわけもなく…[p]
昔と同じように、ゲームの勝ち負けで大声を上げていた。[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_02c.gif" wait="false"]凪「あ～もう！　また負けた！」[p]
[舜]「俺に勝とうなんて百年早い」[p]
#凪
凪「くやしい……もう一回っ！」[p]
そう言って笑う凪の顔を見ながら、ふと思った。[p]
――凪って、こんなに笑う子だったっけ？[p]
子どもの頃の凪は、感情をあまり表に出さない子だった。[p]
大人になって再会した時も、その印象は変わらなかった。[p]
けれど今、目の前にいる凪は、確かに笑っている。楽しそうに。[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_04c.gif"]凪「私ね、[舜]ちゃんと一緒にいるようになって毎日楽しいの…」[p]
#凪
凪「あぁ、私にもこんなことできるんだ、とか。こんな気持ちがあったんだって」[p]
#凪
凪「私きっと、自分のこと信じられてなかったんだと思う」[p]
[舜]「今は？」[p]
#凪
凪「[舜]ちゃんは私のやりたいことを聞いてくれるし任せてくれるから…」[p]
#凪
凪「私も自分を信じられるようになったんだよ」[p]
凪の純粋でまっすぐな視線が、どこかくすぐったい。[p]
でも、それに応えたいと心から思った。[p]
だからこそ、決めたんだ。俺は──[p]
[舜]「凪、よそ見してると負けるぞ」[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_02c.gif" wait="false"]凪「え、あっ！　あ～！　ずるい！」[p]
画面に「ＬＯＳＥ」の文字が大きく表示される。[p]
#凪
凪「悔しい……も～、始めるなら言ってよ」[p]
[舜]「悪かったよ。これで、その悔しさは帳消しにならない？」[p]

[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[chara_hide  name="kyara_nagi"  time="0"  wait="true"  pos_mode="false"  ]
[chara_hide  name="kyara_nagi_sabun"  time="0"  wait="true"  pos_mode="false"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪の目の前に小さな箱を差し出した。[p]
箱のふたを開けた途端、凪の表情が驚きに変わっていく。[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_04c.gif" wait="false"]凪「[舜]ちゃん、これ…！」[p]
[舜]「…まぁ、その。そういうこと」[p]
飾り気のない指輪。[p]
小さなダイヤだけど、今の俺の給料ではこれが精いっぱいだった。でも…[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/nagi_TrueEND.png"  ]
[tb_cg  id="cg_nagi_TrueEND"  ]
[tb_start_text mode=1 ]
[舜]「高価ものは買えなかったけど……気持ちは、本物だ。[p]
これから、少しずつ一緒に積み重ねていけたらって思ってる」[p]
凪はしばらく言葉もなく、指輪を見つめていた。[p]
#凪
凪「……うん。うんっ。嬉しい……ありがとう」[p]
瞳からぽろぽろと涙がこぼれ落ち、彼女はくしゃくしゃに笑いながら指を差し出した。[p]
#凪
凪「でも、本当に嬉しい。これ、そういうこと…だよね？」[p]
[舜]「そうだよ。綺麗な景色の場所とか、ディナー食べながら言うべきなんだろうけど」[p]
#凪
凪「ううん。私は今がいちばん嬉しい。ありがとう、[舜]ちゃん」[p]
#凪
凪「……ねえ、私、どう返事すればいいかな？」[p]
[舜]「もちろん、凪の好きにどうぞ」[p]
#凪
凪「ふふ……そうやって選ばせてくれるのが、[舜]ちゃんらしいね」[p]
凪は満面の笑みで大きくうなずいた。[p]
#凪
凪「よろしくお願いします！」[p]
そのまま勢いよく抱きついてきて、バランスを崩した俺は床に倒れ込んだ。[p]
見下ろす凪は、半べそを浮かべながら、やさしく微笑んでいる。[p]
#凪
凪「[舜]ちゃん、目閉じて？」[p]
言われるがまま目を閉じると、頬にふっと何かが触れる。[p]
恐る恐る目を開けると、凪がイタズラっぽく笑っていた。[p]
#凪
凪「顔に私の名前、書いちゃった……」[p]
[舜]「えぇっ！？　ちゃんと水性ペンだよな？」[p]
#凪
凪「さあ、どうかな？」[p]
[舜]「……おいっ」[p]
笑いながら凪の顔を見る。[p]
その表情があまりに幸せそうで、つい口元がゆるむ。[p]
しばらく消えなくてもいいかもしれない。[p]
鏡を見るたびに、きっと思い出す。[p]
俺は凪と、ようやく結ばれたんだと。[p]
幸せそうな凪を見ながら、そんなことを考えていた──[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
【凪_TrueEND　幸せの証】[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_TrueEND"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event_fin2.jpg"  ]
[tb_hide_message_window  ]
[tb_eval  exp="sf.zenkaihou=1"  name="zenkaihou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[wait  time="2000"  ]
[l  ]
[bg  time="3000"  method="crossfade"  storage="event_fin.jpg"  ]
[wait  time="3000"  ]
[l  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

