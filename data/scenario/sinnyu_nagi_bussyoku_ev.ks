[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_ev.ks]

*omoide

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]幼い日の記憶を思い出した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.omoide_para+=1"  name="omoide_para"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko1

[tb_start_text mode=1 ]
[舜]「お、けっこういろんなもの入ってるな…」[p]
[舜]（作り置きのおかずもある…俺とは大違いだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko+=1"  name="bussyoku_reizouko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko2

[tb_start_text mode=1 ]
[舜]「お、きんぴらごぼう。ラッキー」[p]
[舜]「…うん、うまい。こんな家庭的な料理久しぶりに食ったわ」[p]
[舜]（こっちの煮物も美味いな、これが凪の手料理かぁ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko+=1"  name="bussyoku_reizouko"  cmd="+="  op="t"  val="1"  ]
[return  ]
*reizouko3

[tb_start_text mode=1 ]
[舜]「あ、飲みかけの牛乳……」[p]
[舜]（別にこういう趣味があるわけじゃないんだけど…やっぱ一回はやっておきたいよな）[p]

ズボンと下着を脱ぎ、性器をパックの飲み口に擦りつける。[p]

[_tb_end_text]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  ]
[wait  time="2500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_reizouko.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[wait  time="500"  ]
[tb_start_text mode=1 ]
快感と共に熱い精液がどろりと流れる。パックの口からも流れていた。[p]

[舜]（色も同じだし…多分大丈夫かな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko+=1"  name="bussyoku_reizouko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_reizouko=1"  name="trap_reizouko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[mask_off  time="500"  effect="fadeOut"  ]
[return  ]
*reizouko4

[tb_start_text mode=1 ]
[舜]（特に気になるものはないな）[p]
[_tb_end_text]

[return  ]
*kittin1

[tb_start_text mode=1 ]
[舜]「キッチンも全然変わってないな…でも少し物は減ったかな？」[p]
[舜]（ここで凪は料理を作ってんのか…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kittin+=1"  name="bussyoku_kittin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kittin2

[tb_start_text mode=1 ]
[舜]（そういえば、子供の頃２人でインスタントラーメン作ったっけ）[p]
[舜]（熱いお湯が怖いって言うから、俺がお湯沸かして作ったんだよな。[r]懐かしいな…昔は俺が凪を守らなきゃって思ってたのに）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_kittin+=1"  name="bussyoku_kittin"  cmd="+="  op="t"  val="1"  ]
[return  ]
*kittin3

[tb_start_text mode=1 ]
[舜]（隼人もこの家に遊びに来てんだっけ？ ってことは凪の手料理も食ってんのか…？）[p]
[舜]「むかつくな…考えるんじゃなかった」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kittin+=1"  name="bussyoku_kittin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*mado1

[tb_start_text mode=1 ]
[舜]「そうそう、ここから俺の家が見えるんだよな」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_mado+=1"  name="bussyoku_mado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*mado2

[tb_start_text mode=1 ]
[舜]（今も凪のほうから俺の家の様子見ることあるのかな…）[p]
[舜]（俺じゃあるまいし、そんなことしてないか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_mado+=1"  name="bussyoku_mado"  cmd="+="  op="t"  val="1"  ]
[return  ]
*mado3

[tb_start_text mode=1 ]
[舜]（子供の頃、夜にお互いの家で懐中電灯光らせて遊んだよな）[p]
[舜]（懐中電灯の光が点滅するのを見てるだけなんだけど──[r]家にいるのに凪と繋がってるって感じがして嬉しかったっけ…）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_mado+=1"  name="bussyoku_mado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syokkidana1

[tb_start_text mode=1 ]
[舜]（食器が並んでる…この中も昔のままだな）[p]
[舜]（ずいぶん時間が経ってるのに、変わんないもんだなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syokkidana+=1"  name="bussyoku_syokkidana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syokkidana2

[tb_start_text mode=1 ]
[舜]（あ、これ…パンについてる点数シール集めてもらった小鉢だっけ）[p]
[舜]（子供の頃に２人で引き換えにいったよなぁ）[p]
[舜]（まだ使ってんのか…まぁ割れなきゃ使うよな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syokkidana+=1"  name="bussyoku_syokkidana"  cmd="+="  op="t"  val="1"  ]
[return  ]
*syokkidana3

[tb_start_text mode=1 ]
[舜]（おっ、凪のお気に入りだったコップも見っけ）[p]
[舜]（物持ちいいなぁ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syokkidana+=1"  name="bussyoku_syokkidana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*denwa1

[tb_start_text mode=1 ]
[舜]（家の電話、まだ使えるようにしてんのか？）[p]
[舜]（ほとんど家にいないだろうし、使う機会もないと思うんだけどな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_denwa+=1"  name="bussyoku_denwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*denwa2

[tb_start_text mode=1 ]
[舜]（凪、今は電話に出てるのかな…昔は電話が苦手って言ってたけど）[p]
[舜]（凪の家に来ると、なぜか俺が電話に出てたっけな…）[p]
[舜]（あの頃、完全にこの家の子だと思われてんだろうな）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_denwa+=1"  name="bussyoku_denwa"  cmd="+="  op="t"  val="1"  ]
[return  ]
*denwa3

[tb_start_text mode=1 ]
[舜]（留守電も入ってないな…）[p]
[舜]（そりゃそうか、何かあれば凪のスマホにかかってくるはずだし）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_denwa+=1"  name="bussyoku_denwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako1

[tb_start_text mode=1 ]
[舜]（お菓子の包みに、化粧品のパッケージかぁ…）[p]
[舜]（やっぱり生活は出るよな～）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako+=1"  name="bussyoku_gomibako"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako2

[tb_start_text mode=1 ]
[舜]（これで、使ったゴムが出てきたら凹むけど…さすがにないか）[p]
[舜]（なんでホッとしてんだ俺…ったく）[p]
[舜]（でも、ないってことは生でセックスしてるとか？　いや、ないない！）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako+=1"  name="bussyoku_gomibako"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako3

[tb_start_text mode=1 ]
[舜]（ゴミ箱の中に変なものは…特にはなさそうだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako+=1"  name="bussyoku_gomibako"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc1

[tb_start_text mode=1 ]
[舜]（凪のパソコンとタブレットだ。…流石にロックがかかってるな）[p]
[舜]（パスワードは…だめだ、適当に押したんじゃ入れるわけない）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc2

[tb_start_text mode=1 ]
[舜]（ん？　このタブレット…）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tabu.png" time="800" ]
[_tb_end_tyrano_code]

[wait  time="500"  ]
[tb_start_text mode=1 ]
[舜]（凪の指紋のあとがはっきり見える。[r]不用心だなぁ…。まぁ、普通はこんなところまで気にしないか）[p]

[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_1

[tb_start_text mode=1 ]
[舜]（それじゃ、中のデータを確認させてもらおうかな）[p]
[_tb_end_text]

[call  storage="sinnyu_PC.ks"  target="*1"  ]
[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_2

[tb_start_text mode=1 ]
[舜]（よし、さっそく見てみるか…）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_messe2.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
（凪と隼人の関係性が微妙）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_3

[tb_start_text mode=1 ]
[舜]（よし、さっそく見てみるか…）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_messe3.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
（凪と隼人の関係性が険悪）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_4

[tb_start_text mode=1 ]
[舜]（よし、さっそく見てみるか…）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_messe4.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
（凪が隼人を振った後）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*senpuuki1

[tb_start_text mode=1 ]
[舜]（おー！　この扇風機もまだ現役なのか。昔、扇風機に顔近づけて遊んだよな～）[p]
[舜]（凪もめちゃくちゃ喜んでたっけ。普段笑わないから嬉しかったな～）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_senpuuki+=1"  name="bussyoku_senpuuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*senpuuki2

[tb_start_text mode=1 ]
[舜]（子供の頃からある扇風機が動いてるってすごいな）[p]
[舜]（凪、大事に使ってんだろうな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_senpuuki+=1"  name="bussyoku_senpuuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*senpuuki3

[tb_start_text mode=1 ]
[舜]（クーラーの風が苦手なのかな？　俺はもっぱらクーラー派だけど）[p]
[舜]（まぁ女の子だと、体冷えるとかそういうこともあんのか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_senpuuki+=1"  name="bussyoku_senpuuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana1

[tb_start_text mode=1 ]
[舜]（本棚は…看護師国家試験の勉強用テキストばっかりだ）[p]
[舜]（勉強、めちゃくちゃ頑張ったんだろうなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tana+=1"  name="bussyoku_tana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana2

[tb_start_text mode=1 ]
[舜]（アルバム発見…！　昔の写真だ…凪もちっちゃいな～）[p]
[舜]（ん？　なんかこの写真の凪、機嫌悪くないか？）[p]
[舜]（あぁ、ゲームやってるとこ中断させられたんだったな…）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_tana+=1"  name="bussyoku_tana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana3

[tb_start_text mode=1 ]
[舜]（昔、大量に揃えてたゲーム、捨てちゃったのか？）[p]
[舜]（まぁ、大人になったもんなぁ…やる暇もないか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tana+=1"  name="bussyoku_tana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tansu1

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（下着発見…！！）[p]
[舜]（凪、こういうのつけてんのか…地味なのが逆にエロいぞ）[p]
[舜]（洗剤の香りがふわっと…なんか、ちょっとドキドキしてきた）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_tansu+=1"  name="bussyoku_tansu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tansu2

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（パンティを見つけたからには、やる事は一つだよな）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi.png" time="800" ]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]（うお…パンツの肌触りってこんな感じかぁ……）[p]
すでに固くなったモノを激しくパンティのクロッチに擦りつける。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi_syasei.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（ヤバ。汚れちゃったよ…でもまぁいっか。）[p]
[舜]（洗った下着汚すのは、さすがに申し訳なかったな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tansu+=1"  name="bussyoku_tansu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_tansu=1"  name="trap_tansu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*tansu3

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（バレないように元に戻しておかなきゃな…）[p]
[舜]（綺麗に畳んで…よし、ここまでしておけば大丈夫だろ）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_tansu+=1"  name="bussyoku_tansu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huton1

[tb_start_text mode=1 ]
[舜]（小さい頃『一緒に寝たら結婚しなきゃ』って凪が言い出して）[p]
[舜]（俺もなぜか信じちゃって、凪を幸せにするって覚悟決めたっけ）[p]
[舜]（あのあと、母さんに笑われたなぁ…）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_huton+=1"  name="bussyoku_huton"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huton2

[tb_start_text mode=1 ]
[舜]（いつもここで凪が寝てんのか…）[p]
[舜]（確かに凪の匂いがする…ちょっと寝てみても…バレないよな）[p]
[舜]（凪と一緒に寝てるみたい…落ち着く匂いだ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huton+=1"  name="bussyoku_huton"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huton3

[tb_start_text mode=1 ]
[舜]（ここでしごくの、背徳感マシマシだな）[p]
[_tb_end_text]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[wait  time="2000"  ]
[tb_start_text mode=1 ]
[舜]「あー、やべ、もう出そ…枕に…くっ」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_huton.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[wait  time="500"  ]
[tb_start_text mode=1 ]
[舜]（あーあ、枕汚れちゃったな…バレないといいけど…）[p]
[舜]（ま、そのうち乾くだろうし大丈夫かな）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_huton+=1"  name="bussyoku_huton"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_makura=1"  name="trap_makura"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hosu1

[tb_start_text mode=1 ]
[舜]（洗濯ホースか…これ何に使うの？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hosu+=1"  name="bussyoku_hosu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hosu2

[tb_start_text mode=1 ]
[舜]（あいつも俺と同じで使わない部品くらいにしか思ってなさそう）[p]
[舜]（今度それとなく聞いてみよっかな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hosu+=1"  name="bussyoku_hosu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hosu3

[tb_start_text mode=1 ]
[舜]（俺の家の洗濯機がどんなふうになってるか、意識したことないな）[p]
[舜]（帰ったら確認してみるか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hosu+=1"  name="bussyoku_hosu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sentakuki1

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_sentakuki.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（洗濯機の中に何かある…おっ、使用済みパンティ発見！）[p]
[舜]（この雑に脱ぎ捨てた感じも良いんだよな～）[p]
[舜]（すー…はー…ほんのり汗のすっぱさと生臭さが混じったような匂い…。これが凪の匂いかぁ…）[p]

[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakuki+=1"  name="bussyoku_sentakuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*sentakuki2

[tb_start_text mode=1 ]
[舜]（一枚失礼して…と。 どうせ洗うし…良いよな？）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi2.png" time="500" ]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]（うおぉ…クロッチの湿った布地が張り付いてくる…）[p]
[舜]（体温が残ってるみたいで、めちゃくちゃ生々しいぞ…）[p]
[舜]「あー、やべ、もう出そ…」[p]
[_tb_end_text]

[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi_syasei2.png" time="800" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（うう、…これは癖になりそうだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakuki+=1"  name="bussyoku_sentakuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_sentaku=1"  name="trap_sentaku"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*sentakuki3

[tb_start_text mode=1 ]
[舜]（他には…特にはなさそうかな）[p]
[舜]（ホントなら下着を持ち帰りたいとこだけど、我慢だな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakuki+=1"  name="bussyoku_sentakuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sentakumono1

[tb_start_text mode=1 ]
[舜]（洗濯物、ここに干してんのか…あー、端っこ折れたままじゃん）[p]
[舜]（凪、大雑把だよなぁ。まだハンガーにかけるの苦手なのか）[p]
[舜]（子供の頃も、よく凪の母さんに叱られてたっけな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakumono+=1"  name="bussyoku_sentakumono"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[return  ]
*sentakumono2

[tb_start_text mode=1 ]
[舜]（ここで乾かして、そのまま着てるのか）[p]
[舜]（なるほど便利だなぁ…畳む手間もないし）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakumono+=1"  name="bussyoku_sentakumono"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sentakumono3

[tb_start_text mode=1 ]
[舜]（柔軟剤のいい香りがする）[p]
[舜]（そういえば凪も同じ香りしてたなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakumono+=1"  name="bussyoku_sentakumono"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*taoru1

[tb_start_text mode=1 ]
[舜]（このフェイスタオル、いい匂いだな…。せっかくだし、俺も顔を拭かせてもらお）[p]
[舜]（よく考えたら、これって間接キス？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_taoru+=1"  name="bussyoku_taoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*taoru2

[tb_start_text mode=1 ]
[舜]（毎朝このフェイスタオルで顔を拭いてるんだよなぁ…）[p]
[舜]（どうせだから我慢汁もつけておこうかな。）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_taoru+=1"  name="bussyoku_taoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*taoru3

[tb_start_text mode=1 ]
[舜]（このまま何も知らずに出勤していくと思うと……）[p]
[舜]（なんていうか…妙な背徳感が、じわじわくるな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_taoru+=1"  name="bussyoku_taoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kago1

[tb_start_text mode=1 ]
[舜]（これ…まだ洗濯してないのか。たまったら洗濯機回してんのかな～）[p]
[舜]（まぁ1人暮らしじゃ毎日洗濯しなくてもいいもんな）[p]
[舜]（何が置いてあんのかな？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kago+=1"  name="bussyoku_kago"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kago2

[tb_start_text mode=1 ]
[舜]（これ、凪が職場で履いてる白タイツじゃん！）[p]
[舜]（エロ…１回履いてみよっ。って、さすがにキツキツすぎて無理か）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kago+=1"  name="bussyoku_kago"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kago3

[tb_start_text mode=1 ]
[舜]（ヤバ、めっちゃしごきたいぞ…ちょっと失礼して…）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_pansuto.png" time="800" ]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]「うぉお…すげぇサラサラだ…！パンストの感触ってこんなかぁ）[p]
[舜]「やわらかくて、ちんぽがやさしく包み込まれてるみたいだ…）[p]
[_tb_end_text]

[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_pansuto_syasei.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（はー、すげぇ興奮した…洗濯すりゃバレないよな？）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.trap_sentakukago=1"  name="trap_sentakukago"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.bussyoku_kago+=1"  name="bussyoku_kago"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kabekake1

[tb_start_text mode=1 ]
[舜]（ひまわりの写真……凪が飾ったのか）[p]
[舜]（そうだ、思い出した。凪は昔っからひまわり好きだったな…）[p]
[舜]（夏になると、よくひまわり畑に遊びに行ったっけ。凪は覚えてるかな）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_kabekake+=1"  name="bussyoku_kabekake"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kabekake2

[tb_start_text mode=1 ]
[舜]（凪、トイレに入ってる時この写真見てんのかな？）[p]
[舜]（どんなこと考えてんだろ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kabekake+=1"  name="bussyoku_kabekake"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kabekake3

[tb_start_text mode=1 ]
[舜]（凪がまたひまわり畑見に行きたいって言ったら、連れて行くのにな）[p]
[舜]（まぁ、今は『連れて行って』って頼む相手は俺じゃないか）[p]
[舜]「って、自分で言っててムカついてきた。やめやめ」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kabekake+=1"  name="bussyoku_kabekake"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*komado1

[tb_start_text mode=1 ]
[舜]（窓には…変わったところはないな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_komado+=1"  name="bussyoku_komado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*komado2

[tb_start_text mode=1 ]
[舜]（ちゃんと窓も綺麗に拭いてるんだな…掃除してる証拠だ）[p]
[舜]（凪、丁寧に生活してんだなぁ…。俺もたまにはトイレの窓拭いてみるか）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_komado+=1"  name="bussyoku_komado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*komado3

[tb_start_text mode=1 ]
[舜]（小さい頃、トイレの窓が怖いって凪がよく言ってたっけな）[p]
[舜]（遊んでても毎回トイレまで一緒に行ってたし…）[p]
[舜]（ドア開けてしてた時もあったよな。凪に思い出話してみるか）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_komado+=1"  name="bussyoku_komado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*poti1

[tb_start_text mode=1 ]
[舜]（ポーチ？　中に何入ってんだ？　これは…ナプキンってやつか）[p]
[舜]「開いてもいいいよな…、サイズも形もいろいろあるのか」[p]
[舜]「これをパンツに貼り付けとくなんて、女は大変だな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_poti+=1"  name="bussyoku_poti"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*poti2

[tb_start_text mode=1 ]
[舜]（ここに血がしみこむって事？…イマイチ想像できないな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_poti+=1"  name="bussyoku_poti"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*poti3

[tb_start_text mode=1 ]
[舜]（ナプキンが使用済じゃないのが悔やまれる…もちろん怖いもの見たさだけどな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_poti+=1"  name="bussyoku_poti"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki1

[tb_start_text mode=1 ]
[舜]（凪がいつも座ってる便座か…）[p]
[舜]（ここに射精したら、その上に凪が座ることになるんだよな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki+=1"  name="bussyoku_benki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki2

[tb_start_text mode=1 ]
[舜]（いや、待てよ。でも隼人が使ってるかもしれない）[p]
[舜]（一気に萎えた…やめておこう）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki+=1"  name="bussyoku_benki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki3

[tb_start_text mode=1 ]
[舜]（凪、子供の頃は便座に座ったままゲームしてたよな）[p]
[舜]（何時間でも座ってるから、１度行方不明だって大騒ぎなって…）[p]
[舜]（結局家のトイレから出てきたんだったな）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_benki+=1"  name="bussyoku_benki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huromado1

[tb_start_text mode=1 ]
[舜]（ここから見える景色も変わってないなぁ）[p]
[舜]（凪、一緒に風呂入った時『窓から誰か見てたら怖い』って言ってたっけ」[p]
[舜]（怖がって、俺にくっついてたよな）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_huromado+=1"  name="bussyoku_huromado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huromado2

[tb_start_text mode=1 ]
[舜]（光が入って明るいのはいいんだけどなぁ）[p]
[舜]（窓が大きいと女の子は心配か）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huromado+=1"  name="bussyoku_huromado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huromado3

[tb_start_text mode=1 ]
[舜]（覗くのは幽霊じゃなくて人間の可能性のが高いよな）[p]
[舜]（って、俺が言える立場じゃないか…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huromado+=1"  name="bussyoku_huromado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yokusou1

[tb_start_text mode=1 ]
[舜]（俺、小さい頃はよく凪と一緒に風呂に入ってたなぁ）[p]
[舜]（昔は男女とか関係なかったもんな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yokusou+=1"  name="bussyoku_yokusou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yokusou2

[tb_start_text mode=1 ]
[舜]（裸の見せ合いっこもしたっけな…）[p]
[舜]（男女の体の違いを初めて認識したのも凪との風呂だった）[p]
[舜]（あの時が一番楽しかったな）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_yokusou+=1"  name="bussyoku_yokusou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yokusou3

[tb_start_text mode=1 ]
[舜]（今一緒に風呂入ろっかって言ったらどんな反応されるんだろ）[p]
[舜]（絶対引かれるよな…やめとこ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yokusou+=1"  name="bussyoku_yokusou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawa1

[tb_start_text mode=1 ]
[舜]（シャワーヘッド、ウチのと違うじゃん）[p]
[舜]（自分でつけかえたのか？　へぇ、水圧強くなるタイプなんだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawa+=1"  name="bussyoku_syawa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawa2

[tb_start_text mode=1 ]
[舜]（水圧強めのシャワー気持ちよさそうだなぁ）[p]
[舜]（凪も、これでオナニーしてたりして…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawa+=1"  name="bussyoku_syawa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawa3

[tb_start_text mode=1 ]
[舜]（シャワーだけじゃなくて、ちゃんと浴槽にも浸かってんのかな？）[p]
[舜]（１人暮らしだとめんどくさくてシャワーだけにしがちだけど…）[p]
[舜]（凪は風呂に入ってるか…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawa+=1"  name="bussyoku_syawa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syanpu1

[tb_start_text mode=1 ]
[舜]（これが凪の使ってるシャンプーとリンスか）[p]
[舜]（凪、子供の頃はシャンプーが目に入るの嫌だって泣いてたっけな）[p]
[舜]（大人になると自然と上手に髪を洗えるようになるから不思議だよな）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_syanpu+=1"  name="bussyoku_syanpu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syanpu2

[tb_start_text mode=1 ]
[舜]（あ、今はリンスじゃなくてコンディショナーっていうのか…）[p]
[舜]（男にはさっぱりだな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syanpu+=1"  name="bussyoku_syanpu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syanpu3

[tb_start_text mode=1 ]
[舜]（けっこういい値段するものなのかもな～）[p]
[舜]（『うねる髪もするんとまとまる』か…もしかして、くせっ毛を気にしてるのか？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syanpu+=1"  name="bussyoku_syanpu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurotaoru1

[tb_start_text mode=1 ]
[舜]（これで普段凪が体洗ってるのか…やわらかめのボディタオルだな）[p]
[舜]（俺には物足りなく感じそうだ…もっとゴリゴリ洗いたい）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurotaoru+=1"  name="bussyoku_hurotaoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurotaoru2

[tb_start_text mode=1 ]
[舜]（女の子の肌用のボディタオルなのかな？）[p]
[舜]（これを使えば、凪みたいに肌スベスベになるとか？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurotaoru+=1"  name="bussyoku_hurotaoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurotaoru3

[tb_start_text mode=1 ]
[舜]（匂いは…ボディソープのいい匂いだ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurotaoru+=1"  name="bussyoku_hurotaoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*zaisu1

[tb_start_text mode=1 ]
[舜]（いつもこの椅子に座って体を洗ってるのか…）[p]
[舜]（…想像するなって方が無理ってもんだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_zaisu+=1"  name="bussyoku_zaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*zaisu2

[tb_start_text mode=1 ]
[舜]（ちょっとだけなら、大丈夫だよな…）[p]
[_tb_end_text]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_zaisu.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
白濁の液体がとろっと椅子の上に広がった。[p]
[舜]（凪がここに座るってだけで妙に意識してる俺も俺だけど）[p]
[舜]（……さすがに妊娠はない、ないよな？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_zaisu+=1"  name="bussyoku_zaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_huro=1"  name="trap_huro"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*zaisu3

[tb_start_text mode=1 ]
[舜]（せっかくだから、流さないでこのままにしておくかな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_zaisu+=1"  name="bussyoku_zaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huku1

[tb_start_text mode=1 ]
[舜]（はぁ？　ここ凪の母さんの部屋だっただろ）[p]
[舜]（なんで隼人の服があるんだよ…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huku+=1"  name="bussyoku_huku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huku2

[tb_start_text mode=1 ]
[舜]（ムカつく…そうだ、凪のパンティをポケットに入れてやろう）[p]
[舜]（せいぜい変態扱いされるんだな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huku+=1"  name="bussyoku_huku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_hayatohuku=1"  name="trap_hayatohuku"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huku3

[tb_start_text mode=1 ]
[舜]（よし、元通りになった。これでぱっと見はわかんないな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huku+=1"  name="bussyoku_huku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kaban1

[tb_start_text mode=1 ]
[舜]（なんでここに隼人の私物があるんだよ…）[p]
[舜]（そんなに頻繁に来てんの？）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kaban+=1"  name="bussyoku_kaban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kaban2

[tb_start_text mode=1 ]
[舜]（バッグに丁寧にコンドームまで入れてんのか。不要なゴミを持ち込むなよ)[p]
[舜]（…）[p]
[舜]（そうだな…せっかくだから有効活用させてもらおっと）[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_show  time="0"  storage="default/bussyoku_kon.png"  width="1280"  height="720"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（うぉ…結構出たな…。）[p]
[舜]（で…ゴミはゴミ箱にポイ、と。使用済みのゴムがゴミ箱に捨ててあったら…凪驚くだろうな）[p]
[舜]（我ながら俺しか喜ばない最高のアイデアだ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kaban+=1"  name="bussyoku_kaban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_gomibako=1"  name="trap_gomibako"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_image_hide  time="1000"  ]
[return  ]
*kaban3

[tb_start_text mode=1 ]
[舜]（あれ？　これってラブホテルのレシート？　これ、他の女の子と行ったやつだよな…）[p]
[舜]（そうだなぁ…。とりあえずゴミ箱に捨てておいてやろう）[p]
[舜]（凪に怒られろ馬鹿が）[p]
[_tb_end_text]

[tb_eval  exp="f.trap_hayatosibutu=1"  name="trap_hayatosibutu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.bussyoku_kaban+=1"  name="bussyoku_kaban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako_hayato1

[tb_start_text mode=1 ]
[舜]（ビニールやプラスチックのゴミが捨てられている）[p]
[舜]（これ…あいつが捨てたゴミだよな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_hayato+=1"  name="bussyoku_gomibako_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako_hayato2

[tb_start_text mode=1 ]
[舜]（はぁ……。男が捨てたゴミだと思うと、なんかもう、吐き気しかしねぇ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_hayato+=1"  name="bussyoku_gomibako_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako_hayato3

[tb_start_text mode=1 ]
[舜]（…もういいや。これ以上漁ってもロクなもん出てこねぇし）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_hayato+=1"  name="bussyoku_gomibako_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sibutu1

[tb_start_text mode=1 ]
[舜]（あれ、何か入ってるな。 男モノの筆記用具にノートだ）[p]
[舜]（これ、隼人のペンか？　腹立つくらいにいいの使ってんな…）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sibutu+=1"  name="bussyoku_sibutu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sibutu2

[tb_start_text mode=1 ]
[舜]（これ…隼人の字か）[p]
[舜]（ガワだけ整えてりゃ中身のクズさが隠れるとでも思ってんのか）[p]
[舜]（全てがムカつくんだよ）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sibutu+=1"  name="bussyoku_sibutu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sibutu3

[tb_start_text mode=1 ]
[舜]（っつーか、筆記用具まで置いてあんのか）[p]
[舜]（入り浸る気満々じゃねぇか。図々しい野郎だな）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sibutu+=1"  name="bussyoku_sibutu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
