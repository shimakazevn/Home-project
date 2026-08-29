]
[_tb_system_call storage=system/_sinnyu_bussyoku_massaji_ev.ks]

*tenjyou1

[tb_start_text mode=1 ]
[舜]（ここから撮影すれば、部屋全体がばっちり映りそうだな）[p]
[舜]（どんな景色が拝めるかな？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou+=1"  name="bussyoku_tenjyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou2

[tb_start_text mode=1 ]
[舜]（落ち着く色の照明だよな…こだわって選んでるのかな）[p]
[舜]（今度凛子さんに聞いてみよっかな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou+=1"  name="bussyoku_tenjyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou3

[tb_start_text mode=1 ]
[舜]（この明るさで施術を受けたら、眠くなるだろうなぁ…）[p]
[舜]（っていうかエロい雰囲気にもなりやすそうだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou+=1"  name="bussyoku_tenjyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana1

[tb_start_text mode=1 ]
[舜]（オイルとクリームだ…普段凛子さんが使ってるものか）[p]
[舜]（肌にいいものを選んでるって言ってたっけ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tana_massaji+=1"  name="bussyoku_tana_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana2

[tb_start_text mode=1 ]
[舜]（ん…これは…パスケース？　お客さんの忘れものかな）[p]
[舜]（中にもいくらか入ってそうだな）[p]
[舜]（これは神様からのご褒美ってことで、いただいておこう）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]5000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_tana_massaji+=1"  name="bussyoku_tana_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana3

[tb_start_text mode=1 ]
[舜]（小銭入れか…2000円入ってるなぁ）[p]
[舜]（貰ってもバレない、よな…持ち主には悪いけど）[p]
[舜]（大切に使わせてもらおっと）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]2000円を拾った[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_tana_massaji+=1"  name="bussyoku_tana_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed1

[tb_start_text mode=1 ]
[舜]（凛子さん、このベッドでお客さんにいやらしいことしてたりとか…）[p]
[舜]（…そんなわけないよな、凛子さんに限って）[p]
[舜]（やめやめ、嫉妬するだけ損だ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed+=1"  name="bussyoku_bed"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed2

[tb_start_text mode=1 ]
[舜]（俺にもマッサージ覚えてほしいって言ってたよな…）[p]
[舜]（練習して、少しでも凛子さんの役に立たなくちゃな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed+=1"  name="bussyoku_bed"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed3

[tb_start_text mode=1 ]
[舜]（ここで昼寝とか…いやいや、さすがにそれはまずいよな）[p]
[舜]（いつか凛子さんと2人でここで…）[p]
[舜]（考えるだけで興奮してきたぞ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed+=1"  name="bussyoku_bed"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*katen1

[tb_start_text mode=1 ]
[舜]（ここ、いつもカーテン閉まってるよな…）[p]
[舜]（外は…そうか、人通りの多い国道だもんな。カーテンが開いてたら落ち着かないか…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_katen+=1"  name="bussyoku_katen"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*katen2

[tb_start_text mode=1 ]
[舜]（カーテン閉まってれば、外からも見えないのか…）[p]
[舜]（ということは、ここで何してもオッケーってことだよな？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_katen+=1"  name="bussyoku_katen"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*katen3

[tb_start_text mode=1 ]
[舜]（カーテンからもいい匂いがする）[p]
[舜]（柔軟剤かな？　それともスプレーを振りかけてるのか？　さすが凛子さん、こだわってるんだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_katen+=1"  name="bussyoku_katen"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*raito1

[tb_start_text mode=1 ]
[舜]（このライトの位置から撮影したら、全体がばっちり映りそうだな）[p]
[舜]（凛子さんの裸も…どんなふうにシャワー浴びてるのかもわかるのか）[p]
[舜]（うん、悪くないな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_raito+=1"  name="bussyoku_raito"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*raito2

[tb_start_text mode=1 ]
[舜]（施術室と違って、明るいライトだな）[p]
[舜]（全体もよく見える…撮影したら細かい部分まで映りそうだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_raito+=1"  name="bussyoku_raito"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*raito3

[tb_start_text mode=1 ]
[舜]（ライトの周りまで、じっくり見る奴はいないもんなぁ）[p]
[舜]（カメラを仕掛けてもバレなさそうだよな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_raito+=1"  name="bussyoku_raito"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ameniteli1

[tb_start_text mode=1 ]
[舜]（なるほど、これが凛子さんこだわりのボディソープか）[p]
[舜]（無添加で肌に優しいって言ってたよな）[p]
[舜]（ドラッグストアでは見たことない種類だなぁ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_ameniteli+=1"  name="bussyoku_ameniteli"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ameniteli2

[tb_start_text mode=1 ]
[舜]（凛子さんも同じもの使ってるんだろうな…）[p]
[舜]（だからあんなに肌が綺麗なのか。俺も使ってみるか…？）[p]
[舜]（男でも肌が綺麗なほうがいいに決まってるもんな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_ameniteli+=1"  name="bussyoku_ameniteli"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ameniteli3

[tb_start_text mode=1 ]
[舜]（な、なんて書いてあるんだ？　ハーバル、アロマ…）[p]
[舜]（だめだ、難しくて読めない…！）[p]
[舜]（とりあえず、いいものってことだけわかったからいいか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_ameniteli+=1"  name="bussyoku_ameniteli"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurodoa1

[tb_start_text mode=1 ]
[舜]（凛子さん、来ては…ないな）[p]
[舜]（あんまりここでウロウロしてると怪しまれるか）[p]
[舜]（いろいろ見終わったら、早いトコ出なきゃな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurodoa+=1"  name="bussyoku_hurodoa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurodoa2

[tb_start_text mode=1 ]
[舜]（あっちに誰か立ってると、影でわかるのか）[p]
[舜]（シャワー使用中にうっかりパウダールームに入らないようにしないと）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurodoa+=1"  name="bussyoku_hurodoa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurodoa3

[tb_start_text mode=1 ]
[舜]（向こうからも、シャワー使ってる影が見えるのか）[p]
[舜]（１度くらい凛子さんがシャワー浴びてるシルエット見たいもんだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurodoa+=1"  name="bussyoku_hurodoa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawaroom1

[tb_start_text mode=1 ]
[舜]（シャワールームも綺麗になってんなぁ）[p]
[舜]（俺の家の風呂とは全然違うわ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawaroom+=1"  name="bussyoku_syawaroom"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawaroom2

[tb_start_text mode=1 ]
[舜]（めちゃくちゃいい匂い…シャンプーかボディソープの匂いか）[p]
[舜]（凛子さんこだわりのものを置いてあるって言ってたもんな）[p]
[舜]（そういえば凛子さんと同じ匂いがするぞ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawaroom+=1"  name="bussyoku_syawaroom"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawaroom3

[tb_start_text mode=1 ]
[舜]（凛子さんもここでシャワー浴びたりするんだよな？）[p]
[舜]（施術で汗かいたらサッパリ汗流すって言ってたし…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawaroom+=1"  name="bussyoku_syawaroom"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kagami1

[tb_start_text mode=1 ]
[舜]（鏡もピカピカだなぁ。さすが凛子さん…掃除が行き届いてる）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kagami+=1"  name="bussyoku_kagami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kagami2

[tb_start_text mode=1 ]
[舜]「おっと、拭きのこしが。……俺、できる男になってきてる気がする」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kagami+=1"  name="bussyoku_kagami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kagami3

[tb_start_text mode=1 ]
[舜]（おっと、髪が乱れてる…一応身だしなみは気を付けないと）[p]
[舜]（蕾にもうるさく言われそうだし…鏡は見とくべきだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kagami+=1"  name="bussyoku_kagami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako1

[tb_start_text mode=1 ]
[舜]（ゴミ箱の中も…綺麗になってる。こまめに捨ててるのか）[p]
[舜]（ついチェックしちゃうの、もはや職業病だな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_massaji+=1"  name="bussyoku_gomibako_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako2

[tb_start_text mode=1 ]
[舜]（ここに凛子さんのものが捨ててあったら持ち帰りたいとこだけど）[p]
[舜]（残念。ここには何も捨ててないか…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_massaji+=1"  name="bussyoku_gomibako_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako3

[tb_start_text mode=1 ]
[舜]（コンドームとか捨ててあったら、ショック受けるところだけど）[p]
[舜]（特に何もなくて本当によかった）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_massaji+=1"  name="bussyoku_gomibako_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  