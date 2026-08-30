[_tb_system_call storage=system/_sansaku_massajiEV_rinko.ks]

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
[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
店内は空いており、いつものように穏やかな時間が流れている。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（凛子さんが働いている。話しかけてみようかな？）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV_rinko.ks"  size="20"  text="凛子に話しかける"  x="415"  y="180"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="マッサージを受ける（ストレス▼￥5000▼）"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[glink  color="btn_03_black"  storage="sansaku.ks"  size="20"  text="帰る"  x="415"  y="400"  width="497"  height="57"  _clickable_img=""  target="*end"  ]
[s  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*rinko"  ]
[tb_start_tyrano_code]
;好感度別で会話が変化_凛子

[if exp="f.koukando_rinko_koibito == 1"]
[jump target="*aisatu5_koibito"]

[elsif exp="f.koukando_rinko <= 9"]
[jump target="*aisatu1_nigate"]

[elsif exp="f.koukando_rinko <= 19"]
[jump target="*aisatu2_hutuu"]

[elsif exp="f.koukando_rinko <= 29"]
[jump target="*aisatu3_yuukou"]

[else]
[jump target="*aisatu4_suki"]
[endif]

[_tb_end_tyrano_code]

*aisatu1_nigate

[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_han_rinko{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「凛子さん」[p]
#凛子
凛子「あ…えーと…何か忘れもの、かな？　どうかした？」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凛子へ印象別のセリフをコール


;運命の人
[if exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko <= -9"]
[call  storage="komyu_syu.ks"  target="*rinko_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko <= -9 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko <= -4"]
[call  storage="komyu_syu.ks"  target="*rinko_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko <= -4 "]
[call  storage="komyu_syu.ks"  target="*rinko_hukusyuu"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_rinko >= 7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_rinko <= -7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_rinko <= -7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_rinko >= 7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[jump  storage="sansaku_massajiEV_rinko.ks"  target="*aisatu_end"  ]
*aisatu2_hutuu

[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_han_rinko{number}.mp3" number=2]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
凛子「[舜]くん。お疲れ様。[r]ひょっとしてマッサージの勉強しにきたの？　ふふ、熱心ね」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凛子へ印象別のセリフをコール


;運命の人
[if exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko <= -9"]
[call  storage="komyu_syu.ks"  target="*rinko_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko <= -9 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko <= -4"]
[call  storage="komyu_syu.ks"  target="*rinko_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko <= -4 "]
[call  storage="komyu_syu.ks"  target="*rinko_hukusyuu"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_rinko >= 7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_rinko <= -7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_rinko <= -7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_rinko >= 7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[jump  storage="sansaku_massajiEV_rinko.ks"  target="*aisatu_end"  ]
*aisatu3_yuukou

[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_han_rinko{number}.mp3" number=3]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
凛子「やっぱり。ドアの開け方が[舜]くんっぽいなって思ってたから。音でわかっちゃうの」[p]
[_tb_end_text]

[call  storage="sansaku_massajiEV_rinko.ks"  target="*sasiire1"  cond="f.sasiire_rinko==0"  ]
[jump  storage="sansaku_massajiEV_rinko.ks"  target="*aisatu_end"  ]
*aisatu4_suki

[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_han_rinko{number}.mp3" number=4]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
凛子「いらっしゃい。ふふ、会いたいなぁって思ってたら来てくれるのね。不思議」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凛子へ印象別のセリフをコール


;運命の人
[if exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko <= -9"]
[call  storage="komyu_syu.ks"  target="*rinko_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko <= -9 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko <= -4"]
[call  storage="komyu_syu.ks"  target="*rinko_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko <= -4 "]
[call  storage="komyu_syu.ks"  target="*rinko_hukusyuu"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_rinko >= 7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_rinko <= -7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_rinko <= -7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_rinko >= 7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[call  storage="sansaku_massajiEV_rinko.ks"  target="*sasiire2"  cond="f.sasiire_rinko==1"  ]
[call  storage="sansaku_massajiEV_rinko.ks"  target="*sasiire1"  cond="f.sasiire_rinko==0"  ]
[jump  storage="sansaku_massajiEV_rinko.ks"  target="*aisatu_end"  ]
*aisatu5_koibito

[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_han_rinko{number}.mp3" number=5]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
凛子「いらっしゃいませ、お客様。ご予約は？　[r]なんて、冗談よ。ふふ、こんにちは」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凛子へ印象別のセリフをコール


;運命の人
[if exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_rinko >= 9 && f.komyu_insyou_jyunsui_rinko <= -9"]
[call  storage="komyu_syu.ks"  target="*rinko_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko >= 9 "]
[call  storage="komyu_syu.ks"  target="*rinko_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_rinko <= -9 && f.komyu_insyou_jyunsui_rinko <= -9 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_rinko >= 4 && f.komyu_insyou_jyunsui_rinko <= -4"]
[call  storage="komyu_syu.ks"  target="*rinko_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko >= 4 "]
[call  storage="komyu_syu.ks"  target="*rinko_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_rinko <= -4 && f.komyu_insyou_jyunsui_rinko <= -4 "]
[call  storage="komyu_syu.ks"  target="*rinko_hukusyuu"  ]

;秘めた想い
[elsif exp="f.komyu_insyou_suki_rinko >= 7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_rinko <= -7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_rinko <= -7 && f.komyu_insyou_jyunsui_rinko >= -3 && f.komyu_insyou_jyunsui_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_rinko >= 7 && f.komyu_insyou_suki_rinko >= -3 && f.komyu_insyou_suki_rinko <= 3 "]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*rinko_kirai"  ]

[endif]

[_tb_end_tyrano_code]

[call  storage="sansaku_massajiEV_rinko.ks"  target="*sasiire2"  cond="f.sasiire_rinko==1"  ]
[call  storage="sansaku_massajiEV_rinko.ks"  target="*sasiire1"  cond="f.sasiire_rinko==0"  ]
[jump  storage="sansaku_massajiEV_rinko.ks"  target="*aisatu_end"  ]
*sasiire1

[tb_start_text mode=1 ]
凛子「そうだ、さっきお客様からドーナツを頂いたの。[r]よかったら食べて？　甘くてとっても美味しかった」[p]
凛子「ふふ、このままじゃ１人で食べて太っちゃうから…人助けだと思って、ね？」[p]
ドーナツをもらった[p]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_rinko+=1"  name="sasiire_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*sasiire2

[tb_start_text mode=1 ]
凛子「いい匂いしてるでしょ？　久しぶりにドーナッツを揚げてみたの」[p]
凛子「休憩中ってお腹空くでしょ？　だから[舜]くんに食べてほしいな、って思って。[r]好みの味だといいんだけど。どうかな？」[p]
ドーナツをもらった[p]
[font color="yellow"]テンションが少し上がった[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_rinko+=1"  name="sasiire_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  ]
[return  ]
*aisatu_end

[jump  storage="komyu_rinko.ks"  target="*top"  ]
