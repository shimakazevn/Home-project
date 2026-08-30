[_tb_system_call storage=system/_H_serihu_rinko.ks]

*high

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=4"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="+="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*high2

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=7"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(15-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*low

[tb_eval  exp="f.H_hit-=1"  name="H_hit"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou-=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="-="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*hit

[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=3"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(20-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="20"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*supiritasu_kaiwa1

[tb_start_text mode=1 ]
凛子「じっと見てどうしたの？　ふふ、緊張しちゃった？」[p]
[舜]「あ、すみません…全部エッチで…」[p]
凛子「上手ね…[舜]くんに見られてるだけで、なんか私も興奮しちゃうみたい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_sikan_rinko+=1"  name="H_supiritasu_sikan_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kaiwa2

[tb_start_text mode=1 ]
凛子「そんなに見つめられたら恥ずかしい…じゃあ私も[舜]くんのことじっと見ちゃおうかな♡」[p]
凛子「ふふ、見つめ合っちゃったね…♡　変な顔してないかな～」[p]
[舜]（当然だけど…凛子さんかなり酔ってるな…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_sikan_rinko+=1"  name="H_supiritasu_sikan_rinko"  cmd="+="  op="t"  val="1"  ]
[return  ]
*supiritasu_kaiwa3

[tb_start_text mode=1 ]
凛子「そんなに見つめられたら恥ずかしい…じゃあ私も[舜]くんのことじっと見ちゃおうかな♡」[p]
凛子「ふふ、見つめ合っちゃったね…♡　変な顔してないかな～」[p]
[舜]（当然だけど…凛子さんかなり酔ってるな…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_sikan_rinko=0"  name="H_supiritasu_sikan_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*supiritasu_kiss1

[tb_start_text mode=1 ]
凛子「んっ…ちゅ、ちゅぷ、ちゅ…んんっ…はぁ、そんなに激しくキスされたら…」[p]
[舜]「凛子さんの唇、プルプルで柔らか…」[p]
凛子「ちゅぷ、ちゅ、ちゅ、んんっ♡　気持ちよくなっちゃう…♡　はぁ、はふっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[tb_eval  exp="f.H_supiritasu_kiss_rinko+=1"  name="H_supiritasu_kiss_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kiss2

[tb_start_text mode=1 ]
凛子「んむっ…んっ♡　ちゅぷ、ちゅく、んん、[舜]くんの舌入ってきちゃったぁ…んんっ♡」[p]
[舜]「ふーっ、ふーっ、んんっ、口の中あっつ…とまんない…」[p]
凛子「はふ、ちゅくちゅくちゅく、じゅるるる♡　んんっ、キス気持ちいい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_kiss_rinko+=1"  name="H_supiritasu_kiss_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_kiss3

[tb_start_text mode=1 ]
凛子「じゅぷ、じゅぷちゅっちゅ♡　はぁ、はっ♡　激し…食べられちゃうみたい♡」[p]
凛子「はぁ、はっ…舌絡ませるの…気持ちいいね…♡　んんっ、ちゅぷ、ちゅっちゅ♡」[p]
[舜]（あ～、ねっとりキス最高すぎ…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_kiss_rinko=0"  name="H_supiritasu_kiss_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ちゅぷ、ちゅ…んんっ♡　はっ、はぁ♡　すごい…今の…」[p]
凛子「キスだけで…お腹の辺りきゅんとしちゃった…♡　体が悦んでるみたい…♡」[p]
[舜]（とろんとした顔…めちゃくちゃエロいぞ…）[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…♡　おっぱい好きなの？　遠慮しなくていいよ、いっぱい触って♡」[p]
[舜]（すごいボリュームだ…手から溢れてる…！）[p]
凛子「んっ♡　鷲掴みされちゃった…揉みしだいていいからね。好きにして♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_munemomi_rinko+=1"  name="H_supiritasu_munemomi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_munemomi2

[tb_start_text mode=1 ]
凛子「あっ♡　あぁっ♡　はっ…んんっ、おっぱい気に入ったのね？　ふふ、赤ちゃんみたいね」[p]
凛子「満足いくまで触って…あっ♡　はぁ、んんっ♡　その触り方…すっごく好き…♡」[p]
凛子「[舜]くん、オスの顔になってる♡　もっと触って…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_munemomi_rinko+=1"  name="H_supiritasu_munemomi_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]（あぁ…柔らか…！　しっとりふわふわだ。手から離れない…！）[p]
凛子「んっ…はぁ、はっ♡　あんっ…♡　もみくちゃになってる…♡　んあっ♡」[p]
凛子「そんなにおっぱい揉まれたら…ムズムズしちゃう。我慢できなくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_munemomi_rinko=0"  name="H_supiritasu_munemomi_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ああんっ♡　はっ…はぁ…♡　おっぱいだけでイッちゃうかと思った…♡」[p]
凛子「揉みしだくの…慣れてるの…？　はぁ♡　はぁ♡　気持ちよくされちゃったぁ♡」[p]
凛子「お腹の奥…きゅ～んってしちゃったみたい…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…あぁっ♡　はぁ、はっ♡　そこ、すっごく敏感だからっ…だめぇ♡」[p]
[舜]「ほんとだ…もっと濡れてきましたよ…エロ」[p]
凛子「やっ…♡　言わないで…はぁ、あっ♡　あんっ♡　気持ちよくなっちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tikubi_rinko+=1"  name="H_supiritasu_tikubi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_tikubiijiri2

[tb_start_text mode=1 ]
[舜]「背中のけ反っちゃうほど気持ちいいんですか？」[p]
凛子「ひぁっ♡　そう…気持ちいいの…♡　あぁぁっ♡　舌先でコリコリされるのもっ、好き♡」[p]
凛子「んんっ♡　はぁ♡　あっ♡　あんっ…♡　舌だけでこんなに気持ちよくなっちゃうなんて…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tikubi_rinko+=1"  name="H_supiritasu_tikubi_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「んぅぅぅっ♡　ダメ、ダメ、これ以上されたら…イッちゃうから…♡」[p]
[舜]（すごい乱れようだな…凛子さんがこんな声出すなんて…エロ過ぎる！）[p]
凛子「あっ♡　あっ♡　あぁっ♡　んぅぅっ♡　ヌルヌルが絡みついてきてるっ♡　あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tikubi_rinko=0"  name="H_supiritasu_tikubi_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁっ♡　はぁ、あっ…今の…すごい…♡　乳首…弱いみたい♡」[p]
凛子「触るの上手なのね…♡　乳首触られてイキそうになったの初めて…♡」[p]
凛子「…もう、下はびしょ濡れになってると思う…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_matazuri1

[tb_start_text mode=1 ]
凛子「きゃんっ…もう♡　びっくりするけど、なんかクセになりそう♡」[p]
凛子「ひゃっ…ふふ♡　もう一回してほしいって顔に出ちゃってる？」[p]
凛子「んっ…そこ、もうちょっと構ってほしいかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_matazuri_rinko+=1"  name="H_supiritasu_matazuri_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_matazuri2

[tb_start_text mode=1 ]
凛子「きゃっ…あは♡　酔ってるせいかな、なんか楽しくなってきちゃった♡」[p]
凛子「ひゃんっ…もう♡　そんなに私の反応見るの好きなの？」[p]

[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_matazuri_rinko+=1"  name="H_supiritasu_matazuri_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_matazuri3

[tb_start_text mode=1 ]
凛子「きゃんっ…ふふ♡　今のちょっと好きだったかも♡」[p]
凛子「んっ…そんな嬉しそうにされたら、私まで期待しちゃうじゃない♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_matazuri_rinko=0"  name="H_supiritasu_matazuri_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_matazuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んあぁぁぁっ♡　あんっ…♡　あぁぁっ…だめ…弱いトコ、当たってるっ♡」[p]
凛子「あんっ♡　あっ…♡　あぁぁぁっ♡　擦られてるだけなのに…イッちゃいそう…♡」[p]
凛子「こんなに気持ちいいなんて…相性がいいのかも…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_hutomomo1

[tb_start_text mode=1 ]
凛子「んっ…♡　だめ…感触確かめるみたいに触らないで…♡」[p]
[舜]「柔らかくてスベスベですよ。触り心地最高です…」[p]
凛子「あんっ♡　はぁ褒め上手なんだから…んっ…大きい手…あったかい…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_hutomomo_rinko+=1"  name="H_supiritasu_hutomomo_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_hutomomo2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あんっ…はぁ…♡　撫で方、エッチね…♡　はぁ…はぁ…♡」[p]
凛子「ダメ、腰動いちゃう…から…♡　あっ♡　やだ…もっと触られるの期待しちゃってる♡」[p]
[舜]（凛子さん、エロ過ぎる…！）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_hutomomo_rinko+=1"  name="H_supiritasu_hutomomo_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_hutomomo3

[tb_start_text mode=1 ]
凛子「んんっ♡　ふ～っ♡　[r]ふ～っ…あんまり撫でるから…おへその下キュンってしちゃったじゃない♡」[p]
凛子「意味は…わかってるでしょ…？　ほしくなっちゃったってこと…♡」[p]
凛子「自分がこんなこと言っちゃうなんて…信じられない♡　頭がふわふわしてるから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_hutomomo_rinko=0"  name="H_supiritasu_hutomomo_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_hutomomo_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁんっ♡　そこ、撫でるのだめぇぇっ♡　腰、動いちゃう…♡」[p]
[舜]「イイトコ当たっちゃいましたか？」[p]
凛子「はぁっ♡　はぁ♡　狙ったんでしょ？　もう…されるがままになっちゃいそう…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_kuriijiri1

[tb_start_text mode=1 ]
凛子「んぅ…なにこれぇ♡　酔ってるからかな、いつもより変になっちゃう♡」[p]
凛子「やぁ…そんなにされたら、もっと欲しくなっちゃうよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tekoki_rinko+=1"  name="H_supiritasu_tekoki_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kuriijiri2

[tb_start_text mode=1 ]
凛子「はぁ…なんか身体までぽかぽかして、すっごく敏感になってる♡」[p]
凛子「んっ…そんな意地悪されたら、酔ってなくても我慢できないってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tekoki_rinko+=1"  name="H_supiritasu_tekoki_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kuriijiri3

[tb_start_text mode=1 ]
凛子「んぅ…もう酔ってるから、恥ずかしいこといっぱい言っちゃいそう♡」[p]
凛子「ねぇ…もっと構ってよぉ♡　今すっごく甘えたい気分なの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tekoki_rinko=0"  name="H_supiritasu_tekoki_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「あっ♡　あっ♡　あっ♡　はぁ、あんっ…♡　[舜]くん…おへその下まで届いてるよ…」[p]
凛子「[舜]くんと１つになっちゃった…♡　嬉しい…」[p]
[舜]（あ～…凛子さんの中うねってる…腰止まんなくなりそ…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri2

[tb_start_text mode=1 ]
凛子「んっ♡　はぁっ♡　あうっ♡　あっ、あっ♡　[舜]くんの形…中ではっきりわかる…♡」[p]
[舜]「凛子さんの中も…伝わってきますよ…あ～溶けそうです…」[p]
凛子「んぅぅっ♡　あっ…♡　中ゾリゾリって擦るの…それすっごくいいの…♡　ひうっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「あっ…♡　はぁんっ♡　お、奥…奥届いちゃってる…♡」[p]
凛子「プチュって…♡　一番奥にキスしちゃってるの…♡　はぁ、あっ、[舜]くんの先っぽ当たるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んあぁぁっ♡　ま、待ってっ…すごいとこ…擦れて…ひぅぅっ♡」[p]
凛子「あっ♡　あっ♡　あっ♡　そこはだめ…だめだからぁっ♡」[p]
[舜]（すごい乱れようだな…）[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あ゛っ♡　あ゛っ♡　あっ♡　ん゛あ゛あ゛っ♡　激しっ…そんなに揺さぶらないでっ♡」[p]
凛子「はぁっ♡　うぁあ♡　んんっっ♡　あ゛ぁ゛ぁ゛っ♡　だめ、わかんなくなっちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku2

[tb_start_text mode=1 ]
凛子「しゅごいの…[舜]くんにかき回されてる…♡」[p]
凛子「あ゛う゛っ…♡　あ゛っ♡　あ゛っ♡　あ゛んっ♡　奥まで来てるっ♡　壊れちゃうぅっ♡」[p]
凛子「あ゛あ゛あ゛あ゛っ♡　こんなの、初めて…♡　若い子のおちんちん、気持ちいぃぃっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku3

[tb_start_text mode=1 ]
凛子「ひぐぅぅっ♡　あ゛っ♡　あ゛っ♡　あ゛っ♡　んぅぅっ♡　ぐちゃぐちゃなのっ…♡」[p]
凛子「こんなに乱れて…恥ずかしいのに…♡　こ、腰動いちゃうっ♡　見ないで、見ないでぇっ♡」[p]
凛子「だめ…子宮降りて来ちゃう♡　本気出しちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「おぉぉっ♡　あっ、そこすごぃぃっ♡　あぁぁっ♡　当たってるっ♡」[p]
凛子「はっ♡　はっ♡　はっ♡　おかしく、なっちゃう…だめ、だめぇぇっ♡」[p]
凛子「気持ちいいの…そこ、擦れて…んぅぅぅぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_kaiwa1

[tb_start_text mode=1 ]
凛子「やだ…私、緊張してるみたい…リードしなくちゃいけないのに…恥ずかしいな」[p]
[舜]「俺も緊張してます…」[p]
凛子「ほんと？　ふふっ…じゃあ同じね…よろしくお願いします♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa2

[tb_start_text mode=1 ]
凛子「なんだか、体を見られるのって変な感じ…あんまり見ないで。恥ずかしいから」[p]
[舜]「すごく綺麗です」[p]
凛子「お世辞、上手なんだから…でもそう言ってもらえると安心する」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa3

[tb_start_text mode=1 ]
凛子「そんな真剣な顔されると、ドキドキしちゃう…」[p]
凛子「学生に戻ったみたいな気持ち。ふふ、こんなこと大人が言うのは変かな…」[p]
凛子「新鮮な気持ちで恋ができて、とっても嬉しいの…抱いてくれる？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_kiss1

[tb_start_text mode=1 ]
凛子「ちゅ…ちゅっ♡　んっ…ふふ、キスしちゃったね…」[p]
凛子「[舜]くんの唇、とっても柔らかい…もっとキスしてほしくなっちゃう」[p]
凛子「なんて、おねだりだったんだけど…気づいてくれた？　ふふっ」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kiss2

[tb_start_text mode=1 ]
凛子「ちゅくちゅく、ちゅ、んんっ♡　はぁ…[舜]くん、キス上手ね…どこで覚えたの？」[p]
[舜]「こ、これは…したいまましてるだけで…」[p]
凛子「そう？　じゃあ[舜]くんオリジナルのキスなんだね…すごくいいよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss3

[tb_start_text mode=1 ]
凛子「ちゅ、ちゅぷ、ちゅ、んんっ。はぁ、はふ…唇離すの…惜しくなっちゃうね…」[p]
凛子「ちゅぷちゅくちゅく、んんっ…はぁ、あぁ、キスだけで…体熱くなってきちゃった♡」[p]
凛子「ちゅるるるるるっ、ちゅっちゅっ♡　はぁ、んっ、もっともっとって思っちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ちゅく、ちゅ、んうぅぅっっ♡　キスだけなのに…こんなに気持ちいいなんてっ…♡」[p]
凛子「ふ～っ、ふ～っ、ふ～っ…♡　やだ…お腹の奥…キュンってときめいてるみたい♡」[p]
凛子「こんなエッチな気分になっちゃったら…もっとほしくなっちゃうよ？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「はぁ、あっ、んっ…♡　舌、温かい…んんっ、ヌルヌルした感触、気持ちいい…」[p]
[舜]「凛子さん…」[p]
凛子「んんっ♡　声、出されるとっ…♡　頭の中に響いちゃうから…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_miminame2

[tb_start_text mode=1 ]
凛子「んんっ…♡　はぁ、あっ♡　舌、中に入ってきちゃったぁ…♡」[p]
凛子「はぁ、ヌルヌルになっちゃう…耳と、別のところも♡」[p]
凛子「んっ…ふぅ、ふっ…[舜]くんがエッチに舐めるから、気持ちよくなっちゃった…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_miminame3

[tb_start_text mode=1 ]
凛子「あっ…♡　はぁんっ…♡　こんなふうに…エッチに耳舐められたの…初めて♡」[p]
凛子「[舜]くんに私の初めて、奪われちゃった…♡　あんっ、あぁ、それっ、気持ちいい…♡」[p]
凛子「ふーっ、ふーっ、とろけちゃう…♡　あぁ、エッチな音だけ聞こえてる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あっ♡　あはぁっ♡　耳奥っ、あっつくなってる…♡」[p]
凛子「耳舐められただけで…イッちゃいそうだった…♡　すごいの…」[p]
凛子「まだ体がジンジン痺れたみたいになってる…♡　気持ちいい♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_munemomi1

[tb_start_text mode=1 ]
凛子「んっ…♡　はぁ、遠慮しなくていいから…おっぱい触っていいよ♡」[p]
凛子「[舜]くんのしたいように触っていいから…少しなら強く乱暴にしても大丈夫だよ」[p]
凛子「ほら…もっといっぱい触って…？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_munemomi2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　あんっ♡　はぁ、おっぱい触るの上手…おっぱい好きなの？」[p]
[舜]「はい…めちゃくちゃ柔らかくて…気持ちいいです」[p]
凛子「んっ♡　喜んでもらえて嬉しい…♡　もっと乱暴に揉みしだいて♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_munemomi3

[tb_start_text mode=1 ]
凛子「あんっ♡　あぁっ♡　もみくちゃにされちゃってる…♡　おっぱい気持ちいい♡」[p]
凛子「はぁ、はっ、あんっ♡　すっごい興奮してるの？　息荒くなってるから…」[p]
凛子「おっぱいで興奮してくれて嬉しい…めちゃくちゃにしていいから♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_munemomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ああぁぁっ♡　そこっ、気持ちいいの…♡　今ので…子宮までキュンってしちゃった♡」[p]
凛子「ふーっ♡　ふーっ♡　はしたないって思われちゃうかもしれないけど…止められないの♡」[p]
凛子「こんなに興奮しちゃったの初めて…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ…♡　やだ…撫でられちゃって…私、お尻小さいわけじゃないから恥ずかしいな」[p]
[舜]「やわらかくて最高です…」[p]
凛子「ほんと…？　そんなこと言われたら、調子に乗っちゃうからね？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_sirinade2

[tb_start_text mode=1 ]
凛子「んっ…ふぅ、ふっ…優しい手つきだね…マッサージの才能もあるかも…♡」[p]
凛子「あっ…はぁ、いきなりエッチな撫で方するなんて…慣れてるの？」[p]
凛子「あ、目そらした？　ちゃんと私のことだけ見てて…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_sirinade3

[tb_start_text mode=1 ]
凛子「はぁ、んんっ♡　あんっ…お尻だけじゃ…満足できなくなってきちゃったぁ…」[p]
凛子「もっと…足の間も撫でてほしいって思っちゃってる…んっ、私ったら…こんな恥ずかしいこと…」[p]
[舜]（おねだり、可愛すぎる…！）[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁぁっ♡　あんっ♡　はっ♡　はっ♡　今触られたところ、弱いみたい…♡」[p]
凛子「ふ～っ…お腹の奥、きゅ～んってときめいて…溢れてきちゃったかも♡」[p]
凛子「ふ～っ…ふ～っ…確かめてもいいからね♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ…そこは…待って。いきなり舐められちゃうのは…恥ずかし…んんんっ♡」[p]
凛子「はぁっ、はぁ無理にそんなとこ舐めなくていいから…[舜]くんってば…」[p]
凛子「あっ♡　あぁぁぁっ♡　舌、そんなに激しく動かさないでっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kunni2

[tb_start_text mode=1 ]
凛子「あうぅっ♡　[舜]くんに食べられちゃってるみたい…♡」[p]
凛子「そんなに夢中になってしゃぶらなくてもいいのに…んっ、あぁぁんっ♡」[p]
凛子「クリばっかり舐められたらっ…我慢できなくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni3

[tb_start_text mode=1 ]
凛子「はぁ、あんっ…♡　舌、あっつい…♡　ホントに…イッちゃうの…♡」[p]
凛子「中、ヌルヌルになってるの、わかる？　挿れる準備始めちゃってるんだよ…」[p]
凛子「ん、ふぅっ♡　ふぅっ…♡　ごめんなさ…腰勝手に動いちゃって…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃぁぁぁんっ♡　今のっ、何っ…とろけちゃうかと、思った…♡」[p]
凛子「はぁっ♡　奥まで…感じちゃったみたい♡　はぁっ、ふっ…ほしい、の…♡」[p]
凛子「中もっ、触ってほしくて切なくなっちゃった…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あんっ…あぁ…やだ…私、こんな格好のまま…やらしいことされちゃってる…♡」[p]
凛子「だめ、なのに…気持ちよくて…やめないでほしいって思っちゃうっ♡」[p]
凛子「あっ♡　あっ♡　あっ♡　もっとかき回して…奥までっ…頂戴♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_teman2

[tb_start_text mode=1 ]
凛子「ひぅっ、んっ、あっ、あぁ♡　そんなっ、じっと見ないで…」[p]
凛子「私、すっごく変な顔してるでしょ？　だめなの…もう余裕も全然なくって…♡」[p]
凛子「あはぁ♡　あっ♡　気持ちいいしか考えられなくなっちゃったぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_teman3

[tb_start_text mode=1 ]
凛子「あうぅぅっ♡　奥までっ、指届いちゃってる…♡　あんっ、あぁぁぁっ♡」[p]
凛子「私の全部っ…触られちゃってるの…♡　おおっ♡　すごいのっ…気持ちいいっ♡」[p]
凛子「は～っ♡　は～っ♡　んんっ、グチャグチャになってるっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁっ♡　変に、なっちゃう…あ、あぁぁぁっ♡　だめぇぇっ♡」　[p]
凛子「はぁっ♡　はぁっ♡　はぁっ♡　イッちゃうかと思った…弱いトコ、当たっちゃって…」[p]
凛子「どうして私の気持ちいい場所、全部わかっちゃうの…？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「んっ…ああっ…おちんちんがドキドキしてるの、伝わってくる…♡」[p]
凛子「あっ…♡　すごい…じっくり、味わってくれてるの…？」[p]
凛子「いいよ、ゆっくり動かして…私の中楽しんで…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「凛子さんの中…ぬるぬるっ…全部気持ちいい…！」[p]
凛子「あんっ♡　あっ♡　あぁっ♡　おちんちん、中でビクビクってしてる…♡」[p]
凛子「すっごくたくましい…♡　あぁ、私の中、[舜]くんの形になっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「んおおおっ♡　しゅごいっ…♡　また中でっ、おっきくなってる♡」[p]
凛子「あぁぁっ♡　繋がってるとこ見て、興奮しちゃったの？」[p]
凛子「はぁ、あっ…私も…気持ちいいよ…はぁ、あっ♡　あんっ♡　中、全部擦れてるっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「おぉぉっ♡　すごいっ…いいトコ、擦れて…んっ♡　ああぁぁっ♡」[p]
凛子「私、はしたない声出て…んんっ♡　ふぅっ、ふっ♡　腰振るの…すっごく上手ね…」[p]
凛子「いきなりイッちゃうかと思った…♡　それ、好き♡　好きぃ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*hit"  ]
[return  ]
*H1_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あっ♡　あっ♡　あっ♡　激しっ…そんなに夢中に腰振っちゃって…」[p]
凛子「必死な顔も可愛い…いいよ、全部ぶつけて♡　」[p]
凛子「はっ♡　はぁっ♡　はっ♡　頑張れ頑張れっ…♡　もっと激しくしていいよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku2

[tb_start_text mode=1 ]
凛子「んっ…すごい…揺さぶられちゃってる…♡　あっ♡　あぁぁっ♡」[p]
凛子「やっぱり[舜]くんも男の子なんだね…力、すっごく強い♡　中も…おっきい♡」[p]
凛子「私の中で暴れてる…んんっ♡　ふっ、はぁ♡　はぁんっ♡　奥までトントンって当たってるのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku3

[tb_start_text mode=1 ]
凛子「あっ♡　あぁぁんっ♡　それっ、だめぇっ♡　弱いからぁっ♡」[p]
[舜]「凛子さん、余裕なくなってきましたね…」[p]
凛子「はっ♡　はっ♡　あぁぁんっ…♡　言わないで…年下の男の子に揺さぶられるのも悪くないかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　そこっ♡　だめぇぇぇっ♡　あうぅっ、気持ちいいトコ、当たってるっ♡」[p]
凛子「はぁっ♡　だめ、だめ、そこばっかり狙わないでっ♡　イッちゃうからぁ♡」[p]
凛子「あぁぁんっ♡　や…今の顔見ちゃダメ…変な顔に…なってるからっ…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*hit"  ]
[return  ]
*J1_kaiwa1

[tb_start_text mode=1 ]
凛子「ふふ、[舜]くん、いつの間にマッサージの勉強してたの？」[p]
[舜]「凛子さんの施術をそばで見て学んだんですよ。見て盗んだってやつです」[p]
凛子「それじゃ期待してもいいのかな？　どんなふうに気持ちよくしてくれるんだろ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa2

[tb_start_text mode=1 ]
凛子「マッサージはうつぶせでするんだけど、仰向けでいいの？」[p]
[舜]「どんな顔するのか、確認しながら触りたいんで…」[p]
凛子「ん、そうだね。お客さんの反応を見ながら揉みほぐすのが１番だもんね…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa3

[tb_start_text mode=1 ]
凛子「そろそろ始めるのかな…？　いいよ、[舜]くんの思った通りに触ってくれたら…」[p]
凛子「トロトロにとろけちゃうくらい気持ちよくなれちゃうのかな…♡」[p]
凛子「[舜]くんの施術を見て、私が勉強するね。どうぞよろしくお願いします♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_kiss1

[tb_start_text mode=1 ]
凛子「んっ…ちゅ、ちゅっ♡　ふぅっ♡　唇、触れ合ってる…これもマッサージなの？」[p]
[舜]「これは…唇のマッサージだから…」[p]
凛子「ふふっ、そうですか♡　じゃあ続きをお願いします♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kiss2

[tb_start_text mode=1 ]
凛子「ちゅっちゅ、ちゅく♡　ちゅ、んんっ、じゅぷ♡　はふ、はぁっ、はぁ…激し…」[p]
凛子「いきなり激しくしちゃうんだね…私のマッサージとはちょっと違うね」[p]
凛子「でも…メリハリがあっていいかも。体の奥、熱くなってきちゃった…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss3

[tb_start_text mode=1 ]
凛子「ちゅ、ちゅっちゅ…んっ…♡　えっちなマッサージってどんな感じなのかなって思ったけど…」[p]
凛子「気持ちいいね♡　体もあったかくなってきちゃった…♡　続き、お願いしてもいい？」[p]
凛子「今日は私が[舜]くんに教えてもらう側だから…[舜]くんが先生だね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ちゅっ…んぅぅぅっ♡　ふーっ…ふー…♡　今の…すごかった…♡」[p]
凛子「お腹の奥、まだジンジン痺れてるみたい…[舜]くんのマッサージってすごいかも」[p]
凛子「もっといろんなマッサージ教えてもらっちゃおうかなぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_paizuri1

[tb_start_text mode=1 ]
[舜]「凛子さん、おっぱいで挟んで…しごいてマッサージしてください」[p]
凛子「んっ…♡　こんな感じ？　おちんちん、すっごくおっきくなってる…♡」[p]
凛子「ふーっ…ふーっ…♡　手を使わないで体を使うマッサージって新鮮でいいかも…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_paizuri2

[tb_start_text mode=1 ]
凛子「んっ…♡　あぁ♡　おちんちん、ビクビクってしてる♡　気持ちいいですか～♡」[p]
凛子「ふふ、どんな顔をしてるのか、ちゃんと反応見てるからね？　[舜]くん、気持ちよさそう…」[p]
凛子「このやり方で正解なんだね♡　よかったぁ。このままマッサージ続けますね～♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri3

[tb_start_text mode=1 ]
凛子「あっ…おちんちんの先っぽからとろんって透明な液溢れてきちゃった♡」[p]
凛子「これならマッサージオイルも必要ないですね…♡　んっ、ふぅ、ん♡」[p]
凛子「あぁ…おっぱいで揉みくちゃになってるね…んんっ、固いの、擦れて…気持ちいい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃううぅ♡　んんっ♡　おっぱいヌルヌルになっちゃった♡」[p]
凛子「ゾリゾリって擦れて…弱いトコ、当たっちゃう♡　んっ…ああんっ♡」[p]
凛子「マッサージ教わってるのに、何も考えられなくなっちゃいそう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おっぱいのマッサージを始めますね…しっかりほぐしていきますから」[p]
凛子「んっ…♡　あぁ♡　[舜]くんの手つき、すっごく上手…よくほぐれそうです♡」[p]
凛子「おっぱい凝ってるので…たくさん揉んでやわらかくしてくださいね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi2

[tb_start_text mode=1 ]
凛子「あっ…んんっ♡　それ…気持ちいい…[舜]くんマッサージ上手ね」[p]
[舜]「そうでしょ？　でも指の間からおっぱい、こぼれ落ちそうだな…手に収まりきらないぞ」[p]
凛子「んっ♡　あぁ♡　マッサージしづらくてごめんね？　ゆっくりでいいから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi3

[tb_start_text mode=1 ]
凛子「あっ♡　あんっ…♡　んっ…変な声、出ちゃってごめんなさい…♡」[p]
[舜]「いいんですよ、声出してください。力が抜けてリラックス効果もありますから」[p]
凛子「はぁ、あっ…♡　あぁ♡　[舜]くん、本当にマッサージの施術できちゃいそうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　ん…そこっ…敏感なトコ、手で擦れて…んっ、あ、あぁぁっ♡」[p]
[舜]「乳首、ぷっくり立ち上がっちゃってますね…」[p]
凛子「やだ、恥ずかし…んんっ♡　乳首も一緒にマッサージされちゃってる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munename1

[tb_start_text mode=1 ]
凛子「んっ…あんっ♡　今度は舐めるマッサージ？　いろんな方法でほぐしてくれるのね…♡」[p]
[舜]「乳首もコリコリになってますよ？　ここ、凝ってるみたいですね…」[p]
凛子「んんっ、凝ってるわけじゃ…んぅっ♡　あっ…んんっ♡　ねっとり舐めるの、だめっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_munename2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あんっ…あぁ…♡　乳首ばっかりペロペロされたら…変になっちゃう♡」[p]
[舜]「でも全然ほぐれないんですよ。余計固くなってるみたいで…」[p]
凛子「んんっ♡　あっ、それは凝ってるわけじゃないからっ…♡　あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename3

[tb_start_text mode=1 ]
凛子「ひぅ♡　んんっ…おっぱい、どんどん敏感になっちゃってる…♡　これもマッサージの効果？」[p]
凛子「それに…違うトコまでキュンってしちゃって…触ってほしくなっちゃう♡」[p]
凛子「[舜]くんのマッサージ、効果すごいね…教えてもらってよかったぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　それっ、すごいのっ…乳首だけでッ、イッちゃうぅ♡」[p]
凛子「[舜]くんの舌、ねっとりあったかくて…もっと欲しくなっちゃう…」[p]
凛子「あぁぁぁ♡　チュッチュって吸うの…赤ちゃんみたいね…んんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あぁっ…だ、だめっ、汚いからぁっ♡　舐めるのだめだってば…♡」[p]
[舜]「汚くないですよ？　トロトロ熱々になってます。マッサージオイルいらずですね」[p]
凛子「んっ…そんな恥ずかしいこと言わないでっ…♡　あっ、あぁぁぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kunni2

[tb_start_text mode=1 ]
凛子「んんっ…ふっ、舌でそんなとこまでマッサージしちゃうの…？」[p]
凛子「体あったまってきちゃった…♡　マッサージの即効性すごいね♡」[p]
[舜]「中も熱々になってきてますよ？　マッサージであっつくなっちゃいました？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni3

[tb_start_text mode=1 ]
凛子「んうっ♡　あっ、ごめんなさい、腰動いちゃって…♡　ひゃうっ♡　あっ♡　あんっ♡」[p]
凛子「ひゃんっ♡　クリしゃぶられるのすごいの…♡　気持ちいいの湧き上がってきちゃう♡」[p]
凛子「あぅぅっ♡　[舜]くん、いつの間にこんなに気持ちいいマッサージ覚えたのっ…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　それ、だめ…ジュルジュル吸わないでぇっ♡　何か出ちゃう、からぁっ♡」[p]
凛子「ひぅぅっ♡　あぁ、腰止まらない…♡　ビクビクってして…気持ちよくなっちゃうの♡」[p]
凛子「舌でマッサージなんて知らなかった…[舜]くんに教わっちゃったね♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_teman1

[tb_start_text mode=1 ]
[舜]「中もしっかりマッサージでほぐしてあげなくちゃ…奥まで揉みほぐしますよ…♡」[p]
凛子「んっ♡　あぁ♡　はぁ、あんっ♡　んんっ、深いトコまで届いて…変になっちゃう♡」[p]
凛子「ひぅっ、あっ、あっ、あっ♡　弱いトコ探さないでぇっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んうぅぅっ♡　そこっ…だめ…も、もうほぐれてるから…これ以上されたら…」[p]
凛子「本当に何か出ちゃう…♡　だめ、だめだめだめっ…一旦止めて…だめぇっ♡」[p]
凛子「あっ♡　あっ♡　あっ♡　奥まで届いちゃってる…ほぐされてるぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman3

[tb_start_text mode=1 ]
凛子「あっ…んんっ…体の内側マッサージでどんどん火照っちゃうみたい…」[p]
凛子「気持ちいいのがお腹のそこから湧き上がって…変なのきちゃうのっ♡」[p]
凛子「自分じゃ制御しきれなくなっちゃう感じ…私、どうにかなっちゃいそう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んあぁぁっ♡　目の前っ、チカチカってして…もう、だめ…おかしくなっちゃうぅっ♡」[p]
[舜]「いいじゃないですか、おかしくなれば…！　自分を解放してあげてくださいよ…！」[p]
凛子「あっ♡　あうぅっ♡　ダメなところ、当たってるの…♡　壊れちゃうぅぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「あっ♡　あっ♡　あっ♡　んんっ、内側…擦れて…当たってるっ♡」[p]
[舜]「そんなに締め付けたらマッサージできないじゃないですか…ほら力抜いてください」[p]
凛子「そんなこと言われてもっ…んぅっ♡　体が勝手に…動いちゃうんだものっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri2

[tb_start_text mode=1 ]
凛子「[舜]くんの…すっごくおっきくなってる…♡　深いところまで届いてる♡」[p]
凛子「内側全部擦れてっ…刺激されちゃってるの…あっという間にほぐれちゃう♡」[p]
[舜]「中はどんどんほぐれてトロトロになってきてますよ…！　この調子ですね…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「ひぅぅっ♡　あっ♡　あぁ♡　それっ…奥トントンってされるのだめ…♡」[p]
[舜]「ん、もっと強くしたほうがいいですか？　強さは変えられますよ…マッサージですから…！」[p]
凛子「違っ…そういうことじゃないの…んっ♡　あぁ♡　[舜]くんのまたおっきくなって…あぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「この奥のコリっとしたトコ、凝ってるんですかね？　集中狙いしてあげますよ」[p]
凛子「あっ♡　あぁっ、そこ、違…ひぅぅぅっ♡　凝ってるんじゃないのっ…♡」[p]
凛子「そこ、ダメなトコ…弱いところだからっ♡　ほぐれちゃったら…イキっぱなしになっちゃう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あっ♡　あぁっ…激し…んんっ♡　こんな激しいマッサージ初めて…♡」[p]
[舜]「表面だけじゃなくて深いところまでしっかりほぐすべきって凛子さんよく言ってますもんね」[p]
凛子「それは普通のマッサージの話で…これは違っ…あんっ♡　あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku2

[tb_start_text mode=1 ]
凛子「あっ♡　あうっ♡　ああぁっ♡　お、奥…届いてるっ…ダメなトコ…先っぽ当たってる♡」[p]
[舜]「子宮の入り口もよくマッサージしますからね…！　中が柔らかくなるように…！」[p]
凛子「ひぅぅっ♡　あっ♡　あっ♡　開いちゃう♡　全部とろけて受け入れちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku3

[tb_start_text mode=1 ]
凛子「んっ、くうぅぅっ♡　お腹の奥から…気持ちいいのぐつぐつ湧き上がってきちゃってる…♡」[p]
凛子「気持ちよくて切なくて…変になっちゃいそう♡　[舜]くん、気持ちいいトコわかっちゃうの？」[p]
凛子「マッサージの才能あるのかも…私より上手になったらどうしよう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃうぅぅっ♡　あっ♡　あっ♡　あっ♡　奥までトントンされちゃうのっ、だめ…♡」[p]
凛子「こんなに気持ちいいの知っちゃったら…もう戻れなくなっちゃうってばぁ…♡」[p]
凛子「余計なこと、考えられなくなっちゃう…♡　あぁ、最高の施術だよ[舜]くん♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_kaiwa1

[tb_start_text mode=1 ]
凛子「どんなマッサージされちゃうんだろう？　ドキドキしてる…」[p]
[舜]「すっごく気持ちよくなりますよ。それにもっと欲しくなるかも…」[p]
凛子「止められなくなっちゃったらどうしよう…♡　延長もしてくれる？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa2

[tb_start_text mode=1 ]
凛子「私もいろんなマッサージを学んできたつもりだけど…まだ知らないマッサージがあるのかな」[p]
凛子「仰向けで押さえ込まれて…もう揉みほぐしてもらう準備はできちゃったみたい♡」[p]
凛子「思いっきり気持ちよくしてくれるんでしょう？　[舜]くんの好きにしていいからね」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa3

[tb_start_text mode=1 ]
[舜]「どうやってマッサージするのか覚えてくださいね？」[p]
凛子「覚えるつもりだけど、このえっちなマッサージする相手は[舜]くんだけでしょう？」[p]
凛子「他の人にはしないから…[舜]くん仕様で教えてくれると嬉しいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss1

[tb_start_text mode=1 ]
凛子「ん、ちゅ、ちゅぷ、ちゅっちゅ…これもマッサージ？　唇でマッサージするのね」[p]
[舜]「口の中も舌でマッサージできるんですよ？　ほら、実際にされてますよ、今…」[p]
凛子「ほんとだ…んっ、ちゅくちゅくちゅく♡　はぁ♡　トロトロになっちゃう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss2

[tb_start_text mode=1 ]
凛子「ちゅくじゅぷ、じゅるるるっ♡　はぁ、はぁ、キスマッサージって気持ちいいんだね♡」[p]
凛子「知らなかった…実際にお客さんの施術で試しちゃいたいくらい…♡」[p]
凛子「ふふ、冗談だよ♡　これは[舜]くんだけがしてくれるマッサージだもんね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss3

[tb_start_text mode=1 ]
凛子「ちゅく、ちゅっちゅ♡　ふぅ、ふっ…♡　お口のマッサージ、すっごく好き…♡」[p]
凛子「これからマッサージの施術してもらうたびにお願いしちゃうかも♡」[p]
凛子「不思議なの…触れてないのに、勝手にお腹の奥がキュンって反応しちゃったみたい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んっ♡　んぅっ♡　ちゅぷっ、じゅぷ、ちゅくちゅく♡　はぁ、はっ…♡　ヤダ、私ったら…」[p]
凛子「夢中でむさぼっちゃってた…なんにも考えられなくなっちゃって…♡」[p]
凛子「[舜]くんのマッサージの効果かも…頭の中ぼんやりして…気持ちよくなっちゃった♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_fera1

[tb_start_text mode=1 ]
[舜]「口の中、今度はチンポでほぐしますね…しっかり咥えてくださいね？」[p]
凛子「んんっ♡　ちゅぷ、ちゅっちゅ♡　体のいろんなとこ使うのね…ちゅぷ、ちゅっちゅ♡」[p]
凛子「[舜]くんのおちんちん、すっごく固くなってる…口の中、トロトロにされちゃいそう…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_fera2

[tb_start_text mode=1 ]
凛子「はーっ♡　はーっ♡　私も[舜]くんをお口でほぐしてあげるからね…」[p]
凛子「すっごく凝ってるみたいで固くなってるから…じゅぷじゅぽじゅぽじゅぽ、じゅるるるっ♡」[p]
凛子「はぁ、はふっ…♡　お互い気持ちよくなれるマッサージってすっごくいいね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera3

[tb_start_text mode=1 ]
凛子「じゅぷ、じゅぽじゅぽじゅぽじゅぽっ…んんっ♡　口の奥まで届いてる…♡」[p]
[舜]「喉の入り口もしっかりほぐしてあげようかと思いまして…どうですか？」[p]
凛子「んぐっ…んんっ♡　ダメ、奥まで入ると…お口だけじゃなくて…お腹の奥まで反応しちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera=0"  name="H_fera"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んぅぅぅっ♡　ふっ、ふっ…♡　ふーっ…すっごいオスの匂いしてる…♡」[p]
凛子「頭の中…おちんちんのことしか考えられなくなってきちゃった♡」[p]
凛子「口の中と頭の中、両方ほぐされちゃったのかも…♡　もうユルユルになっちゃったぁ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひゃうぅっ♡　鷲掴みにされちゃってるっ…♡　おっぱい揉みほぐされちゃう…」[p]
凛子「んんっ、くっ…[舜]くんの手、おっきい…もみくちゃになっちゃうのっ」[p]
[舜]「あー、おっぱいやわらか…このままほぐしていきますからね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi2

[tb_start_text mode=1 ]
凛子「んんっ！　はぁ、あっ、あぁ♡　ど、どう？　ほぐれてきちゃった…？　んっ、あぁ♡」[p]
[舜]「先っぽは固くなってますね。凝ってるんですかねぇ…よくほぐさないと」[p]
凛子「あぁぁぁっ♡　手のひらでスリスリっ…刺激強くてっ…♡　気持ちよくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi3

[tb_start_text mode=1 ]
凛子「んぅっ、ふっ…もみくちゃにされちゃってる…♡　おっぱい、とろけちゃいそう♡」[p]
[舜]「凝ってるところをほぐしてるだけですからね？」[p]
凛子「んっ♡　はぁ、ああ…よく揉みほぐしてくれるんだね…♡　お願いします♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んっ…あぁぁぁっ♡　おっぱいと乳首一緒にコリコリしないでっ…♡」[p]
凛子「んっく♡　あぅぅっ♡　おっぱいしか触られてないのに…体全部ビクビクしてるってばぁ♡」[p]
凛子「[舜]くんに触られたところから…ビリビリって痺れたみたいに気持ちよくなっちゃってる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munename1

[tb_start_text mode=1 ]
凛子「んんっ…そんな、しゃぶるみたいに吸い付かれると…変になっちゃう♡」[p]
凛子「んぅぅぅっ♡　はぁっ、はぁ…♡　おっぱいなめられてるだけなのに…体全部熱いの♡」[p]
凛子「これもマッサージの効果？　[舜]くん、本当にマッサージのプロになってもいいかもね…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_munename2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「他の女性のお客さんにも乳首舐めマッサージしてもいいんですか？」[p]
凛子「んっ…♡　それは、だめ…♡　えっちなマッサージは私にだけしてほしい、からっ…♡」[p]
凛子「あっ…ああぁっ♡　きっとこんな気持ちいいマッサージ癖になっちゃうもの…私だけにして♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename3

[tb_start_text mode=1 ]
凛子「んん、ふぅ、ふぅっ♡　だめ、だめなのっ…♡　あんまり舐めたら…乳首ふやけちゃう…♡」[p]
凛子「乳首コリコリトロトロになったら…もう戻れなくなっちゃうからぁっ♡」[p]
凛子「あんんっ♡　や、だめ…腰動いちゃうっ♡　恥ずかしいの…あんまり見ないでぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あぁっ、激し…そんなに吸ってもミルク出ないってば♡」[p]
凛子「もー、[舜]くんってば…♡　マッサージしたら出ちゃうって思ってるの？」[p]
凛子「赤ちゃんできたら…またおっぱいミルクが出るようになっちゃうかも…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひゃぅぅっ♡　奥まで舌入ってるっ、だめ、そんなとこまで舐めないでぇっ…♡」[p]
[舜]「でも中ヒクヒクして嬉しそうにしてますよ？　ほら、ほら…」[p]
凛子「ひゃうぅっ♡　あっ♡　あんっ♡　そんな意地悪言わないでぇっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_tituname2

[tb_start_text mode=1 ]
[舜]「あー、奥までトロトロじゃないですか…マッサージでほぐれた証拠ですね？」[p]
凛子「そうなの…♡　[舜]くんが深いところまで舐めてほぐしてくれたからっ…とろけちゃった♡」[p]
凛子「ヒクヒク止まらないの…♡　気持ちよすぎて…何も考えられなくなっちゃう…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname3

[tb_start_text mode=1 ]
凛子「あぁぁっ！　んぅぅっ、奥まで舌入っちゃってる…そんなに出し入れされたら腰動いちゃう♡」[p]
凛子「んっ…んぅ、[舜]くんのマッサージ上手すぎて…骨抜きにされちゃう…♡」[p]
凛子「[舜]くん、他の人にはこのマッサージしちゃダメよ？　人気のお店になっちゃうからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　んっ♡　はぅぅっ♡　気持ちいいっ…こんなの知らないぃ♡」[p]
凛子「今まで生きてきて…こんなに気持ちいいマッサージ受けたの初めてなの…♡」[p]
凛子「ん、くぅっ♡　体の奥まで…ビリビリ痺れたみたいになっちゃってる…すごいのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひあぁぁっ♡　あっ♡　あっ♡　や、だぁっ…体が勝手に…何か出しちゃって…」[p]
凛子「やだ…お漏らしだなんて…こんな年になって恥ずかしいっ…！」[p]
[舜]「違いますよ、潮吹きしてるんです…そんなに気持ちよくなってくれて嬉しいですよ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki2

[tb_start_text mode=1 ]
凛子「あうぅぅっ♡　お、奥っ…そんなに撫でられたら…また出ちゃう♡　あぁぁぁっ♡」[p]
凛子「体のフタがおかしくなっちゃってるみたい…ピュルピュルっていっぱい出てるの…」[p]
凛子「[舜]くんのマッサージが気持ちいいからだよ…♡　私の体ユルユルになっちゃった♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ♡　あっ、あぁぁっ♡　止まらない…こんなの初めて…♡」[p]
[舜]「リラックスしてる証拠じゃないですか…！　この調子で体をほぐしましょうね？」[p]
凛子「これ以上ほぐれたら…もう戻れなくなっちゃうってばぁ…♡　あっ、あぁ、あぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぅぅぅっ♡　だめ、だめだめだめっ♡　また溢れちゃうぅ♡　止まらなくなっちゃうっ♡」[p]
[舜]「いいじゃないですか、老廃物は全部出しちゃいましょうよ…！　ほらほらほら！」[p]
凛子「いやぁぁぁっ♡　あっ♡　あっ♡　止まんないっ…♡　出ちゃうぅぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「んっ…ふぅっ♡　あぁっ♡　奥まで押し上げられちゃってる…♡　弱いトコ当たってるの♡」[p]
[舜]「しっかり圧を加えながらマッサージしなくちゃいけないですからね…」[p]
凛子「あぁぁっ♡　すっごく上手…欲しいところ、すぐ見つけちゃうなんてマッサージの才能あるのかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凛子「[舜]くんのほうが凝ってるんじゃない？　ここ、ガチガチになってるでしょ…♡」[p]
[舜]「凛子さんが締め付けてくれたら、柔らかくなるかも…マッサージしてくれますか？」[p]
凛子「んんっ、もちろん♡　気持ちよくなって♡　締めつけてほぐしてあげるからねっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「んっ♡　ふぅ、ふっ♡　あっ♡　ダメ、[舜]くんのどんどん固くなっちゃう♡」[p]
凛子「私のマッサージじゃほぐせないみたい♡　思いっきり出したら柔らかくなるはずだから♡」[p]
凛子「私の中にたっぷり出して…♡　[舜]くんに気持ちよくなってくれたらそれでいいから♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「おっ♡　おおおっ♡　私が[舜]くんのガチガチのおちんちんほぐさなきゃいけないのにっ♡」[p]
凛子「私のほうが気持ちよくなっちゃったみたい…♡　ごめんなさい[舜]くん…♡」[p]
凛子「だってっ…んっ♡　はぁ、んっ…さっきから弱いところにばっかり当たるからぁっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あ゛っ♡　あ゛っ♡　お、奥までっ…届いて…体の奥まで持ち上がっちゃってる…♡　」[p]
凛子「痺れたみたいになって…もうこれ以上なんにも考えられなくなっちゃう…♡」[p]
凛子「[舜]くんのマッサージ、習おうって思ってたのに…！　流されちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凛子「あ゛あ゛っ♡　すごいっ…[舜]くんのセックス…気持ちいいのっ…♡　もっと欲しくなるっ♡」[p]
[舜]「違いますよ…セックスじゃなくてマッサージでしょ凛子さん♡」[p]
凛子「ああっ♡　マッサージだった…♡　奥までかき回されて気持ちよくなっちゃうの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凛子「んっ♡　ただ気持ちよくなっちゃうだけでいいの…？　私ばっかりしてもらっちゃって…♡」[p]
凛子「おっ、おおおっ♡　すごいっ…体、ほぐれちゃう…♡　気持ちいい波が来ちゃう…♡」[p]
凛子「こんなに気持ちいいの知らない…♡　[舜]くんっ…すごいのっ…♡　癖になっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「お゛お゛っ♡　やだ…はしたない声、出ちゃうぅぅっ♡　こんなの恥ずかしいっ♡」[p]
凛子「あ゛っ♡　あ゛あ゛っ♡　気持ちよすぎて…なんにもできなくなっちゃうってばぁ♡」[p]
[舜]「なんにもしなくていいんですよ…！　ただ気持ちよくなればいいんです…！」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_kaiwa1

[tb_start_text mode=1 ]
凛子「綺麗に洗ってあげるから、じっとしていて？　いつも頑張ってくれてるからサービス♡」[p]
[舜]「俺も凛子さんのこと洗いたいです。凛子さんこそいっつも頑張ってるでしょ？」[p]
凛子「そう…？　[舜]くんに褒めてもらえるの嬉しいな…じゃあお願いしちゃおうかなぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa2

[tb_start_text mode=1 ]
[舜]「ボディソープ、凛子さんの匂いがしますね…」[p]
凛子「私が普段使ってるものだからね…お肌にもいいし、すっごくいい香りなの」[p]
凛子「今日は[舜]くんも私と同じ匂いになっちゃうね？　ふふ、匂いもお揃いって素敵でしょ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa3

[tb_start_text mode=1 ]
凛子「も～、あんまり見ないで？　明るい中でじっと見られると恥ずかしいから…」[p]
[舜]「すみません。綺麗でエッチだなと思って…でも凛子さんだってじっと見てるじゃないですか…」[p]
凛子「あっ…ごめんなさいね？　[舜]くん、男の子の体だなって思って…つい見ちゃった…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…♡　くっ、んんっ…♡　耳、綺麗にしてくれてるの…？　はぁ、あんっ♡」[p]
凛子「舌を使って丁寧に洗ってくれるんだね…おかげで気持ちよくなっちゃった」[p]
凛子「上手…♡　[舜]くんの息遣いまで耳の奥に届いちゃってる…夢中なのも伝わってくるよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_miminame2

[tb_start_text mode=1 ]
凛子「あうぅっ♡　あんっ、はぁ♡　ねっとり舐められると…ムズムズしちゃう…♡」[p]
凛子「[舜]くんの舌…熱々トロトロで…深いところまで入ってるのわかるの…♡」[p]
凛子「やだ…耳だけでこんなに気持ちよくなっちゃうなんて…私変になってるみたい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_miminame3

[tb_start_text mode=1 ]
凛子「ダメ、頭の奥まで痺れたみたいになってる…んぅっ、ジュポジュポ出し入れされると…♡」[p]
[舜]「耳舐めてるだけなのに、腰も動いちゃってるんですか？　やらしいですね凛子さん」[p]
凛子「やっ…言わないでぇっ♡　はぁ、エッチなこと言われると、余計に反応しちゃうから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぅぅぅっ♡　舐める音しか聞こえないの…♡　ジュポジュポってエッチな音…」[p]
凛子「耳の奥までそんなに磨かなくてもいい、ってば…♡　お腹の奥キュンってしちゃうよ…」[p]
凛子「頭の中…エッチなことでいっぱいになっちゃってるの…大人なのに…どうしちゃったんだろう」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sirinade1

[tb_start_text mode=1 ]
凛子「んっ…お尻ばかり撫で洗いされると恥ずかしいな…小さなお尻じゃないし…」[p]
[舜]「いや、めちゃくちゃ綺麗ですよ。それにエロいです…ずっと触っていたいくらい」[p]
凛子「もう…それは褒めすぎだってば…でもありがとう。すっごく嬉しい♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_sirinade2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「はぁっ♡　あぁ♡　綺麗になった？　さっきからずーっと撫でてるでしょう？」[p]
凛子「んっ…お尻の間もこっそり撫でてるのわかってるんだからね？　そこは自分で洗えるから…」[p]
凛子「そんなに一生懸命洗わなくてもいいんだよ？　んっ…はぁ、あっ♡　もう…聞いてるの？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirinade3

[tb_start_text mode=1 ]
[舜]「お尻を洗ってるだけなのに、どうしてそんなに腰動いちゃってるんですか？」[p]
凛子「それは…だって…あんまり丁寧に洗ってくれるから…♡　気持ちよくなっちゃって…」[p]
凛子「お尻じゃなくて…お腹の奥がキュンって切ない気持ちになっちゃうの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirinade_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　撫で洗いされ過ぎて…足の間、熱くなってきちゃったの…♡」[p]
凛子「せっかく洗ってもらってるのに…また汚しちゃったらごめんなさい♡」[p]
[舜]「その時は手と、チンポブラシで綺麗に中まで洗ってあげますから安心してくださいね？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おっぱいも綺麗にしましょうね…あーあー、おっきすぎて手からこぼれちゃいますよ」[p]
凛子「んんっ♡　手煩わせてごめんなさいっ♡　でもそんなに熱心に洗わなくても大丈夫だから…」[p]
凛子「体洗ってるだけなのに…気持ちよくなっちゃうなんてはしたないよね…ごめんなさいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi2

[tb_start_text mode=1 ]
[舜]「凛子さん、たくさん働いて汗かいたでしょう？　洗ってあげないと…」[p]
凛子「ひゃぅっ♡　お、おっぱい持ち上げておっぱいの裏まで洗わなくっても…んっ…あぁっ♡」[p]
凛子「恥ずかしいところは私が自分で洗う、から…♡　もう充分だってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi3

[tb_start_text mode=1 ]
[舜]「あー、やわらか…おっぱいとろけそうですねぇ？」[p]
凜子「んっ、ふぅっ…♡　洗ってるだけなんじゃないのっ？　[舜]くんの触り方…エッチだよ♡」[p]
凛子「あっ…掴んじゃうの？　もう…いつまで経っても洗い終わらないんじゃない？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃぅぅぅっ♡　あぁぁっ♡　ち、乳首触れちゃってる…♡　あぅっ、そこ気持ちいいっ♡」[p]
凜子「おっぱいもみくちゃになってる…♡　ふーっ…ふーっ…気持ちよすぎてぼーっとしてきた♡」[p]
凛子「やだ…アソコまで疼いてきちゃうなんて…体欲しがってるみたいで恥ずかしい…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…あぁっ♡　そこっ、敏感なのに…♡　集中狙いするなんて意地悪だよ…♡」[p]
[舜]「でも嬉しそうに腰動いてますよ？　ほら、ヘコヘコって…」[p]
凛子「あっ♡　んぅっ♡　だって…摘まんでこねるからぁっ…♡　刺激強すぎちゃうっ…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kuriijiri2

[tb_start_text mode=1 ]
凛子「ひぅぅっ♡　あぁっ♡　クリばっかり…擦らないで…もう充分綺麗になったから…♡」[p]
[舜]「エッロ、クリ洗ってるだけなのに…つま先ピンって伸びちゃってますよ？」[p]
凛子「刺激強すぎて…気持ちいいのこみ上げてきちゃうの…♡　腰、動いちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_kuriijiri3

[tb_start_text mode=1 ]
凛子「ん…ふっ♡　やっ、摘まんで集中的に触らなくっても…！」[p]
[舜]「しっかり皮も剥いて洗わないと、綺麗にならないですよ？　ほら…」[p]
凛子「んあぁぁっ♡　あっ♡　剥き出しになると余計敏感だから…！　だめ、だめぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ああぁぁっ♡　ダメ、クリだけで気持ちよくなっちゃうから…♡」[p]
凛子「ごめんなさい、年上なのにこんなに情けない姿見せちゃって…♡　でも気持ちよくって♡」[p]
凛子「腰も勝手に動いちゃうの…♡　あぁ、止まらない…♡　はしたない動きしちゃうぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「今度は[舜]くんを綺麗に洗ってあげる♡　せっかくおちんちんおっきくなったんでしょ？」[p]
凛子「まずはおちんちんから擦って綺麗にしようね…♡　トロトロにしてくれたおまんこを使うよ♡」[p]
凛子「しっかり割れ目に挟んで…シコ、シコシコって…♡　綺麗になるかな？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_sumata2

[tb_start_text mode=1 ]
[舜]「あ～、腰使いヤバ…めちゃくちゃ気持ちいいです、凛子さん…♡」[p]
凛子「ほんと？　よかった…♡　カリ首のところも…擦らなくちゃ…♡　あんっ、はぁ、あんっ♡」[p]
凛子「擦れてる…♡　ん、くぅぅっ、先っぽからとろんって何か溢れてきちゃったよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata3

[tb_start_text mode=1 ]
凛子「はーっ♡　はーっ♡　[舜]くんを綺麗にしながら…私も気持ちよくなってきちゃったぁ♡」[p]
凛子「あんっ♡　あぁ♡　おちんちん、ビクビクってしてる…先っぽも膨らんでるね♡」[p]
凛子「[舜]くんにはいっつも気持ちよくしてもらってるから…私だって気持ちよくしたいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　も、もうっ…私が[舜]くんにしてあげたいって思ってたのに…♡」[p]
凛子「んっ…あはぁっ♡　[舜]くんのおちんちん…敏感なトコに擦れて引っかかってる…♡」[p]
凛子「結局私が気持ちよくされちゃってる♡　[舜]くんには敵わないね…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_teman1

[tb_start_text mode=1 ]
凛子「あっ♡　んぅっ♡　奥…ぐちゃぐちゃになっちゃう♡　内側まで洗われちゃうなんて♡」[p]
[舜]「でも綺麗にしてほしいから腰突き出してるんですよね？　期待に応えないと…」[p]
凛子「はーっ♡　んっ、あぁっ♡　[舜]くん、洗うのすっごく上手なんだもの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「洗っても洗ってもヌルヌルが取れないですねぇ。これボディソープじゃないですよね？」[p]
凛子「もうっ、[舜]くんの意地悪…♡　わかってるくせに…んっ♡　あっ、あぁぁぁっ♡」[p]
凛子「かき回すほど…溢れてきちゃうんだってばぁ♡　んっ♡　あっ、あぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_teman3

[tb_start_text mode=1 ]
凛子「ひあぁぁっ♡　あ゛っ♡　あ゛あ゛っ♡　も、もう立っていられないの…♡」[p]
[舜]「ダメじゃないですか、しっかり踏ん張らないと…奥まで洗えませんよ？」[p]
凛子「あうぅっ♡　[舜]くんのほうが…年上みたいね♡　私がお世話されちゃってる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　んあぁぁぁっ♡　弱いとこ…当たってるっ♡　んっ、くぅぅっ♡」[p]
凛子「足…ガクガクしてる…んんっ♡　力抜けちゃうの…立ってられない…♡」[p]
凛子「洗い合いっこしようって言ったのに…ごめんなさい、私だけ気持ちよくなっちゃって♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「あっ♡　あっ♡　あっ♡　んんっ♡　奥まで…洗ってくれるのっ？」[p]
[舜]「当たり前でしょう？　体全部擦らないと、洗ったことにならないんだから…！」[p]
凛子「あうぅっ♡　あっ♡　あぁっ♡　感触確かめるみたいに擦られると…変になっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「あぁ、ヤバ…のぼせちゃいそ…凛子さんは大丈夫ですか？　そんなの気にする余裕ないか…」[p]
凛子「んっ♡　あっ、あぁぁっ♡　大丈夫っ…♡　でも…私も体の奥ジリジリ熱くて…」[p]
凛子「体の奥まで洗い終わる前に火照っちゃう…♡　とろけちゃいそうなの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「逃げちゃダメですよ、凛子さん…！　奥までブラシでごしごし擦ってるんですから…」[p]
凛子「ひぐっ♡　あっ♡　あぁっ♡　も、もう充分綺麗だから…♡　あぁんっ♡」[p]
凛子「これ以上擦ったら…ま、またトロトロってして洗わなきゃいけなくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぅぅぅっ♡　こ、腰抜けちゃう…♡　はっ♡　はっ♡　はっ♡　足ガクガクしてる♡」[p]
凛子「んんっ…奥、引っかかってるの…♡　体の中、全部掻き出されちゃう♡」[p]
凛子「はぁっ♡　あぁっ♡　も…立ってるのやっとなの…腰抜けちゃうからぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「ん、ふぅっ♡　あっ♡　先っぽ…１番奥まで…届いてる♡　当たってるっ…♡」[p]
凜子「くぅっ♡　ひっうぅっ♡　揺さぶられちゃう♡　んんっ、ぐちゃぐちゃになっちゃう♡」[p]
[舜]「すごいですよ、中からどんどんヌルヌル溢れてくる…やらし…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「大丈夫ですか？　しっかり踏ん張ってくださいね？　奥までよく洗いますから…♡」[p]
凛子「ん、あぁっ♡　わかったっ♡　体中洗ってもらって…子供になっちゃったみたい♡」[p]
凛子「はぁっ♡　あっ♡　あんっ…♡　大人だけど…♡　お世話してもらうのも悪くないかもっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「よーく洗いましょうね♡　腰引いちゃダメですよ？　ピカピカにするんですから…！」[p]
凛子「んあぁ♡　奥も入り口も…おちんちんで擦られちゃってる…おっ、んおっ♡　激しっ…♡」[p]
凛子「ひぅっ♡　あっ♡　あうぅっ♡　逃げられない…深いところまで磨かれてるの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あ゛う゛ぅぅっ♡　お゛っ♡　お゛ぉ゛っ♡　弱いところっ…擦っちゃダメっ…♡」[p]
凛子「ひぐぅぅっ♡　はっ、はっ…♡　もう、立ってるのやっとで…力抜けちゃうぅっ♡」[p]
凛子「はーっ…♡　充分磨かれたからっ…最後の仕上げ、してっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_kaiwa1

[tb_start_text mode=1 ]
凛子「[舜]くんの体、丁寧に洗ってあげる…♡　ふふ、お世話されるの嫌じゃない？」[p]
[舜]「嬉しいです…でも俺も凛子さんのお世話焼きたいなって思ってますよ？」[p]
凛子「ふふ、嬉しいな…ずっと誰かの面倒を見るばっかりだったから…すっごく新鮮♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa2

[tb_start_text mode=1 ]
凛子「どんなふうに可愛がってくれるの？　気持ちいいことされちゃうのかな～？」[p]
凛子「ふふっ、煽りすぎちゃった？　えっ…[舜]くん目本気になっちゃってる…そんな目されたら…」[p]
凛子「やだ…めちゃくちゃにされちゃうのかな。ドキドキしてお腹キュンってときめいてきちゃった」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa3

[tb_start_text mode=1 ]
凛子「体、洗ってもらうだけだもんね…私ばっかり期待しちゃって、なんだか恥ずかしいな…」[p]
[舜]「ええ、体の隅から隅まで洗いますよ？　体の内側まで綺麗にしてあげますから」[p]
凛子「体の隅から隅、まで…♡　普段は自分じゃ洗えないところまで綺麗にしてほしいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…はぁ、あっ…♡　ねっとり舐められるの、大好き♡　もっと綺麗にして？」[p]
[舜]「おねだりしてくれるんですね…凛子さんも興奮してるんだ…エロい匂いしてる」[p]
凛子「んっ♡　ふっ…あぁ♡　やっ、言わないで…恥ずかしいから…♡　すっごく気持ちいいんだもの」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_miminame2

[tb_start_text mode=1 ]
凛子「ふぅ、んんっ♡　奥まで届いてる…はぁ、あんっ♡　[舜]くんって、舌遣い上手なのね…」[p]
凛子「どこで練習したのか気になっちゃう…年上なのにヤキモチなんてみっともないかな？」[p]
[舜]「凛子さんだけですから…凛子さんを気持ちよくしたくて頑張っちゃってるんです」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ、んんっ♡　はぁ、あっ…♡　荒い息もよく聞こえてるよ…ゾワゾワってしちゃうの♡」[p]
凛子「んっ…あぁ♡　お腹の奥…きゅ～んって切なくなっちゃったぁ…[舜]くんのせいだよ？」[p]
凛子「責任とって、もっと気持ちよくしてもらわなくっちゃ…満足できないからね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_miminame_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あっ♡　あんっ♡　やっ…頭の中まで舐め回されちゃってるみたい…」[p]
凛子「どんどん敏感になってくの♡　エッチな気持ちになっちゃう…おしまいなんて言わないでね？」[p]
凛子「私…体の奥まで準備ができちゃったから♡　全部洗って確かめてね？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sirinade1

[tb_start_text mode=1 ]
凛子「んっ♡　お尻洗ってくれてるの？　んっ…そんなエッチな触り方するなんて、だめっ…♡」[p]
[舜]「だって触り心地最高なんですもん…ぷりぷりでめっちゃエロいお尻です」[p]
凛子「んっ…恥ずかしいな。でも[舜]くんが興奮してくれてすっごく嬉しい…もっと触って♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_sirinade2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…ふぅ、やだぁ、お尻広げないで…お尻の間なんて見てもしょうがないんだからぁ♡」[p]
[舜]「凛子さんのお尻の穴、すっごい可愛くてエロいですよ？　ヒクヒクしちゃってますし…」[p]
凛子「あんっ♡　はぁ、恥ずかしい…自分じゃ見えないところだからどうなってるのかわからないもの」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirinade3

[tb_start_text mode=1 ]
凛子「どう？　お尻綺麗になってきた？　ん、はぁ、あんっ♡　そこばっかり丁寧にあらうのね♡」[p]
[舜]「もうとっくに綺麗なんですけど、触り心地がよくって…手を離すのが惜しくなっちゃって…」[p]
凛子「んっ♡　それなら今度は[舜]くんの体をお尻で洗ってあげなくっちゃね…♡　楽しみにしてて♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirinade_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひうぅっ♡　はっ♡　はぁ♡　そんなお尻広げて…中擦らないでぇ…あんっ…♡　あぁっ♡」[p]
[舜]「あれ？　おまんこトロトロになってるじゃないですか…洗われて興奮したんですか？」[p]
凛子「だって…[舜]くんの洗い方がエッチだから…♡　んっ、はぁ、あん♡　恥ずかしい…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あんっ…あぁ…乳首も綺麗に洗ってくれるの？　んっ…ふぅ♡　ふふ、丁寧すぎだよ」[p]
凛子「[舜]くん、おっぱい好きだなんて赤ちゃんみたいで可愛い♡　いっぱい触りたいんでしょう？」[p]
凛子「綺麗に洗って、あとで好きなだけ触って舐めてくれていいから…ね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri2

[tb_start_text mode=1 ]
凛子「ち、乳首はもう充分綺麗になってるから…♡　そんな重点的に擦らなくてもいいってばぁ♡」[p]
[舜]「じゃあ乳輪も綺麗にしましょうか？　せっかくぷっくり膨らんできてるんですから…」[p]
凛子「ひうぅっ♡　んっ♡　あっ♡　あぁぁっ♡　カリカリ洗われると…切なくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri3

[tb_start_text mode=1 ]
凛子「ひぅぅっ♡　あっ、先っぽばっかり…あんっ♡　コリコリ摘まんで洗わないでぇ♡」[p]
凛子「あっ♡　あっ♡　んあ♡　　ふーっ…ふーっ…乳首、敏感なの…先っぽ弱いからっ♡」[p]
凛子「[舜]くんの触り方、エッチすぎ…♡　私、どんどん敏感になってきちゃってる…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　んぁぁっ♡　乳首だけでっ…イッちゃう…♡　ジンジンしちゃってる…」[p]
凛子「気持ちいいの、お腹の奥まで響いてるの♡　気持ちいいのがおっぱいから全身に届いてる♡」[p]
[舜]「凛子さん、足ガクガク震えてますよ。気持ちよくなっちゃったんですね？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「やっ、だめ…お尻の穴は…恥ずかしいっ…そんなとこ、なぞらないでぇっ♡　だめ、だめっ♡」[p]
[舜]「でもヒクヒクしてますよ？　中まで指入れてほしいんじゃないんですか？　ほら…」[p]
凛子「あっ♡　んんっ…やっ、そんなところ、入らないからっ…♡　指でも無理だよ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_anaruijiri2

[tb_start_text mode=1 ]
凛子「汚い、からっ…お尻の穴ばっかり触らなくってもいいの…変な感じ、しちゃうから♡」[p]
[舜]「汚くないですよ？　でも綺麗にするために洗うんですから、これで正解なんですって」[p]
凛子「あっ♡　んあぁぁっ♡　だからって指…中に入れちゃうのはダメなんだってばぁ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_anaruijiri3

[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あっ、あぁぁっ♡　指、中まで入っちゃってる…圧迫感、すごいのっ♡」[p]
凛子「あっ、動かさないで…♡　お尻の中まで洗われちゃうの？　[舜]くんに全部触られちゃう♡」[p]
凛子「はぁ、あんっ♡　恥ずかしいとこまで全部見られてるのに…気持ちよくなっちゃってるの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んあぁぁっ♡　だ、だめっ…奥入ってる…♡　弱いトコ…擦れて…♡」[p]
凛子「んっ、くぅぅっ♡　も、もう綺麗になったでしょう？　これ以上はだめだってばぁ…」[p]
[舜]「ホントだ。凛子さん足、ガクガク震えちゃってますもんね」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sumata1

[tb_start_text mode=1 ]
凛子「んっ♡　敏感なところまで洗ってくれるの？　しかも手じゃなくておちんちんで洗うなんて♡」[p]
[舜]「オチンポブラシですよ？　こっちのほうが綺麗に擦って洗えるかなって思いまして…ほら…」[p]
凛子「あっ…んんっ♡　ほんとだ…ごしごしって擦られてる…♡　はぁ、んっ…綺麗になっちゃう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_sumata2

[tb_start_text mode=1 ]
凛子「はぁ、あんっ、あぁ…[舜]くんのおちんちんも綺麗になるかな？　私も洗ってあげる♡」[p]
[舜]「他のお客さんにはしてないんですよね？　凛子さんの特別サービス受けられて嬉しいです…」[p]
凛子「ほんと？　よかったぁ…全体的に綺麗にしなくちゃね…♡　しっかり擦って…んんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata3

[tb_start_text mode=1 ]
凛子「ひゃうっ♡　クリと擦れて…腰、勝手に動いちゃうの…♡　自分の体じゃないみたい」[p]
[舜]「もっと擦り洗いしてほしいんですか？　それならおねだりしないとだめじゃないですか…」[p]
凛子「んっ♡　あぁっ♡　トロットロになっちゃったから…もっと、綺麗に洗ってください…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んっ♡　んぅぅぅっ♡　クリに、当たっちゃってる…♡　はぁ、あんっ、あぁぁっ♡」[p]
凛子「ん、あっ、あぁ…♡　ごめんなさい、トロトロになっちゃって…余計汚れちゃったかも」[p]
凛子「溢れてきちゃうのは止められなくって…[舜]くんのおちんちんもヌルっとしちゃった…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひゃぅぅぅっ♡　あぁっ♡　出ちゃってる…♡　潮吹き止まらないのっ♡」[p]
[舜]「自分で洗い流してくれるんですか？　凛子さんは綺麗好きですねぇ」[p]
凛子「そういうわけじゃ…あうぅっ♡　あっ♡　あっ♡　腰、抜けちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_siohuki2

[tb_start_text mode=1 ]
[舜]「すっご…超潮吹きしてるじゃないですか…水分なくなってカラカラになっちゃいそうですね」[p]
凛子「んっ♡　あぁっ…だって潮吹き止まらないの♡　はぁ、あっ、頭ぼんやりしてきちゃう♡」[p]
凛子「はぁっ♡　んっ♡　奥もトロトロになってるの…まだ溢れちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ♡　あ゛あ゛っ♡　もっと奥まで洗って…♡　[舜]くんの指でかき回してほしいの♡」[p]
[舜]「奥突き上げるたび潮吹きしてますよ…？　凛子さん、エロ過ぎです…！」[p]
凛子「んっ…くぅぅっ、あっ、あぁっ♡　あ、足ガクガクして…立っていられないっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃぁぁっ♡　んっ…エッチな蜜っ、とまらないの…♡　お漏らしみたいで恥ずかしいよ♡」[p]
[舜]「凛子さん、いい大人なのにお漏らししちゃうなんてエッチですね。よく洗ってあげなくちゃ」[p]
凛子「あっ♡　あっ♡　あぁっ♡　こ、これはおしっこなわけじゃなくってぇっ♡　あぁぁぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「んっ♡　ふっ、はぁ、あっ、あぁ♡　[舜]くんのおっきい…奥まで貫かれてる♡」[p]
凛子「あうっ♡　あっ、おおっ♡　お腹側…先っぽ当たってるの…♡　ん、くぅぅっ♡」[p]
凛子「中を綺麗に磨いてくれてるなら頑張らなくちゃ…♡　ほら、もっと深いトコまで頂戴♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「そんなに締め付けて……俺のチンポも綺麗にしてくれるんですか？」[p]
凛子「んんっ♡　あぁっ、もちろん♡　[舜]ちゃんのおちんちんも綺麗に洗ってあげるからね♡」[p]
凛子「ん、くぅっ、ふっ…♡　根元から先っぽまでしっかり擦って…綺麗にしなくちゃね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「んっ♡　あっ♡　はぁ、あぁっ♡　おちんちん反応してるの？　すっごいビクビクしてるよ♡」[p]
[舜]「くっ…綺麗になって喜んでるんですよ…ピカピカに磨いてもらったので…」[p]
凛子「んっ…はぁ♡　あんっ…♡　ふふ、お互い洗い合いっこしようって言ったでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　だめ、敏感なところっ、擦れてる…んっ、くぅぅっ…何か出ちゃうぅ♡」[p]
[舜]「いいですよ、出しても…そしたらまた丁寧に洗い流してあげますから…」[p]
凛子「んぅっ♡　あ゛あ゛っ♡　これ以上ぐちゃぐちゃにされたら…おかしくなっちゃうからぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あぁっ♡　あんっ、んんっ…♡　激し…そんな揺さぶったら…足、浮いちゃう、から…♡」[p]
凛子「夢中で腰振ってくれてるの？　はぁ、あっ♡　[舜]くんも男の子なんだなって実感するね♡」[p]
凛子「おちんちん、私の中で洗ってるんでしょ？　せっかくだから気持ちよくなって…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「んんっ！　締め付けヤバ…まだ洗い足りないですか？　激しくしてほしいのかな…！」[p]
凛子「やっ、違うってばぁ♡　あぁぁぁっ♡　お゛っ♡　お゛お゛っ♡　や、変な声出ちゃうよっ♡」[p]
凛子「ん、くぅっ…♡　はっ♡　はっ♡　奥まで届いていっぱいになっちゃってるの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「すっご、足開いちゃってるじゃないですか…もっと奥まで洗ってほしいんですね」[p]
凛子「んぅぅっ♡　おっ、おおっ♡　違うの…♡　でもっ…奥まで洗ってもらえるの…気持ちいい♡」[p]
凛子「あ゛っ♡　あ゛っ♡　あ゛っ♡　はーっ…どうしよう、頭ボンヤリしてきちゃったぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んっぐぅぅっ♡　あぁっ♡　すごいっ…壊れちゃうぅっ♡　こんなの、初めて…♡」[p]
[舜]「中、洗ってるのに気持ちよくなってるんですか…？　凛子さんエロすぎじゃないですか」[p]
凛子「んっ♡　あぁっ♡　あぁぁっ、ごめんなさい♡　こんなにはしたなくて…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_kaiwa1

[tb_start_text mode=1 ]
凛子「んんっ…そんなにじっくり見ないで？　それに働いてたから…汗もかいてるし…」[p]
[舜]「そうですか？　めちゃくちゃいい匂いしてますよ？　それに足の間もウルウルじゃないですか」[p]
凛子「んんっ、やだ…[舜]くんにエッチなポーズさせられちゃってるからだよ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa2

[tb_start_text mode=1 ]
凛子「やだ、[舜]くん…こんな格好、恥ずかしいよ…もういいでしょう？」[p]
[舜]「だめですよ。これから新しいマッサージの研究するんですから。手伝ってくださいね？」[p]
凛子「[舜]くんのマッサージの練習ならいくらでも付き合うけど…さすがにこのままはダメだよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa3

[tb_start_text mode=1 ]
[舜]「凛子さん、今日も予約いっぱいで施術したんで疲れてますよね？　マッサージしますね」[p]
凛子「ん…気持ちは嬉しいんだけど…こんな格好でいいの？　ローションでヌルヌルだし…」[p]
凛子「[舜]くんに全部任せちゃっていいの…？　どんなマッサージなのか期待しちゃうよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_kiss1

[tb_start_text mode=1 ]
凛子「ちゅ、ちゅぷ、ん、ふぅっ…♡　はぁ、はぁ…これもマッサージの一環なの？」[p]
凛子「体の力を抜いてリラックスさせるには丁度いいかもしれないね…」[p]
凛子「おかげで力抜けちゃったよ♡　でも…その分体の中は熱くなっちゃったけど」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kiss2

[tb_start_text mode=1 ]
凛子「ちゅ、ちゅっ…んんっ♡　ちゅ、ちゅ。んんっ、キスするたび、体触れ合ってる…♡」[p]
凛子「ヌルヌルの肌、擦れ合うとこんなに気持ちいいんだね…知らなかったよ」[p]
凛子「こんな触れ合い方、したことなかったから。[舜]くんには教わってばかりかも」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kiss3

[tb_start_text mode=1 ]
凛子「ちゅ、ちゅちゅ、ちゅく、んっ…ふぅ、はふ…唇触れ合うだけなのに…気持ちよくなっちゃう」[p]
凛子「私、どんどんエッチになってるのかもしれない…大きな子供がいるのに…恥ずかしいな」[p]
凛子「[舜]くんといると、欲求がどんどん大きくなっちゃって…自分じゃどうしようもないの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んんっ♡　ふぅっ、ふっ…ちゅっちゅ♡　ちゅぷ、ちゅくちゅく♡　んん、唇離せない…」[p]
凛子「やだ…自分がこんなに欲張りだなんて知らなかった…キスだけで体ビクビクしてる♡」[p]
凛子「[舜]くんに、こんなにエッチにされちゃったんだよ？　責任取ってもらわなくちゃ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_paizuri1

[tb_start_text mode=1 ]
凛子「んっ…すっごくおっきくなってる…私で興奮してくれたの？　ふふ、嬉しいな♡」[p]
[舜]「凛子さんで興奮するに決まってるじゃないですか。めちゃくちゃエロいのに…」[p]
凛子「褒め上手ね？　そんなに褒めてくれると、たくさんお礼したくなっちゃうな…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_paizuri2

[tb_start_text mode=1 ]
凛子「あぁ…おちんちんビクビクって反応してくれてる…挟んでしごかれるのそんなにいいの？」[p]
凛子「[舜]くんが気持ちよくなってるの見ると、私まで嬉しくなっちゃう…♡」[p]
凛子「んっ…はぁ、おっぱいで挟んでもみくちゃにしてあげるからね…んんっ、はぁ、はっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_paizuri3

[tb_start_text mode=1 ]
凛子「んっ…はぁ、あんっ…どんどん熱くなってきてる…あ、だめっ…乳首に擦れて…んんっ♡」[p]
凛子「私が[舜]くんを気持ちよくしてあげなくちゃって思ってたのに…」[p]
凛子「結局私の方が、えっちなマッサージで[舜]くんに気持ちよくしてもらっちゃってるね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_paizuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あんっ、あぁっ♡　乳首コリコリって当たってるのっ…♡」[p]
凛子「んんっ…はぁ、はっ…おちんちん使うの、上手だね…おっぱい気持ちよくなっちゃった♡」[p]
凛子「お礼に[舜]くんのことも気持ちよくしてあげなくちゃ…ローションおっぱいでシコシコするよ」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「ん、はぁ♡　おっぱい、ローションでヌルヌルになっちゃったね…これで揉みほぐすの？」[p]
[舜]「そうですよ…しっかりローション伸ばして…滑りをよくしなくちゃいけませんから…」[p]
凛子「ひぅっ♡　あっ、あんっ♡　とろけちゃう…そんなにおっぱい揺らさないで…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi2

[tb_start_text mode=1 ]
[舜]「あぁ、ヌルヌルすぎて手からおっぱい逃げちゃいますよ…」[p]
凛子「んっ♡　はぁ、んんっ♡　鷲掴み、だめっ…♡　今敏感になってるからぁ♡」[p]
凛子「ひゃっ♡　手のひらに…ヌルヌル乳首擦れて…気持ちよくなっちゃう…んっ♡　あぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あんっ…♡　[舜]くんの手の中で揉みくちゃになってる…♡　おっぱい、形変えられちゃう♡」[p]
凛子「あ～、とろけちゃいそうなの…♡　[舜]くんの手、温かくておっきいから…♡」[p]
凛子「おっぱい気持ちよくなっちゃう♡　どうしよう…こんなの、初めて…気持ちいのきちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁっ♡　ビクビクって…反応しちゃってるの♡　おっぱいで気持ちよくなっちゃうなんて」[p]
凛子「はーっ…はーっ…お腹の奥もジンジン響いてるみたい…体もあったまってるよ」[p]
凛子「[舜]くんのマッサージの効果、すごいね。私にもやり方教えてほしいくらい♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…あぁっ、そこはマッサージしなくて大丈夫だってば…[舜]くん、恥ずかしいからっ」[p]
[舜]「でもここ、固くなってますよ？　ほら、割れ目の間でコリって固くなってる」[p]
凛子「違うの、クリトリスはそういうものだから…あっ♡　だめ、ローション塗り込まないでぇっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kuriijiri2

[tb_start_text mode=1 ]
凛子「んっ♡　あっ♡　あぁ♡　も、もう大丈夫だよ[舜]くん…♡　充分ほぐれたから…」[p]
凛子「これ以上されちゃうと…私、変になっちゃう…変な声も出ちゃう、からぁっ♡」[p]
[舜]「いいじゃないですか、２人きりなんだから変な声出して気持ちよくなっていいんですよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「ん゛っ♡　ああぁぁっ♡　摘まんでシコシコ、だめぇぇっ♡　腰浮くっ、浮いちゃう♡」[p]
凛子「あっ♡　あっ♡　あっ♡　クリおかしくなっちゃう…壊れちゃうぅぅっ♡」[p]
[舜]「ローションじゃないヌルヌルも溢れてきましたね。もっとマッサージしてほしいのかな？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あ゛あ゛っ♡　んっくぅぅっ♡　クリだけでイク…気持ちよくなってイッちゃうぅ♡」[p]
凛子「リラックスなんかできないよ…ずっと気持ちいい波きてるんだもの…壊れちゃうっ」[p]
[舜]「腰動きっぱなしじゃないですか…あー、めっちゃエロい…クリマッサージ癖になってください」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_sumata1

[tb_start_text mode=1 ]
[舜]「チンポを使って割れ目もマッサージしますからね…？　よーくほぐしましょうね」[p]
凛子「はぁ、あっ、はぁ…♡　[舜]くんのすっごく固くなってる…んっ♡　あぁっ♡　擦れるっ♡」　[p]
凛子「この格好…ゾリゾリって擦れてるとこもよく見えちゃう♡　恥ずかしいの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_sumata2

[tb_start_text mode=1 ]
凛子「ん、くぅっ♡　あぁっ♡　すっごくよく滑ってる…これもローションのおかげなの？」[p]
[舜]「凛子さんの体から出てるエッチな蜜かもしれませんよ？　ほら、トロトロになってるでしょ？」[p]
凛子「んんっ…あぁっ、言わないで…恥ずかしい♡　[舜]くんが気持ちよくしてくれるからだよ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_sumata3

[tb_start_text mode=1 ]
凛子「はぁっ♡　はぁっ♡　あんっ♡　ヌルヌルなのに…カリに引っかかっちゃってるの…♡」[p]
凛子「ひぅぅっ、あぁっ♡　入り口ばっかり擦られたら…ほぐれちゃう♡」[p]
凛子「受け入れる準備、始めちゃうよ…んんっ、ほら、入り口も開いちゃってるでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ん゛っ♡　あ゛あ゛っ♡　は、入っちゃうっ…♡　んんっ♡　先っぽ入り口に当たってる♡」[p]
凛子「あうぅっ♡　はっ♡　はっ♡　[舜]くんのおかげで…おまんこほぐれちゃったぁ♡」[p]
凛子「ふーっ…ふーっ…ヒクヒク収まらない…♡　マッサージの効果、すごいのね」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　あっ♡　あっ♡　んっ、くぅぅっ♡　体の奥までマッサージ…してるのっ…？」[p]
凛子「ヌルヌル過ぎて…いつもより深いところまで指届いちゃってる…♡　変になっちゃうぅっ♡」[p]
[舜]「もうマッサージいらないくらいほぐれてるじゃないですか。ほら、とろけてますよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman2

[tb_start_text mode=1 ]
凛子「はぁ、ひぅっ…あっ、あぁぁっ♡　そんな、激しく指動かさないでっ♡　壊れちゃう♡」[p]
[舜]「でも嬉しそうにヒクついてますよ。奥も思いっきりマッサージしてほしいんでしょ？」[p]
凛子「ひぅぅぅっ♡　あ゛あ゛っ♡　トントンされるの…ダメ、お腹の奥まで反応しちゃうから♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman3

[tb_start_text mode=1 ]
凛子「んっ♡　くっ♡　んんっ♡　き、気持ちいいの♡　はぁ、あっ♡　体、熱くなってきた♡」[p]
[舜]「つま先までピンと伸びてきちゃいましたね？　エロいですよ凛子さん…」[p]
凛子「やっ…恥ずかしいこと言わないでっ…♡　余計に熱くなっちゃうからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ん゛っ♡　あっはぁっ♡　ダメなトコっ、当たって…んんんっ♡　も、だめぇっ♡」[p]
[舜]「すっごい反応ですね？　そんなに気持ちよくなってくれるならもっとしてあげなくちゃ」[p]
凛子「やっ…あ゛あ゛っ♡　それ…トントンノックされるの…奥まで響いてるの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「ひぐぅぅっ♡　体重かけてジュポジュポ出し入れされるの、だめ…♡」[p]
凛子「すべって奥まで入っちゃう…♡　いつもより深いトコに届いちゃってる…♡」[p]
凛子「先っぽで…奥までこねまわされてる…んんっ、くっ♡　あっ　だめぇぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri2

[tb_start_text mode=1 ]
凛子「ひあぁぁっ♡　腰掴んで奥まで挿れられたらっ…逃げられないっ♡　だめ、だめぇ♡」[p]
凜子「気持ちいいのも逃がせないのっ…♡　こんなの、すぐイッちゃうってば…♡」[p]
凛子「年上、なのに…♡　[舜]くんより大人なのにっ♡　だらしなくてごめんなさい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「可愛いですよ…ヌルヌルになって気持ちよくなっちゃってる凛子さん、すっごくいい」[p]
凛子「あぁぁっ♡　そんなこと言われたら…余計に意識しちゃうってば…♡　んっ、くぅぅっ♡」[p]
凛子「あっ♡　あぁぁっ♡　奥…深いところまで届いてるよ♡　[舜]くんの、おっきいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぅぅぅっ♡　おっ♡　おおおっ♡　深いところ…ゴリュって当たってる♡」[p]
凛子「目の前…チカチカしちゃってる…♡　[舜]くんのマッサージ、すごいからぁ♡」[p]
凛子「あっ♡　あっ♡　あっ♡　もうわかんないっ♡　わかんなくなっちゃうぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あっ♡　あぁっ♡　激し…んんっ、くぅぅっ♡　奥まで揉みほぐしてくれるの？」[p]
[舜]「そうですよ…この奥のコリコリっとしたトコ、凝ってるんですよね？　よくほぐさなきゃ」[p]
凛子「んあぁっ♡　押さえ込まれてっ、逃げられない♡　強制的に気持ちよくされちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「今日も凛子さん、仕事たくさん頑張ってたんで…いい子いい子ってほぐしてあげなくちゃ」[p]
凛子「あぁっ♡　私だけじゃなくてっ♡　[舜]くんだって今日はたくさん頑張ったんでしょっ♡」[p]
凛子「私も[舜]くんのことっ♡　気持ちよくしてあげたい♡　んっ♡　あぁっ♡　あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「くっ…ふぅっ、あぁ、すっごい締め付け…あぁ、緩めてくれなきゃ出ちゃいますって…」[p]
凛子「んっ♡　あっ、ひぅぅっ♡　無理、だってばぁっ♡　体が勝手に反応してるんだもの」[p]
凛子「はぁっ♡　あぁっ♡　出していいから…♡　[舜]くんの好きにしちゃって…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ん゛っ♡　あ゛う゛っ♡　あ゛あ゛っ♡　気持ちいいっ…１番奥…擦れて当たってるっ♡」[p]
凛子「弱いところに…ズンズンって…♡　[舜]くんのおちんちん当たってるの…♡」[p]
凛子「気持ちいいの広がって…イッちゃうっ♡　マッサージなのに…イッちゃうのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_kaiwa1

[tb_start_text mode=1 ]
凛子「本気でこのままの格好でマッサージしちゃうの？　ローションまで準備してるなんて…」[p]
[舜]「凛子さんの疲れを癒そうと思って、用意してたんです。すごいでしょ？」[p]
凛子「もう…こんな状態、普通のマッサージじゃないってすぐわかっちゃうよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa2

[tb_start_text mode=1 ]
凛子「んっ…♡　体中ヌルヌルになっちゃった…[舜]くん、どんな施術してくれるの？」[p]
[舜]「凛子さんがすっごく気持ちよくなれるマッサージですよ？　今まで体験したことないような」[p]
凛子「やだ…体が期待してるみたい…♡　ヒクヒクって反応してるの、バレちゃったでしょう？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa3

[tb_start_text mode=1 ]
凛子「体全部[舜]くんにゆだねちゃうからね…？　[舜]くんオリジナルのマッサージ、してみて♡」[p]
凛子「その代わり…すっごく気持ちよかったら、またお願いしちゃうかもしれないよ」[p]
[舜]「もちろんですよ…凛子さんも余計なこと考えずに気持ちよくなってくださいね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_2_Dkiss1

[tb_start_text mode=1 ]
凛子「ちゅぷ、ちゅくちゅくちゅく、じゅるるるる♡　んんっ…口の中もトロトロであったかい…♡」[p]
凛子「ローションついてないのに…口の中も体と同じくらいヌルヌルになっちゃったね♡」[p]
凛子「はぁ、はふ…もっとほしくなっちゃう…ちゅく、ちゅっちゅ、ちゅぷ、じゅるるるるっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_Dkiss2

[tb_start_text mode=1 ]
[舜]「んんっ、凛子さん激し…キス大好きになっちゃったんですね？」[p]
凛子「ちゅぷ、ちゅっ♡　ちゅく、にちゅ、ちゅぷ、じゅるるる♡　んん、そうなの♡　キス大好き」[p]
凛子「でも好きな人とするキスだから気持ちいいのよ？　他の人じゃダメなの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_Dkiss3

[tb_start_text mode=1 ]
凛子「ちゅっちゅ、じゅぷ、じゅるるるる♡　んん、もっとキスしたい…舌絡ませてほしいの♡」[p]
[舜]「凛子さん、欲しがるのめちゃくちゃエロいです…舌出してください…」[p]
凛子「んっ♡　ちゅっちゅ、じゅぷ、じゅるるるるっ♡　はぁ、あんっ♡　もっと、もっと…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んんんっ♡　ちゅぷ、ちゅっちゅ♡　はっ、はぁ、キスだけでイッちゃうかと思った…」[p]
凛子「じゅぷ、ちゅくちゅくちゅく…食べられちゃうみたいなキス…すごいの♡」[p]
凛子「こんなエッチなキスどこで覚えたのって、ヤキモチ妬きそうになっちゃった」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_paizuri1

[tb_start_text mode=1 ]
凛子「んんっ…はぁ、あっ♡　手だけじゃなくておちんちんでもマッサージしてくれるの？」[p]
凛子「あんっ♡　あぁ…ヌルヌルになってる…♡　これ、ローションだけのぬめりじゃなさそう」[p]
凛子「[舜]くん、もう我慢してるの？　[舜]くんのあったかい体液、溢れちゃってるみたいだよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_paizuri2

[tb_start_text mode=1 ]
凛子「あんっ…んんっ♡　私のことマッサージしながら[舜]くんも気持ちよくなってるんでしょう？」[p]
[舜]「バレちゃいましたか…だって凛子さんのおっぱい、とろふわで気持ちいいんですもん」[p]
凛子「わかるよ…♡　んんっ、でもマッサージでお互い気持ちよくなれるのはいいことだよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_paizuri3

[tb_start_text mode=1 ]
凛子「もっと揉みほぐして…♡　はぁ、はっ…おっぱいの先っぽ、凝ってるみたいなの…」[p]
[舜]「ホントだ、コリコリに固くなってるじゃないですか…ここ集中狙いしなくちゃ」[p]
凛子「ひぅっ♡　あっ♡　あぁぁっ♡　そこっ、気持ちいいの…はぁ、ああっ♡　お願いしますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_paizuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひっぐぅぅっ♡　あぁぁっ♡　乳首ばっかり…ほぐされちゃう…♡　だめ、イッツちゃう♡」[p]
凛子「んんっ、おちんちんの先っぽとキスしてる…何度も何度も擦れて…ちゅっちゅって♡」[p]
凛子「ダメ、余計に固くなっちゃう♡　[舜]くんのおちんちんみたいに…カチカチになっちゃうの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…はぁ、ああっ♡　おっぱいの先までローションまみれにしちゃうの…？」[p]
凛子「あっ♡　あっ♡　んんっ…そんなに揉みほぐさないで…凝ってるわけじゃないんだってばぁ♡」[p]
[舜]「そうなんですか？　でもコリコリに固くなってるからよくほぐさないと」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubiijiri2

[tb_start_text mode=1 ]
凛子「ひぅっ♡　あっ♡　あぁぁっ♡　ダメ、そこ敏感だからっ♡　んんっ…ぷっくりしちゃうの♡」[p]
[舜]「凛子さんのおっぱいテラテラ光っててめちゃくちゃエロいですよ…乳首も固くなってるし」[p]
凛子「んんっ♡　[舜]くんが丁寧にマッサージしてくれるから…ツンって立ち上がっちゃったの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「はーっ…はーっ…♡　乳首気持ちいいの…♡　体の奥までジンジン響いてる…♡」[p]
凛子「あっ♡　んっ♡　それ、すごい…♡　ローション塗り込みながらマッサージされちゃうの？」[p]
凛子「あぁぁっ♡　先っぽだけカリカリってするの…気持ちいい♡　おかしくなる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んあぁぁっ♡　好き、好きっ…♡　んんっ♡　乳首マッサージ、気持ちいいの…♡」[p]
[舜]「足ガクガク震えちゃってますよ？　そんなに効いてるんですか？　すごいな」[p]
凛子「効いちゃってる…♡　マッサージで…お腹の奥っ…ずっとキュンキュン疼いてるっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「えっ…お尻までマッサージしちゃうの？　あっ、んんっ、ローション塗り込まれてる…♡」[p]
[舜]「だってさっきからヒクヒクしてるでしょ？　触ってほしいのかと思って」[p]
凛子「違うんだってば…体が勝手に反応しちゃってるだけ、だからっ…♡　んんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_anaruijiri2

[tb_start_text mode=1 ]
凛子「こんな格好で…恥ずかしい…[舜]くんに全部見られちゃってるのね。あんまり見ないで…」[p]
[舜]「凛子さんのお尻、可愛いですよ。きゅっと閉じてるのに、ずっとヒクついてる」[p]
凛子「んんっ♡　あっ、撫でないでぇっ♡　ほぐして中に指入れようとしてるの？　だめだってば♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_anaruijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「お尻ほぐれてきちゃいましたよ？　ほら、入り口に簡単に指入っちゃった…」[p]
凛子「ひゃぅ♡　あぁっ♡　お尻、広げないで…♡　やっ…奥まで見えちゃうっ♡」[p]
凛子「あっ♡　こんな恥ずかしい格好でお尻まで触られちゃったら…もう[舜]くんの顔見られないよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「くぅぅっ♡　ああぁぁっ♡　お尻っ…変なの…熱くなってる♡　腰、動いちゃうぅ♡」[p]
[舜]「凛子さん、腰ヘコヘコしっぱなしですよ？　お尻で気持ちよくなればいいじゃないですか」[p]
凛子「んっ♡　ふぅっ、ふっ♡　もう気持ちよくなっちゃってるよ。[舜]くんのせいだからね？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_sumata1

[tb_start_text mode=1 ]
[舜]「凛子さん、割れ目トロっと開いちゃってるじゃないですか…奥まで擦れちゃいそうですよ」[p]
凛子「あんっ♡　んんっ♡　深いところまでおちんちんでマッサージされちゃうのね♡」[p]
凛子「はぁっ♡　あぅっ♡　あぁっ♡　んんっ♡　[舜]くんも気持ちよくなっていいからね♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_sumata2

[tb_start_text mode=1 ]
凛子「ふーっ…ふーっ…んんっ♡　あぁ♡　ヌルヌルなのはローション？　[舜]くんの我慢汁かな？」[p]
[舜]「凛子さんのエッチな蜜なんじゃないですか？　全部が混ざり合ってるんですよ…ほら」[p]
凛子「あんっ♡　あぁぁぁっ♡　すごいの…ヌルヌル擦れて…すっごく気持ちいいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_sumata3

[tb_start_text mode=1 ]
凛子「だめ、こんなのイッちゃう…♡　もう入り口までぐちゃぐちゃになってる…♡」[p]
[舜]「まだですよ…もっとほぐさないと。よーくチンポで擦ってローションマッサージしますから」[p]
凛子「んっ♡　あ゛あ゛っ♡　一旦ストップしてぇっ…♡　おかしくなっちゃうからっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んあぁぁぁっ♡　クリとおちんちん擦れ合って…刺激ビリビリって響いてるっ♡」[p]
凛子「はぁっ♡　はぁっ♡　こんなに気持ちいいマッサージしてもらえるなんて…♡」[p]
凛子「[舜]くんのマッサージ、リピーターになっちゃうよ…♡　すっごく気持ちいいんだもの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅっ♡　あぁっ♡　熱いの湧き上がって…収まらないのっ♡　キュンキュンしてるっ♡」[p]
[舜]「すっごい反応ですね…興奮しすぎですよ凛子さん…」[p]
凛子「あっ♡　あんっ…そんなこと言ったって…敏感なトコ、直接擦れちゃってるからっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki2

[tb_start_text mode=1 ]
凛子「あぁぁっ、また出ちゃうぅっ♡　んはぁっ♡　[舜]くんに恥ずかしい姿見せてるっ♡」[p]
[舜]「潮吹き止まんないですねぇ？　あーあー、お漏らしてるみたいになってる…」[p]
凛子「んっくぅぅっ♡　やっ…だって…刺激強いからっ♡　止まらなくなっちゃうのっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　あぅぅっ♡　おちんちんでゾリゾリって擦られるの、気持ちいいのっ…♡」[p]
凛子「腰動く…♡　変になっちゃう♡　擦れてるところから頭の先までビリビリってきてる♡」[p]
凛子「あぁぁぁっ♡　敏感なところばっかり擦らないで…ホントに…わかんなくなっちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あ゛あ゛っ♡　すごい量っ…出ちゃってる♡　体の水分全部出ちゃうぅぅ♡」[p]
凛子「ひぐぅぅっ♡　おっ♡　おおっ♡　奥…キュンキュンしっぱなしで止まらないのっ♡」[p]
凛子「ふーっ…んんっ♡　待ってっ♡　休憩っ♡　これ以上されたら壊れる…壊れちゃうからぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「凛子さん、足開いてるから…チンポが出たり入ったりしてるところよく見えますよ…」[p]
凛子「ひゃぅぅっ♡　恥ずかしいっ…♡　んっ、あぁっ♡　嫌、見ないでぇっ…♡」[p]
凛子「んっ♡　あぁっ、感触確かめるみたいにゆっくり出し入れするの…だめぇぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凛子「フーッ…フーッ♡　すごい…[舜]くんのおっきいのが…ヌルヌルって入り口擦れて…♡」[p]
凛子「深いところにも…一気に入ってきちゃう♡　おおおっ♡　いっぱいになっちゃうぅっ♡」[p]
[舜]「凛子さんも出し入れしてるとこ見てるじゃないですか…興奮してるんですね…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「んっ♡　あっ♡　あぁぁっ♡　[舜]くんの…ビクビク跳ねてる…先っぽも膨らんじゃってる♡」[p]
凛子「[舜]くんも私で興奮してくれてるんだね…顔もオスって感じでエッチになってる♡」[p]
凛子「そんな顔見せられたら…私まで興奮しちゃう…♡　んっ、気持ちよくなっちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あっ…お、奥…弱いトコ当たってる♡　ん、くぅぅぅっ♡」[p]
凛子「ドチュって、おちんちんの先っぽで押しつぶされちゃったぁ♡　あうっ♡　あっ、あぁぁっ♡」[p]
凛子「だめ…すごいのきちゃう…♡　恥ずかしい格好のまま、頭の中真っ白になってイッちゃうよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凛子「あ゛あ゛っ♡　ん゛っ♡　そんなにっ、体重かけて押しつぶさないでぇっ♡」[p]
凛子「子宮の入り口まで届いちゃうっ♡　先っぽ当たってこねられちゃうの…だめぇっ♡」[p]
凛子「ん゛っ♡　ぐぅぅっ♡　はっ♡　はっ♡　激しくてっ…息できなくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凛子「んぅぅっ♡　お゛お゛っ♡　深いところまで…入ってる♡　これもマッサージなのっ？」[p]
[舜]「そうですよ…いつも仕事忙しくてお疲れでしょ？　しっかりほぐしますからね…！」[p]
凛子「あ゛あ゛っ♡　もう充分ほぐれてる、からっ♡　トロトロになって…溢れちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凛子「ひっぐぅっ♡　お゛っ♡　お゛っ♡　深いトコまで…えぐられちゃってるみたいっ♡」[p]
凛子「あ゛っ♡　[舜]くんの…根元までズッポリ入ってる♡　ん、くぅぅ♡　先っぽ奥届いてるの♡」[p]
凛子「んくぅぅっ♡　はっ♡　はぁ♡　これが体の内側のマッサージなの？　すっごく気持ちいい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「お゛お゛っ♡　んくぅぅっ♡　このマッサージっ、お客さんにはしちゃだめだよっ♡」[p]
[舜]「わかってますよ…凛子さんだけですって。凛子さんも俺だけにしてくださいよ…！」[p]
凛子「わかってる、からっ…♡　あぁぁっ♡　[舜]くんとしか…えっちなマッサージはしないのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_kaiwa1

[tb_start_text mode=1 ]
[舜]「ほら、凛子さん期待でいっぱいの顔になってる…めちゃくちゃエロいよ」[p]
凛子「もう…生意気なこと言って…[舜]くん、エッチな意地悪しようとしてるでしょ？」[p]
凛子「あんまりやりすぎるのはダメだからね？　こんな鏡の前で…すっごく恥ずかしいんだからね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa2

[tb_start_text mode=1 ]
[舜]「凛子さん、セックスしてる時自分がどんな顔してるのか見たことある？」[p]
凛子「そ、そんなの…見たことあるわけないでしょう？　恥ずかしくて見られないよ…」[p]
凛子「自分がどんな顔してるかなんて、考える余裕もないんだから…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa3

[tb_start_text mode=1 ]
[舜]「今日は、自分がどれだけエロい顔してるのか最後まで見てもらおうかな」[p]
凜子「今日の[舜]くん、やっぱりいつもより強引だね…私に恥ずかしい思いさせたいの？」[p]
凛子「あんまり意地悪されたら悲しくなっちゃうかもしれないよ…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひゃうぅっ！　いきなり叩いたらびっくりするでしょう…あっ！　も、だめっ…」[p]
凛子「んんっ！　もうだめだってば…あとが残っちゃうから…んっ！　[舜]くん…！」[p]
[舜]「すっご…セックスしてる時も同じような音出てるよね？　めっちゃエロい肌ぶつかる音」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_supankingu2

[tb_start_text mode=1 ]
凛子「あっ…痛いってば…もうやめてっ…！　んっ、あっ、あぁぁっ！」[p]
[舜]「あれ？　でも叩かれるたびに腰クネクネ動いてるみたいだけど？　気持ちいいんじゃないの？」[p]
凛子「そんなことあるわけ…んっ…あぁっ♡　あんっ…♡　やっ、もうやめてっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「子供がちっちゃい頃は、こうやってお尻叩いてお仕置きしたことあるの？」[p]
凛子「んっ♡　あぁっ♡　叩いたことなんかないよっ…♡　話せばわかる子たちだったもの…！」[p]
凛子「あっ、私も言ってくれたらわかる、からっ…もう叩くのはやめてっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃぅぅぅっ♡　あっ…体、熱くなってきちゃった…痛いのに…ジンジンして…」[p]
凛子「お腹の奥、響いちゃってるの…なんで…体、変になってるっ…♡」[p]
凛子「はぁ♡　あっ、あぁぁっ♡　痛いのが気持ちいいなんて…私どうなっちゃったんだろう」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_tikubiijiri1

[tb_start_text mode=1 ]
[舜]「凛子さん、顔緩みすぎ…鏡で見てよ。乳首気持ちよくなって、体の力抜けちゃったんだ？」[p]
凛子「んんっ♡　はぁ、やっ…そんなこと言わないで…自分の顔見るの恥ずかしいんだってば…」[p]
凛子「あっ♡　んんっ…あぁ♡　乳首の刺激だけで…体あっついの収まらないの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_tikubiijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　あうぅっ♡　んんっ♡　乳首の先っぽカリカリされるの…弱いみたい♡」[p]
[舜]「俺はずっと知ってたけどなぁ？　乳首撫でられるのも好きでしょ？」[p]
凛子「んんっ♡　はぁ、あっ♡　[舜]くんには全部バレちゃってるんだね…♡　恥ずかしいよっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_tikubiijiri3

[tb_start_text mode=1 ]
[舜]「見て凛子さん、乳首カリカリされてどんな顔してるのか…自分で確かめてよ」[p]
凛子「やだ…こんな顔してたなんて。恥ずかしいよ[舜]くん。これ以上見られない…」[p]
凛子「んっ…どんなふうに触られてるのかも見えるから…余計にエッチな気分になっちゃうの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃぅぅうっ♡　乳首ばっかり…だめ…♡　すっごくエッチな触り方するんだもの」[p]
凛子「んっ♡　はぁ♡　あっ、あぅっ♡　体、どんどん敏感になってる…」[p]
凛子「あぁ…あ、足…震えて立っていられなくなっちゃう…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_munemomi1

[tb_start_text mode=1 ]
凛子「はぁっ♡　あっ♡　あぁっ…♡　おっぱいばっかり、だめ…[舜]くんもうやめて」[p]
[舜]「でもエッチな声出てるよね？　凛子さん、激しくされて興奮してるんじゃないの？」[p]
凛子「んんっ♡　あぁっ♡　だっていつもより[舜]くんが強引だから…新鮮で…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_munemomi2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「はーっ…はーっ…はーっ…♡　んんっ♡　感触確かめるみたいに触らないで…♡」[p]
[舜]「触り心地最高だもん。ほら、凛子さんのエロいおっぱいに指沈み込んじゃう…」[p]
凛子「んんっ♡　ふぅ、はっ…[舜]くんの触り方、いつもより激しくて…気持ちよくなっちゃうよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_munemomi3

[tb_start_text mode=1 ]
[舜]「今日は凛子さんのことたくさん可愛がってあげようって思ってたんだよ？　嬉しいでしょ」[p]
凛子「あっ♡　可愛がってもらうって…こうやっておっぱい揉みしだかれちゃうってこと？」[p]
凛子「鏡の前で見せつけてくるなんて…[舜]くん意地悪だよ…恥ずかしくて前向けないもの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あっ、あぁぁぁっ♡　んんっ♡　手のひらで…乳首擦れてる…♡　はっ、あぁっ♡」[p]
[舜]「乳首めっちゃ立ってるよ。興奮してる証拠でしょ」[p]
凛子「んんっ♡　はぅぅっ、、そういうわけじゃ…んんっ♡　あっ、擦れちゃう、だめぇっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「凛子さん、そういえば掃除する予定だったんだよね？　いいの？　こんなとこでエッチしてて」[p]
凛子「あっ♡　んんっ♡　だって[舜]くんが触り始めたから…私は掃除するつもりだったのに…」[p]
凛子「あぁぁっ♡　やっ…クリこねるの…刺激強いっ♡　腰、跳ねちゃうよ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kuriijiri2

[tb_start_text mode=1 ]
凛子「あぅぅっ♡　クリばっかりコリコリされたら…イクっ♡　イッちゃうぅぅ♡」[p]
[舜]「ん～？　どこにイッちゃうの？　わかんないな、天国？」[p]
凛子「ひぐぅぅっ♡　んっ、あぁっ♡　意地悪っ♡　おかしくなっちゃうってことだからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ここも掃除して綺麗にしないと…まさかここ、お客さんに使用してないよねぇ？」[p]
凛子「つ、使ってるわけないでしょ…♡　あっ、だめ…クリ撫でないで…♡　そこ敏感だから…！」[p]
凛子「腰動いちゃう…あっ♡　あっ♡　あっ♡　これ以上こねないでぇっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅっ♡　あっ、んっ♡　クリ摘まんだら…何か出ちゃうっ…立っていられなくなっちゃう♡」[p]
[舜]「潮吹きして倒れ込んじゃうってこと？　エロすぎじゃない？」[p]
凛子「んんっ♡　はっ♡　はっ♡　[舜]くんが…私の体こんなに敏感にしたんだからね…？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_sumata1

[tb_start_text mode=1 ]
[舜]「凛子さん、俺以外に、こうやってチンポで擦られたことある？」[p]
凛子「んっ♡　ふぅ、はっ…なんでそんなこと聞くの…んんっ♡　恥ずかしい思いさせたいの？」[p]
凛子「[舜]くんとセックスするまでずっとご無沙汰だったんだから…するわけないでしょうっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_sumata2

[tb_start_text mode=1 ]
凛子「あっ…んんっ…はぁ、あっ…んんっ、待ってそんなに動かしたら中に入っちゃいそう…」[p]
[舜]「これだけヌルヌルになってれば、滑って入っちゃうかもね？　凛子さん濡れすぎ」[p]
凛子「あぁぁっ♡　違う…私だけじゃなくって…[舜]くんも先っぽから溢れてるんでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_sumata3

[tb_start_text mode=1 ]
凛子「はぁっ♡　あっ♡　あぁぁっ♡　擦ってるだけ、なのに…気持ちよくって…力入らない♡」[p]
[舜]「だめだよ、ちゃんと踏ん張らないと。上向きチンポで擦ってあげられないでしょ」[p]
凛子「ひぅぅっ♡　あっ♡　い、入り口とクリばっかり…擦りつけないでっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁっ♡　はぁっ…はぁっ♡　弱いところばっかり当たるから…イッちゃうかと思った…♡」[p]
凛子「んんっ…[舜]くんの体温伝わってきてる…♡　すごい、脈打ってるのまで伝わってくる♡」[p]
凛子「私もお腹の奥…キュンってときめいてる…反応し合っちゃってるのかも…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あっ…♡　はぁっ♡　んんっ♡　指、出し入れ激し…こんなのすぐイッちゃう…♡」[p]
[舜]「鏡見て。凛子さんめっちゃエロい顔になってる…こんな顔してるって知らないでしょ？」[p]
凛子「んっ…くぅぅっ…♡　私、こんなエッチな顔しちゃってるなんて知らないの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_teman2

[tb_start_text mode=1 ]
凛子「はーっ…はーっ…♡　だめ♡　だめ、だめ♡　あぁ…私、ママなのに…大人なのに…♡」[p]
凛子「エッチに夢中になっちゃうなんて…顔緩んでトロトロになっちゃうなんてダメえ♡」[p]
[舜]「自分の姿に興奮するなんて、エロすぎ…！　凛子さん、Ｍでスケベだったんだね」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ♡　あぁっ♡　あっ♡　あぅ♡　激し…ぐちゃぐちゃにかき回されちゃうっ♡」[p]
[舜]「かき回されて喜んでるんでしょ。もう奥までトロトロだよ？　チンポ挿れる準備できてるね？」[p]
凛子「はぁ♡　あっ…んんっ♡　[舜]くんがほぐしてくれたから…とろけちゃったみたい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んふううぅっ♡　あぁっ…先っぽ…引っかかって擦れて…あぁ、んんっ♡」[p]
凛子「奥まで…入っちゃう♡　はぁ、あっ♡　[舜]くんの…ぬるんって中入っちゃうの…♡」[p]
凛子「は～っ♡　は～っ♡　お腹の奥ヒクついて…受け入れ準備整っちゃったかも♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「ほらっ…！　腰掴んで突き上げられるたび中ビクビクしてる…！」[p]
凛子「んっ♡　くぅっ、だってそれはっ♡　[舜]くんが弱いところばっかり狙って突き上げるから♡」[p]
凛子「あぁっ♡　こんな荒々しいセックスされて、体がびっくりしてるの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「もう認めちゃえば？　強引にエロいことされると興奮しちゃうＭなんだって…」[p]
凛子「あっ…あぁっ…んっ…！　そんなこと…ないってばぁ…♡　や、変なこと言わないで…♡」[p]
凛子「意識すると余計に…中キュンキュン締まって…体言うこと聞かなくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「はぁ、あっ…あぁっ♡　やっ…気持ちよくなっちゃう…こんなの、初めてなのっ…♡」[p]
[舜]「エッロい顔してるよ。鏡見て…ほら、チンポ気持ちよくてしょうがないんだろ」[p]
凛子「あうぅぅっ♡　やっ、恥ずかし…私、こんなエッチな顔してたなんて…信じられないっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅっ♡　ああっ♡　奥…トンって当たってるっ♡　んんっ、そこばっかり狙わないで♡」[p]
[舜]「いつもより反応いいね？　強引にされちゃうの、やっぱり好きなんだ？」[p]
凛子「んっ♡　あっ♡　はぁ、わからない…♡　こんなに気持ちよくなるの初めて、なのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「ほら、今自分がどんな顔してるのかちゃんと見て。目離すの禁止…！」[p]
凛子「あうっ♡　あぁ、やだぁ…♡　こんな恥ずかしい顔…[舜]くんに見られちゃうのも…♡」[p]
凛子「自分で見ちゃうのも嫌なのっ…あっ♡　あっ♡　あっ♡　でもっ、顔緩んじゃう…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凛子「ひぅっ♡　あっ♡　あっ♡　揺さぶられちゃう…だ、だめ…変な顔見ないで…」[p]
[舜]「めちゃくちゃ可愛いよ。お客さんにも見せたいくらい…こんなにエロい顔するんだよって」[p]
凛子「あぁぁっ♡　そんなの、だめっ…♡　こんな顔、お客様に見せられないってば…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凛子「んっ♡　ふっ♡　あぁっ♡　激し…もうだめ…足に力入らなくなっちゃう…」[p]
凛子「あぁぁっ♡　腰掴んで突き上げるの、いやらしすぎだってばぁっ♡」[p]
[舜]「だって強引にされちゃうの、好きなんでしょ？　凛子さん…すっごい締まってるし」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひぅぅぅっ♡　あ゛あ゛っ♡　気持ちいいっ♡　腰抜けちゃうっ、倒れちゃうぅ♡」[p]
凛子「んぐぅっ♡　んぅぅぅっ♡　はーっ、はーっ…中っ、[舜]くんの形になってる…♡」[p]
凛子「あっ♡　やだ…私年上なのに、しっかりしなきゃいけないのに…セックスに夢中になってる♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_kaiwa1

[tb_start_text mode=1 ]
凛子「鏡の前で本当にしちゃうの？　私の変な顔見たら、そんな気分じゃなくなっちゃうかもよ？」[p]
[舜]「エロい顔見たら余計興奮するに決まってるでしょ？　証明しようか？」[p]
凛子「もう…わざと激しくするつもりでしょう？　ここでめちゃくちゃにされちゃうんだ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「どんなことされちゃうんだろってワクワクしてる？　凛子さん、顔に出てるよ」[p]
凛子「えっ！？　やだ、もう…[舜]くんだって、すっごくエッチな顔になってるよ？　鏡に映ってる」[p]
凛子「オスの顔…セックスする前に見せてくれるよね？　でも…いつもより興奮してるみたい」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa3

[tb_start_text mode=1 ]
凛子「は、早く終わりにして掃除もしなくっちゃ…閉店作業も残ってるんだから…」[p]
[舜]「ここもドロドロに汚れちゃうかもしれないもんねぇ？　俺たちの体液で」[p]
凛子「んんっ…♡　やっぱり今日、[舜]くんいつもより意地悪だね…どんなセックスする気？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひぅっ♡　あっ♡　も…わざと大きい音、立ててるでしょう？　んっ、あぁっ♡」[p]
[舜]「バレちゃったか？　凛子さん、音立てて叩かれると興奮するかなと思って…」[p]
凛子「私、別に叩かれて興奮するようなタイプじゃ…ひぅっ♡　あんっ♡　も、もうっ、だめ…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu2

[tb_start_text mode=1 ]
[舜]「ほら、やっぱり叩かれて興奮してる。体、びくん、びくんって反応してるよ？」[p]
凛子「そ、それはびっくりしてるのと痛いからで…んっ…はぁ、あっ♡　痛い、だけのはずなのに…」[p]
凛子「おへその下…キュンってしてるの…[舜]くん、私おかしくなってるのかもっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「ひぅっ♡　あっ♡　あっ♡　だめ…手のあと、ついちゃう…♡　体が感触覚えちゃう♡」[p]
[舜]「いいでしょ…またしてほしくなったら、思いっきり叩いてあげるよ…Ｍだもんね？」[p]
凛子「ち、違…あぁぁっ♡　んっ♡　こんな感覚、初めてで…私変になってるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひゃっ♡　んんっ♡　熱くて…ジンって痺れたみたいになってる…どうして…」[p]
[舜]「叩かれて気持ちよくなってるの、やっぱりＭっ気があるってことだよ」[p]
凛子「今まで、痛くて気持ちよくなっちゃうことなんかなかったのに…んっ♡　はぁ、あんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「んっ…あんっ…あぁ、あっ♡　乳首摘まんでこねるの…だめなの…そこ敏感だからっ♡」」[p]
[舜]「へぇ…じゃあどんなふうに触られてるのか、鏡でよく見てよ。ほら…」[p]
凛子「あっ♡　んんっ♡　やだ…なんで見せつけるの…恥ずかしいのに」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_tikubitumami2

[tb_start_text mode=1 ]
[舜]「今、凛子さんどんなふうに触られてる？　どんな顔してるのかも自分で見て教えてよ」[p]
凛子「今…乳首摘まんでコリコリって…こねられちゃってる♡　[舜]くんにエッチに触られてる♡」[p]
凛子「か、顔は…恥ずかしい顔になってる…私、こんな顔してたんだってびっくりしてるの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　いきなり乳首きゅって摘まむのは、だめだってばぁ♡」[p]
凛子「んっ♡　はぁっ♡　はぁっ♡　[舜]くんの触り方がエッチだから…体の奥まで熱くなってる♡」[p]
凛子「腰、動いちゃうの止まらないの…乳首だけじゃ足りなくなってきちゃったみたい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あうぅっ♡　んんっ…乳首そんなにこねても…おっぱいなんて出ないのにっ♡」[p]
[舜]「そうなの？　こんなにおっきくてパンパンに張ったおっぱい、ミルク出そうなのに」[p]
凛子「んっ♡　はぁ、あんっ♡　出ないよ♡　赤ちゃんできてないんだからっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_munemomi1

[tb_start_text mode=1 ]
凛子「くぅっ…んんっ♡　おっぱい鷲掴みされちゃった♡　おっきい手で揉みくちゃにされちゃう♡」[p]
[舜]「気持ちいいんでしょ？　あ、ダメだよ？　体よじっても逃げられないからね？」[p]
凛子「んっ…くぅぅっ♡　[舜]くん…今日本当に強引だね…いつもと違う…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_munemomi2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
凛子「あんっ♡　あぁっ♡　んんっ、くぅぅっ…♡　おっぱい揉みくちゃになってる…もう、だめ…」[p]
[舜]「触られてる姿にも興奮してるんでしょ？　鏡に全部映っちゃってるもんね？」[p]
凛子「んっ♡　はぁっ…あんっ♡　もう言わないで…恥ずかしくて、逃げたくなっちゃうから…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_munemomi3

[tb_start_text mode=1 ]
[舜]「凛子さんのおっぱい、柔らかすぎ。俺の手の中でどんどん形変わってくよ？」[p]
凛子「んんっ♡　だって…[舜]くんがいっぱい揉みしだくから…おっぱいトロトロになっちゃった」[p]
凛子「先っぽだけ、固くなってるの。今すっごく敏感になってるみたい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　んあぁぁぁっ♡　あんっ、おっぱい揺さぶっちゃうの？　も、恥ずかしいってば♡」[p]
凛子「[舜]くんの手の中で…好き放題されちゃってる♡　やだ…私興奮してる…」[p]
凛子「こんな緩んだ顔、[舜]くん以外に見せられないよ…お客さんにも、子供たちにも…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「やっ…お、お尻はだめ…こんなところでっ…んんっ♡　汗もかいてるから…」[p]
[舜]「あーまだほぐれてないなぁ。凛子さん、ここほぐれてくるとやわらかくなるんだよね？」[p]
凛子「んんっ…そんなの知らない…お尻なんて自分じゃ触らないもの…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_anaruijiri2

[tb_start_text mode=1 ]
[舜]「入り口優しく触ってるだけなのに、もうお尻ヒクついちゃってるの？　気持ちいいんだ？」[p]
凛子「あっ…んんっ♡　自分の意志で動かしてるわけじゃない、のに…♡」[p]
凛子「はぁっ♡　あっ、んっ…♡　そこばっかり揉みほぐすみたいにしないで…汚いからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_anaruijiri3

[tb_start_text mode=1 ]
凛子「はぁっ♡　はぁっ♡　あぁぁっ♡　やっ…ゆ、指…入ってるでしょう？　圧迫されてるっ」[p]
[舜]「ほらね？　もうとろけて緩んでるんだよ…簡単に指も咥えこんじゃって…エッロ」」[p]
凛子「ひうぅっ♡　あっ…んんっ♡　中で指、動かしたら…力抜けちゃう…もういいでしょう？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　弱いトコ、探すみたいにしないでっ♡　ホントにそこはだめ…あぁぁぁっ♡」[p]
[舜]「くっ…すっごい締め付け。凛子さんのここにチンポ挿れたらどうなっちゃうのかな～」[p]
凛子「んんっ♡　想像させるようなこと言うから…余計に反応しちゃうんだってばぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_sumata1

[tb_start_text mode=1 ]
[舜]「凛子さん、しっかり足閉じて締め付けてくれなくちゃ…ほら、チンポしごいて」[p]
凛子「くっ…んんっ♡　腰動かせばいいの？　もう[舜]くんだって充分動かしてる、のにっ♡」[p]
凛子「あっ♡　はぁ、あっ♡　[舜]くんの熱い…すっごくおっきくなってるよ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_sumata2

[tb_start_text mode=1 ]
[舜]「凛子さんのエロい顔、鏡越しに見てたおかげでチンポもバッキバキになっちゃったよ」[p]
凛子「んんっ♡　あっ♡　はぁ、んっ…全部見られちゃってたなんて恥ずかしい…♡」[p]
凛子「でも、私がこんなに[舜]くんを興奮させられたって思うと…嬉しくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_sumata3

[tb_start_text mode=1 ]
[舜]「上だけじゃなくって下も見て？　今凛子さんのおまんこの間からチンポ出てるでしょ？」[p]
凛子「ああぁっ♡　んんっ♡　[舜]くんの…先っぽ見えちゃってる…♡　ふーっ…ふーっ…♡」[p]
凛子「こんなにおっきくて長いなんて…♡　これが私の中に入るって思うと…キュンってしちゃう」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　んんっ♡　ダメなトコ擦れて当たってるのっ♡　入ってないのにイッちゃう…」[p]
[舜]「あーあー、凛子さんとろんとした顔になってるよ？　興奮しすぎでしょ」[p]
凛子「はぁ、あっ、だって…♡　腰掴まれて…めちゃくちゃに擦られてるから…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
凛子「あぁぁぁっ♡　んっ…出ちゃう、止まらないのっ…♡　水分、全部溢れ出ちゃう♡」[p]
[舜]「潮吹きエッグ…凛子さん、掃除するって言ってたのに自分が汚してるじゃん」[p]
凛子「くぅっ♡　んんっ♡　だって…[舜]くんが激しくかきまわすからっ…出ちゃったの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_siohuki2

[tb_start_text mode=1 ]
凛子「あっ♡　あぁぁぁっ♡　奥まで響いてるっ♡　とろけすぎて…もう無理だよ…♡」[p]
[舜]「全然潮吹き止まんないね？　水分足りなくなっちゃいそうなくらい出てない？」[p]
凛子「んっ♡　はぁ、あっ♡　こんなに出ちゃうの初めて…♡　足震えちゃうの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おもらししちゃうなんて、大人としてどうなの？　俺より年上なのに」[p]
凛子「ご、ごめんなさ…でもお漏らしじゃないの…これは気持ちよくなると出ちゃうだけで…」[p]
凛子「んんっ♡　あっ♡　あぁぁっ♡　奥トントンって突き上げられたらまた出ちゃうぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あぁぁっ♡　わかんなくなっちゃう…恥ずかしくて気持ちよくて頭の中ぐちゃぐちゃなの♡」[p]
[舜]「ホントだ、顔もぐちゃぐちゃになってる。凛子さん、ホントエロい…」[p]
凛子「ひぅぅぅっ♡　あっ、んんっ♡　や、見ないで…絶対ひどい顔してるからぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凛子「はっ♡　はぁ♡　あんっ♡　[舜]くんだっていつもよりおっきくなってるよっ？」[p]
[舜]「凛子さんのエッロい反応いつもよりじっくり見られたから…興奮してるんだよ」[p]
凛子「んぅっ♡　あうっ♡　いきなり１番奥トントン突き上げないでっ…♡　壊れちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「自分がセックスしてる時の顔見なくていいの？　これがチンポ挿れてる時の顔だよ？」[p]
凛子「や、だ…また意地悪言って…んんっ♡　恥ずかしくてエッチどころじゃなくなっちゃうよ」[p]
[舜]「嘘つき。余計興奮してるでしょ？　中、すっごい締め付けになってる…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凛子「ひぅぅっ♡　あっ♡　あんっ♡　感触確かめるみたいに…中かき回さないでぇっ♡」[p]
凛子「はぁっ、はぁっ♡　あんっ…♡　鏡越しに目が合っちゃうのも…恥ずかしいのっ♡」[p]
凛子「[舜]くん、いつもよりオスの顔してる…興奮してるの伝わってきちゃうよ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あ゛あ゛ぁ゛っ♡　お腹の奥…キュンってしてるっ♡　ダメ、これ以上は…！」[p]
[舜]「そんなエロい声出しといて、止められるわけないだろ…！　煽りすぎだって」[p]
凛子「そういうつもりじゃ…あっ♡　んぉぉっ♡　ヤダ、変な声出ちゃうぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「あー、勃起収まんない…！　凛子さんエロ過ぎなんだもん…ずっと誘ってたでしょ？」[p]
凛子「んんっ♡　あうっ♡　[舜]くんが…体を舐めるみたいに見るから…期待しちゃっただけだよ♡」[p]
凛子「誘ってたわけじゃない、のにっ♡　んっ♡　あぁっ♡　こんな激しく揺さぶられるなんてぇ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「年下の男にめちゃくちゃに突き上げられてる気分はどう？　すっごい興奮してるみたいだけど」[p]
凛子「んっ♡　あぁっ♡　わからないっ…♡　いつもより激しくて…何も考えられないの♡」[p]
凛子「でも顔見られちゃうのは恥ずかしいよ♡　ん、あぁっ♡　だらしない顔になってるんだもの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「情けない顔が嫌なら、なんでもありませんって顔したら？　できるでしょ…！」[p]
凛子「あ゛っ♡　あ゛っ♡　む、無理…♡　こんなに気持ちいいのに…何でもない顔なんて…」[p]
凛子「あ゛あ゛あ゛っ♡　んっ、くっ…ドチュって、中つぶされちゃってるぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あ゛っ♡　あ゛っ♡　奥、来てる…♡　奥、奥ぅぅっ♡　[舜]くんのおっきすぎ♡」[p]
[舜]「こんなエロい顔、家族にもお客さんにも見せられないねぇ？」[p]
凛子「んぅぅっ♡　やっ…言わないで…あ゛あ゛っ♡　余計にっ、反応しちゃうから…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
