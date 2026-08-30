[_tb_system_call storage=system/_H_serihu_tubomi.ks]

*high

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=4"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="+="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*high2

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=7"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(15-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*low

[tb_eval  exp="f.H_hit-=1"  name="H_hit"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou-=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="-="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*hit

[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=3"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(20-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="20"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*supiritasu_kaiwa1

[tb_start_text mode=1 ]
蕾「やだぁ、見ないでよ…恥ずかしいからぁ…」[p]
蕾「黙ってたら、不安になるでしょ～？　なんか言ってってばぁ♡」[p]
[舜]（めちゃくちゃ酔っ払ってるな…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kaiwa2

[tb_start_text mode=1 ]
蕾「私ばっかり見られるのずるい～っ♡　そっちも見せてよぉ♡」[p]
[舜]「好きなだけ見ていいよ…その代わり蕾の体もっと見たい」[p]
蕾「も～っ、そんな真剣な顔で言わないでよぉ♡　んっ…はぁ…恥ずかし…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kaiwa3

[tb_start_text mode=1 ]
蕾「見られてるだけなのに…変な気分になってきちゃったの…♡　やだあ、もうっ…♡」[p]
蕾「もっとよく見て…？　私の体、綺麗？　ちゃんと褒めてよぉ♡　あんたに褒めてほしいの♡」[p]
蕾「んふふ、顔見ればわかるけど…♡　すっごい興奮してるんでしょ～♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*supiritasu_kiss1

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅく、んんっ♡　ふぅぅっ、んんっ…ちゅぷちゅちゅ…♡」[p]
蕾「っ！　はーっ♡　はーっ♡　はーっ♡　がっつきすぎっ♡　息できないってばぁ♡」[p]
蕾「そんなに夢中になっちゃうの…？　じゃあ…もっとキスしていいよ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kiss2

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅくちゅく、んっ…♡　はぁ、あふ♡　キス気持ちいい…んんぅっ♡」[p]
蕾「はぁ、はふ、あぁっ♡　口の中…グチャグチャになってるの…♡　ん、もっと、もっと頂戴♡」[p]
蕾「んっ♡　ちゅっちゅっちゅ♡　ちゅぷ、じゅるるるる♡　んちゅ、じゅぷじゅぷ……♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kiss3

[tb_start_text mode=1 ]
蕾「ちゅく、ちゅ…はぁ、あぁ♡　キスだけなのに…なんか変…お腹の下のほう…キュンってしてる…♡」[p]
蕾「ほしいっていってるのかも…♡　これで終わりだなんて言わないでしょ…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んぅぅぅっ♡　ふっ、ふぅ…今の……なんなの…♡」[p]
蕾「チューしただけで…すっごい気持ちよくなっちゃった…♡　何したのぉ？」[p]
蕾「なんか…慣れてるみたいでムカつく♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ…♡　あぁっ♡　あっ♡　んっ…はっ…はあ♡　おっぱい触られてるっ♡」[p]
[舜]「すご、柔らか…」[p]
蕾「んぅっ♡　はっ、はぁ♡　感触確かめられちゃってりゅ♡　ひぅぅぅっ♡　あぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_munemomi2

[tb_start_text mode=1 ]
蕾「はふ、はっ♡　あんっ♡　あぁぁっ♡　んぁぁっ♡　反応しちゃうぅ♡」[p]
[舜]「乳首もピンって立ってきた…エッロ」[p]
蕾「あっ♡　言わないでぇ…♡　触れて反応してるんだってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「らめぇぇ、そんなに揉み揉みしないでぇ♡　はふ、はぁ♡　あっ、反応しちゃうっ…腰動いちゃう♡」[p]
蕾「んんっ…おっぱいだけなのに…下もキュンキュンしてるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃうぅぅっ♡　はっ、あぁ、あんっ……♡　おっぱい、気持ちいいの…♡」[p]
蕾「なんか、今のでお腹のしたのほう…キュンってしちゃったぁ…♡」[p]
蕾「うぅぅ…♡　まだ…体ジンジンしてる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁっ♡　痛いっ…お尻、叩かないでぇ…♡　ひぐっ…痛い、からぁ」[p]
[舜]「反応してるじゃん」[p]
蕾「んっ♡　ふぅ、だって…叩かれたところジリジリあっつくて…変な感じっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_supankingu2

[tb_start_text mode=1 ]
蕾「ひゃぅぅぅっ♡　あんっ♡　あとになっちゃう、赤くなっちゃうからぁ♡」[p]
蕾「はっ♡　はっ♡　はっ♡　変…痛いのに…気持ち良くなってきちゃった…♡」[p]
蕾「もっと欲しくなっちゃうぅ♡　私変なのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　はっ♡　はっ♡　はっ♡　はっ♡　もっと、もっとぉ♡　気持ちいぃ♡」[p]
蕾「お尻、癖になっちゃう♡　はひ、はぁ、あんっ♡　あぁぁぁ♡」[p]
蕾「叩かれただけでイッちゃう…体変になってりゅぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んあぁぁっ♡　あっ、それっ…やだぁぁっ♡　おかしく、なる…♡」[p]
[舜]「すっごい反応…」[p]
蕾「やっ…痛いのにぃ♡　イッちゃうかと思った…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁぁぁっ♡　指入ってりゅ♡　は、激しく動かさないでっ…優しくしてぇ♡」[p]
[舜]「うわ、めっちゃ濡れてる…ドロドロだ」[p]
蕾「あうぅっ♡　言わないでぇ♡　はう、あぁぁっ♡　指、しゅごいぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_teman2

[tb_start_text mode=1 ]
蕾「ゆ、指だけでイッちゃうっ…♡　おっ♡　おぉぉっ♡　らめ、そこっ♡　弱いぃ♡」[p]
蕾「んぉぉぉ♡　あっ♡　あっ♡　あっ♡　集中狙いっ、しないでぇぇぇ♡」[p]
蕾「おかしくなっちゃうからぁっ♡　あっ♡　あっ♡　あっ♡　ひぐぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛っ♡　んぉぉっ♡　おまんこっ、じんじんしてりゅ♡　奥まで指届いてりゅ♡」[p]
蕾「らめ、らめらめ…ホントにイク…指だけでイッちゃうぅぅ♡」[p]
蕾「おかしく、なりゅうぅぅ♡　はぁ、はっ、あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛お゛っ♡　あ゛う゛う゛っ♡　何それ何それ何それぇぇぇっ♡」[p]
蕾「頭っ、おかしくなっちゃうっ♡　イッちゃうからだめぇぇぇぇっ♡」[p]
蕾「おっほぉぉっ♡　おまんこグチャグチャになってイクぅぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「や、だぁぁ、そんなとこ…舐めないでぇ♡　恥ずかし…」[p]
[舜]「ヌルヌルになってる」[p]
蕾「も、なんで言うのぉ♡　あっ♡　あぁぁ♡　ペロペロだめ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_kunni2

[tb_start_text mode=1 ]
蕾「んんんっ…♡　も、いいでしょっ…あっ、これ以上、は…だめぇぇっ♡」[p]
[舜]「腰動いてるけど？」[p]
蕾「はぁ、あっ、あんっ♡　だってぇっ…♡　気持ちいいんだもん…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　はぁっ♡　あんっ♡　あぁぁ、温かいの…気持ちいいっ♡」[p]
蕾「あぁぁっ、吸われるの気持ちいいっ♡　それっ、それ好きぃ♡」[p]
蕾「んんっ♡　あっ♡　トロトロになっちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んぉぉぉ♡　それっ、やだぁぁぁ♡　はっ♡　はっ♡　んんっ♡　そこ敏感だからっ…♡」[p]
蕾「やっ…やっ、あぁぁぁんっ♡　んぉぉ♡　おおおっ♡　も、舐めるのだめぇ♡」[p]
蕾「なんかきちゃう、から…やだやだやだぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ…♡　はぁ、手つき…エッチ…♡　ずっとお尻触りたかったの？」[p]
蕾「んんっ…手、あったかい…変な感じなの…♡」[p]
[舜]「腰、くねらせていやらしいな…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_naderu2

[tb_start_text mode=1 ]
蕾「ひゃんっ…♡　あんまりナデナデしないでぇ…♡　もっと欲しくなっちゃうからぁ」[p]
蕾「んっ♡　ふ～っ…ふ～っ♡　撫でられてるだけなのに…気持ちいい…♡」[p]
蕾「もっと前のほう…キュンって切なくなってきちゃった…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁぁっ♡　こ、腰動いちゃう…♡　自分で動かしてないのにぃ♡」[p]
蕾「ぞわぞわって…全身に気持ちいいの広がってるの…♡」[p]
蕾「何されちゃうんだろって…期待しちゃってる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_naderu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛っ♡　い、今の何…♡　気持ちいい…♡　わかんなくなる…♡」[p]
蕾「お尻撫でられてるだけなのに…目の前、チカチカってしちゃったぁ…♡」[p]
蕾「はぁ…はぁ…はぁ…まだビクビクってしてる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「あっ♡　はぁ♡　あんっ…♡　はぁ、やらぁ、奥まできてる…♡」[p]
蕾「こ、こんなにいっぱいになっちゃうの…？　おっきいの中に入って動いてるの♡」[p]
蕾「はーっ♡　はーっ♡　ね、根元まで…全部入っちゃったぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「はっ♡　はぁ♡　はあんっ♡　はっ♡　んっ♡　ズンってしないでぇ♡」[p]
[舜]「全部咥えこんでるよ」[p]
蕾「んぅぅっ♡　だってぇっ♡　奥までジュポジュポするからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「ひぐうぅ♡　あうぅ♡　はっ♡　はっ♡　ダメ、奥から気持ちいいの上がってきちゃう♡」[p]
蕾「壊れちゃう…お、おまんこおかしくなっちゃうぅ♡　ひうぅっ♡　はっ♡　はっ♡　はんっ♡」[p]
蕾「それ、好きぃ♡　もっとっ♡　もっともっとぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛っ♡　それぇぇ♡　だめなとこ…当たってる♡　はぁ♡　おっ♡　おほぉ♡[p]
蕾「変になる、おかしくなっちゃうぅぅ♡　弱いトコ、狙わないでぇ♡」[p]
蕾「すごいのっ、きちゃうからぁぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「あぁぁぁぁっ♡　気持ちいいっ♡　激しいの、好きぃ♡」[p]
[舜]「くっ…体、のけ反りすぎだろっ♡」[p]
蕾「あうぅぅっ♡　こ、壊れりゅ…♡　気持ちいいっ♡　好き♡　好き好き好きぃぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「おちんちん出たり入ったりしてるのっ、わかりゅ♡　おまんこキュンキュンしてりゅぅっ♡」[p]
蕾「ひぅぅぅっ♡　あうぅぅ♡　もっとっ、めちゃくちゃにしてぇ♡　はひっ♡　好きにしてっ♡」[p]
蕾「んぉぉぉっ♡　お゛お゛お゛っ♡　はっ♡　はっ♡　癖になっちゃうぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「はっ♡　はっ♡　はっ♡　アァァァ、お腹の奥…あっつくなってきたぁ♡　あうぅぅ♡」[p]
蕾「すごいのきちゃう…♡　あうぅぅ♡　好き♡　好き好き好き♡」[p]
蕾「セックス、こんな気持ちいいなんてっ♡　あうぅぅぅ♡　しゅきぃぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛お゛お゛っ♡　わがんない゛っ♡　体っ、変になってるっ♡」[p]
蕾「ぎもぢいとこだけっ…当たっててっ♡　集中狙いされてるぅ♡」[p]
蕾「壊れるっ♡　壊れちゃうぅぅっ♡　あ゛あ゛あ゛あ゛っ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_kaiwa1

[tb_start_text mode=1 ]
蕾「これから…ホントにセックスしちゃうんだね…」[p]
[舜]「怖いなら無理することないよ」[p]
蕾「む、無理してない…！　早く１つになりたいから…ちょっと緊張してるだけだってば」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa2

[tb_start_text mode=1 ]
蕾「いいの？　ママのほうがよかったんじゃないの？　私ママみたいにおっぱいも大きくないし？」[p]
[舜]「そんなわけないだろ。蕾がいいんだよ」[p]
蕾「そう？　ふふ、そんなにハッキリ言われちゃったら、しょうがないなぁっ。ふふっ、嬉し」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa3

[tb_start_text mode=1 ]
蕾「あ…でも、ちょっと気になって…初めてって痛いって聞くけど…痛いのかな…？」[p]
蕾「痛くないようにしてくれる…？　その…い、挿れる時…気持ちよくなるまで、待って…」[p]
蕾「あっ、私、何言ってんだろ…も～、恥ずかしい…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_kiss1

[tb_start_text mode=1 ]
蕾「ちゅっ…んッ…♡　ふふ、キスしちゃった…唇触れるだけなのに、こんなに幸せなんだね」[p]
[舜]「へぇ、可愛いこと言うんだな」[p]
蕾「な、なんでニヤニヤしてんの？　やだ…見ないでよ…恥ずかしいでしょ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss2

[tb_start_text mode=1 ]
蕾「ちゅ、ちゅっちゅ…♡　んんっ♡　ちゅく、ちゅ、はぁ、ふ…キス、気持ちいい…」[p]
蕾「どうしよう、こんなの知っちゃったら、唇離すの嫌になっちゃうよ…♡」[p]
蕾「もっとキスしてほしくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss3

[tb_start_text mode=1 ]
蕾「ちゅくちゅく、ちゅぷちゅぷ、じゅぷじゅるるる、はぁ、んんっ♡」[p]
蕾「なんでこんなにエッチなキスの仕方知ってるの…？　ズルい…私にも教えてよ…ちゅっちゅ♡」[p]
蕾「は～っ♡　は～っ♡　なんだか…体の奥熱くなってきちゃったぁ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ちゅく、ちゅ……んっふぅぅっ♡　はぁ、はっ、びっくり、した…♡」[p]
蕾「いきなり気持ちいいの湧き上がってきて…お腹の下…キュンって切なくなっちゃった…」[p]
蕾「今の…イキそうになっちゃったってこと、かな？」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「んんっ…♡　おっぱい、揉み甲斐ないな、なんて思ってない？」[p]
[舜]「そんなこと思うわけないだろ…すごい可愛いよ」[p]
蕾「も、もう…そんなこと言われたら…恥ずかしいってば…でも、ありがと♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi2

[tb_start_text mode=1 ]
蕾「あっ…ん…おっぱいに夢中になりすぎだってばぁ…♡」[p]
蕾「興奮してる顔見るの…ヤバいかも…私まで興奮してきちゃった…」[p]
蕾「ふ～っ…恥ずかしいところ…キュンって疼いちゃってるみたい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あんっ…♡　あっ…♡　おっぱい、ばっかり…触らないでってばぁ♡」[p]
[舜]「でも顔とろけてるよ…」[p]
蕾「だってぇ…触られてるとこ、すっごく熱くて…気持ちよくなってるんだもん」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃぁぁっ♡　おっぱい、気持ちいいのっ♡　揉みしだかれるの、好き♡」[p]
蕾「はぁ、んっ…おっぱいさわられて気持ちよくなっちゃうかと思ったぁ」[p]
蕾「好きな人に触られるのって、こんなに気持ちいいんだ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　んんっ♡　あっ、乳首っ…だめ…そこ敏感だからぁっ♡」[p]
蕾「はぁっ…はぁ…あんっ♡　ペロペロ舐めてるトコ見るの…恥ずかし…」[p]
蕾「も、だめだめっ…こっち、見ないでよ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname2

[tb_start_text mode=1 ]
蕾「んっ♡　はっ、はぁっ♡　音立てて舐められるの…恥ずかし…」[p]
蕾「乳首こんなに気持ちいいの…？　全然知らなかった…気持ちいいの覚えちゃった♡」[p]
蕾「責任とって、これから気持ちよくしてもらわないと…我慢できなくなっちゃう…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んぅぅっ♡　乳首、ばっかり…あうぅっ♡　あっ♡　あぁ♡」[p]
蕾「気持ちいい…ねっとり舐められるの、弱いのっ…♡　あ、それ…んんんっ♡」[p]
蕾「ぺ、ぺろぺろもだめぇ♡　気持ちよくなる…おっぱいだけでイッちゃうってば…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁっ♡　そこっ、だめぇぇぇっ♡　気持ちいいのっ♡」[p]
蕾「乳首舐められてるだけなのに…お腹の奥までジュンってしちゃったの…」[p]
蕾「どうしよう…我慢できなくなっちゃうぅ♡　もっと敏感なトコ、触ってほしいの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「やっ…ちょ、ちょっと待って…そんなとこいきなり舐めるの…！？」[p]
蕾「汚くないの！？　あ、ああんっ♡　ヌルヌルであったかいの…当たってる…♡」[p]
蕾「嘘っ…ホントに舐められてる…？　も、やだぁ、恥ずかしい…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kunni2

[tb_start_text mode=1 ]
蕾「ひあぁぁっ♡　あんっ、あぁ♡　刺激、強すぎてっ…腰動いちゃう…」[p]
[舜]「ヘコヘコさせて、エッロ」[p]
蕾「しょうがないでしょっ…気持ちいいんだからぁ♡　あぁぁんっ♡　それ、気持ちいい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「んんっ♡　あっ♡　あっ♡　ペロペロされてるっ…クリも入り口も…全部舐められてる♡」[p]
蕾「そんなっ、味わうみたいに舐めないでよぉ♡　んんんっ、体、食べられちゃってるみたいな…」[p]
蕾「んんっ、ふっ♡　あ～、とろけちゃう…気持ちいいのぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁっ♡　それっ…何したのっ…おかしくなるっ…おまんこ溶けちゃうぅ♡」[p]
蕾「やぁぁぁっ♡　ジュルジュル吸うのっ、だめぇぇぇっ♡　あっ、あっ、あっ…んっくぅぅっ♡」[p]
蕾「イッちゃうかと思った…気持ちよすぎて…目の前、チカチカしてる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「はぁ、んっ…♡　足撫でるの好きなの？　エッチなおじさんみたいな触り方…」[p]
[舜]「うるせぇよ。　まだまだ余裕ありそうだなぁっ？」[p]
蕾「ひゃうっ♡　あっ…♡　ご、ごめんってば…あんまりナデナデしないで…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_naderu2

[tb_start_text mode=1 ]
蕾「はあ、んっ…そこばっかり…撫でられたら…変な気分になっちゃうからぁ♡」[p]
蕾「も、もっと…別の場所触ってほしい、とか…もっとエッチに触ってほしい、とか…」[p]
蕾「あ～、恥ずかしいっ…言わされちゃったぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んんっ…手のひら、熱くなってる…興奮してるのバレバレだからねっ？」[p]
蕾「太ももだけじゃ物足りないでしょ？　もっと違うトコも…触っていいんだから…♡」[p]
蕾「女の子から言わせないでよ…わかってるくせに♡　もっと…上のほう…足の間も触ってよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_naderu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひああぁぁっ♡　あんっ…足、撫でられてるだけなのに…♡　こ、こんなに気持ちいいなんて…」[p]
蕾「や、だ…変になっちゃう…♡　あうぅっ♡　体動いちゃうってばぁ♡」[p]
蕾「体の奥までキュンってしちゃって…私、おかしくなっちゃってる…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_asiura1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「な、何考えてんの、そんなとこ…キスするなんて…汚い、って…んっ♡」[p]
蕾「ふぅっ、ふっ…足裏って、こんなに敏感なんだね…意識したことなかったから、変な感じ…」[p]
蕾「きゃっ♡　舐めたでしょ…恥ずかしいから嫌だってばぁ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_asiura2

[tb_start_text mode=1 ]
蕾「んっ…あっ、はぁ♡　舌出して…ベロベロ舐めないでよぉ…くすぐったい♡」[p]
蕾「あんっ♡　今指先甘噛みしたでしょ…はぁ、ふっ…こんなことされるの初めて…♡」[p]
蕾「指先って…敏感なのは足も同じなんだ…今ので、感じちゃったみたい…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_asiura3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んぅぅっ♡　ふぅ、ふ～っ…あぁ…足舐め回されるの…好きになっちゃった、かも…」[p]
[舜]「蕾様のおみ足、舐めさせていただきますよ」[p]
蕾「私がやらせてるわけじゃないのに…そんな言い方しないでよぉ♡　んあぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru=0"  name="H_nameru"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_asiura_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁっ♡　あんっ…♡　はっ、はっ、足の裏から…気持ちいいの全身に走っちゃった…♡」[p]
蕾「んっ♡　まだっ、体全部ビリビリってしてる…♡　は～っ♡　は～っ♡」[p]
蕾「どうしよう…気持ちいいことしか考えられなくなっちゃうよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「んっ…ふぅっ、ふっ…♡　あぁっ♡　お、お腹の中…いっぱいになってる…」[p]
蕾「これが…中に入ってるっていう感覚なんだって思うと…嬉しいの…♡」[p]
蕾「はぁ、あっ、あんっ♡　ゆっくり動いて慣らそうとしてくれてるの…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「それっ♡　それ気持ちいいのっ…そこ、好き…♡　はぁ、あっ、１人でするのと全然違う♡」[p]
[舜]「へぇ１人でしてたんだ？」[p]
蕾「やっ…聞かないでよっ…あぁぁっ♡　意地悪、しないでぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「あ～っ…気持ちいい…♡　１つになってる…んっ、私っ、セックスしちゃってるんだ♡」[p]
蕾「んっ♡　あっ♡　あぁっ♡　やめないでっ♡　奥まで届いてるの、嬉しいからっ♡」[p]
蕾「もっと…ぶつけて…[舜]の…エッチな気持ち…受け止めたいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛っ♡　何、今…いきなり体がビクビクって…わかんなくなっちゃいそうっ♡」[p]
蕾「すっごい弱いトコ…当たってる…んっ、はぁ、あんっ♡　ビクビクしちゃう♡」[p]
蕾「はぁ、あっ♡　あっつ♡　私もっ、腰動いちゃう…♡　気持ちいいっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　あっ、激しすぎ、だってばぁ…♡　壊れちゃうっ…♡」[p]
[舜]「んっ、何が壊れちゃうって？」[p]
蕾「言わせないでよ…お、おまんこっ♡　おまんこがっ、壊れちゃうからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「気持ちいい声出てるな…そんなにいいんだ？」[p]
蕾「んんんっ♡　気持ちいいの…♡　すっごく気持ちいい…♡」[p]
蕾「いっつもいろんなこと教えてくれるけどっ…まさかセックスまで教えてくれるなんてぇ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「そんな激しく突かれたらっ♡　馬鹿になっちゃうぅ♡　何もわかんなくなっちゃうってばぁ♡」[p]
蕾「深いトコっ…当たってる…だめ…気持ちいい…あ゛あ゛っ♡　この体勢ダメっ…」[p]
蕾「気持ちいいトコ擦れてっ…あ゛あ゛っ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃうぅぅぅっ♡　おっ♡　おおおっ♡　奥っ、ゾリゾリって…擦れる♡」[p]
蕾「こんなのっ、イッちゃうぅぅ♡　おっ、おおっ♡　ぎもぢぃ♡」[p]
蕾「おちんちんっ、締め付けちゃう…ぎもちよすぎるぅぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kaiwa1

[tb_start_text mode=1 ]
蕾「もー、なんでじっと見てるの…？　見過ぎだってば…恥ずかしいんだけど…」[p]
[舜]「仕事終わりの格好も、やっぱ可愛いなと思って…」[p]
蕾「仕事して片付けして汗かいちゃったし…絶対メイク崩れてるよ。至近距離で見るの禁止っ！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa2

[tb_start_text mode=1 ]
蕾「メイド服だと余計にドキドキしちゃう？　ふふっ、こういうの好きだもんね♡」[p]
[舜]「まぁ…そりゃ好きだよ。でも誰でもいいってわけじゃないし」[p]
蕾「あ～、またかっこいいこと言ってる。私がかっこいいって言ったから意識しちゃった？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa3

[tb_start_text mode=1 ]
蕾「今日も１日頑張ったんだけど？　こーゆー時は、まず褒めてくれなくちゃね？」[p]
[舜]「頑張っててえらいよ。っていうか、いつも仕事は真剣にやってるだろ」[p]
蕾「まぁそうだけどね～。今日は特別頑張ったの！　言葉だけじゃなくてご褒美ももらおっかな♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_kiss1

[tb_start_text mode=1 ]
蕾「ちゅ…♡　閉店後だとはいえ、お店でこういうことしちゃうの、ホントはだめだよね」[p]
蕾「昔の私なら、ルールは守らなきゃって意地になってたはずなのに…あんたのせいだからね？」[p]
蕾「でも…ちょっとくらい破っちゃったほうが楽しいこともあるんだって、教えられちゃったんだもん」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss2

[tb_start_text mode=1 ]
蕾「ちゅ、ちゅっちゅっ♡　んんっ、ふぅ、ふっ…ちょっと、がっつきすぎだから…！」[p]
[舜]「あ、悪い…つい…だってキス気持ちよすぎるから…」[p]
蕾「も、もうっ…すぐそうやって、私のことその気にするんだから…ズルいってば♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss3

[tb_start_text mode=1 ]
[舜]「んっ…キスも前よりうまくなったって思ってるんだけど、どう？」[p]
蕾「も、もうっ…！　面と向かって聞くなんてデリカシーなさすぎでしょ…！　そ、それに──」[p]
蕾「キスしてる時、私全然余裕ないし…わかるわけないじゃない…頭の中沸騰しそうなんだからっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ちゅ、んんっ♡　はぁ、はっ…いつこんなに気持ちいいキス覚えたの…？」[p]
蕾「[舜]のくせに…優しくてエッチなキスするなんて…おかげで体がムズムズしちゃったじゃない♡」[p]
蕾「責任…とってもらわなくちゃだめかも…♡　拒否する権利なんかないからね？」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_paizuri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅっ…こんな感じでいいの…？　強さ、とか…動かし方とかよくわからないんだけど…」[p]
[舜]「くっ…気持ちいいよ…めちゃくちゃ上手だ…そのまましごいて…」[p]
蕾「ふふ、情けない顔になってる♡　私がこの顔させてるって思うと…ちょっと変な気分になるかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri2

[tb_start_text mode=1 ]
蕾「んっ…はぁ、はっ…あぁ♡　なんか…ヌルヌルしてきた…おっぱいの間。熱くなってる♡」[p]
蕾「あぁっ…♡　すごい…ビクビクしてる♡　気持ちよくなってるんだって伝わってくる…♡」[p]
蕾「んんっ♡　はぁ、もっとしてほしいの？　言わなくてもわかるよ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「はぁ、あっ、んんっ…♡　変、なの…私は気持ちいいことしてるだけなのに…」[p]
蕾「体がすっごく熱くて…ムズムズしてきちゃった…私、変になっちゃったみたい♡」[p]
蕾「でも…あんたも変になってるでしょ？　ここ、すっごいガチガチになってるもん」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　あっ…♡　んんっ…熱くなったおちんちん、擦れてるってば…♡」[p]
蕾「ズルい…私の反応見て楽しんでるんでしょ？　そういう悪い彼氏はっ…！」[p]
蕾「こうやって激しくシコシコしちゃうんだから…♡　んっ♡　はぁっ♡　あぁっ♡　あうっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁっ…はぁっ…♡　あぁっ♡　触り方、やらしすぎ…やわやわ触るの、どうやって覚えたの…」[p]
[舜]「えっ？　別に…蕾の反応見ながら触ってるだけだって」[p]
蕾「へぇ、じゃあ…私に合わせたオーダーメイドの触り方ってこと？　そんなことまでできるんだ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi2

[tb_start_text mode=1 ]
蕾「ふぅっ…はぁ、あっ♡　何、その焦らすみたいな触り方ぁ♡　わざとやってるでしょ…♡」[p]
[舜]「バレたか…どんな反応してくれるかなと思って。もっと触ってほしい？」[p]
蕾「わかってるくせに♡　もっと触ってほしい…おっぱい、好きに揉んで♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁっ♡　んんっ♡　乳首、触れてないのにっ…先っぽジンジンしてきた♡」[p]
[舜]「確かに。乳首ぷっくり膨れてきちゃったな？」[p]
蕾「んんっ♡　だってっ♡　こんなにエッチな触り方されてたら…しょうがないでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁっ♡　あっ♡　んんっ♡　乳首の先っぽ、ムズムズして…我慢できなくなっちゃう♡」[p]
蕾「あっ♡　あんっ…♡　自分の体じゃないみたい…♡　仕事場、なのにっ…♡」[p]
蕾「いっつも仕事してるとこで、こんなエッチなことしちゃうなんて…だめなのにぃ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munename1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ、あんっ…♡　んっ…♡　あっ♡　あっ♡　あぁっ♡おっぱいしゃぶるのだめぇっ♡」[p]
蕾「ホント、おっぱい好きなんだから…そんなに吸ってもなんにも出てこないってばぁ…」[p]
[舜]「そうか？　でも舐めてるとめちゃくちゃ甘く感じる気がするんだけどな」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename2

[tb_start_text mode=1 ]
蕾「あうっ♡　や、だぁ…なんで私の顔見ながら舐めてるの…？　恥ずかしいから見ないで…」[p]
[舜]「どんな風に感じてるのか見たいから。それに気持ちいいのか教えてくれないと」[p]
蕾「わ、わかったっ♡　教えるからぁっ♡　あ、あぁぁっ♡　ペロペロ舐めるの…気持ちいいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「やっ…あっ、あぁぁぁっ♡　乳首…溶けちゃう♡　ダメ、ホントにっ、変になっちゃうっ♡」[p]
蕾「乳首だけで…こんなに気持ちよくなっちゃうなんて…♡　んっ…あっ、あぁぁぁっ♡」[p]
[舜]「あ～、すっごい反応…おっぱいだけで、腰まで動いてるじゃん」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁぁんっ♡　き、気持ちいいのが…電流みたいにビリビリって…」[p]
蕾「おっぱいの先っぽから…お、お腹の奥まで…痺れて…変なの♡　腰、動いちゃう…♡」[p]
蕾「足の間もじゅわって…あったかくなっちゃった…私の体、どんどんエッチになってる♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ…あっ、あぁっ♡　待って待ってっ！　汗かいたからぁっ…舐めちゃダメだってば…！」[p]
[舜]「ん…でもめちゃくちゃ濡れてんじゃん。足開かれて興奮してるんじゃないの？」[p]
蕾「言わないでよ、馬鹿ぁ…んんっ♡　舐められたら反応しちゃうに決まってるでしょ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　あぅっ♡　仕事場、なのにっ♡　こんな恥ずかしい格好しちゃってるっ♡」[p]
蕾「んっ…くぅぅっ♡　あぁぁぁっ♡　ペロペロ舐め回されるの、弱いって知ってるくせにっ♡」[p]
蕾「あっ♡　あんっ♡　はぁ、ああっ♡　やだ、やだやだっ♡　変な声、出ちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぐぅぅっ♡　あっ、あぁぁぁっ♡　そこっ…だめ…敏感だからっ♡　吸い上げないでぇっ♡」[p]
[舜]「へぇ、クリしゃぶられんの好きなんだ…ここ、プリップリに膨らんでるもんなぁ」[p]
蕾「あっ♡　あ゛あ゛あ゛っ♡　ひぅぅっ♡　ジュルジュル吸うの、ダメだって言ってるのにぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛っ♡　　[舜]、気が利いて優しくなったって思ったのにっ…いきなり意地悪になるっ♡」[p]
[舜]「蕾のことが好きだから、気持ちよくしたいだけだって」[p]
蕾「するいっ、不意打ちでそんなこと言うなんて…♡　余計気持ちよくなっちゃうってばあっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひゃっ♡　あぁぁっ♡　ま、待って…あっ♡　あっ♡　そこっ…ダメなトコ当たってるの…♡」[p]
[舜]「奥がいいんだ？　蕾は素直だからわかりやすくていいな。もっとエロい顔見せてよ」[p]
蕾「なんでっ…あんたばっかり余裕なのっ♡　ずるいぃっ♡　あっ♡　あっ♡　あぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman2

[tb_start_text mode=1 ]
蕾「んっ♡　あっ♡　あぁっ♡　私ばっかり…好き放題されちゃって悔しいっ…私だってっ…」[p]
蕾「あんたのとろけた顔、見てやるんだからっ…♡　あっ、あぁぁぁぁっ♡　激し…壊れちゃう♡」[p]
蕾「なんで私の弱いトコばっかり…集中狙いしてくるのっ？　全部気持ちいいトコバレちゃってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぐぅぅっ♡　あっ…や、やだっ…♡　トントンノックされるの…気持ちよくって…」[p]
蕾「頭の中ビリビリって…電流走ってるみたいなのっ♡　はぁ、あっ♡　そこばっかり、だめ…」[p]
蕾「んっ♡　あっ♡　あっ♡　あぁぁ♡　腰動いちゃうっ♡　ヘコヘコ情けない姿見ないでぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　へ、変なのっ…気持ちいいのこみ上げてきて…なんか、出ちゃうぅぅっ♡」[p]
[舜]「あーあー、恥ずかしいって言ってたのに。ガニ股で腰ヘコヘコさせちゃって…」[p]
蕾「やっ、ヤダ、言わないでよ…こんな格好恥ずかしいのに…気持ちよくて体が勝手に動いちゃうの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「んっ♡　ふぅ、はっ、あぁっ♡　中、いっぱいになってる…内側擦れて…ぐちゃぐちゃになるっ♡」[p]
[舜]「あー、すっごい狭いんだけど…そんな締め付けたら動けないって。力抜いて」[p]
蕾「そんなの無理っ…んんっ♡　あぁぁっ♡　自分でもどうしたらいいのかわかんないんだもん…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「あっ♡　あっ♡　あぁぁっ♡　１番奥っ…だ、ダメなとこ…当たってるっ♡　潰れちゃうぅ♡」[p]
[舜]「あんっ！　くっ…なんだ、めちゃくちゃ締まってんだけど…！」[p]
蕾「あぁぁぁっ♡　深いトコまで…トントンって先っぽでノックしちゃだめ、なのにっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「あっ♡　ぐぅぅっ♡　んんっ♡　ふぅっ♡　はっ♡　あぁ、無理っ、無理無理ぃっ♡」[p]
[舜]「無理じゃないだろ、こんなに締め付けて…めっちゃエロい声も出てるし…！」[p]
蕾「んんっ♡　ホントにっ、無理なのに…♡　はぁ、あっ、頭、真っ白になっちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぐぅぅっ♡　あぅぅっ♡　おっ♡　おおおっ♡　わかんないっ♡　わかんなくなってるぅっ♡」[p]
[舜]「体のけ反りヤバ…前より敏感になってんじゃないか？　あぁ、チンポに響く…！」[p]
蕾「あぁぁぁっ♡　だ、だめっ♡　これ以上興奮しないでぇっ♡　中っ、ヒクヒクしすぎっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「普段仕事してるとこで、セックスしちゃってんのめっちゃエロいよな…」[p]
蕾「んあぁぁっ♡　や、だ…言わないで…だめっ♡　悪いことしてるって感じちゃう、から…」[p]
蕾「あっ、あぁぁぁっ♡　余計にっ…お腹の奥キュンキュンってしちゃうの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「ダメ、激し…奥までっ、グチャグチャにかき回されちゃってるっ♡　壊れちゃうぅっ♡」[p]
蕾「やだ、やだやだぁっ♡　仕事してる時もっ…感触とかっ、全部思い出しちゃうってばっ♡」[p]
蕾「んっ♡　あぁっ♡　んっくぅっ♡　エッチな気分になっちゃったらっ、責任取ってよねっ！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「ん～？　次は仕事中にこうやって犯してほしいって？　欲しがりだな蕾は…！」[p]
蕾「くぅっ♡　そんなこと言ってないでしょ…馬鹿っ♡　仕事中はお金稼ぐんだからっ♡」[p]
蕾「はぁっ♡　あっ♡　あぁっ♡　するのは…あ、あんたの家に帰ってからにしてっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁぁっ♡　んっ、うぅぅ♡　だめぇぇっ♡　なんにも考えられなくなるっ♡」[p]
蕾「気持ちいいしか考えられなくなっちゃうのっ♡　はぁ、あっ、あぁっ♡　んぅぅぅっ♡」[p]
蕾「こんなのっ、自分じゃないみたいっ♡　体、エッチになっちゃってる、戻れなくなっちゃう♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_kaiwa1

[tb_start_text mode=1 ]
蕾「ねぇ、まだ何にもしてないのにエッチな顔になってるよ…？　すっごい興奮してるんでしょ♡」[p]
[舜]「しょうがないだろ、こんなシチュエーション…興奮するに決まってるし」[p]
蕾「ふふ、そうだよね～？　私も…エッチな気持ちになっちゃってるもん…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa2

[tb_start_text mode=1 ]
蕾「このあと、どんなことされちゃうのかな～？　私とエッチなことしたいんでしょ♡」[p]
[舜]「俺はめちゃくちゃそのつもりだったけど…蕾が嫌なら無理強いはしたくない…」[p]
蕾「も、もうっ…何かっこいいこと言っちゃってるの？　私だって…期待してるに決まってるでしょ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa3

[tb_start_text mode=1 ]
蕾「たまには強引に迫ってほしい時だってあるんだからね？　乙女心は複雑なのっ」[p]
蕾「きて…♡　今日も仕事しながら、あんたに会いたいなってずっと思ってたんだから…」[p]
蕾「会って…その…キスしたり…イチャイチャしたいって思ってたのっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss1

[tb_start_text mode=1 ]
蕾「ちゅ、ちゅぷ、ちゅっちゅ、んんっ♡　はぁ、口の中…熱くなってる…♡」[p]
蕾「ちゅく、ちゅっちゅっちゅ♡　んんっ…こんな気持ちいいキス教えられちゃうなんて…」[p]
蕾「もう、子供だましみたいな軽いキスじゃ満足できなくなっちゃったでしょ♡　責任取ってね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss2

[tb_start_text mode=1 ]
蕾「はふ…ちゅぷ、ちゅ、んんっ、じゅるるるるっ♡　あぁっ…舌、絡ませるの気持ちよくて…」[p]
蕾「ちゅく、ちゅっちゅっちゅ♡　や、だぁ…キスだけなのに…体の奥までジンジン痺れてきたぁ…♡」[p]
蕾「私、絶対変な顔になってるってばぁ…あんまり見ないで…♡　可愛い顔しか見せたくないのっ！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss3

[tb_start_text mode=1 ]
蕾「んむっ♡　ちゅっちゅ、ちゅぷ、じゅぷ、じゅるる♡　唇、離せなくなっちゃった…♡」[p]
[舜]「はぁ、はっ…蕾、めちゃくちゃエロい顔になってる…止まんなくなりそ…」[p]
蕾「も、いちいち言わなくていいからっ♡　ちゅっちゅっちゅ♡　私もっ…止まらなくなっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅく、んっ、んんっ♡　ふぅ、ふっ…♡　キスだけなのに…頭の中…熱くなってる♡」[p]
蕾「もっともっと欲しくなっちゃったぁ♡　今まで私、こんな気持ちになることなかったのに」[p]
蕾「私もあんたに触られてから…気持ちいいの覚えて、どんどんエッチな体になっちゃってるの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_fera1

[tb_start_text mode=1 ]
蕾「んっ、ちゅっ…ねぇ、すっごいガチガチになってるみたいなんだけど…？」[p]
蕾「こんなに反り返っちゃって…やらしー♡　期待してるんでしょ？　ちゅ、ちゅっちゅ…♡」[p]
蕾「ふ～っ…♡　はぁ、はっ…エッチな匂いしてる♡　先っぽも我慢汁溢れちゃってるよ？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera2

[tb_start_text mode=1 ]
蕾「ちゅ、ちゅ、じゅぷ、じゅぽじゅぽじゅぽじゅぽっ♡　んんっ♡　おっきいっ♡」[p]
蕾「口の中…いっぱいになってる…アゴ外れちゃいそうっ♡　ちゅぷ、ちゅぽじゅぽじゅぽっ♡」[p]
蕾「んんっ♡　はぁ、匂いと味でくらくらしちゃう♡　体の奥、すっごく熱くなってきちゃった…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera3

[tb_start_text mode=1 ]
蕾「じゅぷ、じゅぽっ♡　じゅぽじゅぽじゅぽじゅぽっ♡　んんっ…興奮しますか、ご主人様？」[p]
[舜]「くっ…それ、ヤバい…！　他の客には…やってない、だろうな…？」[p]
蕾「やってるわけないでしょ？　これは…こ、恋人だけの…特別オプション、なんだから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera=0"  name="H_fera"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んむぅぅっ♡　んんっ♡　の、喉奥まで…届いてっ♡　んぅぅっ♡　なんで、気持ちいいの♡」[p]
[舜]「んんっ！　バキュームヤバ…あぁ、先っぽも柔らかいトコにめちゃくちゃ擦れてる…」[p]
蕾「んんっ♡　ふぅぅっ♡　や、だぁ…アソコ、ジンジンって痺れたみたいに熱くなっちゃった…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　あっ…おっぱい鷲掴みされちゃった♡　指、沈み込んでる…♡」[p]
蕾「フーッ…フーッ…フーッ…♡　おっぱいばっかり揉みしだかれるの…だめ♡」[p]
蕾「手のひらに乳首擦れて…んっ♡　余計敏感になっちゃうからぁっ♡　あっ、あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi2

[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　や、だめっ♡　おっぱい揉みくちゃになっちゃうからぁっ♡」[p]
蕾「そんなに揉みしだかれたら、おっぱいトロトロにとろけちゃうってば…♡」[p]
蕾「えっ…なんで余計に興奮してるの？　ちょ、ちょっと待って…あぁぁぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　おっぱい揉みくちゃにしながら私の顔、見ないでよぉ♡」[p]
蕾「だらしなくなってるの、自分でわかるからっ♡　変な顔見せて嫌われたくないのっ…♡」[p]
[舜]「めちゃくちゃエロくて可愛いよ。もっともっと好きになるんだけど…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あっ…あぁぁぁっ♡　あうぅっ♡　頭おかしくなっちゃうっ♡　おっぱいだけなのにっ♡」[p]
蕾「お腹の奥からっ…気持ちいいのが上がってきちゃってる…♡　こんなの知らないっ♡」[p]
蕾「はぁっ♡　はぁっ♡　あっ♡　腰、勝手に動いちゃって…恥ずかし…あぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munename1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「や、やだっ♡　待って…チュウチュウ吸うの…刺激強すぎてっ♡　あっ♡　あぁぁぁっ♡」[p]
蕾「だめ、だめだめっ♡　声、止まらない…あっ、あぁぁぁっ♡　こんな気持ちいいなんてっ♡」[p]
蕾「んっ♡　ふぅぅぅっ♡　乳首、気持ちいいのっ♡　ねっとり舐められるの好きぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename2

[tb_start_text mode=1 ]
[舜]「何されるのが好きなのか教えて。メイドなんだから素直に言うこと聞いてくれるんだろ？」[p]
蕾「ひぅっ♡　あっ♡　あぁぁっ♡　乳首っ…思いっきり吸われるの…好きなの…」[p]
蕾「あぁぁぁっ♡　それっ…それっ…♡　あっ♡　あぁぁっ♡　お腹の底から熱いの上がってきてる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「んぅぅぅっ♡　乳首、前より敏感になってるかも…体が気持ちいいの覚えちゃってるみたい♡」[p]
[舜]「へぇ、じゃあもっと気持ちいいこと覚えてもらわなくちゃな…」[p]
蕾「ひぅっ、だめ♡　そんなことされたら…おっぱい舐められただけでイッちゃうからっ…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　乳首、敏感なんだからぁっ♡　思いっきり吸い上げたら馬鹿になっちゃうっ♡」[p]
蕾「乳首吸われてるだけなのにぃっ♡　腰、動いて止まらないのっ…♡　やだぁ…♡」[p]
蕾「私前はこんなにエッチな子じゃなかったのに…あんたのせいでこうなっちゃったんだからねっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ…くうぅっ♡　はっ、あぁっ♡　だめ…そ、そんな奥まで舐めちゃうのっ？」[p]
蕾「あっ…あぁぁっ…舌入ってきてる♡　ん、くぅぅっ♡　ぐちゃぐちゃになっちゃうよぉっ♡」[p]
蕾「体の奥まで…味見されちゃってるみたいなんだけど…♡　気持ちいいけどっ、恥ずかしいっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname2

[tb_start_text mode=1 ]
[舜]「お味はどうですかご主人様って言わないと…可愛いメイドさんなら言えるだろ？」[p]
蕾「そんなこと言わせようとするなんて変態すぎ…んんっ♡　あぁっ、わかった、わかったからぁっ♡」[p]
蕾「蕾の…おまんこのお味は…どうですかご主人様っ…♡　ん、くぅぅっ♡　興奮しないでっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅっ♡　ああっ♡　舌出し入れするの、だめぇっ♡　気持ちいいの、湧き上がってきちゃう♡」[p]
蕾「あっ♡　あっ♡　あぁぁっ♡　いつも仕事してるところで…こんな格好しちゃってる…♡」[p]
蕾「恥ずかしいところ舐め回されて舌で犯されてるみたいで…だめなのにっ、だめなのにぃっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname=0"  name="H_tituname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　おかしくなっちゃうっ…♡　頭の中…ぐちゃぐちゃでわかんなくなるぅっ♡」[p]
[舜]「腰動かしすぎて舐めらんないって…自分で腰振っちゃってるじゃん」[p]
蕾「やだ、やだぁ…言わないで…♡　だって止められないんだもん。あんたが舐めるからでしょっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　あ゛あ゛っ♡　奥ばっかりっ…トントンするからぁっ…なんか出ちゃったっ♡」[p]
[舜]「あーあ、せっかく掃除したのになぁ？　あとで一緒に綺麗にするから大丈夫だって」[p]
蕾「うぅぅっ、そういう問題じゃないってばぁっ♡　おもらしなんて恥ずかしくて死んじゃうっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　やだっ、おもらし止まんないっ♡　お腹の奥もおまんこも熱くて…馬鹿になちゃったぁ♡」[p]
[舜]「おもらしじゃなくて潮吹きだから…気持ちよくなると出るんだよ…ほら、また出てる」[p]
蕾「ひぐぅっ♡　あっ♡　あっ♡　あぁぁぁっ♡　やっ…もう出したくないのにぃっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki3

[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　あったかいの出てるっ…♡　ん、くぅぅっ♡　止まらないよぉ…」[p]
蕾「これ癖になっちゃったらどうするのっ…ちょっと触られるだけでも潮吹きするようになっちゃう♡」[p]
蕾「はぁっ♡　はぁ♡　私の体…ものすごくエッチで敏感になっちゃうじゃないっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁぁっ♡　おっ、おおおっ♡　まだっ、出てるのに…♡　激しくしないでぇっ♡」[p]
[舜]「あーあー、おまんこぐっちゃぐちゃ…蕾の入り口も完全にとろけて開いてる」[p]
蕾「はーっ…はーっ♡　だって…ほぐさないとあんたのモノ…入らないでしょっ♡　準備できてるの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁっ♡　いきなり動くのだめ、なのにっ…♡　んぅぅっ♡　や、深いのっ♡」[p]
[舜]「ダメって言いながら、ちゃんと中締め付けてヒクヒクうねってるじゃん」[p]
蕾「んんっ♡　はぁ、ああっ♡　だって…体が勝手に…反応しちゃうからぁっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「メイドさんなんだから、ご主人様のチンポ甘やかして差し上げますくらい言わないと…！」[p]
蕾「ひぅっ♡　あっ♡　変態…♡　ご、ご主人様のおちんちん、甘やかして差し上げます…♡」[p]
蕾「蕾のおまんこで…とろとろにしてあげますからね♡　んんっ♡　あぁっ、またおっきくなってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「はーっ♡　はーっ♡　メイドに奥まで挿れたあげく夢中で腰振るなんて…変態なんですね♡」[p]
蕾「あっ♡　くぅぅっ♡　はぁっ♡　はぁっ♡　中、跳ねてるっ…♡　反応しすぎだからぁっ♡」[p]
蕾「ひあぁぁ♡　くっ…あぁぁっ♡　やっぱりメイドに興奮してるんじゃないの？　変態ご主人様♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛っ♡　んんぅっ♡　やっ…弱いトコ、ばっかり…突き上げないでぇっ♡」[p]
蕾「こ、壊れるっ♡　壊れちゃう…♡　ん゛っ♡　おおっ♡　腰掴んで固定だめっ♡」[p]
蕾「ひぅぅっ♡　ゆっくりトントンされて…すぐイッちゃう…！　気持ちいいのキちゃうからぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　揺さぶるの、激しっ…♡　もうっ…ぐちゃぐちゃになっちゃうぅ♡」[p]
[舜]「もう１度掃除し直しになっちゃったなぁ。マットレスもドロドロになりそうだし」[p]
蕾「んっ♡　はっ♡　あぁっ♡　だって…[舜]が激しくするからぁっ♡　しょうがないでしょっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「くっ♡　ふぅ、はっ、はぁっ♡　あぁっ♡　顔、本気になりすぎ、だからっ…♡」[p]
蕾「あんたのオスの顔…私しか知らないんでしょ？　はぅっ♡　あぁっ♡　悪い気はしないかもっ♡」[p]
蕾「あっ♡　あぁぁっ♡　これからも私にしか見せないでよっ…よそ見禁止だからっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁぁっ♡　んんっ♡　私のっ…めちゃくちゃになっちゃってる顔も…あんただけ…」[p]
蕾「独占していいからぁっ♡　他の誰かのこと考えるのもダメなんだからねっ♡　私だけにして…」[p]
蕾「約束っ…ああぁぁっ♡　なんで今興奮してんのっ♡　おっきすぎて…壊れちゃうからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃぅぅぅっ♡　んっ♡　おっ、おおおっ♡　腰っ、浮いちゃうぅっ♡　イッちゃう♡」[p]
蕾「お腹の奥…すっごく熱くなってるの…♡　はぁ、あっ、あぁっ♡　イク準備、始めてる♡」[p]
蕾「あんたのこと…受け入れる準備始めちゃってるのっ♡　勝手に体反応しちゃうぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_kaiwa1

[tb_start_text mode=1 ]
蕾「美味しいご飯を作って、一緒に食べたあとは…こうやって気持ちいいことでご奉仕するの♡」[p]
蕾「同棲したら、いずれは結婚かぁ♡　こういう新婚生活も悪くないかな～って思うんだけど…♡」[p]
[舜]「悪くない…っていうか、めちゃくちゃいいと思う…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa2

[tb_start_text mode=1 ]
[舜]「同棲してそのまま結婚もいいけど。夢があるのに、結婚してる場合じゃないんじゃないのか？」[p]
蕾「もちろん、夢は絶対叶えるつもりでチャレンジする。だから、いつかの話ってこと…♡」[p]
蕾「でも…もしあんたが、私のことすぐに欲しいから結婚してって言ったら…考えるかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa3

[tb_start_text mode=1 ]
蕾「あと…いっぱいエッチなことしてたら、新しい家族ができちゃうかもしれないし？」[p]
蕾「その時は、家庭に入ってもいっかなって思ってる♡　あんたとなら幸せになれそうだし…」[p]
蕾「誰にでも言ってるわけじゃないからね？　っていうか…こんなこと思うの、あんたが初めて…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_kiss1

[tb_start_text mode=1 ]
蕾「ちゅっ…んんっ♡　ちゅっちゅ…唇、あったかい…♡　んんっ♡　ちゅっちゅ♡」[p]
蕾「今日はいつもよりしつこくしちゃうよ？　だって…私以外を見てほしくないんだもん…」[p]
蕾「ねぇ、私知ってるよ？　私じゃなくて、他の誰かのこと、まだ気になってるって…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss2

[tb_start_text mode=1 ]
蕾「私のことだけ見て？　私なら、あんたが私にくれる以上の好きの気持ち、渡せるんだからっ」[p]
蕾「ちゅっ…♡　ちゅっちゅ♡　ね？　キスだけでも好きって気持ち、伝わるでしょ…？」[p]
蕾「はぁっ♡　ちゅ、ちゅっちゅ…まだ他の人のこと忘れられなくてもいいから…早く独占させて♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss3

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅく、ちゅっちゅっ♡　はぁ、はっ…んんっ♡　キスだけなのに気持ちいい…♡」[p]
[舜]「ふーっ…今日の蕾、めちゃくちゃエロいんだけど…ヤバい…」[p]
蕾「ホント？　私…されるばっかりじゃないんだって証明するから♡　骨抜きにしていい？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んぅぅっ♡　ふぅっ♡　ちゅっちゅ♡　ちゅぷっ…♡　ズルい、結局私が夢中になってる…」[p]
蕾「はぁ…キスだけなのに…体、熱くなってきちゃった♡　今日は私がリードする気だったのに」[p]
蕾「でもまだまだ負けない…♡　他の女の子なんか見えないくらい、夢中にさせるんだから♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ…あぁっ♡　はぁ、あぁっ♡　ローションでヌルヌルになってるでしょ？　んっ、ふぅ♡」[p]
蕾「掴めない感じ…もどかしい、でしょ…？　んっ♡　あぁっ♡　手、滑っちゃうもんね？」[p]
蕾「はぁっ♡　はぁっ♡　掴もうって一生懸命おっぱい触ってる姿…すっごいいいかも…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_munemomi2

[tb_start_text mode=1 ]
蕾「んんっ♡　はぁ、あっ…♡　やだ…ヌルヌルの感じ…気持ちよくなってきちゃった…♡」[p]
[舜]「乳首ももうビンビンに立ってるもんな？　いつもと違うから、余計敏感になってんのかも」[p]
蕾「あぁぁっ♡　やっ、乳首手のひらでスリスリ擦るの、だめっ♡　あぁっ♡　あんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「や、やだぁっ♡　そんな、焦らすみたいに…おっぱいやわやわ揉まないで…♡」[p]
蕾「おっぱいから…体の奥まで電流走ったみたいに気持ちよくなっちゃうの…ビリビリしちゃう♡」[p]
蕾「ひぅぅっ♡　あっ…あぁぁ…♡　やっ♡　もう腰動いちゃうの…勝手に動いて止まんないっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　はぁ、はぁっ、あぁっ♡　き、気持ちいいの…♡　切なくなってる♡」[p]
蕾「おっぱいも乳首もっジンジンしちゃってる…♡　もっと触ってほしくなっちゃうぅ♡」[p]
[舜]「今日は甘えんぼだな…めちゃくちゃ可愛い。たっぷり甘やかさないと…」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひゃぁぁんっ♡　あっ♡　あぁぁっ♡　ジュルジュル音立てて舐めるのすごいのっ…♡」[p]
蕾「はぁっ♡　あぁっ♡　何されてるのか余計に意識しちゃう…♡　気持ちいいしか考えられないっ」[p]
蕾「私ばっかり…夢中になるのやだぁ♡　あんたも…私のことだけ考えてっ、夢中になってよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_tikubiname2

[tb_start_text mode=1 ]
蕾「ひぅっ♡　あっ♡　あぁ♡　乳首ペロペロしながら…なんで顔見てるのよ…♡」[p]
蕾「下からのアングルなんてっ、絶対ビジュ悪いのにぃっ♡　変な顔しちゃってるし…」[p]
[舜]「気持ちよくてトロトロになってる顔、めちゃくちゃ可愛いしエロいからもっと見せろって」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「んんっ♡　おっぱい気持ちいいの…♡　乳首好きっ♡　もっとっ、もっと舐めて…♡」[p]
[舜]「こうやってワガママ言ってくれんのも可愛いんだって。はいはい、お嬢様…！　んんっ…！」[p]
蕾「ひゃうぅぅっ♡　ちゅくちゅく吸うの気持ちよすぎて…はぁ、あぁ、体の芯、熱くなってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ああぁっ♡　おっぱいだけなのに…イッちゃうかと思ったぁっ♡　こんなに気持ちいいなんて♡」[p]
蕾「おうちで甘トロ本気セックス…すっごい興奮してるのかも…♡　もう濡れちゃったもん…」[p]
蕾「でもいいでしょ？　エッチな体になっても…私のこと受け止めてくれるでしょ？」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ふふっ…あんたが頭撫でてくれるなんて…なんか意外♡　でも…すっごく嬉しい♡」[p]
[舜]「え、俺、頭撫でそうになかった？　でも確かに、前は女の子触る機会もなかったし…」[p]
蕾「も～っ、そういうことを聞きたいんじゃなくって…！　可愛いねとか、好きとか聞きたいのっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_naderu2

[tb_start_text mode=1 ]
蕾「当然だけど…ちゃんと男の人のおっきい手で…なんかドキドキしちゃうんだけど…」[p]
蕾「この手で…気持ちいいトコも撫でられて…ぐちゃぐちゃにされちゃうんだって思ったら余計に…」[p]
蕾「はぁっ、ん…♡　私がこんなにエッチになっちゃったの、絶対に[舜]のせいなんだからね…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「もう…くすぐったいってば…♡　でも…まっすぐ見つめながら撫でてくれるの嬉しいの…♡」[p]
[舜]「可愛いなって思ってたんだよ…こんな幸せそうにしてくれたら、目そらせないだろ…」[p]
蕾「かっこいいこと不意打ちで言ってくるのなんなのっ…ドキドキしちゃうじゃない♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_naderu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　はぁ、あっ…♡　やだ…撫でられてるだけで…体がジンって痺れちゃった…」[p]
蕾「恥ずかしいな…体がエッチなモードに切り替わっちゃってるせいかも…♡」[p]
蕾「欲しくて欲しくてしょうがないの♡　私…[舜]のことだけ見てるんだからね？」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁ…すごい…ガチガチになってる…♡　ふふ、なんだ、あんたも興奮してくれてたんだ♡」[p]
[舜]「当たり前だろ…蕾のこんなエロい姿見せられて、興奮するなって方が無理…」[p]
蕾「嬉しい…んっ♡　はぁ、あっ♡　おちんちん、たっぷり甘やかしてあげるからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata2

[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　んんっ…♡　ローションのヌルヌルで…すっごい滑ってるっ♡」[p]
[舜]「これ…ローションだけじゃないだろ…くっ…蕾の中から溢れてきてんじゃないのか？」[p]
蕾「はーっ♡　はーっ♡　あぁぁっ♡　ローションと蜜、合わさってトロトロになってるの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　んんっ♡　おちんちん、割れ目に擦れてるっ♡　熱々なの、伝わってる？」[p]
蕾「ひゃぁぁっ♡　あぁっ♡　くぅっ♡　あぁ♡　すごいガチガチ…血管も浮き上がってるでしょ？」[p]
蕾「はぁ、んんっ…擦れて…気持ちいいっ♡　ゾリゾリって割れ目めくれ上がって刺激強いのっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　やっ…おちんちんの先っぽ…クリに当たってるっ♡　コリコリって…♡」[p]
蕾「押しつぶされるみたいになってるっ…これっ、気持ちいいっ♡　好きぃっ♡　あぁぁっ♡」[p]
蕾「はぁっ♡　はぁっ♡　あんっ♡　あっ♡　先っぽ同士、キスしてじゃれ合ってるみたいだよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_tekoki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　あぁ…すっごいおっきくなってる…♡　気持ちよくなってくれて嬉しい♡」[p]
[舜]「これ、ヤバい…めちゃくちゃ気持ちいい…んんっ…なんでそんな触り方上手いんだよ…」[p]
蕾「あ、他の人としてたらどうしようって思ってるんだ？　そんなわけないでしょ？　あんただけ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_tekoki2

[tb_start_text mode=1 ]
蕾「先っぽのくびれたトコ、好きなんでしょ…？　ここもいっぱい触ってあげる…♡」[p]
蕾「はーっ♡　はーっ♡　はーっ♡　気持ちよさそうな顔…すっごくエッチなんだけど♡」[p]
蕾「してあげるってこんな気持ちなんだ♡　ふふ、悪くないかも…もっと気持ちいい顔、見せて♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_tekoki3

[tb_start_text mode=1 ]
蕾「ふぅ、ふっ…んんっ…♡　あぁ、ビクビクしてる…もう先っぽも膨らんで弾けちゃいそうだね♡」[p]
蕾「もう出したくて疼いてるんでしょ…♡　でもまだだーめ♡　しごいてる最中なんだから…」[p]
蕾「シコシコ、シコシコシコ…あぁ、気持ちいいでしょ？　歯食いしばってるの？　可愛い♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki=0"  name="H_tekoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_tekoki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あっ…あぁぁぁっ♡　はぁ、はぁっ…♡　私まで…お腹の奥キュンってしちゃったみたい♡」[p]
蕾「こんなおっきいの、中に入ったらどんな感じなんだろって想像したら…私、もうっ…♡」[p]
蕾「はーっ♡　はーっ♡　入り口、トロトロにとろけちゃった…中に挿れてもいいでしょ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　あっ…あっ♡　んんっ♡　気持ちいい…腰止まんなくなりそうっ♡」[p]
[舜]「くっ…ヤバ…こんなエロい腰の動き…いつの間に覚えたんだよ。搾り取られるっ…！」[p]
蕾「ふーっ♡　ふーっ♡　あんたの動き真似してるだけ…あとはっ、イメトレしたもん…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「はぁっ♡　あぅっ♡　あっ♡　中でビクビク跳ねてるっ…まだおっきくなるのっ！？　ああっ♡」[p]
[舜]「蕾がエロ過ぎるから悪いんだろっ…こんな興奮したの初めてってレベルなんだけど…！」[p]
蕾「はうぅっ♡　やった…私で興奮してくれてるなんて…♡　すっごい嬉しいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「あんっ♡　あっ♡　あぁっ♡　私のことだけ見ててっ…♡　私もあんたのことだけ見てるから♡」[p]
蕾「ふぅっ、んんっ♡　あんたの上で…夢中で腰振ってるの…♡　おちんちん奥まで挿れて──」[p]
蕾「いっぱい締め付けて、出して出してっておねだりしてるんだから♡　ラブラブでしょっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　んんっ♡　お、奥っ…当たってるっ♡　はっ♡　はっ♡　はっ♡　あんっ♡」[p]
蕾「んくぅぅっ♡　おっ♡　おおおっ♡　か、体、勝手に…ビクビクって跳ねちゃうのっ…♡」[p]
蕾「気持ちよすぎて…息するのだけでやっとになってる…んくぅぅっ♡　あぁ、気持ちいいのぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「あっ♡　あっ♡　あっ♡　おちんちん揉みくちゃになっちゃったね…♡　はぁ、んんっ♡」[p]
蕾「いっぱい締め付けて、キュウキュウって押して…精子出せるようにしてあげるっ♡」[p]
蕾「私の中に全部注ぎ込んで…♡　出したくてウズウズしちゃうでしょっ♡　ほら、ほらほらほら♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「あうぅぅっ♡　あんっ♡　くぅぅっ♡　自分で動くのがこんなに気持ちいいなんて…」[p]
[舜]「へぇ、気に入ったなら、これから上に乗って腰振ってもらうのもいいかもなぁ？」[p]
蕾「はぁっ♡　あっ…余裕なの、ムカつくっ♡　あんたももっと…めちゃくちゃになればいいのにっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「くっ…ふぅっ、ふっ…あぁ、ヤバ…気持ちいいっ…搾り取られそ…」[p]
蕾「はぁっ♡　あぁ♡　んんっ…とろけてきたでしょ♡　もっと私に夢中になればいいのっ♡」[p]
蕾「あっ♡　あっ♡　あんっ♡　よそ見する余裕なんかないくらいっ、頭の中私でいっぱいにしてっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅぅっ♡　あぁぁっ♡　何、これっ…ひぅっ♡　電流走ったみたいになってるっ…♡」[p]
蕾「んっ♡　あっ、あぁっ♡　気持ちいいトコ…先っぽ擦れて…わかんなくなっちゃうぅ♡」[p]
蕾「気持ちいいっ…！　気持ちいいのっ…♡　腰止まんないっ♡　イッちゃうよぉっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「へぇ…蕾しか見えなくなるくらい、ご奉仕してくれるんだ？　楽しみだな」[p]
蕾「まだ余裕の顔してるの？　すぐ、わけわかんなくなるくらいドロドロにしてあげるんだから♡」[p]
蕾「もう私以外の女の子なんか見えなくする…私のことばっかり考えるようにしちゃうからね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa2

[tb_start_text mode=1 ]
蕾「新婚さん気分でイチャイチャしてよ♡　結婚したばっかりで、私が奥さんのつもりで♡」[p]
[舜]「ってことは、１番ラブラブな時期だな。っていうか、次は子作りする番じゃん」[p]
蕾「そうだよ？　だからいっぱい気持ちよくなって、熱々の精子出さなきゃだめなんだからね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa3

[tb_start_text mode=1 ]
蕾「ね、結婚前提で同棲したら…毎日セックスしたくなっちゃう？　その気になって…勃っちゃう？」[p]
[舜]「そりゃあ…まぁ。でも次の日のこと考えたら、無茶はできないよな…」[p]
蕾「え～？　欲しがってくれたほうが、女の子は嬉しいんだよ？　イチャイチャするだけでも幸せ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_2_Dkiss1

[tb_start_text mode=1 ]
蕾「ちゅ、ちゅっちゅ、ちゅ、じゅるるるるっ♡　んんっ♡　ねぇ…まだ私以外の女の子気になる？」[p]
[舜]「何言ってんだよ…そんなわけないだろ…俺は蕾だけで──」[p]
蕾「嘘。ほんっとわかりやすいんだから…でも今は私が彼女でしょ？　よそ見しないで？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss2

[tb_start_text mode=1 ]
蕾「ちゅ、ちゅぷ、ちゅっちゅ、んんっ♡　私だけを見て、私以外じゃ興奮しないようになってよ♡」[p]
[舜]「そ、それはどうだろうなー…男は、刺激で簡単に勃起する生き物だから」[p]
蕾「もうっ…！　そこは私だけって言ってよっ。一緒にいる間は興奮させるんだからっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss3

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅ、ちゅっ、ちゅ♡　はぁ、あぁ…舌絡ませるの気持ちいい…♡　じゅるるる♡」[p]
蕾「んんっ♡　同棲したら…毎晩こんなエッチなキスできちゃうんだ…♡　一緒に暮らすのいいかも」[p]
蕾「あんたが勃起しちゃったら…キスの続きもしちゃお？　どんなことでも…付き合うから♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ちゅぷ、んんっ♡　ふーっ♡　ふーっ♡　キス、気持ちいいっ♡　んんっ、好き、好き♡」[p]
蕾「ちゅぷ、ちゅちゅっちゅ♡　じゅるるるるっ♡　はぁ、私…こんなにエッチじゃなかったのに♡」[p]
蕾「すっごいがっついちゃってる…恥ずかしいのに…体が熱くて興奮収まらないの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ…♡　あんっ♡　あぁ…♡　激し…んんっ♡　おっぱい揉みくちゃにしてるのっ…？」[p]
蕾「求めてくれるの、嬉し…♡　いいよ、[舜]の好きにして♡　おっぱいも体も全部…♡」[p]
蕾「ひぅぅっ♡　あっ♡　あんっ…♡　ふーっ…ふーっ…興奮してる顔…すっごい好きなの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_munemomi2

[tb_start_text mode=1 ]
[舜]「あー、めっちゃ柔らか…おっぱいとろけそうなんだけど…指沈み込んでる…」[p]
蕾「んんっ♡　はぁ、あっ…感触楽しむみたいに触られちゃってる…♡　エッチすぎだってばぁ♡」[p]
蕾「はぁ♡　あっ♡　あっ♡　ひぅぅ♡　おへその下…キュンって痺れちゃってるの…♡[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「フーッ♡　フーッ♡　んんっ♡　おっぱい大好きなんでしょ？　もっと触って…♡」[p]
蕾「ひぅっ♡　あぁ♡　他の誰にも触らせたことないんだから…♡　しっかり楽しんでよね？」[p]
蕾「ほら…私のことしか考えられなくなってきちゃったでしょ♡　よそ見、できなくなっちゃうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁっ♡　あっ♡　んんっ♡　誘惑しようって思ってたのにぃっ♡　んんっ、あぅぅっ♡」[p]
蕾「結局っ、私のほうが気持ちよくなって…我慢できなくなっちゃうじゃないっ…♡」[p]
蕾「はぁっ♡　あぁ…やだ…腰まで勝手に動いて…んんっ♡　恥ずかしいから見ないでぇっ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぅぅっ♡　はぁっ♡　あっ、乳首、敏感なんだってばっ♡　いきなり触るの反則っ♡」[p]
[舜]「ホントだ…ぷっくり膨らんで、プリップリだな…めちゃくちゃエロい…」[p]
蕾「あぅぅっ♡　あっ♡　それっ…指の腹で撫でるの…だめ、だめ…気持ちよすぎちゃうっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri2

[tb_start_text mode=1 ]
蕾「はぅ♡　あっ♡　あぁっ♡　やっ♡　乳首ばっかりコリコリするの…だめだってばぁ…♡」[p]
蕾「ふーっ…ふーっ♡　顔、絶対だらしなくなってるもん…見られちゃうのがやなの…」[p]
蕾「可愛い顔にしてる余裕なんかないし…気持ちよすぎてっ、とろけちゃいそうなのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅっ♡　あっ♡　それっ、すごいのっ…きゅ～って摘ままれるとっ♡　あんっはぁ、あんっ♡」[p]
[舜]「体のけ反ってんなぁ…そんなに気持ちいいんだ？　気持ちいいなら教えてくれなくちゃ」[p]
蕾「んんっ♡　くぅぅっ♡　わかってるくせにぃっ…♡　すっごく気持ちいいの…おかしくなるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃうぅぅっ♡　あっ♡　あうぅっ♡　気持ちいいっ…♡　乳首だけでイッちゃうっ♡」[p]
蕾「はぁっ♡　あぁぁっ♡　ビリビリ電流走ってる♡　気持ちいいでいっぱいになってる♡」[p]
蕾「ふーっ、ふーっ…♡　一緒に暮らしたら毎晩おっぱいも乳首もトロトロにしてほしいの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「くすぐったいってばっ…足ばっかり触ってるの？　触り心地いいなって思ってる？」[p]
[舜]「うん、程よく柔らかくて…細くて…スベスベだし触り心地最高だなって」[p]
蕾「そりゃあ…トレーニングとかケアとかいろいろしてきてるから…まだまだだけどね」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_naderu2

[tb_start_text mode=1 ]
[舜]「最高の足だと思うよ…蕾が目一杯努力してきた結果なんだろうなってわかる…」[p]
蕾「も、もうっ…このタイミングでいきなり褒められたら…どう答えたらいいかわからないじゃない」[p]
蕾「他の人には触らせたりしないけど…あんただけは好きに触っていいからね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「足…お客さんにも、よく『マッサージしてあげる』とか『触らせて』って言われてるの」[p]
蕾「…あれ？　ヤキモチ？　ふふ、珍しくない？　そっかそっかぁ、[舜]が嫉妬かぁ…」[p]
蕾「ふふっ♡　嬉しいに決まってるでしょ。大丈夫、他の誰にも触らせないから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_naderu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁっ♡　んんっ…その触り方、反則だからっ…♡　んんっ…不意打ちでエッチに触るなんて」[p]
蕾「その触り方、どこで誰に試したのか気になるんだけどっ…疑うに決まってるでしょ？」[p]
蕾「私だけって言うまで、触らせてあげないからね？　ひゃぁっ♡　もう、勝手に触らないでっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「はぁ、んっ♡　あぁ…♡　おっきい…反り返っちゃってるじゃない…♡」[p]
蕾「押し当てるだけですっごい質量なのに…こんなの中に入ったらどうなっちゃうんだろ♡」[p]
蕾「お腹の奥まで…いっぱいになって…いろんなもの圧迫されちゃいそ♡　手加減してよね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata2

[tb_start_text mode=1 ]
蕾「はーっ♡　はーっ♡　はーっ♡　んんっ♡　どう？　トロトロのココで擦られるの…」[p]
[舜]「すっごい気持ちいい…ヤバ。マジであっという間に出ちゃいそ…」[p]
蕾「はぁ♡　はぁ♡　んんっ…その顔が見たかったの♡　もっと気持ちいい顔見せてっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あうぅっ♡　あっ…おちんちんビクビク跳ねてるっ…♡　んんっ、余計擦れてっ…♡」[p]
蕾「こんなのっ…気持ちいいに決まってるっ♡　あぁっ♡　あっ♡　だめ、腰、動いちゃう…♡」[p]
蕾「はーっ♡　はーっ♡　あっ♡　んんっ、ヌルヌル過ぎて…中入っちゃいそうなのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　ん、くぅぅっ♡　引っかかって…擦れ合ってる…♡　気持ちいいっ♡」[p]
蕾「熱いのがお腹の奥から…こみ上げてきてる…♡　んんっ、やだぁ、私のほうが先にイッちゃう♡」[p]
蕾「はぁっ♡　はぁっ♡　私に夢中になってもらおうって思ってるのに…悔しいのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_tekoki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ…はぁ、あぁ♡　すっごい♡　先っぽも根元も全部ガチガチになっちゃってる♡」[p]
蕾「すごい…ヌルヌルしたのが溢れてきてる…これが我慢汁、なんでしょ？　ふふ、可愛い♡」[p]
[舜]「くっ…はーっ、はーっ…蕾の触り方がエロすぎるからだって…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_tekoki2

[tb_start_text mode=1 ]
蕾「熱くてガチガチ…♡　すっごいおっきくなってるよ。先っぽと根元のほう、どっちが好きなの？」[p]
[舜]「いや、両方気持ちよくて比べらんないから…！」[p]
蕾「ちゃんと比べて…真ん中から根元までシコシコされるのと…先っぽ撫でられるのどっちがいい？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_tekoki3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「フーッ♡　フーッ♡　あぁ…すっごいエッチな匂いしてる…おちんちん触ってるだけなのに…」[p]
蕾「私までお腹の奥キュンってしちゃったじゃない…体が勝手にすごい興奮してるみたい♡」[p]
蕾「これが入ったら、どうなっちゃうんだろ…あっ！　や、やだ…私、何言ってんだろ…恥ずかし」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki=0"  name="H_tekoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_tekoki_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅぅっ♡　んんっ♡　はぁ、あっ…♡　体、変なの…♡　しごいてるだけ、なのに…♡」[p]
[舜]「蕾、すっごいエロい顔…今すぐめちゃくちゃにしたくなるだろ…」[p]
蕾「ひゃっ…またおっきくなってるんだけど…！　興奮しすぎだってば♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「ひぅっ♡　あっ♡　あんっ♡　はぁっ♡　あぁ♡　目、閉じないでよ…私のこと見てて♡」[p]
蕾「ほら…私の中、出たり入ったりしてるでしょ♡　ふーっ♡　ふーっ♡　あっ、んんっ♡」[p]
蕾「奥までっ♡　ヌルヌルって入ってきちゃってるの♡　はぁ、先っぽ…１番奥当たってるってば♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「んっ♡　はぁ、あんっ♡　同棲して…結婚したらこうやって子作りするのかな♡」[p]
蕾「もう一足先に子作りしちゃってるか♡　んんっ♡　いっぱいおちんちん締め付けてあげる♡」[p]
蕾「赤ちゃんできたら…責任取ってくれるんでしょ？　私のことっ…世界一可愛いママにしてよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「ひゃぅぅっ♡　あぅ♡　はっ、興奮しすぎっ♡　また中でおっきくなってる…♡」[p]
蕾「私のこと…ママにしようっておちんちんが本気出してるってこと？　んんっ、かっこいいね♡」[p]
蕾「でもっ…まだまだ足りないからねっ♡　もっと頑張ってもらわないとっ♡　あっ♡　あんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛っ♡　い、今のっ…すごいのぉっ♡　はぁ♡　奥っ、トントンってノックされてるっ♡」[p]
蕾「私の中っ、[舜]の形になっちゃってるみたい♡　あんた仕様の体になっちゃったの…♡」[p]
蕾「んんっ…くぅっ♡　はぁ、はっ…[舜]のおちんちんだけ受け入れるから…いっぱい出して♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　あっ♡　んんっ♡　私にいっつも顔緩んでるとか言うくせにっ…♡」[p]
蕾「今日はあんたのほうが顔とろけてるみたいだけど？　ふーっ、はぁ♡　情けない顔になってる♡」[p]
蕾「おちんちん気持ちよくなっちゃうでしょ♡　ふふ、私がこの顔させてるんだって思うと嬉し♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　んんっ♡　腰っ…止まらなくなっちゃうぅっ♡　やっ…勝手に動くの♡」[p]
蕾「あぁ♡　へこへこって…んんっ♡　中も外も…いっぱい擦りつけて気持ちよくなっちゃうぅぅ♡」[p]
蕾「こんなの覚えちゃったら…癖になっちゃうってばぁ♡　気持ちよすぎておかしくなりそうっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「ひっぐぅぅっ♡　おっ♡　おおっ♡　中でっ、おっきくなって…♡　すごい圧迫感なのっ♡」[p]
蕾「これでもう他の女の子のことなんか考えられないでしょ？　私のことだけ考えて…♡」[p]
蕾「誰かの代わりでいいなんてしおらしいこと言うタイプじゃないんだからっ…！　私だけ見てて」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おおおおっ♡　んぅぅっ♡　気持ちいいっ♡　おまんこおかしくなっちゃうぅぅっ♡」[p]
[舜]「蕾のことだけ考えて…蕾に射精したくてウズウズしてんだよ…伝わってる？」[p]
蕾「伝わるっ♡　伝わってりゅっ♡　はぁ、あっ♡　私のことだけ考えてくれるの、嬉しいのぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_kaiwa1

[tb_start_text mode=1 ]
蕾「言っとくけど…！　私は絶対にお客さんとエッチなことしないんだからね！」[p]
[舜]「俺とはしてるだろ？　迫られたりして、断れなかったことはないのか？」[p]
蕾「あるわけないでしょ！　あんたとは…しちゃったけど…あくまであんただけだからっ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa2

[tb_start_text mode=1 ]
[舜]「『セックスしたい』って金持ちのお客さんから札束積まれたらどうすんの？」[p]
蕾「えっ、札束…？　それって大金ってことよね？　それは考えちゃうかも──」[p]
蕾「冗談に決まってるでしょ。私は好きな人としかエッチしたくないもの。お金の問題じゃないの」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa3

[tb_start_text mode=1 ]
蕾「ホントはロマンティックな雰囲気で、イチャイチャするエッチが好きなんだからね？」[p]
[舜]「でも、普段仕事してる場所でエロいことする背徳感も癖になるかもしんないぞ？」[p]
蕾「もうっ…！　勝手なことばっかり言って…何かあっても知らないからね…？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　やんっ…耳に息かかってるってばっ…♡　んんっ♡　くすぐったいっ♡」[p]
蕾「あっ♡　あんっ♡　ねっとり舐めないでぇっ…もうダメだって言ってるでしょっ…」[p]
蕾「ストップっ…！　ストップだってばぁっ♡　あんっ♡　あっ、あぁっ♡　やめてってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_miminame2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひゃんっ♡　あっ♡　あんっ♡　ねっとり舐め回しすぎ…だめ、だめだってばっ♡　んんっ♡」[p]
[舜]「へぇ、耳舐められて興奮してんだ？　体中敏感だもんな、蕾は」[p]
蕾「あぁぁっ♡　耳元で喋んないでっ♡　んんぅぅっ♡　別に興奮してるわけじゃないからっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_miminame3

[tb_start_text mode=1 ]
蕾「あぁぁっ♡　ちょ、ちょっとっ…耳の奥っ…舐め回さないで…♡　あっ♡　あぁぁぁっ♡」[p]
蕾「んっくぅぅっ♡　はっ♡　はっ♡　やっ…ジュポジュポって…音、立てるのもダメェっ♡」[p]
蕾「やっ…もうからかうならこれくらいで終わりにしてよ…これ以上はホントにダメだってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃぅぅぅっ♡　あぅっ♡　耳奥っ、ズポズポ出し入れっ、すごいっ♡　はっ、あっ、あっ♡」[p]
[舜]「腰、勝手にヘコヘコ動いてんじゃん。もう体はエロいスイッチ入ってんじゃないの？」[p]
蕾「んぅぅっ♡　馬鹿っ！　あんたがエロい舐め方するからでしょっ…フーッ、フーッ…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「フーッ、フーッ、フーッ…絶対声出したりしないしっ…リアクションしないんだからっ」[p]
[舜]「いつまで続くかな？　ほら…乳首撫でられるの、大好きだもんなぁ？」[p]
蕾「あっ♡　あぁぁぁっ♡　もうっ…やだぁっ…乳首ばっかり意地悪しないでぇっ♡　あっ、んっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_tikubiijiri2

[tb_start_text mode=1 ]
蕾「んっ…くっ…♡　んぅぅぅっ♡　ふぅっ♡　やだっ…こんなとこで…乳首ばっかり触られたら…」[p]
蕾「声、出ちゃうぅ…んんっ♡　ふぅっ♡　ふっ…私はっ、流されたりしないんだからっ…！」[p]
蕾「はぁっ♡　あっ♡　くぅぅっ♡　感じてるわけじゃないからね…ただ…反応してるだけなのっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「はぁっ♡　はぁっ♡　ここでこれ以上したら…怒るからねっ…んんっ！　乳首もっ、だめっ♡」[p]
[舜]「睨んでも、顔真っ赤になってるから…余計エロいんだけど？　乳首気持ちいいんだ？」[p]
蕾「気持ちいいわけじゃないっ♡　こんなところでっ、いきなりされて怒ってるだけっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁっ♡　乳首スリスリっ♡　だめっ♡　あっ♡　あんっ♡　腰動いちゃう…♡」[p]
蕾「な、なんでっ…自分で動かしてないのにっ♡　カクカクって勝手に…動いてるの♡」[p]
蕾「くぅっ♡　やだやだ、見ないで…恥ずかしい格好になっちゃってる…こんなはずじゃないのに」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あうっ♡　はぁ、あっ…おっぱいから手離してってばぁ。何で好き放題してるのよっ」[p]
[舜]「嫌なら強引に振り払えばいいのに。蕾ならできるだろ。しないってことは嫌じゃないんじゃないか？」[p]
蕾「ち、違っ…またそうやって意地悪なことばっかりっ！　あんたなんか嫌いっ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi2

[tb_start_text mode=1 ]
[舜]「イヤイヤしてても、乳首はぷっくり膨らんでるみたいだけどなぁ？　ほら、手のひらに当たる」[p]
蕾「ひあっ♡　あっ♡　あんっ♡　手のひらでスリスリ、だめぇぇっ♡　敏感だからっ…♡」[p]
蕾「はぅぅっ♡　んっ…わざと乳首狙って…触ってるでしょっ♡　ずるいってばぁっ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「んんっ♡　仕事場で…気持ちよくなるなんてダメなのにっ…私はルール違反はしないのに♡」[p]
[舜]「でもほら、お客さん相手じゃなくて彼氏とのラブラブセックスだから」[p]
蕾「そういう問題じゃなくてっ…ここでエッチなことするのがダメだって言ってるんだってば♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁぁぁっ♡　んんっ♡　触り方っ、エッチすぎっ…♡　おっぱいとろけちゃう♡」[p]
[舜]「蕾、めちゃくちゃエロい声出てるけど？　ダメだって言いながら気持ちよくなってんだろ」[p]
蕾「んんっ♡　だってっ…弱いところばっかりずーっと触るんだもん…気持ちよくなっちゃうの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁ♡　あっ♡　そこはホントにダメッ…クリ敏感なのっ♡　スリスリしないでぇっ♡」[p]
蕾「あっ♡　あっ♡　あっ♡　こ、腰浮いちゃう♡　仕事場なのにエッチなことされちゃってるっ♡」[p]
[舜]「ほら、めちゃくちゃ興奮してんじゃん…おまんこもぐしょ濡れになってるし…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「ヤッバ。もう割れ目の外まで濡れてんじゃん…クリもヌルヌルになってるし」[p]
蕾「やっ♡　だめっ…そこばっかり…コリコリってしないで…♡　おかしくなっちゃう♡」[p]
蕾「あっ♡　あっ♡　んっ♡　いつも仕事してるところなのに…エッチなことしちゃだめなのにっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　やっ！　先っぽ…カリカリ…だめ、だめだめだめっ♡　壊れちゃうっ♡」[p]
蕾「ひぅっ♡　あっ♡　ビリビリ気持ちいいの痺れてっ…お腹の奥までジンジン熱くなってるの♡」[p]
蕾「んんっ♡　仕事中にエッチなことしちゃったって思い出しちゃったらどうするの…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぅぅぅっ♡　あっ♡　んっ♡　ひぐぅぅっ♡　声、我慢できないぃっ♡」[p]
蕾「押しつぶすみたいに…揉まないでぇっ♡　刺激強すぎて…なんにも考えられなくなっちゃう♡」[p]
蕾「あっ♡　あぁぁっ♡　やっ…だめ、ホントにイッちゃう…♡　やだやだやだぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「ちょ、ちょっとっ…！　お尻はダメっ…何考えてんの。こんなところで…」[p]
蕾「私のこと…本当に普段からエッチなことやってるような女の子だって思ってるんじゃないの？」[p]
蕾「お客さんから誘われても断ってるに決まってるじゃないっ！　好きな人とじゃなきゃ無理…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_anaruijiri2

[tb_start_text mode=1 ]
蕾「んんっ♡　やっ…ほぐさないで…お尻…汚いってばぁ…♡　そんなとこ触んないでよ♡」[p]
[舜]「汚くないよ。めちゃくちゃ可愛い…きゅ～って閉じててヒクヒクしてて。いじめたくなる」[p]
蕾「やっ…やだいじめないでっ♡　そこはっ…挿れる場所じゃないんだってばぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_anaruijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「んぅぅぅっ♡　だ、だめっ♡　そこっ…撫でられるの変な感じしちゃう…♡　ほぐれてきてる…」[p]
蕾「お尻、とろけさせてどうするつもりなのっ？　ここにはなんにも入らないからね？」[p]
蕾「だから、これ以上はだめだって…んっ♡　あっ♡　あぁぁぁっ♡　私の話、聞いてよおっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あうぅっ♡　あぁぁっ♡　お尻なのに…こ、こんなに気持ちいいなんて…私の体変なの…？」[p]
蕾「ひっぐぅ♡　んん…はぁっ♡　はぁっ♡　ヒクヒクってしちゃう…やだ、違うのぉっ♡」[p]
蕾「あっ♡　あんっ♡　ただ気持ちいいだけで…受け入れる準備してるわけじゃないからぁっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あうっ♡　あぁっ♡　指っ…ジュポジュポ出し入れするのっ…だめなのぉ♡」[p]
[舜]「ダメって言ってるのに、すっごい締め付けだけど？　蜜も飛び散ってんじゃん…！」[p]
蕾「ひぅぅっ♡　あぁぁ♡　だって…弱いところ当たって擦れてるんだもん♡　我慢できないっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あっ♡　あっ♡　んっ、くぅぅっ♡　激しっ…中ぐちゃぐちゃになってるのっ♡」[p]
[舜]「腰浮いてるじゃん。そんなに気持ちいいんだ？　正直に教えてくれないとやめちゃうよ？」[p]
蕾「やっ…やだっ…気持ちいいっ♡　気持ちいいからぁっ♡　ここまでしてやめないでっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman3

[tb_start_text mode=1 ]
[舜]「気持ちいいんだ？　どこがどんなふうに気持ちよくなってるのか教えて？」[p]
蕾「んんっ♡　意地悪っ…♡　お、おまんこがっ…キュンキュンって気持ちよくなってるのっ♡」[p]
蕾「それっ♡　好きっ♡　んっ♡　内側ナデナデされて…気持ちよくって力抜けちゃいそうなのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ああぁぁぁっ♡　やっ…イッちゃうっ♡　イッちゃうのぉ♡　普段っ、働いてるとこなのに♡」[p]
蕾「おまんこトロトロにされて…イク準備始めちゃってるっ♡　やだぁっ、悪い子になっちゃう♡」[p]
蕾「はぁっ♡　あぁ♡　気持ちよすぎてっ、止まらない…流されちゃうよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　ほ、ほんとに入っちゃってる…♡　や、だめ、だめぇっ♡」[p]
蕾「んんっ♡　仕事場でセックスしちゃうなんてっ♡　私も他の女の子たちと同じになっちゃうっ♡」[p]
[舜]「真面目だよな蕾は…！　大丈夫だよ、俺たちは客とスタッフじゃないんだから…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「あうっ♡　んんっ♡　奥まで…届いてっ…弱いトコ、コリコリって当たってるのっ♡」[p]
蕾「はぁっ♡　あっ♡　あっ♡　ゆっくりだからっ、余計に感触伝わってきてるの♡」[p]
蕾「お腹の奥…いっぱいになっちゃってるの♡　感触、体が覚えちゃうってば♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「[舜]の…いつもよりおっきくなってるっ♡　あんただって…興奮してるんでしょっ♡」[p]
[舜]「そりゃそうだろ…興奮するよ、蕾が普段仕事してるトコでエロいことしてるんだから…！」[p]
蕾「んんっ♡　変態っ♡　もう絶対こんなことしないんだから…今回だけだからねっ！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　奥…ゾリゾリって当たってるっ♡　やっ、腰…浮いちゃうぅぅっ♡」[p]
[舜]「刺激受け流そうとしてもダメだって。腰がっちり抑えてんだから逃げられるわけないだろ」[p]
蕾「ひぅぅっ♡　あっ♡　奥ばっかりっ、突き上げないでぇっ♡　わかんなくなっちゃうってばっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「くぅっ♡　ん゛っ♡　ん゛っ♡　あぁぁ♡　せっかく掃除したのに、全部汚れちゃったぁ♡」[p]
[舜]「また掃除し直しだな…手伝うって。だから余計なこと考えないで気持ちよくなればいいじゃん」[p]
蕾「あ゛っ♡　あ゛っ♡　もうこんなことっ、しないからねっ♡　仕事場でセックスなんてぇっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「口ではダメだって言っても、すっごい締め付けだけど…やっぱ体は喜んでるじゃん」[p]
蕾「そんなことないっ♡　あっ♡　んんっ♡　ルール違反はしないんだって決めてたんだからっ♡」[p]
蕾「いけないことはしないって…決めてたのにっ♡　なのに…なんでこんなに気持ちいいのよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「あっ♡　んっ、ふぅ、ふっ…♡　激しっ…中でさっきから脈打ってるでしょ…わかるんだから♡」[p]
[舜]「大正解…！　アメリアちゃんは相手のことよく見てるんだな…！」[p]
蕾「んんっ♡　その名前で呼ぶのやめてよっ…！　仕事中みたいな気分になるでしょっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁっ♡　あっ♡　あぁぁっ♡　ダメなトコっ♡　ぴったり当たっちゃってりゅ…♡」[p]
蕾「そこばっかりトントンされたらっ…壊れるっ、壊れちゃうからぁっ♡　だめだめだめぇっ♡」[p]
蕾「おっ♡　おおおっ♡　や、だぁ♡　体っ、勝手に動いて…変になってるのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_kaiwa1

[tb_start_text mode=1 ]
蕾「私のこと…緩い女だって思ってる？　知らない人にどう思われようと、関係ないけど…」[p]
蕾「[舜]に、お客さんからお小遣いもらうためにエッチするような女の子だって思われたくないの」[p]
蕾「私、絶対しないから…！　ルール守らないのも嫌だし…好きな人としかエッチしないもの」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「誰とでもエロいことするような子だなんて思ってないって。誘われてないか聞いたんだよ」[p]
蕾「ホント～？　それならいいけど…誘われることは…そりゃあ何度もあるけど…」[p]
蕾「だってエッチなお店だと思って来るお客さんも多いし。私は適当にあしらってるけどね！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa3

[tb_start_text mode=1 ]
蕾「私、仕事はお金を貰う以上しっかりやるし、ルールはちゃんと守るようにしてるんだから」[p]
蕾「一生懸命頑張って、お客さんから信頼してもらってるママの姿見てるからね。私も負けられない」[p]
蕾「だから…簡単にエッチなことでお金稼いだりするのは好きじゃないの。私はしないからね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっ♡　待って…なんで舐めてるのよ…ひゃっ…強引に迫ればいいって思ってるんでしょ？」[p]
蕾「そんなに簡単にとろけたりしないんだから♡　んんっ♡　耳ばっかり舐めてもだめだよっ♡」[p]
蕾「職場では真面目に仕事するのっ…ルール違反なことする子たちとは違うんだからねっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_miminame2

[tb_start_text mode=1 ]
蕾「んんっ♡　ふーっ…ふーっ…あぁっ♡　お、音立てて舐めないで…ジュポジュポさせるの反則…」[p]
蕾「[舜]の息とエッチな音しか聞こえないよ…他になんにも聞こえなくなってるっ♡」[p]
蕾「ひうぅっ♡　やだぁ…頭の中までエッチな音でいっぱい…体の奥ムズムズしてきちゃう、からっ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　ヌルって奥まで舌入ってきちゃった…♡　だめ、抜いてっ♡　はぁ、んっ♡」[p]
蕾「こんなのっ…舌で耳奥まで犯されてるみたいだよ♡　ジュポジュポピストンされちゃってるっ♡」[p]
蕾「耳でセックスしちゃってるんだって思うと…おへその下…キュンって反応しちゃっう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひっぐぅぅっ♡　あっ♡　あぁぁっ♡　ゾワゾワって…気持ちいいのこみ上げてきてるっ♡」[p]
[舜]「あーあ、ダメって言ってたのに…顔ゆるゆるになってんじゃん。蕾弱すぎ」[p]
蕾「んんっ♡　ち、違…あんたが耳の奥まで舐め回すから♡　勝手に反応しちゃってるんでしょ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「やっ…乳首摘まんでコリコリしないで…そこ、弱いって知ってるでしょ…んんっ♡　あっ、あぁ♡」[p]
[舜]「だからこねてるんだよ。乳首集中狙いしたら…あっという間に気持ちよくなっちゃうんだろ？」[p]
蕾「あぁっ♡　意地悪っ…♡　私、簡単に流されないからねっ…？　普段だってちゃんと断ってるし」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_tikubitumami2

[tb_start_text mode=1 ]
蕾「フーッ♡　フーッ♡　あぁ…乳首カリカリも…だめなの…先っぽばっかり刺激しないでぇ♡」[p]
[舜]「ん～？　流されないんじゃないのか？　断ってるって言葉も怪しく聞こえるなぁ」[p]
蕾「ちゃんと断ってるってば…！　あんたが…私の弱いトコ知っててそこばっかり触るからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁぁっ♡　やっ…お、おっぱい気持ちいい…はぁ、んっ…足の間…熱くなって…」[p]
蕾「ジリジリってして疼いちゃってる…やだ、私の体こんなにエッチになっちゃったなんて」[p]
蕾「どうしよう、恥ずかし…絶対にしないって思ってたのに。こんなはずじゃなかったのにぃっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぅぅっ♡　あっ♡　乳首っ…キュ～って摘ままないでっ…こんなのっ、おかしくなっちゃう♡」[p]
蕾「はっ…はぁ、はぁっ…♡　んんっ♡　くぅぅっ…私の顔と反応見て…喜んでるんでしょ…」[p]
蕾「悔しいっ…ダメって言ってるのに…触られると体がビクビクってしちゃう…悔しい…」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひゃうぅっ♡　あっ…そんな鷲掴みにされちゃうなんて…んんっ♡　だめ、離してっ♡」[p]
[舜]「なあ、お客さんにいきなりおっぱい揉まれたらどうすんの？　ちゃんとダメって言えんの？」[p]
蕾「言えるに決まってるでしょ…ちゃんと振り払って…んっ♡　ダメですって言えるんだからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_munemomi2

[tb_start_text mode=1 ]
蕾「あっ♡　んんっ♡　やっ…おっぱいの形変わっちゃうっ…あんたの手のあとついちゃう♡」[p]
[舜]「じゃあ、俺仕様のおっぱいになるんだ…それめっちゃいいじゃん。揉みしだいてとろけさせよ」[p]
蕾「やっ…もうっ、変態なんだから…♡　んっ♡　んんっ♡　おっぱいばっかりだめぇ…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「職場でこんなことしてるってバレたら大変なんだからねっ？　んっ♡　あぁっ、わかってるの？」[p]
[舜]「へぇ、でも乳首はビンビンに立ち上がってるけど？　体は欲しがってるみたいだなぁ」[p]
蕾「ひぅぅっ♡　触られてるから…自然に反応してるだけだもん♡　欲しがってるわけじゃないの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひゃうぅぅっ♡　あぅ♡　おっぱいだけなのに…頭の中…火花散ってるみたい♡　はぁっ♡」[p]
蕾「なんで…いつもより敏感だし気持ちよくなってる♡　はぁ、はぁっ…あんたの言う通り──」[p]
蕾「普段働いてる場所でエッチして興奮しちゃってるのかも…私いやらしい子になっちゃったんだ…」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁぁっ♡　あっ…刺激っ、強すぎなのっ…そこばっかり触らないで…だめ、だめっ♡」[p]
[舜]「すっごいクリおっきくなってるよ？　ほら、チンポが勃起してるみたいになってる」[p]
蕾「やっ…恥ずかしいこと言わないでよ♡　んんっ♡　そんなにおっきくなってないでしょっ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_kuriijiri2

[tb_start_text mode=1 ]
[舜]「ほーら、アメリアちゃんのメイドクリチンポ、シコシコしてあげような。シコシコシコシコ」[p]
蕾「おっ♡　おおっ♡　あっ、あぁっ♡　やっ、だめ、だめだめっ♡　頭おかしくなりゅっ♡」[p]
蕾「こんなのっ、知らないっ…♡　あぁぁっ♡　腰、動いちゃう♡　止まんないっ、変になっちゃう」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おおっ♡　クリばっかり…だめ♡　これ以上されたらおしっこ出ちゃうってばぁ♡」[p]
[舜]「職場でエロいことした上、おもらしとか…とんだスケベメイドになっちゃうなぁ？」[p]
蕾「ひっぐぅぅっ♡　や、だぁ♡　そんなこと言われたらっ、余計に意識しちゃうじゃない♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「おおおおっ♡　んっくぅぅっ♡　何それっ…刺激強くてっ…ビリビリってしてるっ♡」[p]
[舜]「皮剥いて、剥き出しクリにしただけだよ。ほら、プリップリなとこしごいてあげる」[p]
蕾「ひゃぁぁっ♡　あっ♡　あっ♡　あっ♡　だめっ♡　ホントにだめぇ♡　もう余裕ないのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「隣の部屋とかで他の女の子たちがエロいことしてるって、どうやってわかんの？」[p]
蕾「このタイミングで聞くの？　声が聞こえるから…バレるのよ。んっ♡　あぁぁっ♡」[p]
蕾「我慢してるエッチな声とか聞こえてきちゃってるし…すぐ他の子たちにわかっちゃうんだから」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_anaruijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「蕾がエロいことしたらソッコーばれそうだなぁ。すぐ甘くてトロトロの声出すじゃん」[p]
蕾「んんっ♡　だからっ、私は職場ではエッチなことはしないんだってば♡　ひぅぅっ♡」[p]
蕾「あっ♡　今だって…あんたがしてくるから…こんなことになっちゃってるだけなんだからね？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_anaruijiri3

[tb_start_text mode=1 ]
蕾「あうぅ♡　やっ…お尻…指抜いてぇっ♡　はうぅっ♡　いっぱいになってるっ、だめぇ♡」[p]
蕾「指…ズポズポされたら…お尻馬鹿になっちゃうっ♡　開いたままになっちゃうからぁ♡」[p]
蕾「あ♡　あんっ♡　やっ…お尻の中…確かめるみたいに触らないでっ…♡　おかしくなるぅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひっぐぅぅぅっ♡　おっ♡　おおおっ♡　お尻っ…指奥まで入っちゃってりゅ…♡」[p]
蕾「はぁっ♡　あっ♡　トロトロになって…癖になりかけてるの♡　お尻ズポズポ好きになってる♡」[p]
蕾「だめ、だめだめだめ…職場だもん…お尻かき回されて気持ちよくなっちゃだめぇっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁぁっ♡　やっ…出ちゃってるっ…♡　うぅっ、恥ずかし…止まんないのっ♡」[p]
[舜]「あー、すっごい塩吹き…結局仕事場で気持ちよくなって潮まで吹いちゃったじゃん」[p]
蕾「あぁぁぁっ♡　だ、だってっ♡　弱いトコばっかり刺激するからっ、勝手に出ちゃったの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　ああっ♡　あっ♡　あっ♡　奥ばっかりトントンされたらっ…またっ♡」[p]
蕾「あぁぁぁぁっ♡　また出ちゃってるっ♡　やだやだっ、ピュルピュル出て止まんないっ♡」[p]
蕾「んんっ♡　体言うこと聞かなくなっちゃってる…私変なのっ♡　こんなの、自分じゃないみたい」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　だめぇぇぇっ♡　ブースの中っ、汚しちゃうっ♡　掃除したのにぃ♡」[p]
蕾「やだ、いつもより気持ちよくて止められないのっ♡　なんでっ…こんなに熱くなってるのっ」[p]
[舜]「仕事場でエロいことして興奮してるからだろ…蕾もやっぱりエロメイドなんだな」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁぁっ♡　んっ、くぅぅっ♡　やっ…あぁぁぁ♡　無理っ、変になってるのっ♡」[p]
[舜]「エッロ、体のけ反りすぎ…気持ちよくなってるじゃん。ホントはエロいことしたかったんだろ」[p]
蕾「ち、違…[舜]が…触るからっ♡　こんなに気持ちよくなっちゃうなんて思わなくてっ…」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「はーっ♡　あぁっ…お店で…セックスしちゃったぁ♡　おちんちん受け入れちゃったの…♡」[p]
[舜]「くっ…あぁ、すっごい締まってる…ダメって言いながら、興奮しすぎだろ」[p]
蕾「だってっ…気持ちいいんだからしょうがないでしょっ…♡　[舜]だって…おっきくなってるし♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「あぁっ♡　はぁ♡　はぁっ♡　いけないことしてると、余計エッチな気分になっちゃう♡」[p]
蕾「お客さんとエッチしちゃってる子たちも…今の私みたいに気持ちよくなってるのかな…」[p]
蕾「あぅっ♡　きっと全然違うよね…好きな人とのセックスのが気持ちいいに決まってるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「あっ♡　あんっ♡　はぁ、顔…夢中になってるみたいだけどっ？　オスの顔してる…♡」[p]
蕾「私のこと『いつもより興奮してる』って言ってたけどっ、自分のが興奮してるでしょっ♡」[p]
蕾「ん゛ん゛っ♡　おちんちんだって…いつもより硬くなってるし…おっきくなってるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛お゛っ♡　やっ…な、何これ…下品な声、出ちゃうぅぅっ♡　こんなのっ、私じゃない♡」[p]
蕾「はひぃぃっ♡　ん゛お゛っ♡　あ゛っ♡　やだ、やだぁ♡　恥ずかしいの、聞かないでっ♡[p]
蕾「奥当たるたびっ、声勝手に出ちゃうぅっ♡　あ゛っ♡　あ゛ぅ゛♡　もうやだってばぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「あっ♡　あぁっ♡　激しっ♡　そんなに揺さぶらないで…壊れちゃうからっ…！」[p]
蕾「はぁっ♡　はぁっ♡　ダメなことだってわかってるのに…余計に体が熱くなってる♡」[p]
蕾「気持ちいいの…いつも仕事してるところで…ぐちゃぐちゃにエッチしちゃってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「やだぁっ、この感触…忘れられなくなっちゃったらどうしよ♡　また欲しくなっちゃうかもっ」[p]
[舜]「その時はまた、こうやって誰もいない時にこっそりエッチすりゃいいんだよ」[p]
蕾「私っ、どんどん悪い子になっちゃうよ…気持ちいいことも覚えて…あんたのせいだからねっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「あーあー、蕾も腰動いちゃってるじゃん。気持ちよさそ…ん～？　クリも擦られたいの？」[p]
蕾「ひあぁぁぁっ♡　あ゛っ♡　あ゛う゛っ♡　中と外っ、同時にグチャグチャにするの、だめぇっ」[p]
蕾「はひっ♡　はっ♡　はっ♡　お゛お゛お゛っ♡　力、入んなくなっちゃう…動けなくなりゅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　ぎ、ぎもぢ…♡　気持ちいいのっ…♡　はっ♡　あぁぁ、焼き切れちゃう♡」[p]
蕾「ダメなことしてるって…思えば思うほどっ…興奮しちゃうの♡　中、キュンキュンって──」[p]
蕾「おちんちんもっと頂戴って欲しがっちゃうのぉ♡　私の体、完全にダメになっちゃったぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_kaiwa1

[tb_start_text mode=1 ]
[舜]「恥ずかしそうにするのもいいけど…たまには挑発するように、大胆に乱れてくれないとな」[p]
蕾「そんなこと言われても…難しい…もうとっくに恥ずかしさ限界突破しちゃってるんだもん」[p]
蕾「エッチなこと言って[舜]を興奮させればいいの？　そしたら…エッチしてくれるんでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa2

[tb_start_text mode=1 ]
蕾「ね、いっぱい気持ちいいことしよ♡　[舜]のおちんちん…私の中に挿れてほしいの…♡」[p]
蕾「もう充分トロトロだけど…好みの柔らかさにして奥まで挿れて♡　いっぱい腰振って♡」[p]
蕾「最後は好きなところに出していいよ♡　体にかけてもいいし…中にたっぷり注ぎ込んでもいいの」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa3

[tb_start_text mode=1 ]
[舜]「もっともっとエロくおねだりできるだろ？　ほら、何もしてやんないよ？」[p]
蕾「わ、わかったっ♡　私のおまんこに…[舜]のガチガチのおちんちん挿れて種付けして…♡」[p]
蕾「溢れちゃうくらい精子注ぎ込んでください♡　私の体全部[舜]のモノになってるんだから♡」　[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_kiss1

[tb_start_text mode=1 ]
蕾「ちゅっ、ちゅっちゅ♡　はぁ、あんっ…んんっ、そうやって焦らすようなキスするんだから♡」[p]
[舜]「欲しがる顔、見せてくれるかと思って。蕾からもおねだりキスしてくれるんだよな？」[p]
蕾「あうっ、わかった♡　ちゅ、ちゅっちゅ♡　もっと頂戴♡　エッチなキスしてほしいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_kiss2

[tb_start_text mode=1 ]
蕾「はふ♡　ちゅっちゅ…ちゅく、んっ♡　んぅっ…はぁ、食べちゃうみたいなキス、好きなの♡」[p]
[舜]「まだキスしてるだけなのに、足もじもじさせてんの？　いつの間にそんなスケベになったの」[p]
蕾「んぅっ♡　ちゅ、ちゅ♡　ごめんなさ…キスしてたらお腹の奥…キュンって疼いちゃって…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_kiss3

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅっちゅ♡　はぁ、はふ…もっとキスして…んんっ、舌ねっとり絡ませてほしいの♡」[p]
[舜]「ん～？　そんなエロいキスしたことあったっけ？　俺以外とキスしたんじゃないの？」[p]
蕾「そんなことするわけないでしょ…いつもおちんちん挿れたあと、ベロチューしてくれるくせに♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んんんっ♡　フーッ…フーッ♡　キスだけなのに…体ビリビリしちゃう♡　ちゅっちゅっちゅ…」[p]
蕾「はふ…ちゅくちゅくちゅく♡　キス好き…もっと…もっとチューして♡　お願い♡」[p]
蕾「ちゅっちゅっちゅ♡　あぁ、唇柔らかい…んんっ♡　はぁ、エッチなキスしたいの…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あぅ♡　あぁ♡　おっぱい、手の中に入っちゃったぁ♡　好き放題揉みしだかれちゃう♡」[p]
[舜]「ん～？　めちゃくちゃに揉んでほしいくせに。ほら、おねだりは？　できるよな？」[p]
蕾「はぁっ♡　はぁっ♡　おっぱい、好きに揉んでほしいの♡　トロトロフワフワにして♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi2

[tb_start_text mode=1 ]
蕾「あっ、んんっ♡　ひぅぅ♡　[舜]っておっぱい大好きだよね♡　もっと大きくなくていいの？」[p]
[舜]「蕾のおっぱいだからエロくて好きなんだろ。余計なこと考えなくていいんだよ…！」[p]
蕾「ひあぁっ♡　ああぁ♡　ごめんなさっ♡　私のおっぱい、思う存分楽しんでくださいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～、おっぱいぷるんぷるん揺れる感じエロいわ。めちゃくちゃにしたくなる」[p]
蕾「あぁっ♡　おっぱい鷲掴みにされて…もみくちゃにされちゃうの？　フーッ♡　フーッ♡」[p]
蕾「んっ♡　あぁぁっ♡　おっぱいに指のあとつけてもいいからっ♡　思いっきり掴んで♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　っほぉ♡　そこっ、だめ…♡　乳首スリスリしながらおっぱい揉むの、弱いのっ♡」[p]
蕾「はひっ♡　はっ♡　はっ♡　い、今ので…おまんこキュンキュンときめいちゃった…」[p]
蕾「おっぱい揉みしだかれてるだけなのに…お腹の奥まで気持ちよくなっちゃったよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　んぅっ♡　乳首っ、ちゅっちゅって吸うのしゅごいっ♡　それ気持ちいいのっ♡」[p]
[舜]「乳首敏感すぎだろ。ちょっとしゃぶるだけで、腰動いてんだけど…エロいな蕾は」[p]
蕾「はぅぅっ♡　だってっ♡　乳首からおまんこまで気持ちいいの響いちゃってるんだもん♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiname2

[tb_start_text mode=1 ]
蕾「あふぅ♡　んっ♡　あぁ、ちゅくちゅくおっぱい飲んでるの…可愛く見えてきちゃったじゃない」[p]
蕾「ふーっ…ふーっ…♡　赤ちゃんみたいね。ママのおっぱい飲んで、おっきくなって♡」[p]
蕾「って、あんたは赤ちゃんじゃなくてパパのほうか…♡　私のこと、ママにしてくれるんでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あはぁ♡　んぉっ♡　おおっ♡　ジュルジュル…すごい音っ♡　んぅぅっ♡　意識しちゃう♡」[p]
蕾「そんなにしゃぶってもミルク出ないってばぁ♡　はぁ、あんっ♡　んんっ♡　でもっ──」[p]
蕾「赤ちゃんできちゃったら…いっぱい甘くて美味しいミルク、ピュッピュって出ちゃうかも♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んほぉぉっ♡　はっ♡　はっ♡　乳首甘噛みっ♡　それだめぇっ♡　はひぃっ♡　だめだめ」[p]
蕾「おまんこヒクつきとまんなくなっちゃう♡　あぁ…じゅわって…蜜も溢れてきちゃった…」[p]
蕾「おちんちん挿れて種付けされる準備、始めちゃってるの♡　私の体、ママになっちゃうよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひゃぁっ♡　い、痛いってばっ！　きゃっ！　手のあとついちゃうっ…んんっ♡　あんっ♡」[p]
[舜]「嫌な割には、顔とろんとしてるみたいだけど？　興奮してるんだろ…！」[p]
蕾「やっ♡　あぁっ、あんっ♡　叩かれたとこ、痛いのに…ジリジリって熱くて変なのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_supankingu2

[tb_start_text mode=1 ]
蕾「や、やだ…気持ちよくなってきちゃったの…私のおまんこ、キュンってときめいてるの…」[p]
蕾「なんで…痛いのなんて嫌なのに…怖いはずなのにっ♡　あうぅっ♡　もっともっとって──」[p]
蕾「ジンジンするの、ほしくなっちゃってる♡　あぁっ♡　私、変態になっちゃったぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「はひっ♡　も、もっと…蕾のこと叩いてください♡　真っ赤な手のあとついてもいいからぁっ♡」[p]
蕾「ひぅぅっ♡　あっ♡　あんっ♡　衝撃のたびに…体の奥っ、熱くなってるっ…♡」[p]
蕾「おっ♡　おんっ♡　はーっ♡　はーっ♡　気持ちいいのが、お腹の底からこみあげてきてる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おおおっ♡　はっ♡　あっ♡　あっ♡　ごめんなさい、太ももまで…濡れちゃったぁ♡」[p]
蕾「おまんこ、先走って興奮しちゃってごめんなさいっ♡　叩かれて気持ちよくなっちゃいました♡」[p]
蕾「あぁぁっ♡　はっ♡　はぁ♡　恥ずかし…体、ビクビク反応しっぱなしになっちゃってるの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おっ♡　おおおっ♡　奥までぐちゃぐちゃにかき回されてりゅっ♡　しゅごいぃ♡」[p]
[舜]「すっご、もうトロットロじゃん。指にめっちゃ吸い付いてきてんだけど…！」[p]
蕾「おほぉっ♡　はひっ♡　もうおちんちん挿れてもらう準備、できてるってことだってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あー、こん中チンポ挿れてめちゃくちゃに突き上げたら超気持ちよさそうなんだけど…！」[p]
蕾「おっ♡　お゛お゛お゛っ♡　おちんちん挿れてっ♡　奥…ドチュ、ドチュって突き上げて♡」[p]
蕾「[舜]の好きに腰振っていいからっ…♡　おまんこグチャグチャにかき回してほしいのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あっ♡　ひぅ♡　おんっ♡　おおっ♡　何も考えられないっ♡　気持ちいしか考えられないの♡」[p]
[舜]「顔、ユルユルんなってる。今自分がどんな顔してんのかわかってんの？」[p]
蕾「やらぁ♡　おほぉ♡　おまんこ気持ちよくてっ…か、可愛い顔なんて無理ぃぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛お゛お゛っ♡　ひぐぅぅっ♡　指だけで…イッちゃううぅっ♡　気持ちいいのっ♡」[p]
[舜]「じゃあチンポ挿れなくても満足できる？　もう挿れなくてもいっか？」[p]
蕾「やだやだやだぁっ♡　おちんちん挿れてっ♡　いっぱいズポズポしてほしいのぉっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_anaruseme1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「んっほぉ♡　お尻、だめ、ユルユルにしないでっ…ほじっちゃだめぇぇっ♡」[p]
[舜]「ここ、出すだけじゃなくて挿れることもできるって覚えさせないと…」[p]
蕾「やっ、だめだめっ♡　おっ♡　おおおおっ♡　お尻…馬鹿になっちゃう♡　だめなのぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_anaruseme2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おおおっ♡　揉みほぐされてりゅ…あっ…指入っちゃうぅ♡　だめだめだめ♡」[p]
[舜]「へ～？　シャワー浴びた時、ちゃんとお尻も綺麗にしてたくせに。期待してたんだろ？」[p]
蕾「あぅぅぅっ♡　で、でもっ…汚い場所、だからぁっ♡　おっ♡　おおおっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_anaruseme3

[tb_start_text mode=1 ]
蕾「おっ♡　おおおっ♡　お尻…開かないでぇ♡　揉みしだかれたら…緩んじゃうよ♡」[p]
蕾「指入らいないっ♡　そこはっ…まだキュって閉じてるからっ…無理なのぉっ♡」[p]
蕾「お尻じゃなくて…とろけてほぐれちゃったおまんこをかまって甘やかしてほしいのにっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_anaruseme_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「おっほぉぉ♡　おっ♡　お尻で…イク、イッちゃうぅ♡　おっ♡　おっ♡　おっ♡」[p]
蕾「んぅぅっ♡　お尻の穴っ、ヒクヒク止まんないっ…♡　すっごい気持ちよくなってる♡」[p]
蕾「あうぅ♡　お尻なのにっ…おまんこウズウズ止まんないのにっ♡　全部気持ちいいよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「あっ♡　あっ♡　あぁっ♡　おちんちん、いつもよりおっきいっ♡　奥、押しつぶされてりゅ♡」[p]
[舜]「すっご、このコリってしてるとこ…普段触っちゃいけないトコなんじゃないの？　こーこ！」[p]
蕾「おっ♡　ほぉぉぉんっ♡　そこっ♡　ビリビリってして…絶対ダメなトコっ♡　あひぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「おっ♡　おっ♡　やっときたぁ♡　これ、ほしかったの♡　いっぱい突いてほしかったの♡」[p]
[舜]「焦らした分、中めちゃくちゃ熱くなってんじゃん…すっごいトロットロなんだけど」[p]
蕾「あうぅっ♡　味わうみたいに…中擦られるのヤバいっ♡　気持ちいいの…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「ひぅっ♡　あっ♡　おっ、おおっ♡　お腹の奥っ、押しつぶされちゃってる♡　あ゛あ゛っ♡」[p]
蕾「ずっと挿れてくれなかったからぁっ♡　早くほしくてウズウズしてたのっ…♡」[p]
蕾「んっ♡　我慢した分、いっぱい突いて…♡　奥まで挿れて…めちゃくちゃにしてっ♡　」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　ダメなトコ、当たってりゅぅ♡　ドチュって…お゛っ♡　お゛お゛っ♡」[p]
蕾「そこっ…そこ弱いのにっ♡　集中狙いされてるのっ♡　おっほぉ♡　お゛っ♡　お゛っ♡」[p]
蕾「あぁぁっ♡　ぎもぢいいのっ♡　イッちゃうっ♡　頭の中バチバチって弾けちゃってるぅ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「お゛っ♡　お゛っ♡　お゛っ♡　激しっ…すごいぃっ♡　壊れるっ♡　壊れちゃうのっ♡」[p]
[舜]「逃げようとしてんの？　欲しがってたんだから素直に受け入れなきゃだめだ、ろっ！」[p]
蕾「ひっぐぅぅぅっ♡　おぉぉ♡　おちんちんおっきいっ♡　お腹の奥まで届いてりゅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku2

[tb_start_text mode=1 ]
蕾「んぉっ♡　おおっ♡　内側っ、押し上げられちゃってるっ♡　おちんちんで持ち上がってりゅ♡」[p]
[舜]「ホントだ…あー、突き上げるたびお腹ポコポコ持ち上がってんじゃん。エッロ」[p]
蕾「お゛っ♡　お゛お゛っ♡　壊れちゃうっ♡　お腹の中っ、おちんちん暴れまわってるからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「ん゛っ♡　押し付けられてりゅ♡　あぁっ、刺激強いのにっ、受け流せないのっ♡」[p]
蕾「お゛っ♡　これが種付けなのっ？　はーっ♡　はーっ♡　精子注がれるだけのっセックス♡」[p]
蕾「すごいっ…♡　な、中でおちんちん膨らんでくのわかるっ…♡　はぁ、あっ、すごいのぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひっぐぅぅぅっ♡　おぉぉっ♡　ぎもぢぃぃ♡　腰ヘコしちゃうっ♡　動いちゃうぅ♡」[p]
[舜]「くぅぅっ、すっご…！　めちゃくちゃ締まってる…！　あー、ヤバ出る…！」[p]
蕾「はーっ♡　はーっ♡　早く出してっ♡　精子注いでっ♡　種付けしてほしいのっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「今の蕾なら、ドスケベに誘えるんじゃないの？　散々教えただろ。ほら、早く…」[p]
蕾「はぁっ♡　はぁ、んっ♡　蕾のおまんこ…熱々トロトロだから、[舜]の精子注いで…♡」[p]
蕾「好きに腰振って、体ホールドして…熱々の出来立て精液、ビュッビュってしていいから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa2

[tb_start_text mode=1 ]
蕾「フーッ♡　フーッ♡　おまんこの１番奥に先っぽ擦りつけながらいっぱい射精してほしいの♡」[p]
[舜]「ヤバ、言いながら興奮してんじゃん…蕾めちゃくちゃエロい顔になってるよ」[p]
蕾「だって…奥までパンパン音立てて犯される想像したら、おまんこ疼いちゃったんだもん…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa3

[tb_start_text mode=1 ]
蕾「精子注ぎ込まれる準備、できてるんだよ♡　興奮しすぎて、子宮まで準備できちゃったかも」[p]
蕾「今のまま注ぎ込まれたら…お腹の奥で赤ちゃんの種、プチュって卵にぶつかって受精しちゃう♡」[p]
蕾「ママにされちゃうね♡　は～っ♡　は～っ♡　そんなのだめなのに…エッチになっちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_2_Dkiss1

[tb_start_text mode=1 ]
蕾「ちゅく♡　ちゅちゅぷ、ちゅっちゅ♡　んんっ、自分からこんなにベロチューしちゃうなんて♡」[p]
蕾「私…エッチな体になっちゃったの♡　はぁ、はふ♡　エッチなことしてもらえないと──」[p]
蕾「おまんこがウズウズして…自分でオナニーしても収まらない体になっちゃったんだからぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_Dkiss2

[tb_start_text mode=1 ]
[舜]「ちゅ、ちゅく、ほら、舌絡ませてほしいんだろ？　口開けて舌出せ。だらしないアヘ顔見せろ」[p]
蕾「はひ♡　あはぁ♡　ちゅ、ちゅぷ、ちゅっちゅ、じゅるるるる♡　きもひぃれしゅ♡」[p]
蕾「じゅぷ、ちゅ、ベロチューしゅき♡　あふぅ♡　じゅるるるる。ありがとうございますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_Dkiss3

[tb_start_text mode=1 ]
蕾「あぁ♡　ねっとりベロチュー、もっともっと♡　にゅぷ、にゅる、ちゅっちゅっちゅ♡」[p]
蕾「はぁ、あぅっ♡　舌絡ませるの、好きなの♡　ちゅぷちゅっちゅ♡　ちゅ、ちゅくちゅく♡」[p]
蕾「キスだけで…おまんこウズウズしっぱなし…♡　ちゅちゅっちゅ。気持ちいいよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ちゅぷ、じゅるるるっ♡　じゅぷ、んふぅぅっ♡　あぁぁっ♡　ぎもぢぃぃ♡　しゅきぃ♡」[p]
蕾「じゅぷ、ちゅぷちゅっちゅ♡　おっ♡　おほぉ♡　口の中まで食べられちゃうぅ…すごい♡」[p]
蕾「んぅぅっ♡　お口でセックスしてるみたいっ♡　ちゅっちゅ、じゅぷ、じゅるるるる♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「さっき自分でもおっぱい揉んでたけど…もっと思いっきり掴んで、揉みしだかなきゃ…！」[p]
蕾「ああぁぁっ♡　ごめんなさ…♡　あんっ♡　今度はっ、ちゃんとおっぱい握るからぁ♡」[p]
蕾「[舜]にされてるみたいに…力いっぱい揉みしだいて、おっぱいもみくちゃにしますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi2

[tb_start_text mode=1 ]
蕾「あっ♡　見て…おっぱい柔らかくなってきちゃったぁ♡　もみくちゃにされて、とろふわなの♡」[p]
蕾「おっぱい気持ちいい…♡　もっと揉みしだいて♡　[舜]の手の中で、トロットロにして♡」[p]
蕾「はひ♡　あぅ♡　あっ♡　おっぱい好き…もっと触って…形変わっちゃうくらい握ってぇ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「こんなにおっぱい揉まれて、形崩れたらヤバいんじゃないの？　モデルになれんの？」[p]
蕾「あうぅっ♡　ちゃんとっ…ケアするから大丈夫だもん♡　それに裸のモデルじゃないしっ♡」[p]
蕾「やめないでほしい♡　ぎゅって握って力いっぱい揉みしだかれるの…好きなんだもんっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あひぃぃっ♡　これすごい♡　おっぱいでイグゥゥッ♡　イッちゃうぅ♡　おっ、おおおっ♡」[p]
[舜]「あーあー、乳首もビンビンに立ってんじゃん…めっちゃエロ…乳首も触ってほしいんだろ」[p]
蕾「はひっ♡　あぅぅ、触ってほしいっ♡　乳首っ、コリコリって甘やかしてほしいですぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おっ♡　おっ♡　乳首コリコリっ♡　しゅっご♡　んほぉ♡　おまんこに響くっ♡」[p]
[舜]「エッロ…腰ヘコさせて下品だって思わないのか？　こんなんでオーディション受かるつもりか」[p]
蕾「おおおっ♡　だ、だってぇっ♡　おっぱい気持ちよくて…体勝手に動いちゃうからぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubiijiri2

[tb_start_text mode=1 ]
[舜]「乳首コリコリってされながら、オーディションだと思って自己紹介してみないとな」[p]
蕾「は、はひ♡　モデル志望の…蕾ですっ♡　お、お洒落と服が大好きでっ…♡　あぅぅっ♡」[p]
蕾「あとはっ…おっぱいもみくちゃにされながら…太いおちんちん挿れられるのも大好きっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「乳首だけじゃなくて、乳輪まで膨らんでるけど。エッロ…両方摘まんでやろうか、ほら！」[p]
蕾「おっほぉぉぉ♡　ありがとう、ございましゅっ♡　キュ～って摘まんで引っ張られるのしゅき♡」[p]
蕾「おっ♡　おおおっ♡　子宮にクるっ♡　お腹の奥っ、ジンジンって響いちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひっぐぅぅぅっ♡　おおおっ♡　乳首気持ちいいっ♡　ああ、引っ張ってコリコリいいのっ♡」[p]
蕾「はふっ♡　はっ♡　はっ♡　乳首どんどん敏感になっちゃってる♡　乳首だけでイッちゃうぅ♡」[p]
[舜]「あー、エッロ…おっぱいだけで腰ヘコヘコさせんの止まんなくなってるじゃん。たまんね…」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひゃぅっ♡　あっ♡　痛っ♡　あぁ♡　おっぱい、叩かれてるっ…♡　なんで？　怒ってるの？」[p]
[舜]「違うよ、これはご褒美。おっぱい可愛がられたかったんだろ…！　ほらっ！　ほらっ！」[p]
蕾「あっ♡　あうぅっ♡　ご褒美？　んんっ♡　可愛がってくれてありがとうございますっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_supankingu2

[tb_start_text mode=1 ]
[舜]「じゃー、おっぱい叩かれながら、俺のこと興奮させてよ。蕾なら上手にできるだろ？」[p]
蕾「んっ♡　あひっ♡　で、できるっ♡　私…[舜]の専用おちんぽケースになりたいの…♡」[p]
蕾「どんなにおっきくなっても…反り返っちゃっても上手におまんこに挿れられるからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「おっ♡　おおおっ♡　おっぱい赤くなってきちゃった♡　手のあと…ついてりゅ…」[p]
蕾「叩かれたとこ…ヒリヒリしてきてりゅ♡　はーっ♡　はーっ♡　あと、残っちゃう♡」[p]
蕾「はぁっ♡　あんっ♡　おっぱいめちゃくちゃにされたの思い出して、おまんこ濡れちゃうよぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んおぉぉっ♡　はーっ♡　はーっ♡　だらしない顔になっちゃって、ごめんなしゃい♡」[p]
蕾「おっぱい叩かれて…おまんこ準備万端になっちゃったぁ♡　早く…早く中に欲しいの♡」[p]
蕾「はひっ♡　蕾のおまんこ…いっぱい躾けて♡　１番奥までトントンって叩いてくださいっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
蕾「ひっぅぅぅっ♡　おっ♡　おおおっ♡　しゅごっ♡　潮吹きっ、止まんないっ♡　出てりゅ♡」[p]
蕾「ひぐっ♡　おもらししてるみたいっ…気持ちよくっていっぱい出ちゃうのぉ♡　お゛お゛おっ♡」[p]
蕾「ゆ、指でっ♡　ドチュッ、ドチュって…奥突き上げるの癖になっちゃうってばぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「しゅごいっ…何度もぴゅっぴゅって…お腹の中水分空っぽになっちゃう♡　おっ♡　おおおっ♡」[p]
[舜]「大丈夫だよ、おまんこトロトロになってんだから。いくらでも潮吹けばいいじゃん…」[p]
蕾「あっひぃぃ♡　おっ♡　奥っ…指できゅ～って押すのだめっ♡　また出ちゃうぅぅ♡　おほぉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「あ゛っ♡　あ゛う゛っ♡　すごぃぃ♡　お゛お゛っ♡　おまんこぎもぢぃぃっ♡」」[p]
[舜]「声汚くなってんだけど。モデル志望なのに、自分を可愛く見せる努力しなくていいのか」[p]
蕾「はひっ♡　はぅぅ♡　そんな余裕ないんだってばぁ♡　あ゛う゛っ♡　お潮とまんないぃ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛お゛お゛っ♡　イグッ♡　イグゥゥッ♡　おまんこすごいのキちゃうぅぅぅっ♡」[p]
[舜]「エッロ…蕾、スケベになりすぎだろ…もう普通のセックスなんかできないなぁ？」[p]
蕾「できないっ♡　いっぱいエッチなセックス覚えちゃったからっ♡　めちゃくちゃにされたいの♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_anaruseme1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
蕾「あ゛っ♡　あ゛っ♡　そこ…お尻の穴っ、ナデナデ…恥ずかし…ヒクついちゃうぅ♡」[p]
[舜]「あーあー、もう指咥え込もうとして、パクパク開き始めてるけど？」[p]
蕾「お゛っ♡　おっほぉ♡　撫でてほぐされてりゅ…♡　内側も…撫でてほしくなっちゃってるの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_anaruseme2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「あ～、ほら、クパッて開いてるわ…あとちょっとで指入りそ。じっくり慣らしていくから」[p]
蕾「あひっ♡　あぁ♡　お尻の穴もっ、おちんちん入るようになっちゃうっ♡　両方使われちゃう♡」[p]
蕾「嬉しいのっ…私の全身で[舜]が気持ちよくなってくれるの…楽しみになってりゅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_anaruseme3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
蕾「はひぃっ♡　おっ♡　おっほぉぉ♡　指、入ってりゅ…にゅるって入ってきちゃってりゅ♡」[p]
[舜]「おまんこユルユルになっちゃったら、今度はお尻でチンポ締め付けてもらうからな」[p]
蕾「わかったっ♡　わかりましたぁ♡　蕾の体、おまんこもお尻もいっぱい使ってくだしゃいっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_anaruseme_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひっぐぅぅぅっ♡　おっ♡　おっほぉぉ♡　お尻の中っ、ナデナデされてりゅっ♡　ひぐぅ♡」[p]
蕾「ん、くぅぅっ♡　はぁ、ああっ♡　指だけでいっぱいになってりゅ♡　おっ、おおおっ♡」[p]
[舜]「ヤッバ、すっごい締め付けなんだけど…チンポ挿れられるようになったら最高だろうなぁ」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
蕾「ひぅぅっ♡　あっ♡　あぁぁ♡　きたっ♡　奥まできてりゅ♡　もっと頂戴っ♡」[p]
蕾「先っぽで、奥突き上げてっ…♡　いっぱいこねてほしいの…♡　あぁぁぁっ♡」[p]
蕾「おっ♡　おっ♡　おおっ♡　欲しくて欲しくて、どんどんスケベになっちゃうよぉっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
蕾「はーっ♡　はーっ♡　んっくぅっ♡　血管浮き上がったおちんちんでゾリゾリされてりゅの♡」[p]
蕾「温度も大きさも硬さも全部伝わってくるっ♡　気持ちいい♡　ゴムなし生セックスしゅごぃぃ♡」[p]
蕾「こんなの癖になっちゃうってばぁ♡　おっ♡　おぉぉんっ♡　お腹の奥、圧迫されちゃった♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
蕾「んほぉぉ♡　おおおっ♡　ゆっくり焦らすみたいに…出し入れされるのっ、すごいのぉ♡」[p]
[舜]「めちゃくちゃ締め付けてくるじゃん…中に出してっておねだりしてくれてんの？」[p]
蕾「そうだよっ♡　中に出してほしいの…たっぷり注ぎ込んでほしいっ♡　早く頂戴♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛お゛お゛っ♡　はっ、はぁ…種付けしてやるって本気伝わってきちゃうぅぅっ♡」[p]
蕾「ん、くうぅっ♡　はぁ、はっ、受け入れる準備整っちゃったぁ…注がれるだけになってる♡」[p]
蕾「い、今なら…ホントに種付けされちゃう♡　あんたの遺伝子、全部受け入れちゃうぅぅっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
蕾「しゅごいぃ♡　おちんちんっ…本気出してるっ♡　絶対に種付けてやるって…狂暴になってる♡」[p]
蕾「あぁぁっ♡　ひっぐ♡　おっ♡　おまんこ悦んでるの♡　精子注がれる準備始めちゃってりゅ♡」[p]
蕾「んぅぅぅっ♡　い、今出されたら…精子全部受け止めちゃう♡　受精しちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「あ～、種付けするためだけに腰振ってんの最高…！　このまま１番奥に出していいんだろ？」[p]
蕾「おおっ♡　あぅ♡　出してくださいっ♡　腰掴んだまま１番奥に…ドクドクって出してっ♡」[p]
蕾「んっ♡　おおぉっ♡　子宮までダイレクトに注いでほしいからぁっ♡　勢いよく出してぇ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
蕾「あ゛あ゛っ…♡　お腹の中っ、全部引きずり出されちゃいそ…♡　おちんちん引っかかって──」[p]
蕾「中までぐちゃぐちゃにされちゃってるのっ♡　お゛お゛っ♡　こんな激しいの知らないっ♡」[p]
蕾「お゛っ♡　お゛っ♡　どうしよ…頭の中も体も…弾けて壊れちゃうぅぅっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぎゅぅぅっ♡　おほぉ♡　おちんちんビクビク暴れてりゅ♡　おまんこで抑えきれない♡」[p]
蕾「内側擦れてグチャグチャになって…こんなの、すぐイッちゃう♡　おかしくなっちゃうぅ♡」[p]
蕾「はっ♡　はっ♡　はっ♡　私の体、どんどんあんた仕様になっちゃってるの…幸せだよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
