]
[_tb_system_call storage=system/_EV_item_suimin.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="back_room_yoru.png"  ]
[tb_show_message_window  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜] 「部屋の電気……消えてる。凪、もう寝たのか」[p]
[舜] 「……行くか？ どうする、行くなら今しかないぞ」[p]
心の中で天秤が揺れる。[r]行きたい。でも、行ってどうする？ 見るだけでいいのか？[p]
立ち止まっているうちにも、胸の鼓動がどんどん早くなっていく。[p]
[舜] 「……いや、行く。行かずに後悔するくらいなら」[p]
決意を固めるように、一歩を踏み出した。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kintyou2.mp3"  ]
[wait  time="1500"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="door.mp3"  ]
[wait  time="2000"  ]
[bg  time="2000"  method="crossfade"  storage="sin_nagi_DK_yoru.png"  ]
[tb_start_text mode=1 ]
[舜] 「やばい……心臓が、どうにかなりそうだ」[p]
静まり返った部屋に、風呂上がりの温もりが残っていた。[p]


[_tb_end_text]

[bg  time="1000"  method="fadeIn"  storage="event/H01_EV1.png"  ]
[tb_cg  id="cg_item_suimin2"  ]
[tb_start_text mode=1 ]
濡れた髪も乾かしきらぬまま、凪が静かに寝息を立てている。[p]
[舜] 「無防備すぎる……ほんと、ずるいよ」[p]
見てはいけないものを見てしまったような感覚。それでも、視線は逸らせなかった。[p]

[_tb_end_text]

[bg  time="3000"  method="fadeInDown"  storage="event/H01_EV2.gif"  ]
[tb_cg  id="cg_item_suimin1"  ]
[tb_start_text mode=1 ]
指先がじわりと熱を帯び、背筋にぞくりとした緊張が走る。[p]
[舜] 「少しだけ……少し、触れるだけなら」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_replay  id="nagi_item_suimin"  ]
[jump  storage="H_suimin1.ks"  target="*top"  ]
*syasei

[tb_start_text mode=1 ]
[舜] （はぁ、はぁ……さすがにこのままじゃまずいよな……）[p]
[舜] （ティッシュで拭いて、服を元に戻しておこう……）[p]
凪の柔らかな肌に触れた瞬間、再び抑えていた感情が込み上げてくる。[r]その衝動をなんとか抑え込もうと、舜は深く息を吸い、静かに吐き出した。[p]

[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*end"  ]
*kaeru

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜] （これ以上は……さすがに危ない。我慢しろ、俺！）[p]
もっと触れていたい、その想いを胸の奥でぐっと飲み込む。[p]
高まる衝動を抑えるように、深く息を吸い込んで静かに吐き出した。[r]冷静になれ、自分にそう言い聞かせる。[p]

[_tb_end_text]

*end

[tb_start_text mode=1 ]
凪を起こさぬよう、そっと立ち上がる。[r]触れられない想いだけを胸に残し、舜は静かにその場を後にした。[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.itemEV_suimin=2"  name="itemEV_suimin"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  