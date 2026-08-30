[_tb_system_call storage=system/_sinnyu_byouin_bussyoku_ev.ks]

*syuunou1

[tb_start_text mode=1 ]
[舜]（力任せに引いたら開いてしまった…）[p]
[舜]（これ…先輩の私物っぽいな）[p]
[舜]「ごめんなさい先輩、きっといつか返します…たぶん」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]4000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=4000"  name="money_updated"  cmd="+="  op="t"  val="4000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_syuunou+=1"  name="bussyoku_syuunou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syuunou2

[tb_start_text mode=1 ]
[舜]（気づいたけど、上向きに押し込めばあっさり開くんだよな。[r]こんな簡単なロッカーで大丈夫なのか？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syuunou+=1"  name="bussyoku_syuunou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syuunou3

[tb_start_text mode=1 ]
[舜]（俺みたいなヤツに漁られることもあるわけだし…ロッカーってもうちょい防御力が必要だよな）[p]
[舜]（……って、俺が言っても説得力ねぇけど）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syuunou+=1"  name="bussyoku_syuunou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*soujiyougu1

[tb_start_text mode=1 ]
[舜]（おっ、こんなとこに医療品のストックが入ってるのか）[p]
[舜]（包帯とかガーゼとか…いろいろ入ってるじゃん）[p]
[舜]（そういえば、看護師が何度か出入りしてるの見たな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_soujiyougu+=1"  name="bussyoku_soujiyougu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*soujiyougu2

[tb_start_text mode=1 ]
[舜]（ここ、下からのアングルで撮影できるんじゃないか？）[p]
[舜]（仕事の間にも楽しみができちゃったなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_soujiyougu+=1"  name="bussyoku_soujiyougu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*soujiyougu3

[tb_start_text mode=1 ]
[舜]（整理整頓よし！……って、俺、完全にバイトに毒されてるな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_soujiyougu+=1"  name="bussyoku_soujiyougu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*keijiban1

[tb_start_text mode=1 ]
[舜]（へー、掃除の仕方が書かれてるのか）[p]
[舜]（指導してもらった通りだから目新しいことはなさそうだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_keijiban+=1"  name="bussyoku_keijiban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*keijiban2

[tb_start_text mode=1 ]
[舜]（シフト表だな。うんうん、希望通りのシフトになってる）[p]
[舜]（清掃員なんてブラックかと思ったけど、案外ホワイトだよな）[p]
[舜]（しばらくは、ここで頑張るか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_keijiban+=1"  name="bussyoku_keijiban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*keijiban3

[tb_start_text mode=1 ]
[舜]（『ルールを守って使おう』か。禁煙、ごみのポイ捨て……）[p]
[舜]（うーん、さすがにそこまでマナー違反する奴はいなさそうだけど）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_keijiban+=1"  name="bussyoku_keijiban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka1_1

[tb_start_text mode=1 ]
[舜]（凪、ロッカーの中にいろいろ置いてあるな）[p]
[舜]（服からほんのり凪の家の匂いがする…安心する匂いだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka+=1"  name="bussyoku_rokka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka1_2

[tb_start_text mode=1 ]
[舜]（手帳発見。何か書いてあるかな？）[p]
[舜]（スケジュール欄のマークは…お母さんのお見舞いの日か）[p]
[舜]（よく見たら母親中心でスケジュールが組まれている。凪…お母さん想いなんだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka+=1"  name="bussyoku_rokka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka1_3

[tb_start_text mode=1 ]
[舜]（スマホも置いてある。あぁ、さすがにロックかかってて触れないか）[p]
（見れたとしても、ここだとゆっくり見れないか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka+=1"  name="bussyoku_rokka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka2_1

[tb_start_text mode=1 ]
[舜]（この病院のロッカーって、上向きに押し込めば結構簡単に開くんだよなぁ。今まで盗難が無かったのが奇跡だな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka2+=1"  name="bussyoku_rokka2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka2_2

[tb_start_text mode=1 ]
[舜]（このロッカーは…凪の先輩のものかな）[p]
[舜]（このバッグ、ＳＮＳでよく見るけど。有名なブランドのものか？）[p]
[舜]（凪はこういう派手めなバッグ、全然持ってないよなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka2+=1"  name="bussyoku_rokka2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka2_3

[tb_start_text mode=1 ]
[舜]（おっ、現金がそのまま入ってるぞ…）[p]
[舜]（5000円か…申し訳ないけど拝借するか。臨時収入だな）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]5000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_rokka2+=1"  name="bussyoku_rokka2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*eakon1

[tb_start_text mode=1 ]
[舜]（あ、エアコンから撮影できそうだな）[p]
[舜]（このアングルなら、いい感じで部屋の中が撮れるんじゃないか？[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_eakon+=1"  name="bussyoku_eakon"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*eakon2

[tb_start_text mode=1 ]
[舜]（設定温度は…ちょっと高めだな…）[p]
[舜]（女の子は寒いのが苦手ってよく聞くけど本当なのか…）[p]
[舜]（俺なら汗だくになりそうだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_eakon+=1"  name="bussyoku_eakon"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*eakon3

[tb_start_text mode=1 ]
[舜]（エアコンはきれいに掃除されてるみたいだな…）[p]
[舜]（さすが病院だ。俺の部屋のエアコンなんて掃除したことないぞ）[p]
[舜]（ちょっと心配になってきた）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_eakon+=1"  name="bussyoku_eakon"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*konsento1

[tb_start_text mode=1 ]
[舜]（この角度、下からのアングルで撮影できそうだな）[p]
[舜]（凪のエロい姿も撮影できるかも）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_konsento+=1"  name="bussyoku_konsento"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*konsento2

[tb_start_text mode=1 ]
[舜]（コンセントは盗撮盗聴でよく使われるって聞くけど…）[p]
[舜]（すでにカメラとかマイクが仕掛けてあったりして）[p]
[舜]（なわけないか…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_konsento+=1"  name="bussyoku_konsento"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*konsento3

[tb_start_text mode=1 ]
[舜]（このコンセント、普段何で使ってんだ？）[p]
[舜]（あ…スマホの充電を勝手にやってんのか）[p]
[舜]（目に浮かぶなぁ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_konsento+=1"  name="bussyoku_konsento"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki_byouin1

[tb_start_text mode=1 ]
[舜]（こんなとこでムラってるとか、俺なにしてんだ）[p]
[舜]（でも、誰来るかわかんねーし、捕まったらシャレになんねぇ）[p]
[舜]（よし、戻ろ。妄想は妄想で止めとけ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki_byouin+=1"  name="bussyoku_benki_byouin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki_byouin2

[tb_start_text mode=1 ]
[舜]（掃除はさっきしたし…ばっちり綺麗だ）[p]
[舜]（我ながらいい仕事したな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki_byouin+=1"  name="bussyoku_benki_byouin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki_byouin3

[tb_start_text mode=1 ]
[舜]（綺麗になったトイレで、一発目に用を足してもいいけど…）[p]
[舜]（今は別に尿意もないし。戻るか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki_byouin+=1"  name="bussyoku_benki_byouin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*surippa1

[tb_start_text mode=1 ]
[舜]（凪もこのスリッパ履いてるのか…いい匂いとかしたりして）[p]
[舜]（……いや、ダメだ。不衛生すぎる。嗅ぐとかその発想がもう危ない）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_surippa+=1"  name="bussyoku_surippa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*surippa2

[tb_start_text mode=1 ]
[舜]（…いやいや、ないないない。病院のスリッパなんて嗅ぐ気になれねぇよ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_surippa+=1"  name="bussyoku_surippa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*surippa3

[tb_start_text mode=1 ]
[舜]（なんで毎回確認しちまうんだよ、俺…）[p]
[舜]（クソ…今回だけ、ちょっとだけな…）[p]
[舜]（……ヴぇっ！最悪。気分悪すぎ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_surippa+=1"  name="bussyoku_surippa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*doa1

[tb_start_text mode=1 ]
[舜]（誰か来たか…？）[p]
[舜]（いや、気のせいか。ただあまり長居はよくないだろうな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_doa+=1"  name="bussyoku_doa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*doa2

[tb_start_text mode=1 ]
[舜]（見つかっても掃除してたって言えばいいだけなんだけど…）[p]
[舜]（やっぱりソワソワするなぁ。俺ってスリル厨？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_doa+=1"  name="bussyoku_doa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*doa3

[tb_start_text mode=1 ]
[舜]（やべ、本当に誰かが来そうだ）[p]
[舜]（そろそろ出なくちゃな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_doa+=1"  name="bussyoku_doa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
