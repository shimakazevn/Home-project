]
[_tb_system_call storage=system/_sansaku_famiresuEV_hayato.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[bg  time="0"  method="crossfade"  storage="back_famiresu.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
店内は少し賑わっているが、どこか心地よい静けさが漂っている。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（隼人がいる。話しかけてみようかな？）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_famiresuEV_hayato.ks"  size="20"  text="隼人に話しかける"  x="410"  y="160"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="構わず店内に入る"  x="410"  y="240"  width="497"  height="57"  _clickable_img=""  target="*taberu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="夜間のバイトをする（▲￥4000　▼体力）"  x="410"  y="320"  width="497"  height="57"  _clickable_img=""  target="*baito"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="帰る"  x="410"  y="400"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*hanasu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[wait  time="200"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
[tb_start_tyrano_code]
;好感度別に挨拶を変更

[if exp="f.koukando_hayato <= 9"]
[jump target="*aisatu1_nigate"]

[elsif exp="f.koukando_hayato <= 19"]
[jump target="*aisatu2_hutuu"]

[elsif exp="f.koukando_hayato <= 29"]
[jump target="*aisatu3_yuukou"]

[else]
[jump target="*aisatu4_suki"]
[endif]

[_tb_end_tyrano_code]

*aisatu1_nigate

[tb_start_text mode=1 ]
隼人「よ、こんなとこで何してんの。お前はいつもお気楽そうでいいよなぁ」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;隼人へ印象別のセリフをコール


;親友
[if exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_sinyuu"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato <= -9"]
[call  storage="komyu_syu.ks"  target="*hayato_kyouai"  ]

;復讐
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_hukusyuu"  ]

;ATM
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato <= -9 "]
[call  storage="komyu_syu.ks"  target="*hayato_atm"  ]

;友達
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_tomodati"  ]

;舎弟
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato <= -4"]
[call  storage="komyu_syu.ks"  target="*hayato_syatei"  ]

;憎悪
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_zouo"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato <= -4 "]
[call  storage="komyu_syu.ks"  target="*hayato_sennou"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_hayato >= 7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_hayato <= -7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_hayato <= -7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;知り合い
[elsif exp="f.komyu_insyou_jyunsui_hayato >= 7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*aisatu2_hutuu

[tb_start_text mode=1 ]
隼人「よ、誰かと約束してんの？　あ、1人か…ま、1人のが気楽だよな」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;隼人へ印象別のセリフをコール


;親友
[if exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_sinyuu"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato <= -9"]
[call  storage="komyu_syu.ks"  target="*hayato_kyouai"  ]

;復讐
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_hukusyuu"  ]

;ATM
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato <= -9 "]
[call  storage="komyu_syu.ks"  target="*hayato_atm"  ]

;友達
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_tomodati"  ]

;舎弟
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato <= -4"]
[call  storage="komyu_syu.ks"  target="*hayato_syatei"  ]

;憎悪
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_zouo"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato <= -4 "]
[call  storage="komyu_syu.ks"  target="*hayato_sennou"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_hayato >= 7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_hayato <= -7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_hayato <= -7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;知り合い
[elsif exp="f.komyu_insyou_jyunsui_hayato >= 7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*aisatu3_yuukou

[tb_start_text mode=1 ]
隼人「お～、元気？　どこかに行くとこだった？　買い物ならお勧めの店教えるから言えよ」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;隼人へ印象別のセリフをコール


;親友
[if exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_sinyuu"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato <= -9"]
[call  storage="komyu_syu.ks"  target="*hayato_kyouai"  ]

;復讐
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_hukusyuu"  ]

;ATM
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato <= -9 "]
[call  storage="komyu_syu.ks"  target="*hayato_atm"  ]

;友達
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_tomodati"  ]

;舎弟
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato <= -4"]
[call  storage="komyu_syu.ks"  target="*hayato_syatei"  ]

;憎悪
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_zouo"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato <= -4 "]
[call  storage="komyu_syu.ks"  target="*hayato_sennou"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_hayato >= 7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_hayato <= -7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_hayato <= -7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;知り合い
[elsif exp="f.komyu_insyou_jyunsui_hayato >= 7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[call  storage="sansaku_famiresuEV_hayato.ks"  target="*sasiire1"  cond="f.sasiire_hayato==0"  ]
[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*aisatu4_suki

[tb_start_text mode=1 ]
隼人「おっと！　目合ったんだから先に気づけよ。ははっ、別にいいけどさ」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;隼人へ印象別のセリフをコール


;親友
[if exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_sinyuu"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_hayato >= 9 && f.komyu_insyou_jyunsui_hayato <= -9"]
[call  storage="komyu_syu.ks"  target="*hayato_kyouai"  ]

;復讐
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato >= 9 "]
[call  storage="komyu_syu.ks"  target="*hayato_hukusyuu"  ]

;ATM
[elsif exp="f.komyu_insyou_suki_hayato <= -9 && f.komyu_insyou_jyunsui_hayato <= -9 "]
[call  storage="komyu_syu.ks"  target="*hayato_atm"  ]

;友達
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_tomodati"  ]

;舎弟
[elsif exp="f.komyu_insyou_suki_hayato >= 4 && f.komyu_insyou_jyunsui_hayato <= -4"]
[call  storage="komyu_syu.ks"  target="*hayato_syatei"  ]

;憎悪
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato >= 4 "]
[call  storage="komyu_syu.ks"  target="*hayato_zouo"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_hayato <= -4 && f.komyu_insyou_jyunsui_hayato <= -4 "]
[call  storage="komyu_syu.ks"  target="*hayato_sennou"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_hayato >= 7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_hayato <= -7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_hayato <= -7 && f.komyu_insyou_jyunsui_hayato >= -3 && f.komyu_insyou_jyunsui_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

;知り合い
[elsif exp="f.komyu_insyou_jyunsui_hayato >= 7 && f.komyu_insyou_suki_hayato >= -3 && f.komyu_insyou_suki_hayato <= 3 "]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*hayato_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[call  storage="sansaku_famiresuEV_hayato.ks"  target="*sasiire2"  cond="f.sasiire_hayato==1"  ]
[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*sasiire1

[tb_start_text mode=1 ]

[_tb_end_text]

[tb_start_text mode=1 ]
隼人「これ、さっきそこで配ってたエナジードリンクなんだけど。やるよ」[p]
隼人「俺、もう昼間にエナジードリンク飲んじゃったしさ。[r]あんまり飲むのも体に毒だろ？　だから貰って」[p]
エナジードリンクをもらった[p]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_hayato+=1"  name="sasiire_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*sasiire2

[tb_start_text mode=1 ]
隼人「この新作エナジードリンク、めちゃくちゃ元気出るんだよな。[r]あ、よかったら１本飲んでみな」[p]
隼人「突然元気とやる気がわいてくるから、持て余して走り出したりするなよ？」[p]
エナジードリンクをもらった[p]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_hayato+=1"  name="sasiire_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  ]
[return  ]
*aisatu_end

[tb_start_tyrano_code]
;デートの約束が無い場合、隼人から遊びに誘われる（友好以上で2分の1の確率）

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*aisatu_end2"]
[endif]

[if exp="f.koukando_hayato < 20"]
[jump target="*aisatu_end2"]
[endif]

[jump target="asobi"]
[_tb_end_tyrano_code]

*aisatu_end2

[jump  storage="komyu_hayato.ks"  target="*top"  ]
[s  ]
*aisatu_end_back

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*asobi

[tb_start_text mode=4 ]
隼人「そうそう、次の休み、どこか遊びに行こうぜ？どうせ暇してるんだろ？」
[_tb_end_text]

[glink  color="btn_05_black"  storage="sansaku_famiresuEV_hayato.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="はい"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="sansaku_famiresuEV_hayato.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="いいえ"  _clickable_img=""  target="*no"  ]
[s  ]
*yes

[tb_eval  exp="f.deto_hayato=1"  name="deto_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_text mode=1 ]
[舜]「…まぁ、いいけど」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]隼人「なんだよ、その微妙な返事！　俺じゃ不満か～？」[p]
[舜]（当たり前だろ）[p]
隼人「でもまあ、お前いつも一人だし。たまには誰かと遊ぶのもいいだろ？」[p]
[舜]（……お節介だな）[p]
[font color="yellow"]隼人と遊ぶ約束をした[resetfont][p]
[_tb_end_text]

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end_back"  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]「いや…悪いけど用があるから」[p]
隼人「そうなの？いつも一人で寂しそうにしてるから、気を利かせて誘ったってのに」[p]
隼人「まぁいいや、今度は付き合えよ？」[p]
[舜]（……いやだ）[p]
[_tb_end_text]

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end_back"  