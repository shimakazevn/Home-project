[_tb_system_call storage=system/_H_suimin_serihu.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「出る…！　凪…！」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="80"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H01_2.png"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「ふーっ、ふーっ、ふーっ…凪の体…俺の精子でドロドロじゃん…あぁ、エロ…」[p]
凪「んー…っ…」[p]
[舜]（ヤバ…起きちゃったか？　いや…大丈夫そうだな…よかった）[p]
[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*syasei"  ]
[return  ]
*syasei_kokan

[cm  ]
[tb_start_text mode=1 ]
[舜]「出る…！　凪…！　くっ！」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="80"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H01_1.png"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（うわっ、溜めてたからめちゃくちゃ出たぞ……）[p]
[舜]（あぁ、割れ目に垂れて、クリも膣も…精子でドロドロだ……）[p]
[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*syasei"  ]
*sikan1

[tb_start_text mode=1 ]
[舜]（子供の頃とは全然違う…エロい体に成長したな…あ～、どこも全部柔らかそうだ…）[p]
凪「すーっ…すーっ…すーっ…」[p]
[舜]「全然起きる気配ないな…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_sikan+=1"  name="H_suimin_sikan"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sikan2

[tb_start_text mode=1 ]
[舜]（この体を隼人は好きにしてるのか…あ～、なんかムカついてきた…）[p]
[舜]（俺もこのおっぱい、好き放題触ってやる。あ、乳首も立ってきた…あとでじっくり撫で回してやるか）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_sikan+=1"  name="H_suimin_sikan"  cmd="+="  op="t"  val="1"  ]
[return  ]
*sikan3

[tb_start_text mode=1 ]
凪「ん…ふっ…」[p]
[舜]（びっくりした…起きるのかと思った…大丈夫、まだ寝てるし…しっかり見ておこう）[p]
[舜]（パンツが食い込んで、割れ目がくっきりだな…へぇ、けっこうココはぷっくりしてるんだ）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_sikan=0"  name="H_suimin_sikan"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*syojyomaku1

[tb_start_text mode=1 ]
[舜]（さて…パンツの中はどうなってるのかな…？　んっ、…ピッタリ割れ目じゃん）[p]
[舜]（指で開いて御開帳……と。あれっ？　奥の方に…膜…？……いや、まさかね）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_syojyomaku+=1"  name="H_suimin_syojyomaku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syojyomaku2

[tb_start_text mode=1 ]
[舜]（中も綺麗なピンク色。…クリもぷっくりしてて…綺麗だ）[p]
[舜]（急に開かれて、体がびっくりしてんのかな？　ヒクヒク動いて可愛いな…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_syojyomaku+=1"  name="H_suimin_syojyomaku"  cmd="+="  op="t"  val="1"  ]
[return  ]
*syojyomaku3

[tb_start_text mode=1 ]
[舜]（もっとじっくり中までよく見ておかなきゃな…。中も狭そうだ…指一本でもキツそうだぞ）[p]
[舜]（慣らすだけですっごく大変そうだな…でも締まりもすごいんだろうな……）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_syojyomaku=0"  name="H_suimin_syojyomaku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*kiss1

[tb_start_text mode=1 ]
[舜]「凪……ちゅ…。唇、柔らかい…」[p]
[舜]「はぁ…こんなに唇って柔らかいのか…止めらんなくなりそうだ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_kiss+=1"  name="H_suimin_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kiss2

[tb_start_text mode=1 ]
[舜]「凪、もう一度…。ちゅぷ……ちゅ……ん、ふぅ」[p]
凪「んんっ、ふっ…んん」[p]
[舜]「あぁ、苦しいよな…ごめんごめん。ふふ、これでも起きないのか…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_kiss+=1"  name="H_suimin_kiss"  cmd="+="  op="t"  val="1"  ]
[return  ]
*kiss3

[tb_start_text mode=1 ]
[舜]「舌、口の中に入れさせてよ。ベロチューしよ…ちゅ、ちゅぷ…ちゅ……」[p]
凪「ん、ふぅ…んんっ…」[p]
[舜]（あぁ、凪の舌ねっとりあっつ…エロい声漏れてる…たまんないな…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_kiss=0"  name="H_suimin_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*muneijiri1

[tb_start_text mode=1 ]
[舜]「おっぱい…うわ、ふわふわ…やわらか…あ～、触り心地最高…」[p]
[舜]（スゲ、ちょっと力入れると形変わっちゃうくらい柔らかいんだな」[p]
[舜]（子供の頃は、細くてただただ小さかったのに。こんなエロいおっぱいになるなんて…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_muneijiri+=1"  name="H_suimin_muneijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*muneijiri2

[tb_start_text mode=1 ]
[舜]（鷲掴みしながら揉みしだくの、ヤバ…完全に犯してるみたいになってるじゃん）[p]
凪「んっ…　んはっ…」[p]
[舜]「ん…寝てんのに感じてるんだ？　エロいな、凪は…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_muneijiri+=1"  name="H_suimin_muneijiri"  cmd="+="  op="t"  val="1"  ]
[return  ]
*muneijiri3

[tb_start_text mode=1 ]
[舜]（乳首も立ってきてる。コリコリしたらどうなんの？）[p]
凪「あっ…はぁ　あっ、あぁ」[p]
[舜]（寝ながら感じてんだ…凪って、実はスケベだったりして…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_muneijiri=0"  name="H_suimin_muneijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*mataijiri1

[tb_start_text mode=1 ]
[舜]（割れ目はどうなってるかな……。あっつ…え、なんかぬるぬるしてるけど。濡れてる？）[p]
凪「すぅ……すぅ……」[p]
[舜]（…へぇ、眠ってても身体って反応するんだな。男の体と同じだな）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_mataijiri+=1"  name="H_suimin_mataijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*mataijiri2

[tb_start_text mode=1 ]
[舜]（クリも膨らんできた……凪、ここが気持ちいいのか？）[p]
凪「んっ♡　んーー……♡ふぅ、んんっ…」[p]
[舜]（身体がビクついて息が上がっているようだ。エロい夢でも見てるのかな…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_mataijiri+=1"  name="H_suimin_mataijiri"  cmd="+="  op="t"  val="1"  ]
[return  ]
*mataijiri3

[tb_start_text mode=1 ]
[舜]（割れ目、もうトロトロだ…。これだけくちゅくちゅさせても起きないもんだな…）[p]
凪「んん♡　はぁ…♡はぁ…♡」[p]
[舜]（体が発情状態になってる…凪、挿れたくてしかたないよ……）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_mataijiri=0"  name="H_suimin_mataijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*matazuri1

[tb_start_text mode=1 ]
[舜]「っ、…うわっ！　気持ちいい…割れ目にくっつけて擦るだけでこんな気持ちいいのか…」[p]
[舜]「あ～、腰、勝手に動く…はぁ、あっ、凪の割れ目もヒクヒク動いてんじゃん」[p]
凪「すぅ…すぅ……んっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_matazuri+=1"  name="H_suimin_matazuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*matazuri2

[tb_start_text mode=1 ]
凪「んん……っ」[p]
[舜]（凪、まさか寝てる間にこんなことされてるなんて思いもしないだろうなぁ…）[p]
[舜]（悪いな…勝手におまんこ使わせてもらっちゃって…中に入れないから、もうちょい擦らせて…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_matazuri+=1"  name="H_suimin_matazuri"  cmd="+="  op="t"  val="1"  ]
[return  ]
*matazuri3

[tb_start_text mode=1 ]
[舜]「うぅ…愛液と我慢汁でヌルヌルだ。凪のまんこ、めちゃくちゃ柔らかい…」[p]
凪「はぁ……っ…はぁっ♡んん…♡」[p]
[舜]「あ～挿れたい…でもバレたらヤバいし…ここは我慢だ…くそ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_matazuri=0"  name="H_suimin_matazuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
