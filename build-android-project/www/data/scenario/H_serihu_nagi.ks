]
[_tb_system_call storage=system/_H_serihu_nagi.ks]

*high

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=4"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="+="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*high2

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=7"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(15-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*low

[tb_eval  exp="f.H_hit-=1"  name="H_hit"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou-=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="-="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*hit

[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=3"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(20-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="20"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*H1_kaiwa1

[tb_start_text mode=1 ]
[舜]「綺麗だな」[p]
凪「やだ…恥ずかしいから言わないでよ…あんまり見られるのも、慣れてなくて…」[p]
凪「裸、変じゃない…？　笑わないでね…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa2

[tb_start_text mode=1 ]
凪「[舜]ちゃんとこんなふうに１つになれるなんて…まだ信じられない…」[p]
凪「私、全然セクシーじゃないけど…がっかりしないでね…？」[p]
凪「変な顔とか…しちゃうかも…恥ずかしいな」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa3

[tb_start_text mode=1 ]
凪「あれ？　緊張してるの？　なんだ、ドキドキしてるのは私だけじゃないんだ」[p]
[舜]「そりゃ、そうだろ…」[p]
凪「なんだ…安心しちゃった…２人で、いっぱい気持ちよくなろうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_kiss1

[tb_start_text mode=1 ]
凪「ちゅ…んっ…唇、柔らかいんだね…」[p]
[舜]「それは俺の台詞だろ」[p]
凪「あっ、そっか…ふふ、思ったこと、つい口に出ちゃった…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kiss2

[tb_start_text mode=1 ]
凪「ちゅぷ、ちゅ、ちゅっちゅ…んっ♡　キスだけで気持ちよくなっちゃったみたい…」[p]
凪「唇が触れ合うだけなのに…こんなに幸せな気持ちになっちゃうなんて…」[p]
凪「全然知らなかった。教えてくれてありがと…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss3

[tb_start_text mode=1 ]
凪「ちゅ、ちゅぷ、ちゅっちゅ…んんっ♡　ふーっ…あぁ…キスしてるだけで体がウズウズする…♡」[p]
凪「はしたない、かな…？　でも…キスだけじゃ物足りなくなっちゃうの♡」[p]
凪「もっと触ってほしい♡　いっぱいキスして♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ちゅぷ、ちゅ…んんっ♡　はっ、はぁ♡　すごい…今の…」[p]
凛子「キスだけで…お腹の辺りきゅんとしちゃった…♡　体が悦んでるみたい…♡」[p]
[舜]（とろんとした顔…めちゃくちゃエロいぞ…）[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…あっ♡　恥ずかしい…♡　わ、私…そんなにおっぱいおっきくないし…」[p]
[舜]「柔らかくて触り心地最高だよ」[p]
凪「よかった…♡　[舜]ちゃんにそう言ってもらえると安心する…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi2

[tb_start_text mode=1 ]
凪「んんっ♡　はぁ、あっ…手つき、優しくて…気持ちいい♡」[p]
凪「もっと触ってほしくなっちゃう…♡　私、エッチになってきちゃってる…♡」[p]
凪「嫌いにならないでね？　[舜]ちゃんに触ってほしいだけだから…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ…あぁ♡　どうしよう、体が熱くなってきちゃった…♡」[p]
凪「おっぱい触られるの、好きになっちゃったみたい…♡　んっ♡　はぁ、あんっ♡」[p]
凪「変な声、出ちゃう♡　恥ずかしい…♡　んっ♡　あっ、あぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　な、なに…？　気持ちよくて…体が勝手に反応しちゃった…♡」[p]
凪「あっ♡　そこ…♡　だめ…変になっちゃう、からぁっ♡」[p]
凪「勝手に腰、動いちゃってるのっ♡　んんっ♡　変になる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…んっ…あぁっ、おっぱい舐めるの…？　そんなとこ舐めても美味しくない、のに…」[p]
凪「んっ♡　ふぅっ♡　んんっ…♡　はぁ、[舜]ちゃんの舌あったかい…♡」[p]
凪「も、変な感じ、してるっ…♡　だめだよ…もう口離して♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname2

[tb_start_text mode=1 ]
凪「ふーっ♡　んんっ♡　乳首舐められるだけで…全身がジンジン痺れてる…♡」[p]
凪「あっ♡　あっ♡　あっ♡　ふ～っ♡　んんっ、ヤダ、私の顔、見ないでよぉ♡」[p]
凪「絶対変な顔しちゃってるもん…恥ずかしいってばぁ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ♡　ふぅっ♡　はぁ、あんっ♡　一生懸命おっぱいしゃぶってるの…？」[p]
凪「[舜]ちゃん、赤ちゃんみたい…んっ♡　はっ♡　はぁ♡　あんっ♡　んんっ♡」[p]
凪「そんなに強くしゃぶらないでぇ♡　あっ♡　腰動いちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んはぁぁぁっ♡　あっ♡　乳首だけで…おかしくなっちゃうかと思った…♡」[p]
凪「ふーっ♡　ふーっ♡　ふーっ♡　なんだか…お腹の下熱くなってるみたい…」[p]
凪「私の体、どうなっちゃってるんだろう♡　すっごく切ないの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…♡　そ、そんなとこ…触っちゃダメ…恥ずかしいところ、なのに…」[p]
[舜]「すっごい熱くなってる」[p]
凪「えっ、だ、だって…奥が…痺れたみたいになってて…変になってるんだもん…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kuriijiri2

[tb_start_text mode=1 ]
凪「あぁぁっ♡　そこっ…敏感なのっ♡　んんっ♡　な、撫でられたら…変になっちゃう♡」[p]
凪「あっ♡　あっ♡　あっ♡　やっ…腰、勝手に浮いちゃって…あぁぁぁん♡」[p]
凪「ふ～っ♡　ふ～っ♡　[r]どうしよ…すっごく気持ちいいの、恥ずかしいところなのに、気持ちいいっ[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「クリ、すっごい大きくなってる…ぷっくり膨らんでる…」[p]
凪「はぁんっ♡　あんっ、やぁっ♡　コリコリこねられるの…すごいのっ♡」[p]
凪「それ…気持ちいいの…あっ♡　あっ♡　あっ♡　あぁぁ…奥にも響いちゃってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁぁっ♡　あうっ♡　そこっ、弱いのぉっ…♡　あっ♡　あっ♡　あっ♡」[p]
凪「んっ、ふぅぅっ♡　それ、すごいぃ♡　クリしごくの…気持ちいいのぉっ♡」[p]
凪「も、イッちゃうってばぁ…♡　こんなに気持ちいいなんて…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「やっ、やだ…そんな汚いトコ…舐めないで…！　もう口離して…お願い…！」[p]
[舜]「汚くないよ…トロトロで熱くなってる…」[p]
凪「だ、だめ…んっ…あっ、あぁぁぁっ♡　だめだってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni2

[tb_start_text mode=1 ]
凪「ひぅぅっ♡　んんっ…[舜]ちゃん、口離して…恥ずかしい…そんなところ舐めるなんて…」[p]
凪「だめ、だよぉ…だめなのに…んんっ…お腹の奥、ジンジン痺れてるみたいなの…♡」[p]
凪「はーっ♡　はーっ♡　はーっ♡　ああぁぁっ♡　気持ちいいよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「もっとしてほしい…？」[p]
凪「やだぁ…恥ずかしい…で、でも…もっとしてほしいの…♡　気持ちよくて…」[p]
凪「舌がヌルヌルであったかくて…んっ♡　腰、動いちゃうぅぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ああぁぁっ♡　ひぅぅっ♡　そこ、そこだめぇぇっ♡　舐められてイッちゃうからぁ♡」[p]
凪「はっ♡　はっ♡　腰動いちゃうっ♡　舌、中に入れちゃダメ…♡　ひうぅっ♡」[p]
凪「気持ちよくて…目の前っ、チカチカしちゃってる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ…くすぐったい…ヌルヌルって舌当たる感じ…だめぇ。そんなに、舐め回さないで」[p]
[舜]「でも顔が緩んできてるみたいだけど？」[p]
凪「…そんなことっ、ないってばぁ。はぁ、あっ、ビクってしちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_miminame2

[tb_start_text mode=1 ]
凪「んっ…ふぅ、ふっ…♡　はぁ、[舜]ちゃんの息遣いと声しか聞こえない…」[p]
凪「頭の中っ…響いちゃう…んんっ♡　[舜]ちゃんでいっぱいになっちゃうの…♡」[p]
凪「んんっ♡　くぅぅっ♡　気持ちいいしか考えられなくなる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_miminame3

[tb_start_text mode=1 ]
凪「奥まで舌、入ってきてる…♡　ペロペロされるの…好きみたい♡」[p]
[舜]「ふ～っ…舐められてるだけで興奮してるんだ？」[p]
凪「はぁっ♡　はぁっ♡　[r]ん…そうみたい…耳たぶも耳の中も…全部[舜]ちゃんのものにされちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁんっ♡　それっ、すごい…あっ、あぁぁぁぁっ♡」[p]
凪「はぁっ、はぁっ…耳舐められただけで…気持ちよくなっちゃって…」[p]
凪「耳の中舌出し入れされるの、すっごくエッチで…興奮しちゃったみたい♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「んんっ…はぁっはぁっ…いっぱいになってるの…お腹の中で動いてるのわかる…変な感じ…」[p]
[舜]「痛くないか…？」[p]
凪「だ、大丈夫…少しだけ苦しいけど…[舜]ちゃんが中に入ってるのが嬉しいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「んっ…ふぅっ…ふっ…はぁ、はっ、中で動いてるの、全部伝わってくるよ…」[p]
凪「くぅぅっ…んんぅっ、あっ…ああぁっ♡　なんだか…気持ちよくなってきちゃって…んんっ♡」[p]
凪「どうしよう…こんな気持ちよさ、まだ知らない…♡　お腹の奥から、気持ちいいの広がってきたの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「くぅぅっ♡　んんっ♡　ふっ、ふぅっ…♡　奥っ、当たってる♡」[p]
凪「トチュ、トチュって…１番奥まで届いちゃって…当たってるのわかるのっ♡」[p]
凪「んぅぅっ♡　はぁ、はっ…力、抜けちゃうぅ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁっ♡　そ、そこっ♡　気持ちいいっ…♡　おちんちん、気持ちいいとこコンコンしてるっ♡」[p]
凪「他のことっ、考えられなくなっちゃうのっ♡　気持ちいいことしか…考えられないっ♡」[p]
凪「あぁぁっ♡　好きっ♡　好きっ♡　好きぃっ♡　もっと、してぇぇ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*H1_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「はっ♡　はっ♡　はっ♡　激し…♡　あっ、揺さぶられてるっ♡」[p]
凪「[舜]ちゃん…興奮してるの？　顔…エッチになってる…そんな顔で見られたら…私まで…♡」[p]
凪「んんっ♡　はぁ、体っ、反応しちゃうよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　私ばっかり気持ちよくなってない？　[舜]ちゃんもっ、気持ちよくなって♡」[p]
[舜]「大丈夫だよ、俺もすごく気持ちいいから…」[p]
凪「よかったぁ…♡　んあぁぁっ♡　私の体で、気持ちよくなってね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　奥までっ、届いてるよっ♡　[舜]ちゃんの全部…入ってる…♡」[p]
凪「気持ちいい…♡　こんな気持ちいいこと知っちゃったら…戻れないよぉ♡」[p]
凪「毎日[舜]ちゃんにっ、めちゃくちゃに揺さぶられたくなっちゃうよ…[r]どんどんエッチになっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁぁっ♡　そこっ、らめぇぇぇっ♡　んんっ♡　頭っ、真っ白になっちゃうぅ♡」[p]
凪「んんんっ♡　もうっ…気持ちいいの知らなかった頃には戻れなくなっちゃうよ…♡」[p]
凪「はぁっ♡　はぁっ♡　はぁっ♡　弱いトコっ、集中狙いしないでぇ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_kaiwa1

[tb_start_text mode=1 ]
凪「この格好で家にいるの、変な感じだね…仕事中の気分になりそう」[p]
凪「どう？　[舜]ちゃんも仕事してるんじゃないかって錯覚しちゃいそう？」[p]
凪「はーい、どうぞお大事になさってくださいね～…なんて♡　ふふっ、どう？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa2

[tb_start_text mode=1 ]
凪「看護師の服、どう？　[舜]ちゃんが喜んでくれるかなぁって思ってたんだけど」[p]
[舜]「めちゃくちゃいいよ…いつもより興奮する…」[p]
凪「顔、本気になってるよ？　ふふ、やらし～。なんで看護師の服がいいのかなぁ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa3

[tb_start_text mode=1 ]
凪「[舜]さん、待合室でお待ちくださいね～、すぐ先生に診ていただけますからね♡」[p]
凪「ふふっ…こういうのってコスプレエッチっていうんだっけ？　なんか恥ずかしい♡」[p]
凪「でも…私もドキドキしてきちゃったみたい。悪いことしてるんじゃないかって思うと興奮するね」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_kiss1

[tb_start_text mode=1 ]
凪「ちゅ、ちゅぷ、ちゅ、んっ…♡　はぁ、はっ…唇、いつもより熱くない？」[p]
凪「興奮してるの？　ふふ、看護師さんの格好してるから…？　[舜]ちゃん、エッチだね…♡」[p]
凪「ちゅく、ちゅ、ちゅ…はぁ、ふ～っ…ん、キスだけで気持ち良くなれちゃう…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kiss2

[tb_start_text mode=1 ]
凪「ちゅく、ちゅ、ちゅ…ふぅっ♡　れろ、れろちゅ、ちゅぷ…[舜]ちゃんの味…」[p]
凪「はぁ、あぁ、キス好き…唇離すの嫌…♡　ちゅ、ちゅぷ、ちゅくちゅく、じゅるるるっ」[p]
凪「はぁ、ふ～っ…口の中、すっごく熱くなってる…トロトロだね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss3

[tb_start_text mode=1 ]
凪「ん、舌出せばいいの？　れろ、れろれろ、ちゅ、ちゅぷ、じゅぷ、ちゅっちゅ♡」[p]
凪「はぁ、はぁ…舌、絡ませるの…すごくエッチ…大人のキス、しちゃってる…」[p]
凪「子供の頃っ、イタズラでチュウしたのと全然違うね…ちゅ、ちゅぷ、じゅぷ、じゅるるるる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んむっ♡　ちゅっ、ちゅ、んんっ♡　あぁ…キスが気持ちよくて…トんじゃってた…♡」[p]
凪「もっとしたい…舌絡ませて…エッチなチューしたくなっちゃうの…♡」[p]
凪「ちゅぷ、ちゅっちゅっちゅ♡　んんっ♡　あはぁ♡　お口でセックスしてるみたいだね…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひあっ♡　おっぱい、揉みしだかれちゃったぁ…♡　[舜]ちゃんの手、おっきい♡」[p]
凪「私のおっぱい、包み込まれちゃってる…♡　[舜]ちゃんのモノにして…♡」[p]
凪「んっ…ふぅっ…気持ちいいっ♡　もみくちゃにされるの…大好きなの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_munemomi2

[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　触られた場所からっ…全身に電流走ってる…♡」[p]
凪「気持ちいいの…おっぱい鷲掴みにされて揉み揉みされるの、好き♡　好きぃ♡」[p]
凪「もっと揉みくちゃにしていいよ♡　乱暴にされると、ドキドキしちゃうから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「仕事中の凪見て、興奮してたんだ…おっぱい揉みしだきたかった…！」[p]
凪「んっ♡　はぁ、あっ♡　いいんだよ、[舜]ちゃんの好きにしていいの♡」　[p]
凪「あっ、あぁぁっ♡　仕事中におっぱい揉まれてるんだって想像したら…余計興奮しちゃった♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あんっ♡　はぁ、あっ…揉みながら揺さぶられるの…気持ちいいの…♡」[p]
凪「おっぱいだけで…トロトロになっちゃったぁ…♡」[p]
凪「もう…下もとろけちゃってるの…中に挿れてもらう準備、できちゃったみたい」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「ひゃんっ…♡　乳首、弱いの…♡　もう乳首も周りもぷっくり膨らんじゃったぁ♡」[p]
凪「[舜]ちゃんに舐めてもらいやすいように…コリコリになってるの…」[p]
凪「もっといっぱい舐めて…♡　ミルクは出ないけど…味わってほしいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_tikubiname2

[tb_start_text mode=1 ]
凪「んあぁぁっ♡　チュッチュって吸われるの、それ好きぃ♡　自分で触るのと違うの…♡」[p]
[舜]「１人で乳首触ってオナニーしてたんだ？」[p]
凪「んっ…そう、だよ♡　エッチなことする想像しながら…自分で乳首もコリコリってしてた♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「[舜]ちゃんの口の中、あったかい…んんっ♡　甘噛み、気持ちいいっ♡　もっとして…」[p]
[舜]「看護師さんふうに言ってよ」[p]
凪「えっ？　難しいよぉ…お、おっぱい飲む時間ですよ…♡　たくさん飲んでくださいね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　乳首、気持ちいいっ♡　ペロペロされるのも吸われるのも大好きっ♡」[p]
凪「は～っ♡　は～っ♡　もっといっぱいしゃぶって…♡　好きにしていいんだよ」[p]
凪「おっぱいも体も全部、自由にしていいんだから」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ、そんなところ舐めても美味しくないってばぁ…」[p]
凪「入り口の周り…チロチロ舐められるの変な感じ、なの…」[p]
凪「全部、味見されちゃってる…私の味、確かめられてるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni2

[tb_start_text mode=1 ]
凪「し、舌……熱くてヌルヌルで…変になる…！　」[p]
凪「はぁ、んっ…私の全部味見されちゃう…♡　[舜]ちゃんがこんなエッチな舌遣いするなんて…」[p]
凪「看護師の服のせいで…興奮してるの？　いつもより激し…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁぁっ♡　やっ…クリ頬張ってしゃぶるの、だめ…それっ、刺激強いのぉ♡」[p]
凪「ひぅぅっ♡　腰動いちゃう…や、止まんないっ♡　はぁ、あっ、吸いつかないでっ♡」[p]
凪「んっ♡　んっ♡　あぁぁっ♡　な、中…きゅ～んって響く…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁっ♡　あっ、吸うの、だめぇっ♡　だめ、だめだめぇっ♡　クリ、変になっちゃう♡」[p]
凪「んっ♡　おおおっ♡　グチャグチャにかき回されてる…お、おまんことろけちゃう♡」[p]
凪「あっ♡　んあぁぁっ♡　おかしくなるっ…腰っ、動いちゃうよっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J1_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…触り方、優しい…そんな手つきでなぞられたら…だめ…ジンジンする…♡」[p]
凪「太ももじゃ物足りなくなっちゃうよ？　おねだりしちゃうからね…」[p]
[舜]「エロいおねだり、聞けるの楽しみにしてるよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_naderu2

[tb_start_text mode=1 ]
凪「んっ…はぁ、んっ…♡　恥ずかしい声、出ちゃってる♡　撫でられてるだけなのにっ…」[p]
凪「[舜]ちゃん、もっと撫でて…いっぱい触ってほしいの」[p]
凪「あぁっ♡　やっぱりおねだりするのって恥ずかしいんだね…でも、興奮しちゃった」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_naderu3

[tb_start_text mode=1 ]
凪「んっ♡　はぁ、あっ♡　こんなふうに、仕事中の私の足に触りたいとか…想像してた？」[p]
[舜]「してたよ、めちゃくちゃしてた…」[p]
凪「じゃあ、叶っちゃったね…♡　看護師の私、めちゃくちゃにしていいんだよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_naderu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　んんぅっ♡　弱いところ…撫でられちゃった…♡」[p]
凪「この格好だと、ホントに仕事中に触られてるみたいで…余計に興奮しちゃうみたいなの」[p]
凪「足の間…熱くて切なくて苦しいの…♡　きっと今、すっごく濡れちゃってる」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J1_asiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…だ、だめだよ[舜]ちゃん、足の裏舐めるなんて…汚いってば…」[p]
凪「んっ♡　ふぅっ♡　ふっ…♡　看護師として…不衛生なことはだめって…んあぁぁっ♡」[p]
凪「も、もうっ…私の話、聞いてよぉ。んっ、ふぅ、そんなに一生懸命に舐められたら私…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_asiname2

[tb_start_text mode=1 ]
凪「は～っ♡　は～っ…[舜]ちゃんに足舐められてるの…見てるだけでムズムズしちゃう♡」[p]
凪「んっ♡　はぁ、んっ…どうして[舜]ちゃんは私の弱いところがわかるの？」[p]
[舜]「よく見てるからかな…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_asiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ、んんっ♡　つま先…舐めちゃうのだめ…んんっ、ふぅっ♡　敏感だから…」[p]
凪「か、体が…熱くて…ジンジン痺れたみたいになってる…」[p]
凪「も…足に汗かいてきちゃったから…舐めるのやめにして…汚いよ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru=0"  name="H_nameru"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_asiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんんっ…♡　足の裏ってこんなに敏感なんだ…舐められてイッちゃうかと思った…」[p]
凪「お腹の奥、響いて…変な感じになってる…」[p]
凪「はぁ、はぁっ…足で感じちゃうなんて、エッチな子だって思わないでね？」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J1_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「はんっ♡　あっ♡　あぁっ♡　いつもより…おっきくなってる…奥まで届いてるよ♡」[p]
[舜]「しょうがないだろ、凪がエロいんだから…」[p]
凪「ほんと？　興奮してくれて嬉しい…♡　もっと…夢中になって？　腰振ってほしいの」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「はぁ、あっ♡　あっ…♡　大きさだけじゃなくて…形まではっきりわかっちゃう…♡」[p]
凪「んんっ、ゾリゾリって…中までかき回されちゃってるの、わかるの…♡　んんっ♡」[p]
凪「あっ、あぁぁっ♡　すっごく深いっ…奥まで届いてる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「あぁぁっ♡　腰遣い、好き…♡　浅いトコ、ねっとり突き上げられるの、気持ちいいの…♡」[p]
凪「ゆっくり…体の奥まで届いてる♡　私の中、確かめられちゃってる…♡」[p]
凪「んんっ、ふっ、はぁ…♡　すっご、脈打ってる♡　悦んでくれてるの…伝わってくるよ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁぁっ♡　はっ、あぁんっ♡　当たってるっ…深いトコまで…きてるぅぅっ♡」[p]
凪「中っ…おちんちんビクビクってしてるっ♡　はぁ、んんっ♡　ずっと弱いトコ擦れてりゅの♡」[p]
凪「おおおっ♡　んっ、ふっ、ふぅ～っ♡　形までっ、伝わってきちゃうぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「[舜]ちゃんが…こんな激しく腰振るなんて…あんっ…男の人なんだって思い知らされちゃう♡」[p]
凪「私で興奮してくれてるの嬉しいっ…♡　全部っ、ぶつけていいから…きて♡」[p]
凪「今は看護師さんだから…[舜]ちゃんの欲望全部、受け止める準備できてるよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　あっ♡　どんどん熱くなってるっ♡　おっきくなってるよぉ♡」[p]
凪「熱いのっ…体中に広がって…全部っ、ピリピリって痺れてる…♡　あっ♡　あふぅっ♡」[p]
凪「激しっ…お、奥までっ、きてるっ♡　深いっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「どんどんっ、激しくなって…揺さぶられちゃうぅぅっ♡　おちんちんもおっきくなって…」[p]
凪「１番奥、どちゅっ、どちゅって当たってる♡　んあぁっ♡　気持ちいいっ、気持ちいいの♡」[p]
凪「はっ♡　はぁ♡　[舜]ちゃんに貫かれてるっ♡　壊されちゃうぅぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁぁっ♡　こ、こんな気持ちいいのっ、知らないぃ♡　あひぃぃ♡」[p]
凪「ま、またおっきくなってりゅのっ♡　あぁぁぁっ♡　おまんこいっぱいになってるのにっ♡」[p]
凪「これ以上はもうッ…入らないからぁっ♡　あうぅぅんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_kaiwa1

[tb_start_text mode=1 ]
凪「ん、看護師さんと患者さんのつもりでしてみる？　ふふ、お加減はいかがですか～？」[p]
凪「なんだか…いつもよりエッチな気分になりそうだね。あ、お医者さん役のほうがよかった？」[p]
凪「じゃあ次は…お医者さんと看護師さんの気分になってみようか？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa2

[tb_start_text mode=1 ]
凪「先生…なんだか体調が悪いみたいなんです♡　診察の前に私にもお薬出してくれますか？」[p]
凪「お腹のしたのほうがキュンってして…ムラムラしちゃって収まらないんです♡」[p]
凪「先生のお注射で収めてくれてもいいんですよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa3

[tb_start_text mode=1 ]
凪「ふふ、[舜]ちゃん、興奮しちゃった？　顔がすっごくエッチになってる…」[p]
凪「私も同じだけどね…すっごく興奮しちゃったみたい…今すぐ押し倒されて…」[p]
凪「すっごく太くて熱い注射、打ってほしいなぁ、なんて…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss1

[tb_start_text mode=1 ]
凪「ちゅく、ちゅ、ちゅっちゅ、じゅるるっ♡　ん、んむっ…はぁ、激し…ちゅくちゅく」[p]
凪「息吸うの忘れちゃいそうなくらいエッチなキス、しちゃったぁ…♡」[p]
凪「もっとして…？　[舜]ちゃんに食べられちゃうみたいなキスされたい…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss2

[tb_start_text mode=1 ]
凪「じゅるるるるっ、ちゅぷ、ちゅくちゅく、んんっ、ふっ♡　舌、絡ませて…んふ、ちゅっちゅ」[p]
凪「はぁ、はぁ、私も…すっごくエッチなキスできるようになったよ？」[p]
凪「[舜]ちゃんに悦んでほしくて…キスの方法いろいろ考えたの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss3

[tb_start_text mode=1 ]
凪「ちゅ、ちゅっちゅ、じゅぷ、じゅるるる、じゅぷ、ちゅくちゅく♡　はふ、あぁ…ちゅー好き♡」[p]
凪「キスだけなのに…体が準備始めちゃった…♡　[舜]ちゃんと１つになるんだ、って…」[p]
凪「このまま期待しててもいいの？　触ってほしくて…挿れてほしくてウズウズしてるよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ちゅぅぅっ、じゅぷ、ちゅ、ちゅく、んんっ！！　ふぅ、ふっ、ふぅ…♡」[p]
凪「い、今の何…　体に電流が走ったみたい…ビクビクってしちゃった…♡」[p]
凪「気持ちいいキス、知っちゃったよ…もう子供のキスには戻れないかも…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_paizuri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「おっぱいに挟んで…しごいてあげる…ご奉仕するの好きだから…♡」[p]
凪「ギュ～って挟んで…シコシコ、シコシコって…♡　んっ、おちんちんビクビクってしてる♡」[p]
凪「気持ちよくなってくれて嬉しい…もっと感じて？　くびれたところもしごいてあげるから」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_paizuri2

[tb_start_text mode=1 ]
凪「はぁ、はっ…[舜]ちゃんの余裕ない顔、可愛い…♡　おちんちんもおっきくなってる…♡」[p]
凪「私にしごかれて、感じてくれてるんだね…♡　[舜]ちゃんに悦んでもらえるの嬉しいの♡」[p]
凪「あぁ、先っぽから我慢汁出てきちゃった♡　おっぱいの間ヌルヌルだよ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_paizuri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「くっ…んんっ！　気持ちいい…」[p]
凪「はぁ、あっ♡　今、すっごい跳ねちゃったね…♡　出していいんだよ？」[p]
凪「わたしのおっぱいに、[舜]ちゃんの精子かけて？　トロトロにして…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_paizuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁっ♡　私…おっぱいでおちんちんしごきながら…気持ちよくなっちゃったみたい♡」[p]
凪「おまんこ、キュンキュンしてる…♡　はぁ、んっ、[舜]ちゃんのオスの匂いに反応してるの♡」[p]
凪「これでめちゃくちゃに犯されちゃうって考えるだけで…ゾクゾクする…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_fera1

[tb_start_text mode=1 ]
凪「はぁ、ちゅぷ、ちゅぽちゅぽちゅぽ♡　気持ちいい？　すごい、こんなの口に収まらない…」[p]
凪「可愛い、ビクビクしてる…気持ちいいの伝わってきて嬉しい♡　はぁ、熱くなってるね」[p]
凪「もっとしてあげたくなっちゃう…れろ、ちゅ、ちゅっちゅ、じゅぷ♡　じゅぽじゅぽじゅぽ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_fera2

[tb_start_text mode=1 ]
凪「先っぽから…とろんって透明なお汁出てきちゃった…これが我慢汁？　これも…舐めさせて♡」[p]
凪「れろっ♡　れろれろれろっ♡　はぁ、あぁ…[舜]ちゃんの味がする♡　もっと舐めたい…♡」[p]
凪「じゅぷ、じゅるるるるっ♡　んんっ、ふぅ、ふ～っ…♡　んんっ、ビクンって跳ねちゃったね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_fera3

[tb_start_text mode=1 ]
凪「じゅぷ、じゅぽじゅぽじゅぽっ♡　お口、いっぱいになってる…♡　はふ、はぁ、息吸えない♡」[p]
凪「美味し…[舜]ちゃんのおちんちん頬張ってしゃぶるの好き…♡　すっごく美味しい♡」[p]
凪「このおちんちんで…私の中かき回してほしいの…♡　じゅぷ、じゅぽっじゅぽっ、じゅぽっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera=0"  name="H_fera"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_fera_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んほぉぉっ♡　ちゅぷ、ちゅっちゅ…しゃぶってるだけでイッちゃいそう…♡」[p]
凪「ふ～っ♡　だってこんなたくましいおちんちん…入ってるの想像したら…んんっ♡」[p]
凪「じゅぽじゅぽじゅぽじゅぽっ♡　んんっ、体疼いちゃうよ…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「えっ、やだ…そんなとこ舐めないで…あっ！　舌、入ってきて…あぁぁっ♡」[p]
凪「だ、だめだめだめっ！　舌出し入れしないで…！」[p]
凪「内側までっ、舐められちゃうのっ？　私の体、全部確かめられちゃう…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_tituname2

[tb_start_text mode=1 ]
凪「んんんっ♡　はっ♡　はぁ♡　すごい…お、奥までニュルニュルってきてる…♡」[p]
[舜]「あ～…中熱々トロトロ…」[p]
凪「ひぅぅっ♡　だ、だって…[舜]ちゃんが奥まで舐め回すから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_tituname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　あっ♡　出し入れされちゃってる♡　そんなの知らない…♡」[p]
凪「ベロピストン、すごいの…[舜]ちゃんのお口とセックスしてるみたい…」[p]
凪「はぁ、ん…奥、ヒクヒクってしてきちゃったよ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru=0"  name="H_nameru"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あうぅぅっ♡　はっ…はっ…はっ…腰勝手に浮いちゃった…」[p]
凪「うぅぅ…♡　気持ちよくて…腰逃げちゃったぁ…気持ちいいトコ当たっちゃったんだもん…」[p]
凪「ヒクヒク収まんない…♡　奥、ず～っと疼きっぱなしだよ」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　指、奥まで届いてる…[舜]ちゃんにグチャグチャにしてもらえるの？」[p]
凪「ふ～っ…お注射の前に慣らさなくちゃいけないもんね？」[p]
凪「ここ…とろふわにしてください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_teman2

[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　だ、だめ…今押されてるトコ…弱いのっ…♡」[p]
凪「やぁぁっ♡　じっくりかき回されちゃってる…♡　弱いトコ探さないで…」[p]
凪「もっと気持ちよくなったら…どうなっちゃうのか怖いからっ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「お、奥っ♡　そこっ、ダメな場所…♡　突き上げられたらっ…だめ、だめだめ…♡」[p]
凪「おかしくなる…体っ、言うこときかなくなっちゃうのぉっ♡」[p]
凪「んあぁっ♡　おっ♡　んおっ♡　ほんとにっ♡　だめだよぉっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んっ♡　ほぉ♡　[舜]ちゃんの指っ…当たって…お゛お゛っ♡　そこっ♡　変♡」[p]
凪「固くて太い指……奥まで届いて…擦られちゃってる…♡　あ゛あ゛んっ♡」[p]
凪「ん゛ん゛っ♡　今のトコっ…なんか変…♡　気持ちいい♡　変な声、出ちゃうぅぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_matazuri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ♡　これ…挿れるより、恥ずかしいかも…♡　ん、ああっ♡　弱いトコ、擦れちゃう♡」[p]
凪「んんっ…♡　押さえ込まれて、ヌルヌルってされて…患者さんに犯されてるみたい♡」[p]
凪「看護師さんにおちんちん擦りつけちゃうなんて…悪い患者さん、だねっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_matazuri+=1"  name="H_matazuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_matazuri2

[tb_start_text mode=1 ]
凪「は～っ♡　看護師さんに押し付けて擦りつけちゃうくらい、おちんちん限界ですか？」[p]
凪「んっ、ふぅっ♡　あっ♡　いいですよ♡　いっぱい擦りつけて…スッキリしましょうねっ♡」[p]
凪「おちんちんのお世話も大事な仕事ですから♡　気持ちよくなってください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_matazuri+=1"  name="H_matazuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_matazuri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…あっ♡　あぁぁっ♡　やっ…割れ目に…こすれて…♡　あんっ♡　あぁぁっ♡」[p]
凪「ふ～っ♡　ふ～っ♡　私がお世話するつもりだったのに…私のほうが気持ちよくなってる♡」[p]
凪「あぁぁぁっ♡　クリばっかり集中狙いしないでぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_matazuri=0"  name="H_matazuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_matazuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あ゛あ゛っ♡　ん゛っ♡　おちんちんとクリっ、擦れ合って…気持ちいいのっ♡」[p]
凪「はっ♡　はっ♡　はっ♡　おまんこっ…気持ちいい♡　スリスリってされてるっ♡」[p]
凪「我慢できない…イッちゃいそうっ…♡　あっ♡　先っぽ同士っ、当たってるの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「すっご、中めちゃくちゃ締まってる…」[p]
凪「だってっ♡　[舜]ちゃんのおちんちん気持ちいいんだもん…ぬるんって入ってくる瞬間もっ♡」[p]
凪「んあぁぁっ♡　ずるずるって出てく時もっ♡　全部っ、気持ちいい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「あぁぁ、凪の中、気持ちいい…♡」[p]
凪「はぁ、あんっ♡　あぁ悦んでくれて嬉しい♡　もっとしていいよ、[舜]ちゃんの好きにして♡」[p]
凪「私のこと…おちんちん気持ちよくするためのおもちゃにしてもいいからっ♡　腰振って♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「やっ…もっと深いトコ頂戴…♡　おまんこ寂しいの…♡　子宮の入り口おちんちんでキスして♡」[p]
凪「あぁぁっ♡　当たってる…おちんちんで押しつぶされてるよ♡」[p]
凪「私の中っ…[舜]ちゃんでいっぱいになって…ぐちゃぐちゃになっちゃった♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あんっ♡　奥ッ、ゴチュゴチュって…当たってるのっ♡　んあぁぁっ♡」[p]
凪「お、奥まで来てる…はぁ、あぁぁっ♡　おちんちん、癖になっちゃう♡　気持ちいい♡」[p]
凪「お゛っ♡　お゛お゛お゛っ♡　おっきいっ♡　おまんこっ、壊れちゃうぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「あんっ♡　あっ♡　激しっ…♡　壊れちゃいそ…♡　[舜]ちゃん、本気出しちゃった？」[p]
凪「顔…すっごくエッチになってる…オスの顔、しちゃってるよ♡　はぁ、その顔、好き♡」[p]
凪「いいのっ…もっとむさぼって…[舜]ちゃんにめちゃくちゃにされたいのぉっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「ひぅぅっ♡　あっ♡　あっ♡　激しく突き上げられるの、好き♡　奥までズポズポされてる♡」[p]
凪「あぁぁっ♡　気持ちいいのから逃げられないっ♡　休む暇ないぃ♡」[p]
凪「好きっ♡　好きっ♡　好きっ♡　おまんこパンパンされるの、好きぃぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「はぁ、あっ、あぁぁ♡　もっときて♡　奥まで突き上げてっ♡」[p]
凪「子宮押しつぶしちゃうくらいっ♡　おちんちん奥までズッポリハメてほしいの♡」[p]
凪「はひっ♡　あぁぁぁっ♡　気持ちいいっ♡　大好き…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あ゛あ゛っ♡　おまんこっ…気持ちいいっ♡　子宮の入り口、キスされて…♡」[p]
凪「お゛お゛お゛っ♡　動きに合わせてっ、腰動いちゃう…ヘコヘコしちゃう♡」[p]
凪「気持ちよくてっ…止められなくなってる…あぁぁっ、エッチでごめんなさいっ」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_kaiwa1

[tb_start_text mode=1 ]
凪「ヌルヌルになっちゃったね…滑らないように気を付けなくちゃ」[p]
凪「これでどんな面白い遊びができるのか楽しみだな…♡」[p]
[舜]「子供じゃできない、すっごく気持ちいい遊びだよ…ってわかってるくせに」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa2

[tb_start_text mode=1 ]
[舜]「体、ローションでツヤツヤ光っててめっちゃエロいな」[p]
凪「も～っ、恥ずかしいってば。あんまり見ないで…」[p]
凪「[舜]ちゃんだって、体ヌルヌルしちゃってるでしょ？　お互い滑っちゃうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa3

[tb_start_text mode=1 ]
凪「なんか、ボディソープいっぱい塗ったみたい…」[p]
凪「ちっちゃい頃、お風呂入ってヌルヌルにして遊びたいなぁって思ってたんだぁ」[p]
凪「ふふ、こんなところで夢叶っちゃうなんて。不思議だね」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_kiss1

[tb_start_text mode=1 ]
凪「ちゅ、んっ、ふぅ…ふふ、キスはいつも通りだね？」[p]
[舜]「唇までヌルヌルしてたら困るって」[p]
凪「ふふ、確かに…♡　ちゅ、ちゅくちゅ…んんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kiss2

[tb_start_text mode=1 ]
凪「んんっ…ちゅっちゅ、ちゅくちゅく…ん、体くっつくとヌルヌルして…」[p]
凪「触れ合うだけで…気持ちいい♡　こんな感触初めて…♡」[p]
凪「ちゅく、ちゅ、んんっ…[舜]ちゃんも気持ちいいって思ってくれてるんだぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss3

[tb_start_text mode=1 ]
凪「ちゅく、ちゅぷっ…んんっ♡　キスだけなのに…[舜]ちゃんエッチな顔になってるよ♡」[p]
[舜]「凪だって…」[p]
凪「え、わ、私も…？　だって…ヌルヌルした感触で…変な気分になっちゃって…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんっ♡　ふぅ、ふっ…唇…すっごく敏感になってるみたい…♡」[p]
凪「触れただけで…ビクビクってしちゃったぁ…♡　ふーっ…ん、ちゅ、ちゅっちゅ♡」[p]
凪「んんっ…頭の中…ぼんやりしてる…んんっ♡　ちゅっちゅっちゅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sirikoki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「ん…お尻に固いの、当たってる…♡　んっ…[舜]ちゃん、すっごい興奮してるの？」[p]
凪「だって…んんっ、すっごくあっついの…擦れてるから♡」[p]
凪「はーっ、はーっ…ん、んんっ…[舜]ちゃんのおちんちん、ビクビクしてる…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirikoki2

[tb_start_text mode=1 ]
凪「んっ…はぁ、はっ、ヌルヌルだから、かな…？　普段より…擦れちゃってる♡」[p]
凪「[舜]ちゃん…息、荒くなってるっ♡　ん♡　んんっ♡　はぁ、あっ…♡」[p]
凪「あぁ…私も…お腹の奥、疼いてきちゃったみたい…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirikoki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ふっ…ん、くぅっ…お尻までヌルヌルになってる…♡」[p]
凪「これ…ローションなのかなぁ？　すっごく熱いんだもん♡　[舜]ちゃんの、出てるの？」[p]
凪「ローションと[舜]ちゃんのエッチな液、混ざっちゃうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki=0"  name="H_sirikoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirikoki_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅっ♡　あぁっ♡　そこ、弱いのにっ…♡　はぁ、はっ、んんっ♡」[p]
凪「[舜]ちゃんだけじゃなくて…私まで気持ちよくなってきちゃったぁ♡」[p]
凪「んっ♡　ぬるぬるって…はぁ、はぁ…♡　擦れるの、すっごく好きみたい♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ♡　ふぅ…あぁ♡　ヌルヌル過ぎておっぱい触れないね？」[p]
凪「はぁ、あっ、はぁ、ん♡　ふふ、[舜]ちゃんの手から逃げちゃうよ？」[p]
凪「捕まえてみて？　ほら…ぷるぷるって揺れちゃってる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi2

[tb_start_text mode=1 ]
凪「あっ…んっ…♡　くっ…ローションのせいで…いつもより敏感になってるみたい…♡」[p]
[舜]「手、滑る…あ～触り心地エロ…」[p]
凪「んっ♡　あんっ…あぁぁっ♡　撫でるみたいに触るの、それ好きっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ああぁっ♡　んっ…手滑っちゃうの？　ん、ふぅ、擦れてる…♡」[p]
[舜]「凪、すっごいエロい顔になってる」[p]
凪「や、だ…恥ずかし…ん、だって気持ちいいんだもんっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃぁんっ♡　あっ♡　あぁっ♡　そ、それっ…おっぱいっ、気持ちいいの…♡」[p]
凪「んんっ♡　ヌルヌルって…敏感なトコ、当たっちゃってるっ♡」[p]
凪「やだ、止めないでぇっ♡　ん、もっと…触ってほしいの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「はぁ、はぁっ…あっ…お、お尻ばっかりナデナデするのだめだよぉ」[p]
凪「[舜]ちゃん、お尻ばっかり撫でて楽しいの…？　」[p]
凪「あ…[舜]ちゃんのおちんちん、おっきくなってる…楽しんでるんだぁ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sirinade2

[tb_start_text mode=1 ]
凪「や、んんっ…ローション…お尻の間にまで入ってきちゃってる…♡」[p]
凪「だめっ…！　いきなりお尻の間さわるの、やだぁ♡」[p]
凪「あっ…んんっ…お、お尻開かれたら…奥まで見えちゃうってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あんっ♡　そんな、形確かめるみたいに…なぞるの恥ずかしいよぉ♡[p]
凪「柔らかさも形も…全部確かめられちゃってる…？」[p]
凪「んんっ…ぬるぬるって…[舜]ちゃんの手に触られるの、好きぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　あっ…わかんないけどっ、そこすっごく気持ちいいの♡」　[p]
凪「はぁっ、はっ…腰、勝手に動いちゃったぁ…♡」[p]
凪「ふふ、子供の頃じゃこんなふうにはならなかったよね♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_hutomomo1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「はぁ、はっ、あぁ…太ももまでヌルヌルになっちゃったぁ…」[p]
[舜]「足の間もローションまみれになってる…エロ過ぎ…」[p]
凪「あっ…あぁぁっ♡　[舜]ちゃんが全身に塗ってくれたんだよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_hutomomo2

[tb_start_text mode=1 ]
凪「んっ…はぁ、はっ…♡　足、太いなって思ってない？　恥ずかしいよぉ」[p]
[舜]「そんなことないよ…細いし柔らかいし…触り心地も最高」[p]
凪「恥ずかしいのに…褒めてもらえるの…すっごく嬉しいみたい…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_hutomomo3

[tb_start_text mode=1 ]
凪「あっ…♡　はぁ、あっ、そこ、足の付け根だから…そこばっかり撫でるのダメ…♡」[p]
[舜]「このヌルヌルはローションじゃなくて、凪のエッチな蜜じゃない？」[p]
凪「や、違うってば…いくら濡れても太ももまでたれちゃうなんて、ないからぁっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_hutomomo_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひうぅぅっ♡　なんでっ、足なのに…♡　こんなに気持ちいいなんて♡」[p]
凪「はぁっ…はぁっ…ムズムズしてきちゃったぁ」[p]
凪「足だけじゃなくて…もっと敏感なところ、触ってほしくなっちゃってるみたい…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…♡　んんっ…[舜]ちゃんの指っ…出たり入ったり…」[p]
凪「体の中まで…撫でられてる…♡　はぁ、あっ、んんっ♡」[p]
凪「そんなっ、ぐちゃぐちゃにしたら…気持ちいいのこみ上げてきちゃう、からっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_teman2

[tb_start_text mode=1 ]
[舜]「ぐちゃぐちゃ…指何本でも入りそ」[p]
凪「あっ…あぁぁっ♡　だめ、だめぇっ♡　激しく、しないでぇっ♡」[p]
凪「ん、くぅぅっ…♡　ぬ、ヌルヌルで奥まで入っちゃうっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「だ、だめ…こんな気持ちいいのずっと続いたら…ホントにおかしくなっちゃう♡」[p]
凪「あっ♡　あっ♡　あっ♡　深いトコ…当たってるっ♡　そこ、だめ、だめだめ♡」[p]
凪「ひうぅぅっ♡　あぁっ、ジュポジュポしないでぇ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　そこっ…♡　弱い、のにぃっ♡」[p]
[舜]「何でヌルヌルになってんのか、わかんないな…」[p]
凪「は、恥ずかし…やだ、言わないでぇっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「ん、くっ…ふぅ、いつもより滑りいいんじゃない？」[p]
凪「はぁっ、あっ…はぁ♡　ヌルヌルで…すっごい擦れちゃってる…♡」[p]
凪「弱いトコも…いつもより当たって…んんっ！　気持ち良くなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　お、奥まで…入ってる…んんっ♡　どこまでも届いちゃいそうっ♡」[p]
[舜]「くっ…んっ、滑り良すぎ…はぁ、あっ…先っぽ、１番奥当たってる…」[p]
凪「あぁぁっ♡　ふっ…んんっ…そこ…気持ちいいの…も、もっとほしいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「ふぅ、んっ…はぁ、はっ…いっぱい動いて…お腹空いちゃうね…んんっ♡」[p]
凪「ご飯もっ…できてるから…♡　お風呂から出たらご飯にしようね…♡」[p]
凪「んんっ♡　ふぅ、ふっ…ま、まだ…遊び足りない、でしょっ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁっ…ああんっ♡　んんっ♡　ふ、深いところ…擦れて…んんっ♡」[p]
凪「あっ…くぅぅぅっ、動けなくなっちゃう…♡　気持ち良すぎだよ…♡」[p]
凪「も…わかんない…わかんなくなっちゃう…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「あぁぁっ♡　はぁんっ♡　あっ、いっぱい揺さぶられちゃってるっ♡」[p]
凪「はぁ、んんっ…[舜]ちゃんのおちんちん…奥まで届いてるよぉ♡」[p]
凪「いつもよりヌルヌルで…熱くなってるっ…♡　お腹の奥もっ、熱いのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「この遊び、気に入ってもらえた？」[p]
凪「んっ♡　あっ…好き…気持ちいいんだもん…はぁ、はっ…やめられなくなっちゃう♡」[p]
凪「また同じ遊び、してくれるっ…？　こうやって…気持ち良くなりたいのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「あ～っ…♡　グチャグチャにかき回されちゃってる…♡」[p]
凪「[舜]ちゃんのおちんちん、いつもより、おっきくなってる♡　奥まで届いてるよっ♡」[p]
凪「はぁ、はっ…遊んでるだけなのに…本気になっちゃったんだね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁぁっ♡　くっ…んんっ♡　お、奥…ドチュって…当たっちゃったぁ♡」[p]
凪「気持ちいい…全身、敏感になってるの…♡」[p]
凪「あぁ、どうしよ…すぐイッちゃうよ…♡　おかしく、なりそうっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_kaiwa1

[tb_start_text mode=1 ]
凪「小さい頃、[舜]ちゃんと一緒にお風呂に入ったこともあるよね♡」[p]
凪「その時、ボディソープで遊んだこともあったっけ♡　楽しかったよね♡」[p]
凪「大人になったら別のヌルヌルで遊べちゃうんだぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa2

[tb_start_text mode=1 ]
凪「[舜]ちゃんは、このローションでどうやって遊ぶ予定だったの？」[p]
凪「ふーっ…ふーっ♡　私なら…体擦りつけて…ヌルヌルのまま敏感なトコ擦って──」[p]
凪「何度も何度もイッちゃう、かなぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa3

[tb_start_text mode=1 ]
凪「んっ…触れるだけで、気持ちいいみたい♡　どんなふうに遊ぶの？」[p]
凪「想像するだけで…ゾクゾクしちゃうね。[舜]ちゃんもすっごくおっきくなってる♡」[p]
凪「いっぱい遊ぼうね…気持ちよくなっちゃお♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_2_Dkiss1

[tb_start_text mode=1 ]
凪「ちゅ、ちゅっちゅ、ちゅぷ♡　んんっ…[舜]ちゃん、激しいよっ…にちゅ、ちゅっちゅ♡」[p]
凪「んんっ♡　はぁ、あぁ、舌絡ませるチュー、好き♡　ちゅぷ♡　じゅぷ、じゅるるる♡」[p]
凪「ちゅっちゅ、ちゅくちゅく♡　んんっ♡　息、できないってばぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_Dkiss2

[tb_start_text mode=1 ]
凪「はふ、はぁ、はっ♡　[舜]ちゃんの舌、奥まで入って…んんっ、ちゅぷ、じゅるるるっ♡」[p]
凪「ん…体も口の中もっ、トロットロになってる…♡　んぅ、気持ちいいのっ♡」[p]
凪「ちゅぷ、ちゅぷ、ちゅっちゅ♡　こんなキス、知らない…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss3

[tb_start_text mode=1 ]
凪「じゅぷじゅぷ、ちゅっちゅ、じゅるるるっ…♡　キスだけで…気持ちよくなっちゃうぅ♡」[p]
凪「ん、ふっ…ちゅく、ちゅ、んんっ…お口の中、ねっとりぐちゅぐちゅ…♡」[p]
凪「んんっ♡　ふっ…舌も、ヌルってしてるの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んっ、んむぅぅ♡　ちゅるるっ、ちゅっちゅ、んんっ♡」[p]
[舜]「すっごい体ビクビクしてる…凪、興奮してるんだ…？」[p]
凪「だって…気持ちいいんだもん…♡　何も考えられなくなっちゃう…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sirikoki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　ん、これ、好きなの♡　[舜]ちゃん…おちんちんガチガチだねっ♡」[p]
凪「お尻で擦られるの好きなんだね…♡　気持ちよさそうな顔、してる…♡」[p]
凪「私も気持ちいいよ…♡　腰動いちゃう♡　気持ちいい…あ～これ、好きっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirikoki2

[tb_start_text mode=1 ]
凪「[舜]ちゃん、腰ヘコヘコ動いちゃってるね♡　ほらっ…おちんちん擦れるたびにビクビクって♡」[p]
凪「あぁ、可愛い…♡　いいよ、いっぱい腰振って♡　んんっ♡　お尻に擦りつけてっ♡」[p]
凪「はーっ、はーっ♡　遊ぼうって言ってたのに…息荒くなってるよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirikoki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「やっ♡　腰浮かせちゃってるのっ？　そんなに擦りつけたらっ♡　だめだってばぁ♡」[p]
凪「はぁ、あっ、あぁ♡　ヌルンって勢いで中入っちゃいそ…♡　んんっ、あぁっ♡」[p]
凪「い、今…中入ったらっ…すぐイッちゃうってばぁ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirikoki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あっ、んんっ♡　な、中入ってないのにぃ♡　気持ちいいっ♡」[p]
凪「あぁ…お尻っ、擦れる度に…ビクビクって震えちゃうの…♡」[p]
凪「はーっ…はーっ♡　私もっ♡　エッチな蜜、とろんって溢れちゃうよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「きゃっ♡　あんっ♡　おっぱい鷲掴みされちゃったぁ♡」[p]
凪「ヌルヌルなのにっ、逃がさない気満々過ぎだってば♡　んっ♡　あっ♡　揉みしだかれてる♡」[p]
凪「あっ♡　あっ♡　おっぱい、[舜]ちゃんの手からっ、こぼれちゃうっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_munemomi2

[tb_start_text mode=1 ]
凪「んんっ♡　あんっ…ヌルヌルおっぱい好きなのっ…？　夢中で揉みしだいてるからっ♡」[p]
凪「ふふ、子供じゃできない遊びって言ってたのに…赤ちゃんみたいになっちゃってるよ♡」[p]
凪「はぁんっ♡　あっ…でもっ、こんなエッチな遊びは子供でも赤ちゃんでもできないかぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～、おっぱい手から逃げちゃう…ほら、ぬるんって…」[p]
凪「あっ♡　あんっ♡　[舜]ちゃん、絶対わざとやってる、でしょっ…♡　んんっ♡」[p]
凪「力いっぱい揉みしだかれて…おっぱいトロットロになっちゃうってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃぅぅぅっ♡　あっ…それっ、好きっ♡　んっ♡　おっぱい触られてるだけ、なのにっ♡」[p]
凪「お腹の奥キュンってして…ほしくなっちゃいそう、なのっ…」[p]
凪「触られてないのに…アソコまでヌルヌルになっちゃう♡　溢れちゃうよぉ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「は～っ♡　は～っ♡　あんっ♡　[舜]ちゃん、触り方エッチすぎ…♡」[p]
凪「おちんちんもおっきくなっちゃったね…♡　私で興奮してくれてるの、嬉しい♡」[p]
凪「もっとお尻触って…♡　いっぱい興奮したら…奥まで挿れてくれるんでしょ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sirinade2

[tb_start_text mode=1 ]
[舜]「凪、お尻動いちゃってるよ？　ヘコヘコ動いて、めちゃくちゃエロい…」[p]
凪「はぁ♡　ヌルヌルってお尻撫でられるの…気持ちよくて…♡」[p]
凪「勝手に動いちゃうの…[舜]ちゃんのおっきい手で、お尻鷲掴みされるの好き♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あんっ…♡　はぁ、あ、撫でるだけじゃ足りないの…もっと揉みくちゃにしてほしい♡」[p]
[舜]「凪、どんどんエッチになってない？」[p]
凪「[舜]ちゃんがエッチにさせてるんだってば♡　もっと触って♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁっ♡　はっ♡　あっ…♡　ビクビクって…電気走ったみたい…♡」[p]
凪「おかしいの…触られてるのはお尻なのに…奥…きゅんって疼いてる♡」[p]
凪「もっと奥まで触ってほしいって合図送ってるみたい♡　おねだりしてるんだよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅぅっ♡　あっ♡　乳首、スリスリするのっ♡　だめだってばぁ♡」[p]
凪「あぁっ♡　あんっ♡　あっ…ヌルヌル擦れてる…♡　はぁ、そこ、敏感なのにぃ♡」[p]
凪「ふーっ…ふーっ…んんっ、どうしよ、これ癖になっちゃうっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_tikubiijiri2

[tb_start_text mode=1 ]
凪「あっ…♡　ん、くぅぅっ♡　乳首ばっかり、意地悪しちゃだめだよぉ♡」[p]
[舜]「乳輪までぷっくり膨らんでる」[p]
凪「んぅぅっ♡　はぁ、はっ…気持ちいいから…もっと触ってほしくて反応しちゃうみたい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_tikubiijiri3

[tb_start_text mode=1 ]
凪「あんんっ♡　はぁ、あっ…ヌルヌルしてる感じ…好きぃ…♡」[p]
凪「ひぅ…あんっ…♡　乳首カリカリも好き…♡　あうぅっ♡」[p]
凪「んんんっ♡　はぁ、あっ…やだ、気持ちいいしか考えられなくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「はうぅぅっ♡　すごいのぉ♡　乳首だけでっ、イッちゃうってば…♡」[p]
凪「こんなに気持ちいいなんて知らない…♡　お腹の奥から…熱いのこみ上げてきちゃう♡」[p]
凪「んんっ…♡　もっともっとって…ほしくなっちゃうよぉ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あぁぁっ♡　お、奥っ…そこ、だめ、何か出ちゃう…出る、出るっ♡」[p]
[舜]「すっごい勢い。潮吹きエッロ…」[p]
凪「あっ…あぁぁぁぁっ♡　止まんない…んんぅぅっ、いっぱい出ちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ヌルヌルなの、すごいの…♡　あっ、また出ちゃう…だめ、だめだめっ♡」[p]
凪「ひゃうぅぅっ♡　んっ♡　はっ…♡　や、見ないでぇ…♡」[p]
凪「こんな、お漏らししちゃったみたいな…恥ずかしいのっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「ん、くぅぅっ…♡　止まんないっ…潮吹きしちゃうっ…あっ、あぁっ♡」[p]
[舜]「すっご…ローション全部流れちゃいそうな勢いじゃん」[p]
凪「や、だぁ…おかしく、なっちゃう♡　わかんなくなっちゃうぅぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃうぅんっ♡　ああっ、はぁ、んっ♡　も、水分出てカラカラになっちゃう♡」[p]
凪「おしっこじゃない、のに…恥ずかしいのっ♡　あっ♡　あぁぁぁっ♡」[p]
凪「こんなにっ、お潮出ちゃうなんて…♡　[舜]ちゃんに触られてるから、だよっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「んっ♡　はっ♡　はぁ♡　あぁっ♡　こんなに長くお風呂に入ったのっ、小さい頃以来だね♡」[p]
凪「あの時もっ…いっぱい遊んだけど…♡　今日もたっくさん遊んでる♡」[p]
凪「は～っ…♡　は～っ…♡　気持ち良くて…やめられなくなっちゃうねっ…んんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「腰動かすだけで…グチュグチュってエッチな音出ちゃってる…♡　あぁ、気持ちいのっ♡」[p]
凪「たしかに子供じゃできない遊びだね…♡　またしたくなったら…付き合ってくれるっ？」[p]
[舜]「もちろん…遊びにはいくらでも付き合うよ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「大丈夫？　のぼせない？　凪、汗だくじゃん」[p]
凪「だって…気持ちいいから…♡　腰、勝手に動いちゃうの…♡」[p]
凪「あぁ…[舜]ちゃんのもっ、熱くてヌルヌルになってるよ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ああぁっ♡　あっ…♡　そこばっかり…突き上げないでっ…♡　ぐちゃぐちゃになっちゃうの♡」[p]
[舜]「シャワーで全部流せば大丈夫だよ」[p]
凪「んんっ…♡　はぁ、全身ヌルヌルだから…落とすの大変だよっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「はぁっ…♡　はぁっ♡　あっ…♡　このヌルヌルはローション？　[舜]ちゃんから出たの？」[p]
[舜]「凪から出たんじゃないの？」[p]
凪「んんっ…♡　全部合わさってトロットロになってるんだね…♡　だからこんなに気持ちいんだ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　あっ♡　んんっ…♡　中までぐちゃぐちゃなの…♡」[p]
[舜]「凪、腰動いてる…あ～、エッロ…」[p]
凪「んんっ…気持ち良くて…止められなくなっちゃった…♡　もっと[舜]ちゃんの、奥まで欲しい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「んんっ♡　はぁ、はっ♡　[舜]ちゃんのおちんちん、ビクビクしっぱなしだね…♡」[p]
凪「ヌルヌルで擦れるの、気持ち良いんだね♡　はぁ、あっ♡　先っぽ、引っかかってる…♡」[p]
凪「ひぅっ♡　あっ…♡　激し…おちんちんもみくちゃになっちゃうね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁぁっ♡　こ、壊れちゃう…おかしくなっちゃうっ…♡」[p]
凪「はっ♡　はぁっ♡　あぁっ…♡　腰動くの止まんない…♡」[p]
凪「もっと奥まで欲しくなっちゃうよぉ♡　はぁ、あっ…先っぽでトントンってノックして♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_kaiwa1

[tb_start_text mode=1 ]
凪「見つかっちゃったらどうしよう…誰かくるかもしれないし…」[p]
[舜]「凪が声を出さなきゃ大丈夫だよ」[p]
凪「っ！　もう…意地悪…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_kaiwa2

[tb_start_text mode=1 ]
凪「…ね、誰か来た？　外、誰かいない？」[p]
[舜]「心配しすぎ。足音してないだろ」[p]
凪「だって…もしバレたらって考えたら、ドキドキしちゃうよ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_kaiwa3

[tb_start_text mode=1 ]
凪「私、隠しごととか苦手なのわかってるでしょ…？」[p]
凪「今だって…心臓が飛び出そうなくらい…緊張してるんだから…」[p]
[舜]（緊張してるって割には、顔が緩んでるんだよあぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J3_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…ふっ…♡　ふぅ、ふーっ…あっ…」[p]
[舜]「しーっ、声漏れてる…誰か来たらバレちゃうよ？」[p]
凪「だ、だって…[舜]ちゃんが触る、から…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_munemomi2

[tb_start_text mode=1 ]
凪「ん…だ、だめ…おっぱいこれ以上は…やっぱりだめ…」[p]
[舜]「あんまり動くと間違えて緊急ボタン押しちゃうよ？」[p]
凪「っ！　そ、そんなの…困っちゃう…んっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「静かに…誰か来ちゃうよ？」[p]
凪「んっ…ふぅっ、ふーっ…ならっ…あんまりおっぱい揉まないでよぉ…♡」[p]
凪「ふぅっ…ふっ…んんっ♡　おっぱいだけ、なのに…腰動いちゃう…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅっ♡　あっ…ご、ごめんなさ…声、出ちゃって…んんっ♡」[p]
凪「気持ちいいトコに当たっちゃて、我慢できなくって…」[p]
凪「んっ♡　ふっ、そこ…だめぇ…んんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「はぁ…ふっ…や、くすぐったいってばぁ」[p]
[舜]「お尻動いちゃって可愛い」[p]
凪「も、言わないでったら…恥ずかしいんだから…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_sirinade2

[tb_start_text mode=1 ]
凪「んっ…♡　お、お尻ばっかり撫でるの…だめ…」[p]
[舜]「もっと違うトコ撫でてほしいんだ？」[p]
凪「別にそういうわけじゃ…も、誰か来たらどうしようって…落ち着かないよ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ♡　ふーっ…ふーっ…お尻ばっかり、撫でないで…」[p]
凪「お腹の奥、ムズムズしてきちゃう、からぁ…」[p]
[舜]「しーっ…声、我慢だよ凪」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんんっ♡　ふっ、ふぅっ、ふーっ…こ、声…我慢無理ぃっ♡」　[p]
凪「ふーっ、ふーっ、んん、はぁんっ…♡」[p]
凪「お尻…だめなのっ♡　エッチな声…出ちゃうよぉ」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「ま、待って[舜]ちゃん…それだけは、ダメっ…止めてっ…♡」[p]
凪「くぅぅぅっ…んんっ♡　嫌ぁぁっ♡　ん、くぅぅっ♡」[p]
[舜]「声、出しすぎ…もーちょい静かにいられるでしょ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_teman2

[tb_start_text mode=1 ]
凪「んっ♡　んっ♡　ふっ、ふぅっ…♡」[p]
[舜]「口、閉じてんの？　可愛い…ほら、頑張って声こらえて…」[p]
凪「ひぅぅっ♡　んぅぅっ♡　意地悪ぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅぅっ♡　んっ♡　くうぅぅっ♡　だめ、だめぇ…♡」[p]
[舜]「ぐちゃぐちゃになってる…いつもより濡れてんじゃない？　興奮してるんだ？」[p]
凪「そ、そんなこと…ないってば…んんっ♡　はぁ、あっ、あぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ああぁぁっ♡　んんっ…！　そこっ…だめ、だめだめだめっ…」[p]
凪「き、気持ちよすぎて…腰動いちゃ…んんっ…♡」[p]
[舜]「めちゃくちゃ声出てるじゃん…静かにしないと」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_sirikoki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…♡　[舜]ちゃん、どう？　気持ちいい？」[p]
[舜]「くっ…ふぅ、はっ…気持ちいいよ…んんっ」[p]
凪「はーっ…ふぅっ…お尻…擦れてる…んんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_sirikoki2

[tb_start_text mode=1 ]
[舜]「くっ…んんっ…！」[p]
凪「しーっ、でしょ？　[舜]ちゃん…声出しちゃダメだよ♡」[p]
凪「ん…ふーっ…♡　一緒に我慢しよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_sirikoki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ふーっ…ふーっ…ふーっ…私まで気持ち良くなってきちゃった…♡」[p]
凪「ん、はぁ、あっ…こ、声出ちゃう…んんっ♡」[p]
凪「だ、だめ…足の間…入っちゃうよ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki=0"  name="H_sirikoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_sirikoki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ…♡　ん、くぅっ♡　そこっ、だめなの…♡」[p]
凪「お尻なのに…なんでこんなに気持ちいいのっ♡」[p]
凪「あ、こ、声…大丈夫…声我慢できる、からっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「そこ、だ、だめ…[舜]ちゃん、ホントに…」[p]
[舜]「ここがいいんだ…？」[p]
凪「も、意地悪しないで…おっぱい敏感なのにぃ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_tikubiijiri2

[tb_start_text mode=1 ]
凪「はぁ、あっ…んっ、くぅ…♡」[p]
[舜]「乳首、ぷっくりしてる。興奮してるんだ？」[p]
凪「ち、違…も、だめぇ…♡　コリコリこねちゃうの、ヤダぁ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…ふぅ、ふっ…か、カリカリってされたら…こ、声──」[p]
[舜]「いいの？　声出して…」[p]
凪「だ、だめ…ひぅぅっ♡　おっぱいの中、乳首押し込んじゃやだぁ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「く、んうぅっ♡　ち、乳首っ…キュって摘まむのだめぇ…んんっ…♡」[p]
[舜]「声、一生懸命我慢してるんだ？　余計意地悪したくなるんだけど」[p]
凪「やっ…意地悪、しないでよぉ…♡　これ以上はホントに…我慢できないからぁっ」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…あっ…はぁ…」[p]
[舜]「うっとりした顔。耳好きなんだ？」[p]
凪「ひゃっ…い、いきなり喋らないでってばぁ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_miminame2

[tb_start_text mode=1 ]
凪「ひぅぅっ♡　耳、ペロペロ…変な感じ、なの…」[p]
凪「んんっ♡　ふーっ…ふぅ、ふっ…か、体あっつく…なっちゃう…」[p]
凪「はぁ、あっ…ふーっ…ふーっ…んんっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「耳、赤くなってる」[p]
凪「だ、だって…[舜]ちゃんがいっぱい舐める、から…」[p]
凪「そ、それにバレたらどうしようってドキドキして…んんっ♡　はぁ、あっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんんっ♡　そ、それ…ずるいぃ…♡　ふーっ…ふーっ…ふーっ…」[p]
凪「[舜]ちゃんの息…耳の中、入ってくるのっ…♡」[p]
凪「あ、頭の中…ぐちゃぐちゃになっちゃう…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「はっ…はぁ、あっ…ダメ、[舜]ちゃん…ぬ、抜いて…」[p]
[舜]「中、すっごい締まってるけど？」[p]
凪「んんっ♡　や、だぁ…言わないでぇっ…♡　くっ…ふぅ、ふっ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「声我慢して、凪も興奮してるんじゃないの？　超うねってるよ」[p]
凪「あっ、んんっ、そんな、こと…ないから…♡」[p]
凪「はぁ、あっ…ひぅぅっ…こ、声、出ちゃう…んんっ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「びょ、病院なのに…トイレ、なのに…エッチなことしちゃってる…」[p]
凪「んんっ…はぁ、あっ…[舜]ちゃんの、いつもよりおっきくなってる…♡」[p]
凪「こ、興奮してるの…もう…変態っ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁっ♡　あっ…ダメなトコっ、当たってるっ…♡」[p]
[舜]「凪、声抑えて…」[p]
凪「そ、そんなの、無理、だってばぁ…んんっ…ふーっ、はぁ、あっ…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「んっ、くぅっ、ふっ…はぁ、はっ…激しっ…だめ、立っていられないっ…」[p]
[舜]「ふらついて、緊急呼び出しボタン押しちゃいそうだな？」[p]
凪「や、押さないっ…ちゃんと…踏ん張るからぁ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「くっ…んんっ♡　ふぅ、ふっ…誰か来ちゃったらっ、どうしよっ…」[p]
[舜]「だから興奮してんでしょ？」[p]
凪「ち、違うってばぁ…♡　あっ…んんっ……ふっ…んんんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「トイレで看護師とセックスかぁ…すっごい興奮する…」[p]
凪「ん、はぁぁっ♡　だ、ダメなことしちゃってる、のに…こんなに気持ちいいなんてっ…♡」[p]
凪「ひぅっ…はぁ、はぁ、はっ…い、イッちゃう…♡　イッちゃうよぉ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんん～っ♡　お、奥っ…キュンキュンしてるぅぅっ♡」[p]
凪「も、声…出ちゃう…我慢できないよぉ…んんんっ♡」[p]
凪「お、お願い…誰も来ないで…ひぅっ♡　あっ♡　あぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_2_kaiwa1

[tb_start_text mode=1 ]
凪「トイレでこっそりエッチしたいなんて…バレたら大変なことになっちゃうよ？」[p]
[舜]「でも凪も興味あったんじゃないの？」[p]
凪「私は…別に…その…ちょ、とっとだけ、ね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_2_kaiwa2

[tb_start_text mode=1 ]
凪「[舜]ちゃん、声出しちゃダメだよ？　誰か見に来ちゃうかもしれないから…♡」[p]
[舜]「凪こそ…」[p]
凪「すっごく気持ちよくなっちゃったら、声出ちゃうかも…そしたら口押さえてくれる？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_2_kaiwa3

[tb_start_text mode=1 ]
凪「患者さん、おトイレしましょうね～♡　手伝ってあげるから、ね♡」[p]
凪「ふふ、なんちゃって…もし誰か来ちゃったら、介助してるように見せようかなぁ」[p]
凪「[舜]ちゃんの演技力にかかってるかも」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J3_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…ふぅ…♡　いきなりおっぱい鷲掴みなんて…」[p]
凪「声、出させようとしてるでしょ…んっ…はぁ、んっ…♡」[p]
凪「そんな、揉みしだいちゃだめ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_2_munemomi2

[tb_start_text mode=1 ]
凪「ふーっ…ふーっ…ふーっ…んっ♡　こ、声出すように…わざとやってるの？」[p]
凪「ちゃんと我慢できる、から…♡　んんっ♡　くっ…ふーっ…ふーっ…」[p]
凪「ひぅぅっ♡　[舜]ちゃんおっぱい大好きなんだから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…♡　はぁ、あんっ♡　んんっ…そんなに強くしたらおっぱいの形変わっちゃうってば♡」[p]
[舜]「凪、声我慢して」[p]
凪「んっ♡　[舜]ちゃんが触るからなのに…んんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あうぅっ♡　はぁんっ…♡　そこっ…♡　気持ちいいのっ♡」[p]
凪「んんっ…[舜]ちゃんに…おっぱい揉みくちゃにされちゃう…♡」[p]
凪「はーっ…♡　はーっ…♡　お腹の奥まで…キュンキュンってしちゃったぁ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_2_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅっ…♡　お尻、そんな乱暴に掴まないで♡　あ、だめ…お尻広げちゃ…」[p]
凪「奥まで…見えちゃうよぉ…♡　恥ずかし…」[p]
凪「んっ…ふーっ…はぁ、んっ…お尻、好き放題されちゃうの…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_sirinade2

[tb_start_text mode=1 ]
[舜]「静かにしないと誰か来るって…」[p]
凪「[舜]ちゃんが…お尻触るから声出ちゃうんだよぉ…♡」[p]
凪「んっ…はぁ、はっ…♡　ちゃんと、我慢するからぁ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ…んんっ…お尻、触られてるだけなのに…腰動いちゃう…♡」[p]
凪「はーっ♡　はーっ♡　あぁ、腰止まんないのっ♡」[p]
凪「気持ちいい…はーっ…はーっ…[舜]ちゃん…我慢できなくなっちゃうかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_sirinade_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あっ♡　あぁぁんっ♡　ごめんなさ…おっきい声、出ちゃったぁ♡」[p]
凪「ふーっ…ふーっ…お尻だけじゃなくって、もっと奥…とろとろになったトコも触ってほしいの♡」[p]
凪「さっきからずっとヒクヒクして…我慢できなくなっちゃったぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_2_siiohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…んっ…あぁ♡　こんなの…声我慢できない…なんかきちゃう…」[p]
凪「ひぅぅぅぅっ♡　あっ、あぁぁぁっ♡　出ちゃったぁ…♡」[p]
凪「や、やだ…潮吹きなんて恥ずかしい…♡　んんっ、また気持ちいいのきちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siiohuki+=1"  name="H_siiohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_2_siiohuki2

[tb_start_text mode=1 ]
凪「ま、また出る…お潮吹いちゃう…ひぐっ♡　おっ♡　おおおおっ♡」[p]
[舜]「あ～…またおもらししちゃったな…？」[p]
凪「おもらしなんて言わないで…♡　恥ずかしくて死んじゃうからぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siiohuki+=1"  name="H_siiohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_2_siiohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「潮吹きっぱなしだね…トイレの入り口に検尿カップあったけど。そこに入れる？」[p]
凪「やっ…やだ、恥ずかし…あっ、ま、また出ちゃう…あっ♡　あっ♡　あぁぁぁぁっ♡」[p]
凪「全然止まんない…勝手にいっぱい出ちゃうの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siiohuki=0"  name="H_siiohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_2_siiohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃうぅぅっ♡　あっ、はぁ、あっ…♡　お腹の奥から…熱いの溢れて…止まらないのっ♡」[p]
凪「出てる瞬間までっ、気持ちいいなんて♡　あっ、んんんっ♡」[p]
凪「はぁ、あっ、力…抜けちゃうっ…♡　んんっ、ごめ、声抑えきれないっ…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～…つるつるすべすべ…パンストの触り心地最高…」[p]
凪「ん、はぁ、はっ…♡　あっ、[舜]ちゃん、いつもよりおっきくなってる…」[p]
凪「興奮しすぎだってばぁ…♡　ん、くっ…はぁ、私でオナニーしてるみたいだね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_sumata2

[tb_start_text mode=1 ]
凪「んんんっ…だ、だめ…声出ちゃう…♡　んんっ、敏感なトコ、擦れて…♡」[p]
凪「ん、くぅぅっ♡　はぁ、あっ…♡　やっ…引っかかって擦れてるの…♡」[p]
[舜]「そんなに動くと…ごそごそして怪しまれるよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_sumata3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～…なんか、じんわり熱くなって濡れてきてんじゃない？」[p]
凪「んんっ♡　恥ずかし…ふーっ…ふーっ…気持ちいい、から…キュンキュンしてるの…♡」[p]
凪「はぁ、はっ…ま、待って…今っ、敏感なトコ…ずっと擦れてて…イッちゃうってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃぁぁっ♡　あっ、んんっ…こ、声…おっきい声出ちゃったぁ…♡」[p]
凪「ごめんなさ…んっ、くぅぅっ…ふっ、ふぅっ、んんっ…やっ、激し…んんっ♡」[p]
凪「[舜]ちゃんの熱いの…すっごい伝わってくる…♡　あうぅっ、気持ちいいっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「ん…ふーっ♡　[舜]ちゃん…乳首は、だめだってばぁ…」[p]
凪「触られると…声、我慢できなくなっちゃう、から…んっ…ふーっ…ふーっ…」[p]
凪「んっ…ふぅ、はっ、はぁ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_tikubiijiri2

[tb_start_text mode=1 ]
凪「声出しちゃいけないのわかってるのに…わざと乳首ばっかり触ってるでしょ♡」[p]
凪「んっ、わかるよ…♡　さっきから、乳首ばっかり刺激するんだもん…♡」[p]
凪「ん、ふっ…声、抑えるの大変なんだから…んんっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅっ♡　んっ…はぁ、はっ…まさか、トイレでこんなことしてるなんて…」[p]
凪「スタッフも患者さんも想像もしてない…よね…♡　んっ…はぁ♡」[p]
凪「あっ…コリコリってこねちゃやだぁ、だめ…んんっ♡　不意打ち、ズルいってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　はっ…はぁ♡　あぁ…い、今の…すっごい気持ちよかったの♡」[p]
[舜]「声めっちゃ出てんじゃん…腰も動いてるし」[p]
凪「んん、言わない、でぇ…♡　はぁ、あっ…乳首、気持ちいいんだもん…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ…耳の中っ…入ってきてるっ…♡」[p]
凪「はーっ…♡　はーっ…♡　変なの…頭の中まで犯されてるみたいで…」[p]
凪「あぁ…奥…疼いちゃう…♡　はっ、はっ、はっ…♡　欲しくなっちゃうよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_miminame2

[tb_start_text mode=1 ]
[舜]「凪、体ビクビクしてる…」[p]
凪「んぅぅっ♡　ふっ…そこで喋るの、だめ…♡　[舜]ちゃんの声だけで気持ちよくなっちゃう…」[p]
凪「ふーっ…ふーっ…はぁ、あっ…んっ…立ってるの、やっとで…倒れちゃいそ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…はぁっ…味わうみたいに舐めてるの…？　[舜]ちゃんに食べられちゃう…♡」[p]
凪「耳の中…グポグポッてエッチな音してる…♡」[p]
凪「ん、ふぅ、はっ…ねっとりグチャグチャにかき回されちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ん、くぅぅぅぅっ♡　はっ…み、耳だけ、なのに…♡　気持ちいいっ♡」[p]
凪「腰ガクガクしちゃう…♡　イッちゃう、ってばぁ…♡」[p]
凪「はぁ、あっ…とけちゃう…おかしくなっちゃう…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「ひぅっ…んっ、くっ…んっ…ふっ♡」[p]
[舜]「ちゃんと声我慢できるんだ？　その調子だよ」[p]
凪「んっ…ふぅ、ふっ…あっ…そんなに揺さぶられたら…♡　声、出ちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「はぁっ♡　んぁっ♡　あっ…♡　んんっ…♡　[舜]ちゃんの、いつもよりおっきくなってる…♡」[p]
凪「[舜]ちゃんも興奮してるんだぁ…♡」[p]
凪「私もっ…同じ…ダメなことなのに…すっごく興奮しちゃってるの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「ふぅっ…んっ、あっ、あぁ…！　トイレで…エッチなんて…だめ、なのに…♡」[p]
[舜]「じゃあやめる？　やめてもいいけど？」[p]
凪「や、だぁ…やめないで…！　いっぱいしてほしいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅっ♡　おっ、おおっ♡　んぅぅ、そこ、すごいぃ♡」[p]
凪「くっ、んんっ…壊れちゃう…♡　はぁ、あっ…い、イッちゃいそ…♡」[p]
凪「はぁ、あっ、おっきい声…出ちゃうよぉ…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「ひぅぅっ♡　おっ、おおっ♡　んぅぅ、そこ、すごいぃ♡」[p]
凪「くっ、んんっ…壊れちゃう…♡　はぁ、あっ…い、イッちゃいそ…♡」[p]
凪「はぁ、あっ、おっきい声…出ちゃうよぉ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「はっ、はぁ、はぁっ…ひぅっ♡　気持ちいいのっ♡」[p]
[舜]「声出しすぎ…誰か来たらどうやっていいわけすんの？」[p]
凪「何も言えないよ…やっ…バレたらどうしよう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「誰か来たらって思うと、余計興奮してんの？」[p]
凪「んんっ！　そんなことっ…はぁ、あんっ…♡　バレたらどうしようって思ってるもん…」[p]
凪「なのにっ…すっごく興奮しちゃってる…私、悪い子みたい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひああぁっ♡　あうぅ♡　気持ちいいこと擦れてるの…♡」[p]
凪「それ、好きっ♡　あぁ、もっと奥…ぐちゃぐちゃにして…♡」[p]
凪「全部どうでもよくなっちゃう…はぁ、ああ、気持ちいことしか考えられないの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_kaiwa1

[tb_start_text mode=1 ]
凪「ま、待って…お風呂に入ってないから…汗かいちゃったし…」[p]
[舜]「へ～、それで料理作って待ってたんだ？」[p]
凪「ごめんなさい…料理してるうちにまた汗かいちゃうと思って…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa2

[tb_start_text mode=1 ]
[舜]「汗だくの体で待ってたのは、そのまま俺に抱いてほしいと思ったから？」[p]
凪「ち、違うよ…恥ずかしいし…ちゃんとお風呂に入ろうって思ってた…」[p]
凪「でも…タイミング間違えちゃってごめんなさい。お風呂入って待ってるべきだった…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa3

[tb_start_text mode=1 ]
凪「あ、だめ…そんなに顔寄せないで…私、本当に汗臭いと思うから…」[p]
凪「恥ずかし…嫌われちゃったら嫌だもん…あんまり嗅がないで？」[p]
凪「あ、それに肌も…汗でちょっとベタベタしちゃってるかも…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_kagu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「きゃっ…あ、足の匂い嗅がないで…今日、ストッキング履いてたし…」[p]
[舜]「ホントだ…蒸れた匂いするわ…キッツ。これで家の中歩いてんの？」[p]
凪「あっ…ご、ごめんなさい…そう、だよね。不衛生だよね…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kagu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「顔近づけただけで、変な匂いすんだけど…」[p]
凪「や、やだ…本当に嗅がないで…まさかいきなりエッチするなんて思わなかったから…」[p]
凪「臭くてごめんなさい…嫌いにならないで…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kagu3

[tb_start_text mode=1 ]
凪「わ、私…今からお風呂入ってくる…！　少しだけ待ってて…！」[p]
[舜]「いいから…！　臭いトコも全部正直に教えるんだよ。あー、パンツん中も臭いんじゃないの？」[p]
凪「やっ…そこだけは…本当にだめ…ごめんなさい、許して…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu=0"  name="H_kagu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kagu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ…♡　や、だぁ…♡　下着の中、嗅いじゃダメなのにっ」[p]
[舜]「くっさ…嗅がれて嫌がられてるくせに…なんでそんなうっとりした顔してんだよ」[p]
凪「違う…そういうわけじゃ…ホントにだめ…汚いから…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おっぱいもしっとりしてんだけど…これ、汗かいてんの？」[p]
凪「あっ…んんっ♡　ごめんなさい…ブラつけてるから…汗かいちゃって…」[p]
凪「お風呂に入ってない体…さわらせちゃってごめんなさい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_munemomi2

[tb_start_text mode=1 ]
凪「んっ…はぁ、あっ…は、恥ずかし…やっぱり私、シャワーだけでも…」[p]
[舜]「いいから、足広げて洗ってない体全部見せるんだよ！」[p]
凪「は、はい…んっ♡　ふぅ♡　おっぱい、もみくちゃになっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「お風呂入ってない体でごめんなさいは？」[p]
凪「ごめんなさい…汗だくおっぱいさわらせちゃってごめんなさい…」[p]
凪「これからはっ…お風呂で体を綺麗にして[舜]ちゃんの帰りを待っていますからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あぁっ…♡　き、気持ちいいっ…♡」[p]
[舜]「余計汗かいていいの？　動くと匂いも散るんだけど？」[p]
凪「はぁっ…はぁ、あっ…ごめんなさ…う、動かないようにっ、頑張りますっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「や、だめ、だめ…！　き、汚いからぁっ…！」[p]
[舜]「ほんとだ…おっぱい汗の匂いするわ…俺の舌で綺麗にしてもらうつもりだった？」[p]
凪「そんなこと考えてない…♡　んんっ♡　あぁっ、しゃぶらないでぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_tikubiname2

[tb_start_text mode=1 ]
[舜]「こんな蒸れ蒸れおっぱい舐めてもらってるんだから…お礼言わなくていいの？」[p]
凪「はぁ、あっ♡　あ、ありがとうございます…汗で蒸れたおっぱい舐めてもらえて…嬉しいです♡」[p]
凪「んっ…くぅぅっ♡　あっ♡　乳首ばっかり吸われるの…おかしくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～、汗くっさ…谷間にも汗かいてんじゃん…」[p]
凪「あうっ♡　んっ…くぅぅっ♡　言わないでぇ…んんっ、気持ちよくてっ、体熱くなってるの♡」　[p]
凪「汗いっぱいかいちゃってごめんなさいっ…♡　も、顔離してっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あっ、あぁぁっ♡　恥ずかしいのにっ、気持ちよくなってる…♡」[p]
[舜]「余計汗かいてんじゃないの？　恥ずかしいね」[p]
凪「くぅぅっ…んんっ♡　汗、かいてるかも…ううっ、恥ずかしいよぉっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひゃっ…あっ…や、痛い…お尻叩かないでっ…だめ…♡」[p]
[舜]「興奮してるくせに…正直に言わないと痛くするよ？」[p]
凪「あっ…ご、ごめんなさ…叩かれてっ、ちょっとだけ気持ちよくなっていましたっ♡　許して♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_supankingu2

[tb_start_text mode=1 ]
凪「ひゃぅぅっ♡　あっ♡　あ、ありがとう…ございますっ…♡」[p]
[舜]「なんでお尻叩かれてるのかわかる？」[p]
凪「シャワー浴びないで待ってたから…気がきかなくてごめんなさいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ん？　叩かれて濡れてきてんでしょ…エロい匂いしてきてない？」[p]
凪「だ、だって…こんな恥ずかしいポーズで全部見られちゃってるから…♡」[p]
凪「恥ずかしいのに…エッチな気持ちになっちゃって…変態でごめんなさい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁぁっ♡　い、痛いっ…お尻、赤くなっちゃう…♡　も、許してっ♡」[p]
[舜]「甘い声出てるくせに。嘘までつくの？」[p]
凪「う、嘘ってわけじゃ…恥ずかしい格好でお尻叩かれてお腹の奥ムズムズしちゃうから…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_kunni1

[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　だ、だめ、汚いよ…そんなとこ舐めちゃだめ…」[p]
[舜]「あーホントだ…プンプン匂ってるわ…こんなとこ舐めさせて平気なんだ？」[p]
凪「うぅぅっ…恥ずかしい…お、お願い…シャワーだけでもっ…」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_kunni2

[tb_start_text mode=1 ]
凪「ひあぁぁぁっ♡　あうぅっ♡　ほ、ホントにっ、口離してぇっ…」[p]
凪「汚れてるからっ…クリしゃぶらないで…んんっ…汚くて臭くてごめんなさいっ♡」[p]
凪「んんっ…なのに…[舜]ちゃんに汚いところ舐めさせてるのに気持ちよくなっちゃってるの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「んうぅぅっ♡　やっ…も、わかんなくなっちゃう…♡　だめ、だめだめだめ♡」[p]
[舜]「中から蜜溢れてきた…メスの匂いまで混ざって、ホカホカおまんこ出来上がりだ」[p]
凪「んぅぅっ♡　恥ずかし…こんな、恥ずかしいカッコで舐められて…もうやだぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　んんっ♡　入り口舐めるの、汚いってばぁ…♡」[p]
[舜]「でも舐められて、ヒクヒクするほど気持ちよくなってんじゃないの？」[p]
凪「な、なってる…舐められて気持ちよくなっちゃってる…ごめんなさいっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　あっ♡　も、指抜いて…ダメ、汚いからぁっ」[p]
[舜]「ほんとだ…中までねっとりしてんじゃん…どんだけ汗かいてんの？」[p]
凪「やだやだ、言わないでよぉ…うぅぅっ…ごめんなさい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_teman2

[tb_start_text mode=1 ]
凪「あぁぁぁっ！　奥っ、だめぇぇっ♡　も、指抜いて…お願いっ…♡」[p]
凪「恥ずかしいのと気持ちいいので…頭の中ぐちゃぐちゃになってる…♡」[p]
凪「こんな体勢でっ…かき回されるの…恥ずかしくてもう無理なのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「汚いから、中から蜜溢れさせて自分で綺麗にしろよ…かき回してやるから…！」[p]
凪「はいっ♡　はいっ…♡　あぁぁっ♡　自分で綺麗にしますっ…♡」[p]
凪「ぐちゃぐちゃになって…汗も汚れも…全部…綺麗にしますからぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃうぅぅぅっ♡　あっ、んんっ…♡　そこばっかり…だめぇぇっ♡」[p]
[舜]「ん～？　だらしない顔して感じてるんだ？」[p]
凪「はぁ、ああぁっ♡　変な顔しちゃって、ごめんなさい…気持ちよくて顔、緩んじゃう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「ひぅぅっ♡　あっ…くっ…♡　んんっ…いきなり深いトコまで入ってきてる…♡」[p]
[舜]「足降ろしていいなんて言ってないんだけど？　そのままの体勢でいないならやめるよ？」[p]
凪「ごめんなさ…このままでいますから…！　やめないでください…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「情けない格好のまま犯される気分はどうなんだよ？」[p]
凪「うぅぅっ♡　恥ずかしい…ですっ♡　でもされるがままで…気持ちよくなっちゃってる♡」[p]
凪「奥も痺れたみたいに熱くて…ジンジンしちゃってますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「出し入れされてるとこまでよく見えてるよ…ヒクヒクしてエッロ」[p]
凪「んっ…あぁぁぁっ、や、恥ずかし…見ないで…♡」[p]
凪「気持ちよくて勝手に動いちゃうの…キュウって[舜]ちゃんのこと締め付けちゃうっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁぁっ♡　あうぅっ、そこっ♡　弱いとこに当たってる、のっ…♡」[p]
[舜]「足離すなって…！　しっかり掴んで…チンポケースになってもらわないと…！」[p]
凪「んっ♡　はいっ…好きに動いてっ…♡　私で…気持ちよくなってください♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「くっ…あぁっ♡　ま、待って…激しくて息吸えな…」[p]
[舜]「でも余計に締まってるけど？　喜んでんだろ？　やめてほしいの？」[p]
凪「んくぅっ♡　やだ、やめないでください…！　[舜]ちゃんの好きにしてっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「お尻の穴まで丸見えになってるけど？　ここも洗えてないんでしょ？」[p]
凪「ひぅぅっ♡　あぁ、言っちゃ、ヤダ…恥ずかしくて死んじゃう…」[p]
凪「ああぁっ♡　激し…シャワー浴びてなくてごめんなさいっ…許してぇっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「はっ♡　はっ♡　あぁ、わかんなくなっちゃう…も、だめ、だめ…！」[p]
[舜]「汗と、本気汁でグチャグチャになってるじゃん…すっごいメスの匂いしてる…！」[p]
凪「ひうぅぅっ♡　深呼吸しちゃだめぇっ♡　変な匂い嗅がないで…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁっ…♡　その奥…だめ、なのっ…♡　力抜けちゃうぅっ♡」[p]
[舜]「この体勢はそのままだって言ってんだろ…！」[p]
凪「はひっ♡　わかりましたっ♡　[舜]ちゃんがよしって言うまで、このままでいるからっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「さっきから汗臭いのと、メス臭いので気になってたんだよ…」[p]
凪「んんっ…ごめんなさい♡　汗とエッチな匂いさせちゃって…」[p]
凪「ふーっ…はぁ、[舜]ちゃんに私の変な匂いかがせちゃってる…臭くてごめんなさいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa2

[tb_start_text mode=1 ]
凪「い、今からでもシャワー浴びてくるから…待っててくれる…？」[p]
[舜]「はぁ？　俺が待ってなきゃいけないわけ？」[p]
凪「ごめんなさい…[舜]ちゃんがいいって言ってくれるなら…私はこのままでいいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa3

[tb_start_text mode=1 ]
凪「帰ってきてすぐご飯作らないと間に合わなくて…少し走ったから汗かいちゃったの」[p]
凪「それに…[舜]ちゃんに会えるのが嬉しくて…エッチなこと考えて濡れちゃったみたい…♡」[p]
[舜]「あんまり嗅がないで…♡　もっとエッチな匂いになっちゃうからぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_2_kagu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「洗ってないくせに、足開いておまんこ広げて…恥ずかしいなぁ？」[p]
凪「ああぁっ、だめ…顔近づけないで…♡　んんっ…いや、深呼吸しないでぇ♡」[p]
凪「お手洗いも何度も行ったし…汗かいちゃったからぁ。匂い嗅いだらダメなのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kagu2

[tb_start_text mode=1 ]
[舜]「はぁ？　くっさい匂い嗅がれて興奮してんの？」[p]
凪「んぅぅっ♡　恥ずかしいのに…体の奥ジュンって痺れちゃってる…」[p]
凪「そんなに嗅がないでっ♡　[舜]ちゃん、嫌な気持ちになっちゃうでしょ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_kagu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「はーっ♡　はーっ♡　エッチな匂いしてきちゃったかな…？」[p]
凪「恥ずかしいはずなのに…匂い嗅がれて変な気分になってきちゃった…♡」[p]
凪「臭くてごめんなさい…あぁ、[舜]ちゃんの鼻臭いとこにくっついちゃいそ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu=0"  name="H_kagu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_kagu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　やっ…んんっ♡　[舜]ちゃんの息、当たってる…♡」[p]
凪「はぁ、はっ…臭いのに、思いっきり匂い嗅がれちゃったぁ…♡」[p]
凪「恥ずかし…やだ…お、おまんこムズムズしちゃうよぉ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おっぱいも汗で蒸れてんじゃないの？　たしかめてやるよ…」[p]
凪「んっ…汗かいてるから…匂い嗅いじゃだめだよっ♡」[p]
凪「んんっ…揉みしだくのもだめっ♡　汗で濡れてるの、バレちゃうから♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_munemomi2

[tb_start_text mode=1 ]
[舜]「汗だくおっぱいでごめんなさいって言わないと」[p]
凪「汗だくおっぱいで…ごめんなさい♡　[舜]ちゃんの手、汚しちゃったぁ♡」[p]
凪「[舜]ちゃんまで汗臭いの移っちゃったらどうしよ…同じ匂いになっちゃう…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「汗かきすぎておっぱいふやけてんじゃないの？　ほら、こんなに柔らかくなってる」[p]
凪「あぁっ♡　柔らかいのはっ…もともとなんだってばぁ♡」[p]
凪「[舜]ちゃんの手に吸い付いちゃいそう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃううう♡　あぁっ…そんなに鷲掴みにされたら…おっぱいの形変わっちゃう♡」[p]
[舜]「でも嬉しそうな顔してんじゃん」[p]
凪「んぅっ…だって[舜]ちゃんがおっぱい可愛がってくれるんだもん…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_tikubikami1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んんんっ♡　やっ…お、おっぱい噛みついちゃやだぁ…♡」[p]
[舜]「乳首コリコリになってんじゃん…噛みつかれて興奮してんだろ？」[p]
凪「やっ…ひあぁぁあんっ♡　痛いのと気持ちいいの…体の中に広がってく…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubikami+=1"  name="H_tikubikami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubikami2

[tb_start_text mode=1 ]
[舜]「すーっ…はーっ…あ～、汗くっさ…乳首噛みつかれて余計汗かいてない？」[p]
凪「んんっ…♡　そんなことないってば…♡　あっ…そんなきつく噛まないで♡」[p]
凪「乳首、とれちゃう♡　ん、シャワー浴びてなかったのは、謝るからっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubikami+=1"  name="H_tikubikami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubikami3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「ひゃっ…あぁっ…乳首、痛いよっ♡　コリコリ噛みついちゃやだぁ」　[p]
[舜]「こんなに乳首ピンって立たせてるくせに。恥ずかしくないの？」[p]
凪「恥ずかしい…敏感だから、触られたらおっきくなっちゃうのっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubikami=0"  name="H_tikubikami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubikami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんっ♡　あぁぁっ♡　おっぱい痺れちゃう♡　これ以上噛んじゃだめ♡」[p]
凪「ふーっ…んんっ…こ、腰動いちゃう…あぁ、気持ちいいのが広がって…」[p]
凪「頭の中までビリビリって痺れちゃうの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「きゃっ…おっぱい赤くなっちゃうよ…[舜]ちゃんの手のあとついちゃう…♡」[p]
[舜]「お風呂に入ってなかったお仕置きだから」[p]
凪「あっ…んんっ、そっかぁ…♡　じゃあ叩かれてもしょうがないよね…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_supankingu2

[tb_start_text mode=1 ]
凪「んぅっ…んっ♡　おっぱい叩くたびっ、すっごい音出てる…♡」[p]
凪「ごめんなさいっ…ごめんなさいっ…♡　シャワー浴びてなくてごめんなさいっ…」[p]
[舜]「そんな甘い声で謝られても、何も伝わってこないけど？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　おっぱい、叩かれて赤くなっちゃったよぉ…」[p]
[舜]「叩いてくださいってポーズしてるくせに」[p]
凪「んっ…そういうわけじゃ…ひぅっ…あぁぁっ♡　あっ♡　許してください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁぁっ♡　はぁ、はっ…叩かれてるだけ、なのに…熱くなってきちゃった♡」[p]
凪「おっぱいもヒリヒリして…お腹の奥まで痺れてきちゃったの♡」[p]
凪「は～っ…は～っ♡　私…叩かれて興奮しちゃってるみたいなの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ま、待って…そこはだめぇっ…♡　いっぱい汗かいたしっ…トイレも行ったのに…」[p]
凪「んんっ…お、奥まで舐めないで…口、離して。汚いよぉ♡」[p]
凪「ひうぅぅっ♡　あっ、あっ…♡　お、奥まで舌…入ってる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_tituname2

[tb_start_text mode=1 ]
[舜]「ヤッバ…臭い…蒸れすぎだろ。むわって熱気まで伝わってくんだけど」[p]
凪「もう、やだぁ…ストッキング履いて１日働いてたから…んっ。あぁぁっ♡　奥舐めないで♡」[p]
凪「ん、くぅっ…あぁぁっ、舌出し入れ…♡　それだめっ♡　気持ちいいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_tituname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あっ…やっ…深いところまで舌、届いてるっ♡　あぁぁ、全部舐められてる♡」[p]
[舜]「汚れまで全部舐めとってもらう気だったんじゃないの？」[p]
凪「そんなことないってばぁ♡　舐めなくていいよ…[舜]ちゃんの口が汚れちゃうっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname=0"  name="H_tituname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んぅぅっ♡　お、奥まで舌…入って…ジュポジュポだめぇ…腰、浮いちゃうっ♡」[p]
[舜]「汚いおまんこ舐めさせて、謝罪はないの？」[p]
凪「んんっ♡　あぁ…き、汚いところ舐めさせちゃって…ごめんなさい…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_2_Gsupo1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「腰逃げんなよ…！　ねっとりした汚いおまんこかき回してやってんだから…！」[p]
凪「はぁ、あっ、あぁ♡　ごめんなさい、逃げないようにしますっ…♡」[p]
凪「んぅぅっ♡　こ、腰浮いちゃうっ♡　奥の刺激強すぎて…んんんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Gsupo+=1"  name="H_Gsupo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_Gsupo2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「指におまんこの臭い匂い沁みつきそうなんだけど？」[p]
凪「あっ♡　あぁっ♡　ごめんなさい…♡　その時はっ、[舜]ちゃんの指舐めとりますから♡」[p]
凪「責任を持って、綺麗にしますっ♡　だから許してくださ…んあぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Gsupo+=1"  name="H_Gsupo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_Gsupo3

[tb_start_text mode=1 ]
[舜]「すっごい濡れてんじゃん…これで少しは綺麗になんじゃないの？」[p]
凪「んんっ、そう、かも…綺麗にしてくれてありがとうございますっ…♡」[p]
凪「はぁっ♡　あんっ♡　んくぅぅっ、１番奥、届いちゃってるっ♡　深いぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Gsupo=0"  name="H_Gsupo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_Gsupo_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひっぐぅぅっ♡　弱いところばっかり…撫でないでっ♡」[p]
[舜]「あーあー、ぐしょ濡れ。このまましたら余計蒸れそう」[p]
凪「はぁっ、はぁ♡　終わったら…すぐシャワー浴びます…綺麗にしますっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「あーあー、また汗かいてんじゃん。こっちまでベタベタになりそうなんだけど」[p]
凪「ごめんなさい…体熱くてっ…んんっ…汗、止まんないの♡」[p]
凪「はぁ、あっ…お、奥…届いてるっ♡　深いよぉっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「次はしっかりシャワー浴びて待ってますって言える？」[p]
凪「はいっ♡　次はちゃんと…シャワー浴びて[舜]ちゃんのこと待ってます…♡」[p]
凪「綺麗にして…いい匂いの体で…[舜]ちゃんとエッチします、から…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
凪「こ、この格好恥ずかしい…全部見えちゃうぅ♡」[p]
[舜]「動けなくなってんの嫌なの？　もう突いてあげないよ？」[p]
凪「や、やだ…突いてっ♡　やめないで…このままでいいからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　すごいとこっ…届いちゃったぁ♡　お、お腹の奥…震えてるっ♡」[p]
凪「そ、そこ…奥のとこ…[舜]ちゃんの先っぽ届いちゃってる…」[p]
凪「中まで全部調べられちゃう…ぐちゃぐちゃにかき回されちゃう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「あ～、汗の匂いとメスの匂いで、ひっどい匂いになってるよ？」[p]
凪「うぅぅっ…ごめんなさいっ…♡　はぁ、あっ…体の奥から熱くて…汗止まらないのっ♡」[p]
凪「んぅぅっ♡　臭くてごめんなさい…嫌いにならないで…あっ、んんっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「はぁ、あっ…んんっ！　壊れちゃう…激しっ…奥まで届いてる…！」[p]
[舜]「洗ってないおまんこ広げられて、恥ずかしくないんだ？」[p]
凪「は、恥ずかしいけど…だって、シャワー浴びる時間もなかったからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「お礼は？　こんな汚い体で抱いてもらって嬉しいでしょ？」[p]
凪「嬉しい、ですっ♡　シャワーも浴びてないのにエッチしてくれてありがとうございますっ♡」[p]
凪「奥までドチュドチュされて…嬉しいですっ♡　気持ちいですぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あ゛あ゛あ゛っ♡　お、奥ぅぅ…ダメなトコ…押しつぶされちゃってりゅっ♡」[p]
凪「んあぁぁっ♡　イッちゃう…気持ちよくなっちゃうからぁっ♡」[p]
[舜]「腰浮くほど気持ちいいんだ？　ほら、足閉じんなよ…！」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_kaiwa1

[tb_start_text mode=1 ]
凪「あ、あんまり前に出たら…外から見えちゃうから…」[p]
[舜]「だから？　俺に察してほしいなんて言わないよね？　ハッキリ言って？」[p]
凪「ご、ごめんなさい…余計なことを言って。[舜]ちゃんの言う通りにします…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa2

[tb_start_text mode=1 ]
[舜]「ん～？　なんでキョロキョロしてんの？」[p]
凪「だ、誰かに見られてたらどうしようと思って…周りを見ていました…」[p]
凪「し、下着姿でベランダに出たことなんかないから…ドキドキしてます」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa3

[tb_start_text mode=1 ]
[舜]「もし誰かに見つかったらどうやっていいわけすんの？」[p]
凪「ど、どうしよう…見つかったら…何も言えない、かも…」[p]
凪「で、でも暗いから…昼間よりは見えづらいだろうし…大丈夫だと思います」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅっ…んんっ…！　くっ…ふーっ…ふーっ…」[p]
[舜]「へぇ、声出さないように我慢してるんだ？　誰もいないのに」[p]
凪「夜はベランダでタバコ吸ってる人もいるので…気づかれないようにって思って…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_supankingu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひゃうぅぅっ！　い、痛…お、音も響いちゃってる…」[p]
[舜]「やめてほしいって遠回しに言ってんの？　察してほしいって言い方好きじゃないんだけど」[p]
凪「ご、ごめんなさい…！　そういうつもりじゃ…[舜]ちゃんの好きにしてください」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu3

[tb_start_text mode=1 ]
凪「ひあぁぁっ！　あっ♡　お尻…ジンジンしてきちゃいました…」[p]
[舜]「でも声、甘くなってきてんじゃん…興奮してんのバレバレだよ」[p]
凪「はぁ、あっ、ごめんなさい…♡　んんっ…♡　肌、叩かれる音…響いてる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　も、許してくださいっ♡　叩かれるたびっ、すごい音っ…出てる、ので…♡」[p]
[舜]「あ～、誰か顔出すかもな？　でも見られたらって思うと興奮するんでしょ」[p]
凪「んんっ♡　わかんない、ですっ♡　恥ずかしいのと熱いので…ぐちゃぐちゃになってる」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んぅぅぅっ♡　こ、声…出ちゃう…♡」[p]
[舜]「お隣さんに気づかれてもいいなら、好きにに声出しちゃえば？」[p]
凪「ダメです…明日からどんな顔で挨拶すればいいのか…わかんなくなっちゃいます…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi2

[tb_start_text mode=1 ]
凪「はぁ、あぁっ♡　おっぱいばっかり…♡　切ない気持ちになっちゃいますっ…」[p]
[舜]「切ないじゃわかんないなぁ。気持ちいいの？　はっきりしないと」[p]
凪「は、はい…気持ちいいです…♡　ん、くぅぅっ…♡　わかりづらくてごめんなさい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「や、もう…本当にこれ以上は…ダメです。誰かに見られちゃう…」[p]
[舜]「へぇ、ホントにやめていいんだ？　おっぱい揉みくちゃにされたいんじゃないの？」[p]
凪「んんっ♡　やめないでほしいです…[舜]ちゃんに触ってもらえるの、嬉しいからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んはぁぁっ♡　あうぅっ♡　おっぱいだけで…おまんこまでムズムズしてきちゃった…」[p]
[舜]「ベランダなのに？　セックスしたくて疼いてるんだ？」[p]
凪「あっ…誰に見られるかわからないのに、私なんてこと…ごめんなさいっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「乳首の周り…カリカリされるの…んんぅっ、変な感じ…んっ…ふぅ、すっごくもどかしくて…」[p]
[舜]「体動かしたら触れないんだけど？」[p]
凪「んっ…くっ♡　ごめんなさいっ…動かないようにします、から♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiijiri2

[tb_start_text mode=1 ]
[舜]「乳首を触ってほしかったんだっけ？　こうやって──」[p]
凪「んぅぅぅっ♡　ふっ♡　ふぅっ♡　焦らされた分…刺激が強くって…」[p]
凪「はぁんっ♡　くっ…んんっ♡　やだ…こ、声、我慢できなくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「乳首ビンビンになってるけど？　ベランダで乳首立てるなんて変態だなぁ」[p]
凪「申し訳ありませんっ…♡　触られて…乳首が反応しちゃって…」[p]
凪「でも…しずめる方法がわからなくって…んんっ♡　乳首膨らんだままになっちゃいますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiijiri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あふぅぅっ♡　あぁっ♡　先っぽ擦れて…ジンジンしちゃってますっ♡」[p]
[舜]「先っぽだけじゃわかんないなぁ？　どこ触られて気持ちいいんだっけ？」[p]
凪「乳首、ですっ♡　ぷっくり膨らんだ勃起乳首が気持ちいいんですっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「あっ♡　んっ♡　んんっ…♡　かき回されると…こ、声が…んんっ♡」[p]
[舜]「触られてるの見えないから、黙ってればバレないかもよ？」[p]
凪「んっ、くぅぅっ♡　そんなこと言われても…勝手に…声出ちゃいますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman2

[tb_start_text mode=1 ]
凪「んんっ♡　あっ、あぁぁぁっ♡　そこ…触られたら…こ、声が…♡」[p]
[舜]「声堪えなくていいの？　昔からの知り合いに、エロい姿見てもらえば？　噂になるかもなぁ？」[p]
凪「んぅぅぅっ♡　が、我慢、します…声出さないようにしますから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ…くっ…♡　はぁ～っ♡　はぁ～っ♡　お、奥…指当たって…んんっ♡」[p]
[舜]「腰揺らして気持ちいいの逃がしてんだ？　ズルいな…グチャグチャにしてやる」[p]
凪「ひぅぅっ♡　逃がせない…♡　お腹の奥に…ジンジンきちゃってますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「はぁぁっ♡　あうぅっ♡　こ、腰動いちゃう…♡　んぅっ、くうぅ♡」[p]
[舜]「下着だけでエロい声出してる女がいるって、噂になるんじゃないか？」[p]
凪「や、だっ…♡　団地の中、歩けなくなっちゃいます…♡　恥ずかしい…」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ヤバ、お尻の穴ヒクヒクしてんじゃん…ココも触ってほしいんだ？」[p]
凪「お尻はだめっ…恥ずかしいです。そんなとこ見ないでください…♡」[p]
凪「ん、くぅぅっ♡　あぁ、撫でられるの変な感じ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_anaruijiri2

[tb_start_text mode=1 ]
凪「あっ…！　やっ…指…入っちゃ…んんっ…苦し…♡　ぬるんって指入ってる…♡」[p]
[舜]「あ～キッツ…この中に挿れたらめっちゃ出そう…」[p]
凪「んぅぅっ♡　そんなっ…おちんちんなんか挿れたら…お尻壊れちゃいます♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_anaruijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あれ？　ほぐれてきたんじゃないか？　こんなとこでうしろの穴触られて興奮してる？」[p]
凪「んんぅっ♡　くぅっ…♡　違っ…お尻の穴…勝手にヒクヒクしてるだけです…♡」[p]
凪「んんっ♡　でもっ…だんだんお尻熱くなってきちゃった…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あうぅっ♡　お尻っ…♡　馬鹿になっちゃう…♡　指深く挿れないでくださいっ♡」[p]
凪「ひっぐ…♡　あっ…あぁぁっ♡　かき回されたら…だめ…お尻ユルユルになっちゃいますっ♡」[p]
[舜]「もう少し慣らしたら、アナルセックスもできちゃいそうだなぁ」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_denma1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ♡　あっ…振動…すごいっ♡　いきなりイッちゃうぅ♡」[p]
[舜]「声響いてんなぁ？　電マの音よりデカいんだけど？」[p]
凪「くぅぅっ…んんっ♡　だ、だって…刺激が強くて…声、勝手に出ちゃうんですっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_denma+=1"  name="H_denma"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_denma2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「子供の頃もオモチャで遊んだけど。大人になってからのオモチャ遊びも楽しいでしょ？」[p]
凪「楽しいですっ♡　それに…すっごく気持ちよくて…んっ、くぅぅっ♡」[p]
凪「もっと遊んでほしくなっちゃいます…もっと気持ちいいこと、教えてほしくなっちゃいます♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_denma+=1"  name="H_denma"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_denma3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「今度は公園で電マ遊びする？　こうやってグリグリ押し付けて──」[p]
凪「ひぅぅぅっ♡　ああぁっ♡　公園はだめ…声、出ちゃいます…♡」[p]
凪「ふらふらして…わかんなくなって…くぅっ♡　あっ、あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_denma=0"  name="H_denma"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_denma_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んおおおっ♡　そこっ…クリ…ギュって押しつぶされるの…だめ、ですっ♡」[p]
凪「気持ちいい…あっ、ああぁっ♡　刺激逃せなくって…頭の中バチバチ火花散ってるっ♡」[p]
凪「全部どうでもよくなっちゃうぅぅっ♡　だめ、だめだめだめっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「んっ…♡　声…出ちゃうっ…♡　はぁ、あっ…こんなところで…エッチなんて…ダメなのに」[p]
[舜]「でも体は悦んでるみたいだけど？」[p]
凪「ひぐぅぅっ♡　あっ♡　そんな、こと…♡　んんんっ♡　お、奥疼いちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「誰かと目が合ったら、堂々と挨拶すればいい。できるだろ？　ほら練習」[p]
凪「んっ…ふっ…はぁ、あっ…こ、こんばんは…こ、こんな格好ですみません…」[p]
凪「ほ、星がっ…星が綺麗だったので…見てたんですっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「何してるんですかって聞かれたら、正直に答えられんの？」[p]
凪「で、できない…セックスしてましたなんて…い、言えないです…♡」[p]
凪「恥ずかしくて…う、動けなくなっちゃう…んんっ♡　誰にも見られたくない、ですっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんんっ♡　くぅぅっ…♡　はっ…はぁ、見られたらどうしようって思ってるのに…」[p]
凪「考えたら…よ、余計体が熱くなってっ…♡　変になっちゃいそう、なんですっ♡」[p]
凪「私…おかしくなってるの、かも…♡　んっ…奥、気持ちよくなってる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「あっ♡　ん゛ん゛っ♡　だ、誰かに見られたら…！　噂になってしまいますっ♡」[p]
[舜]「想像して興奮してるくせに…！　また締まった」[p]
凪「んうぅぅっ♡　はっ♡　はぁっ…♡　や、だめ…声出ちゃう…目立っちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「ひっぐ…♡　激し…んぅぅっ…つかまって立ってるの、やっとで…」[p]
[舜]「しっかり掴まってろ。ふらついたら余計に目立つぞ？」[p]
凪「んっ…くぅぅっ♡　はいっ…踏ん張りますっ♡　頑張って…立ってます♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「んっ…くっ…はっ、はぁ、あっ…奥まで届いてる…あぁっ♡　先っぽ当たってます♡」[p]
凪「くぅぅ、誰かに見つかっちゃうかもしれないし…ダメ、なのに…」[p]
凪「ドキドキして余計に気持ちよくなっちゃってますっ♡　気持ちいいの止まんない♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んぅぅぅっ♡　奥っ、押しつぶされてるっ…♡　深いところ当たってる…♡」[p]
凪「はっ…はっ…こんなのっ…強制的に…赤ちゃん作る準備始めちゃう…♡」[p]
凪「んっくうぅぅっ♡　あぁぁ♡　体震えてるの…止まんないぃっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「ここでエロいことしたら、声も響くし見られちゃうかもなぁ？」[p]
凪「恥ずかし…やだ…♡　ふーっ…ふーっ…団地の人、みんな顔見知りなのに…♡」[p]
[舜]「じゃあ声我慢しなくちゃなぁ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「ベランダでセックスしたことくらいあるんじゃないの？」[p]
凪「な、ないです…そんなこと…♡　[舜]ちゃんだから…しようって思っただけで…」[p]
凪「普通だったら断ってます♡　[舜]ちゃんだけなの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa3

[tb_start_text mode=1 ]
凪「下着姿でベランダに出るなんて初めてです…誰も見てないですか？」[p]
[舜]「さぁ？　ベランダでタバコ吸ってる男もいるんじゃないの？　見せてやれば？」[p]
凪「恥ずかし…♡　で、でも…これからもっと恥ずかしい姿見られちゃうかもしれないんですよね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひあぁぁっ♡　痛いですっ…そんなに強く叩かれたらお尻腫れちゃう…！」[p]
[舜]「でも腰はヘコヘコ動いてるけど？」[p]
凪「あっ…や、これは…変な感じする、から…動いちゃってるだけですっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぁぁっ♡　お、音…すごい音っ…出ちゃってますっ♡」[p]
[舜]「誰かが気づきそうだなぁ？　どうする？　ＤＶじゃないかって言われたら」[p]
凪「違うって言いますっ♡　[舜]ちゃんはただ私に気持ちいいことしてくれてるだけですって♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ほらっ！　叩かれるたびにお礼言うんだよ！」[p]
凪「んんっ♡　ありがとうございますっ♡　ありがとうございます♡　大好きですっ♡」[p]
凪「[舜]ちゃんの手のあと…お尻についちゃう♡　真っ赤になっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぐぅぅぅっ♡　んぅぅっ♡　あぁ、お尻、ジンジンしてるぅっ♡」[p]
[舜]「ヤバ…叩いてるだけなのに、おまんこトロットロになって太ももまで垂れてんじゃん」[p]
凪「はぁっ♡　はぁっ♡　変態でごめんなさい…♡　叩かれて…興奮しちゃいましたぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「なんで俺が好きじゃない服着てたの？　脱がせてもらうため？」[p]
凪「んんっ♡　申し訳ありませんっ♡　そこまで嫌だって…わかってなくて…♡」[p]
凪「体に教え込んでください♡　おっぱい揉みくちゃにして…わからせてください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi2

[tb_start_text mode=1 ]
[舜]「明日から、どんな顔してここで洗濯物干すんだろうなぁ？」[p]
凪「[舜]ちゃんにおっぱい揉みしだかれてるの思い出して…おまんこきゅんってしちゃいます♡」[p]
凪「ドキドキして…洗濯物干せなくなっちゃったらどうしよう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おっぱいいじられるの好きなくせに…正直に言わないと！」[p]
凪「は、はひっ♡　おっぱい揉みくちゃにされるの…大好きです…♡」[p]
凪「[舜]ちゃんのおっきな手で包まれで、揉みしだかれると…お腹の奥きゅ～んって響いちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　体が覚えちゃう…おっぱいもみくちゃにされると気持ちいいって…」[p]
凪「ベランダに立つたびに思い出して…興奮しちゃいます♡」[p]
凪「変態でごめんなさい…♡　[舜]ちゃんのおかげで気持ちいいの知っちゃいましたぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ん、くぅっ…♡　はっ…乳首コリコリ…気持ちいいっ♡」[p]
[舜]「大声でエロいこと言ってんじゃん…下品すぎだと思わない？」[p]
凪「んんっ♡　ごめんなさい…エッチなこと、言わないようにします…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubitumami2

[tb_start_text mode=1 ]
[舜]「エロいこと言わないでいられんの？　今何してる？」[p]
凪「くっ…んんっ…お、おっぱいの先っぽ…摘まんでコリコリって…されてます♡」[p]
凪「はぁ、あっ…余計にエッチになっちゃう…♡　ごめんなさいっ♡　ごめんなさいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「んぐぅぅっ♡　そんな、摘まんだらっ…♡　乳首とれちゃうぅ♡　馬鹿になっちゃう♡」[p]
[舜]「あーあ、下品なことばっかり言って。団地の子供に悪影響じゃないの？」[p]
凪「んんっ♡　誰にも聞かれないように気を付けますからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あ゛あ゛あ゛っ♡　今っ…乳首からビリビリって気持ちいいのが走って…」[p]
凪「腰まで動いちゃう…♡　はしたなくて…申し訳ありませんっ♡」[p]
凪「あぁ…腰ヘコヘコ止まんないっ♡　だめなのに動いちゃいます…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「ひうぅっ♡　あぁっ♡　出ちゃう…止まんない♡」[p]
[舜]「ベランダで潮吹きまでするんだ？　恥ずかしいなぁ」[p]
凪「ごめんなさいっ…♡　勝手に出ちゃって…止まらなくって…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「おもらししてごめんなさいって謝んないと。子供だってベランダでもらさないよ？」[p]
凪「うぅぅっ…おもらししてごめんなさいっ♡　でもすっごく気持ちいいんです♡」[p]
凪「お腹の奥からジンジン痺れて…気持ちいいの続いてますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「小さい頃、ベランダでも遊んだよなぁ？　危ないからダメって言われてたのに隠れて出てさ」[p]
凪「んんぅっ♡　はぁ、はっ…[舜]ちゃんが景色見ようって…言ってくれたのでっ…♡」[p]
[舜]「暗いけど、今も景色見えるんじゃない？　潮吹きしながら外見たら？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひゃぅぅっ♡　あぁぁっ♡　深いトコ、ずっと当たって…壊れりゅ…♡」[p]
凪「んぐぅぅっ♡　潮吹き止まんないっ♡　はっ、あぁぁぁっ♡　も、もう出ないのにっ♡」[p]
凪「体の中、カラカラに乾いちゃいますっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_2_anarubizu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～、おまんこだけじゃなくてお尻までズッポリ咥えれるようになったのか」[p]
凪「んひぃぃっ♡　体の中っ…擦られてる♡　んぅぅっ♡　全部引きずり出されちゃう♡」[p]
凪「はぁ、はっ…これ以上はお尻壊れちゃいますっ♡　くぅぅっ♡　変になっちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_anarubizu2

[tb_start_text mode=1 ]
[舜]「お尻刺激されて漏らすなよ？　匂いで騒ぎになりたくなきゃな」[p]
凪「は、はひっ♡　我慢しますっ♡　[舜]ちゃんの前で…粗相は絶対にしませんっ♡」[p]
凪「んぅぅぅっ♡　あはぁ♡　お尻もお腹も力入って…おかしくなりゅ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_anarubizu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「お尻の穴、ヒクヒクしてるけど？　チンポも咥えられそうなんじゃないの？」[p]
凪「んっ♡　くぅぅっ♡　これ以上太いのは入らない、ですっ…♡」[p]
凪「おちんちん挿れたら…お尻の穴壊れて…開きっぱなしになっちゃいますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu=0"  name="H_anarubizu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_anarubizu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「あ～、すっごい締め付け…ここも従順になったじゃん」[p]
凪「んっ♡　はぁ、あっ♡　はいっ…[舜]ちゃんの言うことならなんでも聞きます♡」[p]
凪「おっぱいもおまんこもお尻も…私の全部…[舜]ちゃんのモノだからっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_2_baibu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ここから公園見えるじゃん。あそこにいんのカップルかなぁ？　こっち気づいてるかも」[p]
凪「んんっ…くっ♡　はぁ、んんんっ…何してるのかまで…バレてたらどうしましょう」[p]
凪「セックスしてるんだってバレたら…もう公園の周り歩けなくなっちゃいますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_baibu2

[tb_start_text mode=1 ]
凪「んんっ…くっ…深いトコ…当たってるっ♡　お゛っ♡　お゛お゛っ♡」[p]
凪「それ…おまんこ壊れちゃう…立っていられなくなっちゃいます…♡」[p]
凪「んぐぅぅぅっ♡　はひっ、あぁぁっ♡　おまんこおかしくなっちゃう…膝がくがくしちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_baibu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「もう声も出ちゃってるんだし…おまんこ気持ちいいですって大声で言ったら？」[p]
凪「は、はひっ♡　バイブ奥まで挿れられて…おまんこ気持ちいいですぅっ♡」[p]
凪「あっ♡　あっ♡　あっ♡　も、腰抜けちゃいそうです…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu=0"  name="H_baibu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_baibu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んお゛お゛お゛っ♡　んぅぅぅっ♡　お、奥…当たってりゅ…」[p]
凪「全部震えて…気持ちよすぎちゃいます…声、止められなくなっちゃうぅ♡」[p]
[舜]「もう充分声出してんじゃん？　さっきからエロい声響いてるし…！」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「外でセックス、開放感にやみつきになっちゃえば？」[p]
凪「んっ…はぁっ、あっ、あぁっ♡　ん、気持ちいいの、お腹のそこからこみあげてきてます♡」[p]
凪「これが…興奮してるってこと…なんですね…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「見られちゃうかもしれないってドキドキしてるのに…♡　余計に気持ちよくなっちゃうなんて♡」[p]
凪「私、どんどん変態になってるのかも…[舜]ちゃん、私のこと嫌いにならないでくださいっ♡」[p]
凪「[舜]ちゃんの言う通りに動く、からっ…♡　もう[舜]ちゃんしかいないんですっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「声出てる…もう全部どうでもよくなってきたんじゃないの？」[p]
凪「んんっ……そんな、こと…ないですっ♡　でも気持ちいいだけで頭がいっぱいになって…」[p]
凪「他のこと気にする余裕がなくなってきちゃいましたぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁぁっ♡　そこっ…そこすごい…弱いトコ…擦れてるっ♡」[p]
[舜]「声響いてるけど？　あーあ、今ので何人か顔出すかもなぁ？」[p]
凪「んっぐ…♡　や、ごめんなさい…私、おっきい声、で出ちゃって…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「んひっ♡　はっ♡　はぁっ♡　あぁ♡　激し…立っていられないっ♡」[p]
凪「おぉっ♡　だめ…声出る…声でちゃうぅ♡　んんぅっ♡　くぅぅっ♡」[p]
凪「はぁ、はっ…奥まで当たって…ゾリゾリって擦れちゃってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「我慢してないで、エロい声聞かせてやれば？　子供はもう寝てる時間だろ」[p]
凪「んんっ…♡　はっ♡　はっ♡　はい…♡　[舜]ちゃんがそう言うなら…声、出します♡」[p]
凪「気持ちいい声っ…♡　ご近所に聞いてもらえるように…ん゛あ゛あ゛っ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「周りに教えてやってよ。セックスが大好きな変態看護師に成長しましたって」[p]
凪「はいっ♡　私は…[舜]ちゃんのおちんちんが大好きな変態看護師です…♡」[p]
凪「仕事の終わりに…♡　ベランダでセックスして…気持ちよくなってますぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぐぅぅぅっ♡　お゛お゛っ♡　んぐぅぅっ♡　腰動いちゃうぅ♡」[p]
[舜]「ガクガク震えっぱなしだな…勝手に気持ちよくなってんの？」[p]
凪「勝手に気持ちよくなってごめんなさいっ♡　奥…痺れたみたいになってますぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_kaiwa1

[tb_start_text mode=1 ]
[舜]「ちゃんとご挨拶から始めないと。言える？」[p]
凪「はい…[舜]ちゃんが気持ちよくなれるように…私の体使ってください♡」[p]
凪「私は…[舜]ちゃんのものだから…好きにしてください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_kaiwa2

[tb_start_text mode=1 ]
凪「[舜]ちゃんがこうしたいって思ったら…私も叶えたいです…」[p]
[舜]「俺の性処理係になれって言われてもできるの？」[p]
凪「はい…！　[舜]ちゃんのことを気持ちよくします…喜んでもらえるなら♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_kaiwa3

[tb_start_text mode=1 ]
凪「[舜]ちゃんからプレゼントしてもらったものを着られて幸せです…♡」[p]
凪「似合っていますか…？　あ、似合うって思ったから贈ってくれたんですよね…♡」[p]
凪「今日１日身に着けて、ずっとムズムズしていました…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R3_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「ひあっ♡　あぁっ♡　おっぱい赤くなっちゃう…♡　これもしつけなんですね…♡」[p]
凪「[舜]ちゃんに気に入っていただけるように…頑張りますっ♡」[p]
凪「いっぱい叩いて、教え込んでください…♡　」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_supankingu2

[tb_start_text mode=1 ]
凪「あっ…♡　叩かれてるのに…乳首反応しちゃう…♡　ふーっ、ふーっ…だめなのにっ♡」[p]
凪「[舜]ちゃん…乳首ぷっくりさせちゃってごめんなさい…」[p]
凪「叩かれて気持ちよくなっちゃったみたいです…変態で申し訳ありませんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ひゃうぅっ♡　あっ、んんっ…♡　[舜]ちゃんにお仕置きしてもらえて嬉しいです…♡」[p]
凪「ありがとうございます…♡　この格好で叩かれると…幸せでうっとりしちゃって…」[p]
凪「あっ、それじゃお仕置きの意味ないですよね…ごめんなさい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あうぅぅっ♡　叩かれた瞬間、熱い感覚がじんわり広がってく…♡」[p]
凪「はーっ♡　はーっ♡　どうしよ…気持ちよくて癖になっちゃいますっ…」[p]
凪「私…エッチなことしか考えられなくなってる…はしたない子になっちゃいました♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…あぁぁ♡　感触楽しむみたいに触られるの…恥ずかし…乳首、反応しちゃう…♡」[p]
[舜]「もうとっくに乳首ビンビンに立ち上がってんだろ」[p]
凪「おっぱい全部敏感になって…気持ちよくなっちゃいます♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_munemomi2

[tb_start_text mode=1 ]
凪「ひあぁぁっ♡　おっぱいばっかり…揉まれちゃってる…♡」[p]
凪「見えなくても、感覚だけで[舜]ちゃんが触ってくれてるってわかります♡」[p]
凪「体全部が…[舜]ちゃんの感覚を覚えてるんです♡　どうやって触るのかも、撫でるのかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んっ…はぁ、あっ…[舜]ちゃんの指の感触…おっぱいが覚えてる♡」[p]
凪「ああ…思い出すだけでおまんこジュンって熱くなっちゃいそうです…♡」[p]
凪「ふーっ…ふーっ…私、どんどんいやらしい子になってる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あうぅっ♡　おっぱい気持ちいいっ♡　今日１日、ずっとこうやって触ってほしかったんです♡」[p]
[舜]「ずっとムラムラしながら働いてたんだ？」[p]
凪「はいっ…♡　早く[舜]ちゃんに触ってほしいって思いながら…そればっかり考えてましたぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「んぅぅっ♡　あぁぁっ♡　ち、乳首、カリカリ…好きですっ…♡」[p]
[舜]「本当に乳首いじられるの好きだなぁ？」[p]
凪「ん、くぅぅっ♡　はいっ♡　あぁ…焦らすみたいに触られて、熱くなってます…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_tikubiijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んあぁぁっ♡　そんなっ、おもいっきり弾かれたらっ…♡　頭、しびれちゃう♡」[p]
[舜]「乳首さわられただけで濡れてるんじゃないの？　正直に教えないとな？」[p]
凪「はぁ、はっ…ぬ、濡れてると思います…♡　乳首、気持ちいいからっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_tikubiijiri3

[tb_start_text mode=1 ]
[舜]「どうなってるのか、伝えないと…！」[p]
凪「あっ…あぁっ♡　どんどん敏感になってて…乳首気持ちいいだけしか考えられなくなってます♡」[p]
凪「頭がぼーっとして…もっと触ってほしいって…それしか考えられなくなってますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あっ♡　んんっ♡　電流っ、ビリビリって…」[p]
凪「乳首だけなのにっ…イッちゃう…気持ちよくなっちゃいますっ♡」[p]
凪「はーっ…♡　腰も勝手に動いちゃって…止まらない、ですっ♡　」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_kosihuri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「自己紹介してもらおうかな。腰を振りながらどれだけスケベか教えてくれる？」[p]
凪「はぁっ♡　はいっ♡　体も心も[舜]ちゃんのもの、です…♡」[p]
凪「[舜]ちゃんに満足していただけるように…私の体、好きに使ってくださいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kosihuri+=1"  name="H_kosihuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kosihuri2

[tb_start_text mode=1 ]
凪「はぁっ、はぁ、んっ…どう、ですか？　上手にできていますかっ？」[p]
[舜]「もっとおまんこ見えるように腰振ってくれなきゃなぁ」[p]
凪「は、はいっ♡　見てください…♡　[舜]ちゃんに使ってもらうおまんこです♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kosihuri+=1"  name="H_kosihuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kosihuri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「この体は何のためにあるんだっけ？」[p]
凪「[舜]ちゃんに気持ちよくなってもらうために…ご奉仕するためにありますっ♡」[p]
凪「私の中に…[舜]ちゃんの精液をたっぷり出してもらう準備をします…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kosihuri=0"  name="H_kosihuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kosihuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「くっ…んんんっ♡　ふぅっ、ふっ…お、お腹の奥…きゅ～んって…♡」[p]
[舜]「腰振っただけで興奮したんだ？　変態だね」[p]
凪「はいっ…♡　変態です…[舜]ちゃんのおちんちん締め付けたくて…ウズウズしてますっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_kiss1

[tb_start_text mode=1 ]
凪「ちゅ、ちゅるるるるっ、ちゅ、んんっ…息、できな…」[p]
[舜]「余計なこと喋ってないで、舌動かせるんじゃないの？」[p]
凪「は、はいっ♡　じゅぷ、じゅぽじゅぽ、じゅるるるっ♡　んんっ…舌とろけちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kiss2

[tb_start_text mode=1 ]
凪「ちゅ、ちゅぷ、じゅるるる♡　んんっ♡　キスだけで…気持ちよくなってますっ♡」[p]
[舜]「見えない分、口の中まで敏感になってるんだ？　舌絡ませて」[p]
凪「は、はひっ♡　じゅるる、じゅぷ、ちゅくちゅく♡　んっ、ねっとりキス、気持ちいいです♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kiss3

[tb_start_text mode=1 ]
[舜]「んっ…キス、前よりうまくなってきたじゃん…」[p]
凪「じゅるるるっ、んんっ♡　褒めてもらえて嬉しいですっ…♡　んん、ちゅっちゅ♡」[p]
凪「もっと喜んでもらえるように…セックスも上手になりますからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ちゅるるるるっ♡　んふぅぅっ…！　んんっ…ふーっ、ふーっ…キスだけなのに…」[p]
凪「体…バチバチって気持ちいいの走ってます…♡　ちゅくちゅく、じゅるるるっ」[p]
凪「んんっ…ちゅ、ちゅぷ、唇離したくなくなっちゃいます…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_kubisime1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「う、あぁぁ…苦し…あ、うぅ…息、できな…」[p]
[舜]「目隠しされたまま、首絞められて、怖くてしょうがないんじゃないの？」[p]
凪「大丈夫、です…♡　[舜]ちゃんにしてもらえてること、だからっ…♡　嬉しいです♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kubisime+=1"  name="H_kubisime"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kubisime2

[tb_start_text mode=1 ]
凪「はっ♡　はっ♡　はっ♡　あぁ…頭の中…ぼ、ぼんやりして…」[p]
[舜]「舌まで出して犬みたいだなぁ？　苦し？」[p]
凪「く、苦しい、です…んぐ、ぐぅ…でも私は[舜]ちゃんのモノだから…好きにしてください…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kubisime+=1"  name="H_kubisime"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kubisime3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あーあー、ヨダレまで出てる。もうやめてほしいならお願いしてごらん？」[p]
凪「う゛っ、あ゛あ゛…許してください…お、お願いします…んぐぅぅ♡」[p]
凪「も…だめ…意識…なくなって…あうぅぅ…ぐるじ…んぐぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kubisime=0"  name="H_kubisime"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kubisime_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んぐぅぅっ…♡　死んじゃうのに…♡　お腹の奥…熱くなって…んぅぅぅっ♡」[p]
[舜]「気持ちよさそうな顔しちゃって。じゃ、ここまでだな」[p]
凪「げほっ！　げほっ！　げほっ！　はーっ、はーっ、はーっ…ありがとうございます…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「あっ…あぁっ…すっごくおっきくなってる…♡　私で興奮してくれてるんですか…？」[p]
凪「嬉しいです♡　もっと…[舜]ちゃんのおちんちんにご奉仕したい…♡」[p]
凪「いっぱい気持ちよくなってください…んんっ♡　たくさん射精してください…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「ん？　俺のチンポ挿れてもらえて光栄ってこと？」[p]
凪「はいっ…光栄です…♡　[舜]ちゃんのおちんちんを気持ちよくできて嬉しいです♡」[p]
凪「全部私が受け止めますから…好きに使ってください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「俺がめちゃくちゃ興奮してんのわかる？　おまんこで感じ取れるよなぁ？」[p]
凪「はいっ♡　わかります…♡　私で興奮してくれてありがとうございます…♡」[p]
凪「もっと気持ちよくなって…精子注ぎ込んでくださいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひっぐぅぅっ♡　あぁぁっ♡　お、奥…擦れて…腰浮いちゃう♡」[p]
[舜]「こら！　腰引いて逃げんなって…！」[p]
凪「あうぅっ♡　ごめんなさ…好きに突いてくださいっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「んっ…はぁぁっ、あっ♡　見えない分っ…いつもより敏感なので…」[p]
凪「激しくされたらすぐイッちゃいますっ♡　あっ♡　あっ♡　あっ♡　気持ちいいのきちゃうっ♡」[p]
凪「んっ…くぅぅぅっ♡　[舜]ちゃんがイクまで我慢しますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「すっご、締まる…目隠しされて拘束されて余計に興奮してるんだ？」[p]
凪「はい♡　[舜]ちゃんに飼いならされてるんだって思うだけで…お腹の奥きゅぅんってして…」[p]
凪「いつもより気持ちよくなっちゃってますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「あっ♡　あうぅっ♡　あぁっ♡　奥まで届いてるっ…♡　すごいっ♡」[p]
[舜]「気持ちよくなってるだけじゃ、俺を満足させられないけど？」[p]
凪「ごめんなさいっ♡　気持ちよくなってください…私のおまんこでたっぷりしごいてください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　そこっ…弱いのにっ…くぅぅっ…んっ♡　んっ♡　んっ♡」[p]
[舜]「中めちゃくちゃ痙攣してるな…精子搾り取ろうとしてるんだ？」[p]
凪「はいっ♡　[舜]ちゃんの精子…おまんこでゴクゴク飲み干したいですっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_2_kaiwa1

[tb_start_text mode=1 ]
凪「今日、下着もつけてなかったからバレないかドキドキしちゃいました」[p]
[舜]「言った通り、本当にこのまま働いたんだ？」[p]
凪「はい…♡　[舜]ちゃんがそうしなさいって言ってくれたので…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「すっごい息荒くなってるけど？　期待してんの？」[p]
凪「ふーっ…ふーっ…はい…♡　[舜]ちゃんに触ってもらえるのが楽しみで…」[p]
凪「もう体が熱くなってます…おまんこもムズムズしちゃってます…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_2_kaiwa3

[tb_start_text mode=1 ]
凪「今日ずっとエッチな気分で…早く触ってほしいって思ってました」[p]
凪「[舜]ちゃん…いっぱい可愛がってください…私も[舜]ちゃんを気持ちよくしますから」[p]
凪「たくさん教えてもらった分、どんなことでも言われたらしっかり応えられます…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R3_2_supankingu1

[tb_start_text mode=1 ]
[舜]「お尻叩かれたらなんて言うんだっけ！？　言わなきゃわかんない？」[p]
凪「ひぅっ♡　あぁ♡　ありがとうございます♡　ありがとうございます♡　嬉しいです♡」[p]
凪「お尻叩いて…たくさん躾けてくださいっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_2_supankingu2

[tb_start_text mode=1 ]
凪「ひゃうぅぅんっ♡　あぁ…見えなくても…[舜]ちゃんがどんな顔してるのかわかります♡」[p]
凪「息も荒くなって…手も熱くて…すっごく興奮してるんだろうなって」[p]
凪「私で興奮してくれて嬉しいです♡　もっと叩いてください…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_supankingu3

[tb_start_text mode=1 ]
凪「あうぅっ♡　はっ♡　はっ♡　お尻、ジリジリ熱くなってきました…♡」[p]
[舜]「赤く手のあと、くっきりついちゃったなぁ？」[p]
凪「[舜]ちゃんに叩いてもらったあと…残って嬉しいです♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_supankingu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひっぐぅぅっ♡　んんっ…はぁっ♡　お、奥まで…ジリジリって熱くなってる♡」[p]
凪「いっぱい叩いてくれてありがとうございます♡　まだヒリヒリってしてる…」[p]
凪「やっぱり私には[舜]ちゃんしかいません…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ♡　はぁ、はっ…激し…おっぱい揉みくちゃになっちゃいます…♡」[p]
[舜]「柔らか…これは誰のおっぱいだっけ？」[p]
凪「[舜]ちゃんのもの、です♡　このおっぱいも…体も全部[舜]ちゃんだけのものですっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_munemomi2

[tb_start_text mode=1 ]
凪「んんっ…はっ…そんなに揉みしだかれたらおっぱい、形変わっちゃう…♡」[p]
[舜]「俺の手のあと残ったら嬉しいんじゃないの？」[p]
凪「はいっ…♡　[舜]ちゃんに触られたんだって証が残るの…嬉しいです…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「この格好の上に服着て働いてたんだ？　こうやっておっぱい揉んでほしくて？」[p]
凪「はいっ…♡　[舜]ちゃんに早くおっぱいも揉んでほしかったです♡」[p]
凪「今日１日、ずっとムラムラしてましたぁっ♡　変態でごめんなさい…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あうぅぅっ♡　おっぱい気持ちいい…♡　はっ、はぁ♡　お腹の奥…ジリジリしてるっ♡」[p]
[舜]「乳首もコリコリに立ってるなぁ？　そんなに気持ちいいんだ？」[p]
凪「気持ちいいです…♡　体全部熱くなっちゃって…おっぱい痺れたみたいになっちゃってます♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あ゛あ゛っ♡　ち、乳首、だめ…敏感になってる、のでっ♡」[p]
[舜]「見えない分、敏感に感じてるんだな…」[p]
凪「あぁぁぁっ♡　くっ、んんっ…♡　はいっ…ち、乳首ジンジンしちゃってますっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_2_tikubitumami2

[tb_start_text mode=1 ]
凪「ひぅぅっ♡　あっ♡　乳首だけっ…きゅって摘ままれるのっ…おかしくなっちゃいますっ♡」[p]
凪「ん゛あ゛あ゛っ♡　腰っ…動いちゃう…♡　ああぁぁっ♡　ヘコヘコ恥ずかしいっ♡」[p]
凪「み、見ないでくださいっ…♡　こんな姿っ…恥ずかし…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
凪「んくぅぅっ♡　摘まんでコリコリっ…すごいっ…♡　先っぽ…ジンてしちゃってます…♡」[p]
凪「あぁぁっ♡　気持ちいいのおっぱいからおまんこまで響くっ…！」[p]
凪「[舜]ちゃんに触られてるところ全部っ…気持ちいいんですっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「お゛お゛っ♡　ん゛っ♡　やっ…乳首熱くなって…ん゛あ゛あ゛っ♡[p]
[舜]「乳首摘ままれて、腰ヘコヘコ動いてるんだ？　乳首だけでイキそうじゃん」[p]
凪「はひぃ♡　乳首だけで…気持ちいいのこみ上げてきちゃって…♡　イッちゃいそうです♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
凪「ひぅっ…んうぅぅっ♡　はっ…ごめんなさい♡　お布団汚しちゃう♡」[p]
[舜]「おもらしで汚してごめんなさいしないとな…ほら、早く…！」[p]
凪「んっ…♡　お、おもらしして…汚しちゃってごめんなさい♡　許してください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_siohuki2

[tb_start_text mode=1 ]
凪「はぁ、あぁぁっ♡　お゛お゛っ♡　お腹…痙攣みたいに…震えちゃってる…」[p]
凪「と、止まんないっ…♡　気持ちいいっ♡　収まらなくって…おかしくなっちゃう♡」[p]
凪「体も水分、全部出ちゃいそ…♡　カラカラになっちゃいますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「気持ちいいままになってるっ♡　全然終んないっ…♡　おかしくなっちゃう♡」[p]
凪「ひぅっ、頭の中、焼き切れちゃう…♡　おっ♡　おっ♡　おおおっ♡」[p]
[舜]「すっご、噴水みたいに潮吹きっぱなしだなぁ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「気持ちいいっ♡　潮吹き…止めらんないよぉっ…♡　あうぅっ♡」[p]
[舜]「エッロ…腰ガクガク震えっぱなしだな…」[p]
凪「気持ちよくて…体勝手に動いちゃうんです♡　何も考えられない…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_2_anarubizu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
凪「んんっ…くぅぅっ♡　お、お尻…変な感じしちゃう…♡」[p]
[舜]「お尻の穴までパクパク開いて、嬉しそうにしてんなぁ？」[p]
凪「[舜]ちゃんにいっぱいいじってもらえて…お尻気持ちよくなってるんです…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_anarubizu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「お尻でも気持ちよくなれるようになったんだ？」[p]
凪「[舜]ちゃんが教えてくれたので…♡　お尻の穴でも気持ちよくなれるようになっちゃいました♡」[p]
凪「もっともっと…気持ちいいこと教えてください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_anarubizu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～あ～…お尻の穴、ぱっくり開いてるけど？」[p]
凪「はぁっ♡　あっ♡　あぁっ♡　恥ずかし…体の中まで[舜]ちゃんに見られちゃって…」[p]
凪「お尻の穴開いちゃって…お見苦しい姿見せて申し訳ありませんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu=0"  name="H_anarubizu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_anarubizu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁっ♡　おおおっ♡　内臓まで響いてっ…おかしくなりゅ♡」[p]
[舜]「もうおかしくなってるみたいだけど？」[p]
凪「んぅっ♡　はいっ♡　気持ちいいしか考えられなくなって…おかしくなってるかもしれません♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_2_baibu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
凪「んおおおっ♡　ん、くぅぅぅっ♡　激し…壊れるっ♡　壊れちゃいますっ♡」[p]
[舜]「体くねらせすぎ…こら、勝手に腰引くなよ…！」[p]
凪「ん゛お゛お゛っ♡　ごめんなさ…♡　か、勝手に動きません…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_baibu2

[tb_start_text mode=1 ]
凪「ん゛う゛う゛ぅ゛っ♡　お、奥まで…振動きてりゅ…♡　お゛お゛っ♡」[p]
凪「刺激、強すぎて…頭、真っ白になっちゃいますっ…んあぁぁっ♡」[p]
凪「イキっぱなしに…なっちゃいますっ…♡　おかしくなるぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_baibu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「バイブ気持ちいいなら、ずっとこのままでいてもいいんだけど？」[p]
凪「や、だめだめだめぇっ♡　お゛お゛っ♡　ホントにっ、おかしく、なっちゃう…♡　」[p]
凪「あぁぁぁ、き、気持ちいいの湧き上がってきて…いっぱいになっちゃうの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu=0"  name="H_baibu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_baibu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぐぅぅぅっ♡　お゛っ♡　お゛お゛っ♡　変な声、出てりゅ…♡」[p]
[舜]「もう充分変な声出てる…エロ過ぎて勃起しっぱなしなんだけど」[p]
凪「はぁ♡　あぁぁっ♡　[舜]ちゃんのおちんちんほしいですっ♡　奥まで…突き上げてください♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
凪「んっ♡　あっ♡　あぁっ♡　[舜]ちゃんのこと…気持ちよくします…♡」[p]
[舜]「なら自分でも腰振らなくちゃ…！　ほら、早く」[p]
凪「は、はいっ♡　んんっ♡　[舜]ちゃんに教えてもらった動かし方…見ててくださいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
凪「んっ♡　おっ♡　おおっ♡　おちんちん、おっきくなってきた…♡」[p]
凪「[舜]ちゃん…私の中で気持ちよくなってくれてるんですね…嬉しいっ…♡」[p]
凪「私でいっぱいおちんちん気持ちよくなってください…♡　好きに使ってくださいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「自分でも腰動かさないと…俺のこと気持ちよくするんだろ？」[p]
凪「申し訳ございませんっ♡　はぁ、あっ♡　み、見てください…♡　腰、動かしますからぁ♡」[p]
凪「ひうぅっ…♡　んんっ…私ばっかり…気持ちよくなっちゃう…♡　ごめんなさいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んあぁぁっ♡　お、奥…ゾリゾリって…当たって…んっ♡　お゛お゛っ♡」[p]
[舜]「ほら、また自分だけ気持ちよくなってる。謝ってもらわなきゃな！」[p]
凪「くっ…んんっ♡　気持ちいいのこらえきれなくて申し訳ございませんっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
凪「あっ♡　んんっ♡　おおおっ♡　き、気持ちいいっ…んぅぅぅっ♡」[p]
[舜]「勝手に甘イキしてんの？　中すっごい締まってるからバレバレなんだよ…！」[p]
凪「ひあぁぁっ♡　ごめんなさいっ…♡　気持ちよくてこらえられなくて…許してください♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
凪「あっ♡　あっ♡　あっ♡　は、激し…おかしくなっちゃうっ…またっ…気持ちよくなっちゃう♡」[p]
凪「くぅぅっ…我慢、しますっ♡　[舜]ちゃんが気持ちよくなるまでっ…！　頑張りますっ♡」[p]
凪「お゛っ♡　ん゛ぅぅっ…♡　だめ…気持ちいいのきちゃう…すごいの上がってきちゃううっぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
凪「んぐぅっ♡　激し…お゛お゛っ♡　お腹奥っ…お、押しつぶされてるみたいっ…♡」[p]
[舜]「子宮の入り口当たってんのか？　ここグリグリしてほしいんだ？」[p]
凪「はいぃ♡　おちんちんで…こねまわしてくださいっ♡　おまんこわからせてくださいぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「お゛お゛お゛っ♡　内臓っ、押し上げられちゃってる…♡　お腹の中でおちんちん暴れてるっ♡」[p]
凪「あ゛あ゛っ♡　[舜]ちゃんの形も温度もっ…全部覚え込まされちゃってりゅ♡」[p]
凪「はっ♡　はっ♡　はっ♡　体も頭も馬鹿になっちゃうっ♡　も…だめぇぇ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  