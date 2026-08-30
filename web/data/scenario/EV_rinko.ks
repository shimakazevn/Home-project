[_tb_system_call storage=system/_EV_rinko.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="rinko.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
熱々のホットタオルを取り出しトレーの上にのせる。[p]
[舜]（まさかいきなり手伝うことになるとは…）[p]
ただ、凛子さんと少し話したくて――[p]
そんな軽い気持ちで店を訪れたはずだった。[p]
けれど、あまりにも忙しそうな様子に、[r]つい「何か手伝えることありますか」なんて口走ってしまったのだ。[p]
[舜]（まぁでも…仕事に慣れるという意味では、いい機会か）[p]
そう思い直してはみたものの、長年引きこもっていた自分にとって、[r]久々の“仕事”というものは想像以上にハードルが高かった。[p]
まず緊張のあまり電話に出られない。[p]
お客さんを出迎えても、言葉がうまく出てこず冷や汗ばかりがにじむ。[p]
会話そのものが久しぶりすぎて、相手の声が耳に入ってこない――完全にスリーアウトだ。[r]俺が店主なら、即解雇を言い渡すレベルだ。[p]
しかし凛子さんは嫌な顔ひとつせずに掃除やベッドメイクの作業説明をしてくれた。[p]
[舜]「早く仕事を覚えないとな」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_date1_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
凛子「もう…お客様、手を伸ばしていたらマッサージできませんよ。[r]腕を下ろしてくださいね？　あっ…」[p]
凛子さんの声が明らかに困惑を含んでいる。[p]
よくないと思いつつ、少しだけ施術室の扉を開けて覗いてみる──[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="event/rinko1.png"  ]
[tb_cg  id="cg_rinko1"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="kintyou.mp3"  ]
[tb_start_text mode=1 ]
#凛子
凛子「お客様…意地悪はやめてくださいね？」[p]
そう言いながらも、彼女の表情は強くは抗えない複雑なもの。[r]男の手が、凛子さんのお尻をはっきりと掴んでいた。[p]
[舜]（おいおいおい、堂々と触ってるし。　ここって、そういう店……じゃないよな？）[p]
客の男「あ、いやぁ〜失敬失敬！　あまりに綺麗な身体だったから、つい手が勝手にねぇ」[p]
[舜]（あのオッサン…　凛子さんが強く断れないのをいいことに…）[p]
俺は少し考えたあと、手にしていたトレーから熱々のホットタオルを一枚取り出し、[r]意を決して部屋へ入った。[p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_massajiten3.png"  ]
[tb_start_text mode=1 ]
[舜]「失礼いたします…あ、あの…ホットタオルをお持ちしました…サービスということで」[p]
男の顔にタオルをのせ、視界を遮った。[p]
客の男「お、おお…サービスか、うん、気持ちいい…っていうか男の店員いたのか」[p]
#凛子
凛子「はい。彼のホットタオルの拭き取りは極上なのでお願いしているんです」[p]
客の男「うん、うん…そうか、ってことは毎回いるのか」[p]
ホットタオルを取った時には、すでに毒気を抜かれた男の顔があった。[r]凛子さんがそっとウィンクをくれる。[r]それに応えるように軽く頭を下げ、俺は静かにその場を後にした。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_massajiten2.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="rinko.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#凛子
凛子「[舜]くん、助かっちゃった。ありがとうね」[p]
そう言って、凛子さんは少し照れくさそうに笑った。[p]
#凛子
凛子「せっかく遊びに来てくれたのに手伝わせちゃったあげく、助けてもらっちゃって」[p]
#凛子
凛子「たまにいるのよね、ああいうタイプのお客さま。[r]困っちゃうけど、強く言いづらいこともあって…」[p]
[舜](まぁ、エロいから触りたくなる気持ちはわかるけど)[p]
[舜]「あ、あの…次から、お客様がいらしたときのご案内、僕がやります」[p]
#凛子
凛子「え、でも──」[p]
[舜]「話せるように練習します！　[r]男がいるってわかれば、下手なことできませんよ」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"]凛子「ありがとう、本当に[舜]くんがいてくれてよかったわ」[p]
その言葉とともに向けられた笑顔は、これまでで一番明るく、心からのものに見えた。[p]
[舜]（俺、コミュ障なのに大丈夫か…？）[p]
安請け合いだっただろうか。けれど、その不安を打ち消すように――[r]目の前で笑ってくれる凛子さんの表情が、胸にじんわりと響いた。[p]
（ま、やるしかないか……！）[p]
そう心の中でつぶやきながら、俺は小さく拳を握った。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]テンションが上がった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_rinko1=1"  name="EV_rinko1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
