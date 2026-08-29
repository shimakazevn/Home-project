]
[_tb_system_call storage=system/_sinnyu_bussyoku_rihure_ev.ks]

*isyou1

[tb_start_text mode=1 ]
[舜]（メイド服だ…　眩しい…眩しすぎる）[p]
[舜]（この甘い匂い…。ふーっ……理性、頑張れ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_isyou+=1"  name="bussyoku_isyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*isyou2

[tb_start_text mode=1 ]
[舜]（この格好で『ご主人様』って呼ばれるのは男の夢だよな）[p]
[舜]（……俺、ちょっと疲れてんのかも）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_isyou+=1"  name="bussyoku_isyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*isyou3

[tb_start_text mode=1 ]
[舜]（シコりたいところだけど…今はダメだ。完全にアウト。詰む）[p]
[舜]（……深呼吸しよ、俺）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_isyou+=1"  name="bussyoku_isyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko1

[tb_start_text mode=1 ]
[舜]（このペットボトル…名前書いてある。『アメリア』って蕾だよな）[p]
[舜]（まあ、一口くらい…）[p]
[舜]（…うわ、うま。……って、俺なにしてんだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko_rihure+=1"  name="bussyoku_reizouko_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko2

[tb_start_text mode=1 ]
[舜]（あの女に見つかったら、めんどくさいことになりそうだな）[p]
[舜]（でもまぁ…バレなきゃいいんだよ、バレなきゃ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko_rihure+=1"  name="bussyoku_reizouko_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko3

[tb_start_text mode=1 ]
[舜]（ちゃんと元の場所に戻しておかないとな。…よし、ラベルの向きもバッチリ）[p]
[舜]（慎重に、慎重に。油断は禁物だ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko_rihure+=1"  name="bussyoku_reizouko_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kyukei1

[tb_start_text mode=1 ]
[舜]（可愛い財布発見。中身は…結構入ってるなぁ）[p]
[舜]（やっぱリフレ嬢は儲かるんだな）[p]
[舜]（申し訳ないけど、数枚だけもらっておこう）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]2000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=2000"  name="money_updated"  cmd="+="  op="t"  val="2000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_kyuukei+=1"  name="bussyoku_kyuukei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kyukei2

[tb_start_text mode=1 ]
[舜]（こっちも忘れものかな？　お、キャラクタものの小銭入れ）[p]
[舜]（ごめんなさい、大切に使わせてもらいます）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]500円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=500"  name="money_updated"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_kyuukei+=1"  name="bussyoku_kyuukei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kyukei3

[tb_start_text mode=1 ]
[舜]（お客さんからのプレゼント、置きっぱなしじゃん）[p]
[舜]（うーん、さすがにぬいぐるみはないよな…俺でもわかるぞ）[p]
[舜]（あれ？　でも中に現金入ってるぞ。ラッキー）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]2000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=2000"  name="money_updated"  cmd="+="  op="t"  val="2000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_kyuukei+=1"  name="bussyoku_kyuukei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kouisitu1

[tb_start_text mode=1 ]
[舜]（女の子が使う控室って、もっといい匂いだと思ったんだけど）[p]
[舜]（なんか…男の部室みたいな匂いだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kouisitu+=1"  name="bussyoku_kouisitu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kouisitu2

[tb_start_text mode=1 ]
[舜]（部屋の一部が更衣室として使われているようだ。[r]…おっ、シフト表発見…けっこうみんな自由に休んでるのか）[p]
[舜]（その中では蕾、ちゃんと律儀に出勤してんじゃん）[p]
[舜]（ああ見えて、真面目なんだろうな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kouisitu+=1"  name="bussyoku_kouisitu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kouisitu3

[tb_start_text mode=1 ]
[舜]（『ミミリン』『ジョディ』『きゃわたん』源氏名、自由だな）[p]
[舜]（アメリアがまだいい感じに聞こえるのが不思議だ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kouisitu+=1"  name="bussyoku_kouisitu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pureto1

[tb_start_text mode=1 ]
[舜]（使用中プレートでもつけておけば、誰も入って来ないのでは？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pureto+=1"  name="bussyoku_pureto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pureto2

[tb_start_text mode=1 ]
[舜]（カーテンが閉まっているいる時は中で着替えてるってことだ）[p]
[舜]（覗くにしても、イタズラするにしてもチャンスかも）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pureto+=1"  name="bussyoku_pureto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pureto3

[tb_start_text mode=1 ]
[舜]（ここに女の子が今いますって言ってるようなもんだし）[p]
[舜]（使用中って見せるの、本当は危ないよな…俺みたいな奴がいる場合は）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pureto+=1"  name="bussyoku_pureto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou1

[tb_start_text mode=1 ]
[舜]（天井にカメラつけたら…上から撮影できるかも）[p]
[舜]（そうすれば着替えも撮影できるかな？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou_rihure+=1"  name="bussyoku_tenjyou_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou2

[tb_start_text mode=1 ]
[舜]（まさか誰かに撮られてるなんて思わないだろうしな…）[p]
[舜]（油断してる着替えシーン、ばっちり撮れちゃいそうだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou_rihure+=1"  name="bussyoku_tenjyou_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou3

[tb_start_text mode=1 ]
[舜]（天井を掃除してるふりして、カメラを仕掛ければいいか）[p]
[舜]（あとは誰もいないタイミングを見計らうしかないかな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou_rihure+=1"  name="bussyoku_tenjyou_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yuka1

[tb_start_text mode=1 ]
[舜]（特に変わったところはなさそうだな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yuka+=1"  name="bussyoku_yuka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yuka2

[tb_start_text mode=1 ]
[舜]（この辺にカメラをつけたら、下からのローアングルも狙えそうだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yuka+=1"  name="bussyoku_yuka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yuka3

[tb_start_text mode=1 ]
[舜]（ん？誰かの忘れものか？　靴下…の下に何か──）[p]
[舜]（お金だ。忘れていくなんて不用心だな。頂いておこう）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]2000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=2000"  name="money_updated"  cmd="+="  op="t"  val="2000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_yuka+=1"  name="bussyoku_yuka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kami1

[tb_start_text mode=1 ]
[舜]（ハグ3000円に添い寝5000円…やっぱり高いな）[p]
[舜]（マッサージしかしない、って蕾は言ってたけど）[p]
[舜]（実際はここでエロいこともしてんだろうな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kami+=1"  name="bussyoku_kami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kami2

[tb_start_text mode=1 ]
[舜]（表向きは「何もありません」って態度だけど…まあ、限りなくグレーだよな）[p]
[舜]（蕾も、もしかしてそういうことしてんのかなって思うけど…）[p]
[舜]（あの性格だしな。……いやいや、さすがにないだろ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kami+=1"  name="bussyoku_kami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kami3

[tb_start_text mode=1 ]
[舜]（交渉次第でエッチもしてくれるってことか…）[p]
[舜]（なんかやる気出てきたぞ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kami+=1"  name="bussyoku_kami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako1

[tb_start_text mode=1 ]
[舜]（変なものは…流石に捨ててないか）[p]
[舜]（コンドームくらいあるかと思ったけどな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_rihure+=1"  name="bussyoku_gomibako_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako2

[tb_start_text mode=1 ]
[舜]（綺麗なもんだな…いや、こんなに何もないのはおかしい）[p]
[舜]（女の子が自分で捨ててんのか…証拠隠滅ってやつだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_rihure+=1"  name="bussyoku_gomibako_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako3

[tb_start_text mode=1 ]
[舜]（綺麗になってると、掃除する側としては楽でいいや）[p]
[舜]（もし万が一何か見つけた時は…その女の子に話してみてもいいな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_rihure+=1"  name="bussyoku_gomibako_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed1

[tb_start_text mode=1 ]
[舜]（金額次第で女の子とエロいことできるのか…？）[p]
[舜]（蕾はあり得ないって言ってたけど、他の子はしてんのかなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed_rihure+=1"  name="bussyoku_bed_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed2

[tb_start_text mode=1 ]
[舜]（たまに面倒な客もいるって聞くし、見てるよりよっぽどキツいんだろうな）[p]
[舜]（それでも笑顔でいられるの、すげぇよ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed_rihure+=1"  name="bussyoku_bed_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed3

[tb_start_text mode=1 ]
[舜]（うまくいけば、俺でもワンチャンあるか？）[p]
[舜]（……いやいや、ここで目立ったら全部パーだ。冷静にいけ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed_rihure+=1"  name="bussyoku_bed_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*telissyu1

[tb_start_text mode=1 ]
[舜]（うわ、またティッシュ少なくなってる。補充、忘れないようにしないと）[p]
[舜]（いや、それより在庫考えてる俺…完全にバイト脳だな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_telissyu+=1"  name="bussyoku_telissyu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*telissyu2

[tb_start_text mode=1 ]
[舜]（まぁ、ティッシュの使い道なんて想像つくよな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_telissyu+=1"  name="bussyoku_telissyu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*telissyu3

[tb_start_text mode=1 ]
[舜]（ここでヤってたのかもって考えると、変にテンション上がるけど）[p]
[舜]（冷静になると、やっぱ許せねぇな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_telissyu+=1"  name="bussyoku_telissyu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  