[_tb_system_call storage=system/_EV_OP3.ks]

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

[bg  time="1000"  method="crossfade"  storage="back_byouin.png"  ]
[tb_start_text mode=1 ]
家から最も近い病院。記憶の通り、年配の患者がのんびりと歩き回っている。[p]
[舜]「はぁ……そういや、昔から人気の病院だったっけ。[r]人が多いと、どうにも気が滅入るな……」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_byouin2.png"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_op_nagi{number}.mp3" number=4]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（そういえば凪はここで働いてるんだっけ。でもさすがに何科にいるかもわかんないし──）[p]
#凪
凪「田中さーん！　いらっしゃいますか～？」[p]
[舜]（……いた！）[p]
1番賑わっているであろう内科の待合室前で、看護服を着た凪が老人に声をかけていた。[p]
自由気ままな患者からの声かけに、うろたえながらも丁寧に答えている。[p]
[舜]（ちゃんと看護師として働いてるんだな）[p]
その時、少し先にいる凪と不意に目があった気がした。[p]
[_tb_end_text]

[stopbgm  time="500"  fadeout="true"  ]
[call  storage="character.ks"  target="*nagi_sigotogi"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_text mode=1 ]
#凪
凪「[舜]ちゃん？　やっぱり[舜]ちゃんだよね！ [r]すぐにわかったよ。びっくりした、もう10年ぶりくらいかな？」[p]
#凪
凪「もしかして、こっちに帰ってきたの？ 言ってくれたらよかったのに〜」[p]
[舜]（げっ、まさかの接触…遠くから確認するだけでよかったのに）[p]
[舜]（……ん？ 地元に戻ってきたって思ってるのか。引きこもってたの、知らないんだな）[p]
#凪
凪「懐かしいな、元気だった…？　あ、じゃないか。[r]病院に来てるんだもんね。ごめん…私ホント気が利かなくて」[p]
[舜]「いや、俺軽い頭痛で薬貰いに来ただけだから──」[p]
隼人「あ、凪…！」[p]
[_tb_end_text]

[chara_hide  name="kyara_nagi_sabun2"  time="0"  wait="false"  pos_mode="false"  ]
[wait  time="300"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="300"  ]
[call  storage="character.ks"  target="*2kyara_hayatonagi"  ]
[tb_start_text mode=1 ]
[舜]（はっ？　なんでまたコイツが…！）[p]
凪に駆け寄ってきた隼人は、こちらを向いて「あれ？」と驚いた顔になる。[p]
隼人「母さんトコのバイトの…あぁ、[舜]だっけ」[p]
#凪
凪「え、[舜]ちゃんと隼人、知り合いなの？」[p]
隼人「は？　凪こそ…知り合いだったの？」[p]
#凪
凪「う、うん…[舜]ちゃんとは幼馴染なの。小さい頃はよく遊んでもらって」[p]
#凪
凪「あ、[舜]ちゃん、こちらお付き合いしてる成瀬隼人さん」[p]
「ね？」と言葉を投げられ、コクリと頷く。[p]
婚約者である隼人は一瞬だけ不愉快そうな顔になるが、すぐに元通りの笑顔に変わった。[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「改めて、こっちこそよろしく。バイトも頑張ってな？」[p]
[舜]（コイツ…！　絶対俺を馬鹿にしてんだろ…）[p]
#凪
凪「なんだか、今日はいろんな人に会えて嬉しいな」[p]
気の強そうな女性の看護師がツカツカとこちらへ歩いて来るのが見えた。[p]
看護師「今は休憩中なの？　おしゃべりしてる余裕ないでしょう」[p]
#凪
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"][chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif" wait="false" ] 凪「も、もうしわけありません！　すぐに戻ります！」[p]

[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="kami.mp3"  ]
[tb_start_text mode=1 ]
駆け出そうとした瞬間、持っていたカルテが足元に散らばった。[p]
[_tb_end_text]

[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="event/op_3.png"  ]
[tb_cg  id="cg_op3"  ]
[tb_start_text mode=1 ]
#凪
凪「あぁっ！　もう…なんで私こんなにダメなんだろ」[p]
看護師「拾ってからでいいから、戻ってきなさい」[p]
#凪
凪「はい…！」[p]
懸命にカルテを拾い上げる凪。[p]
ふと足元から下着が覗いた。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_byouin2.png"  ]
[tb_start_text mode=1 ]
#凪
凪「それじゃ[舜]ちゃん、隼人、またね」[p]
バタバタと走り去っていく彼女の足音と、「走らない！」という看護師の声が聞こえた気がした。[p]
[_tb_end_text]

[call  storage="character.ks"  target="*hayato_hudangi"  ]
[tb_start_text mode=1 ]
隼人「凪ってかわいいよね。大丈夫だよ、俺大切にしてるからさ」[p]
[舜]「えっ」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「お兄ちゃん的存在なんでしょ？　心配なんだろーなぁって思って」[p]
[舜]「べ、別に俺は…」[p]
隼人「そう？　じゃあいっか。俺、凪のお母さんのお見舞いに来たから。また」[p]
[舜]「凪の母さん、入院してるのか？」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]隼人「は？　知らなかったんだ。長く入院してんだよ」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「お兄ちゃん的存在なら、知っておいてあげなくちゃ～」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]俺の肩をポンポン叩き、隼人はにやついたままエレベーターホールへ向かっていった。[p]

[_tb_end_text]

[chara_hide  name="kyara_hayato_sabun"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[tb_start_text mode=1 ]
[舜]（なんだあいつ…）[p]
[舜]（でも…言ってることは正しい。俺は凪のこと何も知らなかったんだな…）[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[stopbgm  time="500"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_room0.png"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="semi.mp3"  fadein="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="3000"  loop="true"  storage="kodomo.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
[舜]（はぁ……もう朝か。昨日はほんと、長い一日だった）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[舜]（何年ぶりだろう、凪とちゃんと話したの。[r]外見は大人っぽくなってたけど、話し方や雰囲気は昔のままだった）[p]
[舜]（凪はちゃんと働いて、大人としての人生を歩んでる。[r]前を向いて、将来のことまで考えてるんだな……）[p]
[舜]（……俺と結婚するって、昔言ってたじゃないか。なんだよ、それなのに……くそっ！）[p]
湧き上がる悔しさと怒りに任せて、[舜]は拳で枕を何度も殴りつけた。[p]
けれど、感情をぶつけ終わった後、襲ってくるのはどうしようもない虚しさだった。[p]
[舜]（俺は……どうなんだ？ この部屋で、ずっと時間が止まったままじゃないか）[p]
それでも——まだ焦るには早い。[p]
まだ、間に合う。これからだ。必ず浮かび上がってみせる。[p]
[舜]（……あいつは秋には結婚したいと言ってたな）[p]
[舜]（ってことは、[font color="yellow"]動けるのは夏の間だけか。[resetfont][r]うかうかしてる暇はない。今すぐ動き出さないと）[p]
隼人…あいつだけは、絶対に許さない。[r]二度と立ち上がれないほどに、徹底的に叩き潰してやる。[p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
*skip

[tb_eval  exp="sf.puro_nagi_sigoto=1"  name="puro_nagi_sigoto"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_nagi_on=1"  name="chara_nagi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.month=6"  name="month"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="room_asa.ks"  target="*top0"  ]
