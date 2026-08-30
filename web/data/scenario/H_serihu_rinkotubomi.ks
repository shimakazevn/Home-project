[_tb_system_call storage=system/_H_serihu_rinkotubomi.ks]

*3P_kaiwa1

[tb_start_text mode=1 ]
凛子「蕾にも幸せになってほしいけど…私も[舜]くんを諦められないの。ごめんね？」[p]
蕾「それなら、この場で[舜]にどっちがいいのか選んでもらえばいいんでしょ？」[p]
凛子「それがいいかもね…[舜]くんが蕾を選んだなら、私も諦めがつくかもしれないし」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kaiwa2

[tb_start_text mode=1 ]
[舜]「選ばないで、２人と一緒にいて家族になればいいって思ってたんだけど」[p]
蕾「そっ、そんなのダメに決まってるでしょ！　２人と付き合うなんてあり得ないからっ！」[p]
凛子「そう？　私は[舜]くんが選んだなら、それでもかまわないけど…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kaiwa3

[tb_start_text mode=1 ]
蕾「どっちのほうが体の相性がよくてセックスが気持ちいいのか、実際に試して決めてよ…」[p]
凛子「セックスの気持ちよさなら、負けないかもしれないよ？　[舜]くんを満足させてあげるから」[p]
蕾「ママ、余裕みたいだけど…私のほうがお肌は若くてプリプリだし…アソコだって締まるんだから」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*3P_kiss_tubomi1

[tb_start_text mode=1 ]
蕾「うぅっ♡　ちゅっちゅ、ちゅぷ、ちゅ♡　はふ、ね？　私のキスのほうが気持ちいいでしょ？」[舜]「ん～、もっとキスしてみないとわかんないなぁ。蕾からもキスしてくれないと」[p]
蕾「ちゅぷ、ちゅっちゅ…わざと言ってるでしょっ。ちゅ、ちゅっちゅ…ちゅくちゅく♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kiss_tubomi2

[tb_start_text mode=1 ]
蕾「ちゅっちゅっちゅ♡　は～っ♡　は～っ♡　あぁ、私のほうが気持ちよくなってきちゃったぁ」[p]
蕾「[舜]のこと…気持ちよくさせるつもりだったのに…んんっ、ちゅ、ちゅっちゅ♡　ちゅぷ♡」[p]
蕾「上手にキスできるんだってトコ…あんたに見せてやるんだから…ちゅっちゅっちゅ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_kiss_tubomi3

[tb_start_text mode=1 ]
蕾「ちゅ、んっ、ちゅっちゅ♡　はぁ、はふ♡　私たちがキスしてるとこ…ママに見せてあげてよ♡」[p]
蕾「私たち、いっつもこうやってエッチなキスしてるんだって…教えてあげなくちゃ…♡」[p]
蕾「ちゅくちゅくちゅくっ♡　ふぅ、ふっ…はーっ♡　ほら、あんただってエッチな顔になってる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_kiss_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ちゅっちゅっちゅ♡　んふぅぅっ♡　んっ♡　キスだけ、なのにっ♡　ビリビリって…」[p]
蕾「気持ちいいのが、全身に広がってく…♡　はぁ、体の奥熱くなっちゃったみたい♡」[p]
蕾「はふ、このままひとり占めしたいのにぃ…♡　２人でずーっとキスしていたいよぉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_kiss_rinko1

[tb_start_text mode=1 ]
凛子「ちゅ♡　ちゅ、ちゅ、ふふっ…今日はすっごく優しくキスしてくれるんだね、[舜]くん」[p]
凛子「ひょっとして、蕾に見られて興奮してる？　それともちょっと気まずくなっちゃった…？」[p]
凛子「気にしなくていいって言うのは難しいかもしれないけど…楽しんだらいんじゃない？」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kiss_rinko2

[tb_start_text mode=1 ]
凛子「ちゅく、ちゅ、ちゅ、ちゅ♡　はぁ、ふぅ♡　蕾と比べてどうかな？　やっぱり違う？」[p]
凛子「肌の質感とか張りじゃ敵わないかもしれないけど…柔らかさとキスの仕方は自信があるから」[p]
凛子「ちゅっちゅ♡　[舜]くんのこと、気持ちよくしてあげたいな♡　いっぱいキスしちゃおうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_kiss_rinko3

[tb_start_text mode=1 ]
凛子「んっ、ちゅぷ、ちゅ、ちゅっ…ふぅ、ふっ…[舜]くんとのキス、大好き…♡」[p]
[舜]「俺も凛子さんとのキス大好きだよ…満足させようって一生懸命になってくれるとこも好き」[p]
凛子「[舜]くんの悦ばせ方、普段から勉強してるから♡　蕾にはまだまだ負けないつもり♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_kiss_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ちゅくちゅく♡　んんっ♡　ふぅぅっ♡　はぁ、はっ…やだ…キスですっごく疼いちゃった…」[p]
[舜]「どこがどんなふうに疼いたのか、ちゃんと教えてくれないと。凛子さんなら言えるでしょ？」[p]
凛子「もう…♡　そうやって意地悪言うんだから♡　おまんこが熱くてウズウズしちゃったみたい♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_naderu1

[tb_start_text mode=1 ]
蕾「あっ♡　はぁ、んっ…♡　お尻同時に撫でて…感触の違い確かめてるの？　あっ♡　はぁん♡」[p]
凛子「私、お尻少し大きいから…恥ずかしいな♡　肌も柔らかくなっちゃってるし…変じゃない？」[p]
[舜]「いや、めちゃくちゃエロいよ…柔らかくて指沈み込む感じ、たまんない…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_naderu2

[tb_start_text mode=1 ]
蕾「ママのほうばっかり見てないで、私のことも見てよ♡　ほら、プリップリのお尻なんだから♡」[p]
[舜]「ん…キュッとしまった小尻もたまんないな…ケツ掴んで、チンポ挿れたくてウズウズする…」[p]
凛子「蕾にばっかり興奮しちゃうなんて…妬けちゃうな♡　私のお尻でしごいてもいいのに」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_naderu3

[tb_start_text mode=1 ]
[舜]「質感も大きさも違うから…どっちのお尻も最高だ。ずーっと揉みしだいていられる…」[p]
蕾「両方いいじゃダメなのっ♡　どっちのお尻のほうが好きなのか決めてくれないと嫌だよっ♡」[p]
凛子「気を使わなくていいんだからね♡　触って舐めて、好きに使ってどっちが好みか決めて♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_naderu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　あぁぁぁっ♡　鷲掴みにされちゃったぁ♡　んんっ、やだ、足の間熱くなってる♡」[p]
蕾「あはぁ、んっ♡　気持ちいいの…もっと撫でて♡　お尻だけじゃなくて違うトコも…♡」[p]
[舜]「おねだりの仕方は２人ともそっくりだな。別のトコもあとでしっかり撫でてやるからな」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_sumata1

[tb_start_text mode=1 ]
蕾「あっ♡　んんっ♡　あっつ…ガチガチになってるじゃないっ♡　割れ目の間、擦れてるっ♡」[p]
凛子「ふーっ…ふーっ♡　[舜]くんも気持ちよくなれてる？　好きに腰動かしていいからね♡」[p]
凛子「あぁぁっ♡　んっ、ビクビクって反応しちゃったの？　おちんちん気持ちよくなって♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_sumata2

[tb_start_text mode=1 ]
[舜]「あー、めちゃくちゃ気持ちいい…！　おまんこの感触、全然違うんだな…」[p]
蕾「あんっ♡　どっちのほうが気持ちいいの？　はぁ♡　ほら…擦れるたびビクビクしてるよ？」[p]
凛子「はぁ、あっ♡　まだ選べないよね？　じっくり味わって、決めてくれていいからね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_sumata3

[tb_start_text mode=1 ]
蕾「おっ♡　おおっ♡　擦れて…ヒダもめくり上がっちゃってりゅ♡　[舜]のおちんちんすごいの♡」[p]
凛子「はぁっ♡　あんっ♡　すごい…ヌルヌルトロトロになっちゃったね…♡　とろけちゃいそう♡」[p]
蕾「ひぅぅっ♡　あぁっ…滑って中に入っちゃえばいいのにぃ♡　奥までズッポリ挿れてほしいの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「ひあぁっ♡　あっ♡　入り口…擦れてるっ♡　[舜]くん…滑って入っちゃいそう…♡」[p]
蕾「あぁぁんっ♡　ママばっかりズルいっ♡　私にもぴったりくっつけて擦りつけてよぉっ♡」[p]
凛子「んっ♡　はぁ、もっと…めちゃくちゃに腰振って私たちの間に出してもいいんだからね♡[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_teman1

[tb_start_text mode=1 ]
凛子「あっ♡　あっ♡　あっ♡　ゴツゴツの指っ…お、奥っ、届いてるよ…[舜]くん上手だね♡」[p]
蕾「あぁっ♡　くぅっ…内側っ、そんな優しく撫でないでぇ♡　すぐイッちゃうからぁっ♡」[p]
凛子「はぁっ♡　蕾…まだまだ刺激に敏感なんだね…♡　あぁ、気持ちよさそうな顔しちゃって♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_teman2

[tb_start_text mode=1 ]
[舜]「すごいな…やっぱ中の感触が全然違う…比べてみるとはっきりわかるもんだな…」[p]
蕾「んんっ♡　私のはどうなのっ？　はぁっ♡　あぁ、キュンキュン締め付けられてるでしょっ♡」[p]
凛子「私のほうは…熱くてトロトロになってるんじゃない？　[舜]くんのこと包み込んであげる♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_teman3

[tb_start_text mode=1 ]
凛子「んんっ♡　はぁ、あんっ♡　[舜]くんのおかげで、トロトロになって開いてきちゃった…♡」[p]
蕾「私だって…♡　もうおちんちん挿れる準備できちゃったんだから♡　先に挿れてほしいの♡」[p]
蕾「あっ♡　はぁ、あぁ♡　それで、私のおまんこのほうが気持ちいいんだって言わせるんだから♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひあぁぁぁっ♡　やっ…そこ、弱いのに♡　なんで２人同時なのにっ…弱いトコわかっちゃうの」[p]
凛子「はぁっ♡　あぁぁぁっ♡　私もっ、気持ちいいトコ当たってるっ♡　[舜]くん、すごいっ♡」[p]
[舜]「２人が触ってほしいトコなら、全部わかってるから…ぐちゃぐちゃにしてあげられるんだよ」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_anaruseme1

[tb_start_text mode=1 ]
蕾「あっ♡　あぁ♡　私のお尻、好きにしていいよ♡　ねぇ、私のほうがいいでしょう？」[p]
凛子「ふーっ♡　そんなことないよね♡　[舜]くん、私のほうがほぐれるの早いから好きでしょう？」[p]
凛子「ふふっ…蕾相手に本気で貼り合っちゃった♡　だって[舜]くんに悦んでほしいんだもの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_anaruseme2

[tb_start_text mode=1 ]
[舜]「ヤバ、お尻の穴、ヒクヒクしてきた…このままほぐしたら簡単に指入っちゃいそうだな」[p]
凛子「くぅぅっ♡　んっ♡　はぁ♡　とろんって緩んできたでしょ？　受け入れる準備してるの」[p]
蕾「私のお尻…す～っごく締まるよ♡　指でもおちんちんでも好きなもの挿れていいんだからね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_anaruseme3

[tb_start_text mode=1 ]
凛子「あぁぁっ♡　やだ…お尻なんて恥ずかしいはずなのに…♡　気持ちよくなってるの♡」[p]
凛子「[舜]くんの触り方が上手なんだもの♡　いっぱい撫でて、もっとほぐしてっ♡」[p]
蕾「ママのほうばっかりにかかりきりにならないでよぉ♡　私のお尻もいっぱい触って♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_anaruseme_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んおおおおっ♡　お尻っ…トロトロになっちゃう♡　気持ちいいっ♡　はっ♡　はぁ♡　あぁ♡」[p]
凛子「私もっ♡　あ゛あ゛っ♡　んっ♡　[舜]くん、２人相手にしても気持ちよくできちゃうんだね」[p]
蕾「私だって…[舜]のこと気持ちよくするんだから♡　あんっ♡　されてばっかりじゃないぃ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_pisuton_yukkuri_rinko1

[tb_start_text mode=1 ]
凛子「はぁっ♡　あんっ♡　なんか、変な感じ…蕾に見られながらセックスしてるなんて…」[p]
凛子「あっ♡　あぁっ♡　こんなこと…今までじゃ絶対にあり得ないし考えたこともなかったのにっ♡」[p]
蕾「私だって…ママと同じ人と付き合って…こうやって一緒にセックスしちゃうなんて思わなかった」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_rin+=1"  name="H_supiritasu_pisuton_yukkuri_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_rinko2

[tb_start_text mode=1 ]
凛子「ひぅぅっ♡　あんっ♡　[舜]くん、今日意地悪だね♡　焦らすみたいに…浅いトコばっかり♡」[p]
[舜]「蕾に見せてるんだよ…凛子さんはどんな風に気持ちよくなって、乱れるのか…！」[p]
凛子「そんな、恥ずかしい…♡　あっ、あぁっ♡　私、母親じゃなくて女の顔になってるものっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_rin+=1"  name="H_supiritasu_pisuton_yukkuri_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_rinko3

[tb_start_text mode=1 ]
凛子「んっ♡　くぅぅっ♡　い、いきなりっ…深いトコ…突き上げられると…おかしくなっちゃう♡」[p]
蕾「ママ、こんなふうにセックスするんだ…すっごいやらしい…♡　悔しいけど…私よりエッチかも」[p]
[舜]「そうなんだよ…凛子さんは奥ばっかり狙うと、どんどん乱れてエロい顔になってくんだ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_rin=0"  name="H_supiritasu_pisuton_yukkuri_rin"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あ゛っ♡　あ゛あ゛あ゛っ♡　そこっ、気持ちいいの…[舜]くん、好きぃっ♡」[p]
[舜]「あ～、エッロ。おっぱいぶるぶる揺らして腰ヘコさせて。娘に見られてんのにいいの？」[p]
凛子「あ゛あ゛っ♡　そんなのだめぇっ♡　ごめんっ、ごめんね蕾っ♡　こんな恥ずかしい姿見せて」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*3P_pisuton_hagesiku_rinko1

[tb_start_text mode=1 ]
凛子「あ゛っ♡　あ゛っ♡　ひう゛ぅっ♡　[舜]くんのおちんちん、1番奥まで当たってる…！」[p]
[舜]「先っぽでいいトコよ～くこねてあげないとな…気持ちいい顔、蕾に見せてやらないと…！」[p]
凛子「ああぁっ♡　恥ずかしいのに…余計にっ、お腹の奥反応して気持ちよくなってるのっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_rin+=1"  name="H_supiritasu_pisuton_hagesiku_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_rinko2

[tb_start_text mode=1 ]
凛子「んっ、くぅぅぅっ♡　はっ♡　はぁ♡　こ、腰勝手に動いて…止まらなくなっちゃう♡」[p]
蕾「本気のセックスになってるじゃない…ずるいっ、ずるいっ…！　私がいること忘れないでよ？」[p]
凛子「大丈夫…蕾のこともちゃんと感じてるからね♡　蕾も一緒に気持ちよくなろうね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_rin+=1"  name="H_supiritasu_pisuton_hagesiku_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_rinko3

[tb_start_text mode=1 ]
[舜]「あー、ヤバ、興奮する…！　チンポバキバキで収まんないわ…！」[p]
凛子「ひっぐぅ♡　おっ♡　おっ♡　おおっ♡　激し、壊れちゃうっ♡　すごいのっ…♡」[p]
凛子「[舜]くんのこと、興奮させられてるっ♡　あぁぁ、幸せっ♡　もっと頂戴…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_rin=0"  name="H_supiritasu_pisuton_hagesiku_rin"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「お゛っ♡　あぅぅっ♡　体勝手に動いてるっ♡　あぁぁっ♡　[舜]くん、気持ちいいよぉ♡」[p]
[舜]「エッロ。完全にメスになってんなぁ。ほら、チンポもっとほしいんだろ？」[p]
凛子「だって気持ちいいんだもの♡　頂戴♡　奥まで突き上げて♡　中に全部出し切ってもいいよ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*3P_2_kaiwa1

[tb_start_text mode=1 ]
蕾「私とのセックスのほうが気持ちいいって、わかってるくせに♡　体の相性だっていいでしょ？」[p]
凛子「ふふ、私としてる時の[舜]くんも気持ちよさそうだよ？　頭空っぽにしてくれてるもんね？」[p]
蕾「ね、私とママ、どっちのほうが好きか…どっちのセックスのほうが気持ちいいか決めてよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_kaiwa2

[tb_start_text mode=1 ]
凛子「[舜]くん、きて…♡　いつもみたいに夢中になってる姿、蕾に見せてあげましょ♡」[p]
蕾「私とだって、わけわかんないくらい腰振ってるもんね！？　ママに教えてあげてよっ！」[p]
[舜]「順番にするから、待ってろって。いい子にしてないと、チンポ挿れてあげないからな？」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_kaiwa3

[tb_start_text mode=1 ]
凛子「ふふ、[舜]くんに躾けられてるみたいで興奮しちゃう♡　今日は何してくれるんだろう？」[p]
蕾「私にも…いつもみたいにたっぷり焦らしてから、ビンビンに反り返ったおちんちん挿れてよ♡」[p]
凛子「へぇ、[舜]くん…蕾には欲望を遠慮なくぶつけてるのね。ちょっと嫉妬しちゃうなぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*3P_2_Dkiss_tubomi1

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅ、じゅぷ、じゅるるるっ♡　ん、はぁ、食べられちゃうみたいなキス大好き♡」[p]
蕾「この角度じゃなくって…ちゃんとキスして舌絡ませてるとこ…ママに見えるようにしてよ♡」[p]
蕾「ちゅ、ちゅぷ、じゅるるるっ♡　はぁ、あふ、こんなにトロトロのキスできてるんだよって♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_Dkiss_tubomi2

[tb_start_text mode=1 ]
[舜]「ほら、舌出せ…エロいキスしたいんだろ？　アヘ顔でベロチューおねだりしないとな」[p]
蕾「はひ♡　ベロチューしてぇ♡　お願い♡　ちゅっちゅ、これがいいの♡　じゅるるるっ♡」[p]
蕾「あはぁ♡　れろ、ちゅぷ、ちゅ♡　ヌルヌルのあったかい舌、絡ませるのすっごく好きなの♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_2_Dkiss_tubomi3

[tb_start_text mode=1 ]
蕾「ちゅぷ、ちゅっちゅ♡　じゅるるるるっ♡　はぁ、あはぁ♡　口の中、とろけちゃいそ…♡」[p]
[舜]「凛子さんに見られて余計興奮するなんて、蕾は変態だな…」[p]
蕾「だってっ…こんなにエッチで気持ちいいキスしたら…体ウズウズしちゃうに決まってるでしょ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_2_Dkiss_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「んぉぉっ♡　ちゅぷじゅぷじゅるるるっ♡　キスでゾクゾクおまんこ反応しちゃってるっ♡」[p]
蕾「ちゅぷ、んんっ♡　んっ、お口でセックス…先に体験しちゃったぁ♡　ぎもちいいのっ♡」[p]
蕾「はひっ♡　ちゅっちゅっちゅ♡　ちゅぷ、じゅるるるる…私のこと、食べちゃって…♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_Dkiss_rinko1

[tb_start_text mode=1 ]
凛子「んんっ♡　ちゅぷ、じゅぷ、ちゅっちゅ♡　ふ～っ♡　あぁ、がっついてくれるの…？」[p]
凛子「ちゅぷ、ちゅっちゅ、舌も…入ってきて…んんっ♡　はふっ、息するの、やっとなくらいっ♡」[p]
凛子「求めてくれて嬉しいの…♡　私も応えたいって思ってるよ♡　ちゅっちゅ、ちゅぷ、じゅるる」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_Dkiss_rinko2

[tb_start_text mode=1 ]
凛子「ちゅく、ちゅっちゅ♡　じゅるるる♡　あはぁ…舌もとろけちゃいそう♡　ちゅぷ、ちゅ♡」[p]
凛子「[舜]くんの口の中、すっごく熱くなってる…おちんちんも同じくらい熱くなってるのかな？」[p]
凛子「フーッ♡　フーッ♡　興奮しちゃった？　欲望、全部ぶつけてくれていいんだからね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_2_Dkiss_rinko3

[tb_start_text mode=1 ]
凛子「じゅるるる、にちゅ、ちゅぷ♡　んん、[舜]くん、顔が真剣になってるよ♡　ふぅ、んんっ♡」[p]
凛子「男の子って顔…その顔、すっごく好きなの♡　あぁ…お腹の奥きゅ～んって疼いちゃった♡」[p]
凛子「ちゅ、ちゅぷちゅぷ、じゅるる♡　体の芯まで女なんだってわからせてくれるんだもん♡」」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_2_Dkiss_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「んっふぅぅっ♡　ちゅぷ、じゅぷじゅるるるるっ♡　あぁ、濡れてきちゃったぁ♡」[p]
凛子「今っ…足の間…じゅわって溢れてるの…♡　キスだけで気持ちよくなっちゃったから♡」[p]
[舜]「俺もチンポ疼いちゃったよ。今すぐ奥まで挿れて腰振りたいくらいだ…」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_supankingu1

[tb_start_text mode=1 ]
蕾「ひあぁぁっ♡　あっ♡　お尻、叩かれてるとこジンジンしてる♡　赤くなっちゃう♡」[p]
凛子「蕾ばっかり強く叩いてるんじゃない？　ずるいよ[舜]くん♡　私のことも力いっぱい叩いて♡」[p]
[舜]「叩かれるのおねだりか…ほんっと、スケベな親子だなぁ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_2_supankingu2

[tb_start_text mode=1 ]
[舜]「ほらっ！　手形残るくらいっ、叩いてやるよ…！　ありがとうございますが言えないとな…！」[p]
凛子「あっ♡　ありがとうございますっ♡　はぁ、あんっ♡　気持ちよくしてもらえて嬉しいの♡」[p]
蕾「ひっぐぅぅっ♡　ありがとうっ、ございますっ♡　おまんこウズウズしてきちゃったぁっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_2_supankingu3

[tb_start_text mode=1 ]
[舜]「あー、いい音。でもやっぱ音もちょっと違う気がするなぁ…！　どっちの音のほうがいいかな」[p]
蕾「私、でしょっ♡　パチンっておっきい音出てるもの♡　はぁ、んっ♡　私のこと選んで♡」[p]
凛子「私だって…あっ♡　やらしい音出てるよね、[舜]くん♡　エッチな声だって出ちゃうよ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_2_supankingu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あぁぁんっ♡　痛いはずなのに…気持ちいい振動がお腹奥まで届いてるのっ♡」[p]
凛子「はぁっ♡　はぁっ♡　あんっ…私もすっごく気持ちよくなってるの…♡」[p]
[舜]「２人とも、おまんこ濡らしすぎだろ。お尻叩かれただけで興奮するなんて変態だな…！」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_sumata1

[tb_start_text mode=1 ]
蕾「ひぅ♡　はぁ♡　あぁ♡　[舜]、すっごいおっきくなってるじゃない♡　あぁ…擦れてる♡」[p]
凛子「んっ♡　ふふ、２人の割れ目トンネルはどう？　トロトロの感触、楽しんでもらえてるかな？」[p]
[舜]「あぁ、最高だよ。んっ…割れ目に擦りつけてるだけなのに…根元から先っぽまで気持ちいいよ」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_sumata2

[tb_start_text mode=1 ]
凛子「あっ♡　はぁ、あんっ♡　[舜]くん、先っぽもパンパンに膨れちゃってるんだね…おっきい♡」[p]
蕾「あっ♡　あぁぁっ♡　クリ押しつぶされてるっ♡　くぅぅっ♡　こんなの、イッちゃう♡」[p]
凛子「んん♡　私はまだ大丈夫だから…私のほうにたっぷり擦りつけてもらっていいからね♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_2_sumata3

[tb_start_text mode=1 ]
凛子「あぁ♡　[舜]くんのおちんちん、ビクビク脈打ちっぱなしだね♡　もう限界になってる？」[p]
蕾「はぁ♡　あっ♡　動いてるの、おまんこに直接伝わってきちゃってる♡　すごいよぉっ♡」[p]
[舜]「くっ…んんっ♡　今ここで出したら、２人とも俺の精子まみれになりそうだなぁ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「あ゛あ゛あ゛っ♡　先っぽ、引っかかって擦れてっ…♡　だめだめ♡　気持ちいいのっ♡」[p]
[舜]「くっ…腰、ガクガク動かすからっ…余計に擦れて…あぁっ！　ヤバ、マジで出そうだ…」[p]
凛子「あぁぁっ♡　３人で一緒に気持ちよくなっちゃってる♡　はぁっ♡　あんっ…♡　幸せだね♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_teman1

[tb_start_text mode=1 ]
蕾「おおおおっ♡　しゅごっ♡　潮吹き、止まんないっ♡　おっおぉ♡　弱いトコばっかりっ♡」[p]
凛子「はぁ、あっ♡　[舜]くんっ…どうしてそんなに気持ちいいところばっかりわかっちゃうの♡」[p]
[舜]「すっごい潮吹いてる…どこ触れば気持ちいいかなんて、もうとっくに覚えてるんだよ」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_teman2

[tb_start_text mode=1 ]
[舜]「もっと奥まで欲しいの？　じゃ、腰ヘコさせて、スケベにおねだり聞かせてよ」[p]
凛子「じゃあ、私からっ♡　あぁっ♡　もっと[舜]くんの指でズポズポってしてほしいのっ♡」[p]
蕾「私もっ…♡　ママより激しくおまんこぐちゃぐちゃにして♡　とろけるほどほぐしてよぉっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_2_teman3

[tb_start_text mode=1 ]
蕾「んぉぉっ♡　奥トントン気持ちいいっ♡　それっ、それ…♡　イグイグ、イッちゃうぅ♡」[p]
凛子「あぁぁぁっ♡　顔、だらしなくなっちゃうのっ♡　や、あんまり見ないでぇっ♡　おおおっ♡」[p]
[舜]「ヤバ、全然潮吹き止まんないじゃん…敏感なのも潮吹きやすいのもそっくりだな…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_2_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「おおおおっ♡　んぉ♡　ピュルピュルって…潮…いっぱい出ちゃってる♡　気持ちいい♡」[p]
蕾「あぁ♡　もう完全に奥までパックリ開いちゃったぁ♡　おちんちん挿れる準備できちゃったの♡」[p]
凛子「私の中も…もう準備万端なのっ♡　はぁ♡　ああ♡　トロトロホカホカおまんこ、味わって♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_anaruseme1

[tb_start_text mode=1 ]
蕾「はーっ♡　はーっ♡　どっちのお尻のほうが好きか決まった？　エッチなほう選んで♡」[p]
[舜]「蕾のプリプリのお尻も、凛子さんの柔らかくて触り心地最高なお尻もどっちもたまんない」[p]
凛子「ふふ、選べなくなっちゃった？　欲張りだね♡　じゃあ両方同時に楽しむしかないのかな♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_2_anaruseme2

[tb_start_text mode=1 ]
凛子「んんっ♡　はぁ、あっ♡　焦らなくても…私も蕾もいなくなったりしないから大丈夫だよ♡」[p]
凛子「んっ♡　激し…♡　むさぼるみたいにお尻の穴開こうとしちゃだめ♡　あっ♡　あぁぁぁっ♡」[p]
蕾「はぁっ♡　あぁっ♡　開いてきちゃったぁ♡　ヒクヒクして…指、入っちゃいそうなんだけど♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_2_anaruseme3

[tb_start_text mode=1 ]
蕾「あっ♡　あぁぁぁっ♡　指、入ってきたぁ♡　んっ、くぅ♡　お尻、開かれちゃってるっ♡」[p]
凛子「はーっ♡　あぁ♡　ふ、普段誰にも見せてない粘膜まで…開かれて見られちゃってるのっ♡」[p]
[舜]「２人とも、ピンク色で可愛いアナルしてんなぁ。ヒクヒクして疼いてんだろ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_2_anaruseme_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凛子「あっ♡　あぁぁぁっ♡　ゆ、指…にゅるにゅるって…出たり入ったりして…すごいっ♡」[p]
蕾「くぅぅっ♡　はっ♡　はっ♡　息するのだけで…やっとになってるっ♡　お尻犯されてる♡」[p]
蕾「おっ♡　おおおおっ♡　お尻でイッちゃう…気持ちよくなって癖になっちゃうってばぁ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_pisuton_yukkuri_tubomi1

[tb_start_text mode=1 ]
蕾「あっ♡　はぁ、あんっ♡　深いところまできてる…んんっ♡　押し上げられちゃってる♡」[p]
[舜]「あー、すっごい締まるっ…♡　めちゃくちゃエロい顔だなぁ、ずっと待ってたんだもんな？」[p]
凛子「２人の気持ちよさそうな顔見せられちゃったら、嫉妬しちゃう…私も混ぜてもらうからね」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_tubo+=1"  name="H_supiritasu_pisuton_yukkuri_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_tubomi2

[tb_start_text mode=1 ]
凛子「ふーっ♡　ふーっ♡　[舜]くん、蕾としてる時はこんなに無邪気な顔になるんだね♡」[p]
[舜]「蕾は意地悪されると興奮するんだよ…今度は凛子さんにもいっぱい意地悪してあげようかな」[p]
蕾「あ゛っ♡　や、だぁっ♡　だめっ♡　意地悪して可愛がってくれるのは私だけなんだからっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_tubo+=1"  name="H_supiritasu_pisuton_yukkuri_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_tubomi3

[tb_start_text mode=1 ]
蕾「おっ♡　おおおっ♡　奥っ♡　もっといっぱい突いて♡　[舜]のおちんちんほしいのぉ♡」[p]
凛子「エッチになるまで、[舜]くんが教え込んだの？　私が知らないところでいっぱいしたんだね」[p]
[舜]「凛子さん、妬いてるんだ？　でも同じくらい凛子さんともエロいセックスしてるだろ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_tubo=0"  name="H_supiritasu_pisuton_yukkuri_tubo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「ひぐぅぅっ♡　す、すっご…呼吸、できないっ♡　奥まで圧迫されちゃってりゅ♡　おおおっ♡」[p]
凛子「はぁ♡　はぁ♡　あぁ、あんまり気持ちよさそうな声出すから…私まで興奮してきちゃった♡」[p]
蕾「んぉぉぉっ♡　奥っ、壊れちゃうぅ♡　だめだめだめっ…♡　おかしくなっちゃうのっ…♡」　[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*3P_pisuton_hagesiku_tubomi1

[tb_start_text mode=1 ]
蕾「お゛っ♡　お゛っ♡　お゛っ♡　激しっ…汚い声、出ちゃうっ♡　今変な顔になってるよぉ♡」[p]
凛子「大丈夫、隠さないで。余裕ないぐちゃぐちゃになった顔が可愛いんでしょ？　ね、[舜]くん？」[p]
[舜]「そうそう…もっといじめてエロい顔にしてやろうって興奮するんだよ…！」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_tubo+=1"  name="H_supiritasu_pisuton_hagesiku_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_tubomi2

[tb_start_text mode=1 ]
蕾「ひあぁっ♡　動けないよぉっ♡　刺激受け流せないっ♡　気持ちいいのダイレクトにきちゃう♡」[p]
凛子「はー♡　はー♡　[舜]くんの大きいおちんちん、出し入れしてるとこも全部見えちゃってる♡」[p]
蕾「やっ…そんなこと言われたらイッちゃうぅっ♡　おまんこキュンキュンしてるっ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_tubo+=1"  name="H_supiritasu_pisuton_hagesiku_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_tubomi3

[tb_start_text mode=1 ]
[舜]「蕾。セックスしてるとこ、ちゃんと凛子さんに見てもらわないと。見てって言うんだよ！」[p]
蕾「ひぅぅ♡　やっ、恥ずかし…み、見てっ♡　[舜]とセックスしてるとこ…全部見てほしいのっ♡」[p]
凛子「見てるよ…気持ちよさそうで、さっきから私もずーっとムズムズしてるんだから…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_tubo=0"  name="H_supiritasu_pisuton_hagesiku_tubo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
蕾「お゛っ♡　お゛ほぉぉっ♡　ぎもぢいっ♡　わかんないっ、わかんなくなってりゅっ♡」[p]
[舜]「くっ…！　体のけ反りすぎだろ…！　あぁぁっ、そんな締め付けんなっ…くぅぅ」[p]
蕾「そんなこと言っても無理っ…気持ちいいの止まんないのっ♡　おっ♡　おっ♡　おおおおっ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
