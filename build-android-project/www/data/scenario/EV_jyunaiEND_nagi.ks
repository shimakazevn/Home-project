]
[_tb_system_call storage=system/_EV_jyunaiEND_nagi.ks]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kodomo.mp3"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_ END1_nagi{number}.mp3" number=0]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
幼い頃から遊びに来ていた凪の家で自分が暮らすなんて、考えもしなかった。[p]
でも今こうして、俺は凪と共に新しい生活を始めている。[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/nagi_jyunaiEND.png"  ]
[tb_cg  id="cg_nagi_jyunaiEND"  ]
[tb_start_text mode=1 ]
#凪
凪「できたよ～。[舜]ちゃん、お皿取って」[p]
[舜]「お、美味そう…！」[p]
#凪
凪「ふふ、喜んでもらえて嬉しい。[舜]ちゃん、昔から好き嫌いなかったもんね」[p]
#凪
凪「っていうか、子供の頃私が作った美味しくない焼きそばも食べてくれたよね…」[p]
#凪
凪「あの時、嬉しかったなぁ。我慢してくれたんでしょ？」[p]
[舜]「俺は作ってもらったものには文句言わないんだよ」[p]
#凪
凪「そっか…ふふ、変わらないね。そういう優しいところが好きだった」[p]
#凪
凪「思い出したの。私、ずっと[舜]ちゃんのお嫁さんになるのが夢だったんだって」[p]
#凪
凪「叶っちゃったみたい。今、新婚さんみたいだもん」[p]
凪の無垢な笑顔に胸がじんわりと熱くなる。[p]
こんな俺が結婚…それは当然責任や覚悟もついてくる。[p]
少し前の俺なら逃げていただろう。でも──[p]
#凪
凪「あ、ごめん…！　結婚してって言ってるわけじゃないの。私はただ…」[p]
[舜]「そうだな。……その前に、まず凪のお母さんに挨拶に行かなきゃな」[p]
[舜]「ちゃんと、『凪のことを守ります』って伝えたい」[p]
凪「[舜]ちゃん…！」[p]
凪の瞳が潤んだ。[p]
そんな彼女の想いを、俺はもう受け止められる自信があった。[p]
だけど――その前に、俺のすべてをちゃんと伝えておきたかった。[p]
[舜]「俺、ずっと引きこもりだったんだ。[r]働いたこともほとんどないし、社会的に誇れるものもない。信用だって、何も……」[p]
過去を正直に打ち明ける。[p]
それがせめてもの誠意だった。[p]
もし、これで凪に見限られたとしても、納得できるように。[p]
#凪
凪「…なんとなくわかってたの。それでも[舜]ちゃんが一生懸命頑張ってたの見てたから」[p]
#凪
凪「今までは関係ない。私は[舜]ちゃんと一緒にいたいの」[p]
その言葉と一緒に、凪がふわりと笑った。[p]
その笑顔に触れた瞬間、こらえていたものが胸からあふれそうになる。[p]
[舜]「ありがとう…俺、頑張るから」[p]
まずは、安定した仕事を探そう。[p]
そしていつか、凪が幼い頃に夢見ていた“幸せ”を、ちゃんと形にしてあげたい。[p]
ふと視線をやると、部屋の片隅に、あの頃設置したままだった監視カメラが目に入った。[p]
[舜]（……もう、こんなものはいらないな）[p]
今の俺たちに、もう隠し事も不安も必要ない。[p]
築いていくのは、信頼とともにある生活だ。[p]
あとで外そう。[p]
そう思いながら、俺はそっと凪にお皿を差し出した。[p]
ふたりで囲む、静かで温かな朝食の時間が、ゆっくりと始まろうとしていた。[p]

[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
【凪_純愛END　思い出のかたち】[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_jyunaiEND"  ]
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
[stopbgm  time="3000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]