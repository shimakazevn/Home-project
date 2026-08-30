
[_tb_system_call storage=system/_sansaku_hankagaiEV_nagi.ks]

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
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
[舜]（Vẫn đông người như mọi khi, mệt thật đấy.）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Có Nagi kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_nagi.ks"  size="20"  text="Bắt chuyện với Nagi"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_nagi.ks"  size="20"  text="Đi dạo quanh phố"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sansaku"  ]
[s  ]
*sansaku

[bg  time="300"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
（Mà, cũng không cần thiết phải cố bắt chuyện làm gì.）[p]
（Giờ thì, nên đi đâu đây nhỉ?）[p]
[_tb_end_text]

[bg  time="300"  method="crossfade"  storage="back_hankagai.png"  ]
[jump  storage="sansaku_hankagaiEV.ks"  target="*top2"  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[wait  time="200"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_tyrano_code]
;好感度別で会話が変化_凪

[if exp="f.koukando_nagi_koibito == 1"]
[jump target="*aisatu5_koibito"]

[elsif exp="f.koukando_nagi <= 9"]
[jump target="*aisatu1_nigate"]

[elsif exp="f.koukando_nagi <= 19"]
[jump target="*aisatu2_hutuu"]

[elsif exp="f.koukando_nagi <= 29"]
[jump target="*aisatu3_yuukou"]

[else]

[jump target="*aisatu4_suki"]
[endif]

[_tb_end_tyrano_code]

*aisatu1_nigate

[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi2_{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「Ủa? Tình cờ thật đấy. Cậu đang đi dạo à. Tớ cũng đang đi mua sắm đây.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凪へ印象別のセリフをコール

;運命の人
[if exp="f.komyu_insyou_suki_nagi>= 9 && f.komyu_insyou_jyunsui_nagi>= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_nagi >= 9 && f.komyu_insyou_jyunsui_nagi <= -9"]
[call  storage="komyu_syu.ks"  target="*nagi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi >= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi <= -9 "]
[call  storage="komyu_syu.ks"  target="*nagi_nikubenki"  ]

;気になる存在
[elsif exp="f.komyu_insyou_suki_nagi>= 4 && f.komyu_insyou_jyunsui_nagi>= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_nagi >= 4 && f.komyu_insyou_jyunsui_nagi <= -4"]
[call  storage="komyu_syu.ks"  target="*nagi_sennou"  ]

;苦手な相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi >= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_nigate"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi <= -4 "]
[call  storage="komyu_syu.ks"  target="*nagi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_nagi>= 7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;ストーカー
[elsif exp="f.komyu_insyou_jyunsui_nagi<= -7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_nagi<= -7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_nagi>= 7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]



;それ以外は以下を表示
;ただの幼馴染み
[else]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

[endif]
[_tb_end_tyrano_code]

[jump  storage="sansaku_byouinEV_nagi.ks"  target="*aisatu_end"  ]
*aisatu2_hutuu

[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi2_{number}.mp3" number=2]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Yo.」[p]
#凪
Nagi「Oái, giật cả mình. Shun-chan à, đừng có dọa tớ chứ~」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凪へ印象別のセリフをコール

;運命の人
[if exp="f.komyu_insyou_suki_nagi>= 9 && f.komyu_insyou_jyunsui_nagi>= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_nagi >= 9 && f.komyu_insyou_jyunsui_nagi <= -9"]
[call  storage="komyu_syu.ks"  target="*nagi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi >= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi <= -9 "]
[call  storage="komyu_syu.ks"  target="*nagi_nikubenki"  ]

;気になる存在
[elsif exp="f.komyu_insyou_suki_nagi>= 4 && f.komyu_insyou_jyunsui_nagi>= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_nagi >= 4 && f.komyu_insyou_jyunsui_nagi <= -4"]
[call  storage="komyu_syu.ks"  target="*nagi_sennou"  ]

;苦手な相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi >= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_nigate"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi <= -4 "]
[call  storage="komyu_syu.ks"  target="*nagi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_nagi>= 7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;ストーカー
[elsif exp="f.komyu_insyou_jyunsui_nagi<= -7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_nagi<= -7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_nagi>= 7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]



;それ以外は以下を表示
;ただの幼馴染み
[else]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

[endif]
[_tb_end_tyrano_code]

[jump  storage="sansaku_byouinEV_nagi.ks"  target="*aisatu_end"  ]
*aisatu3_yuukou

[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi2_{number}.mp3" number=3]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「A, Shun-chan. Nhìn từ đằng sau tớ đã ngờ ngợ là cậu rồi.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凪へ印象別のセリフをコール

;運命の人
[if exp="f.komyu_insyou_suki_nagi>= 9 && f.komyu_insyou_jyunsui_nagi>= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_nagi >= 9 && f.komyu_insyou_jyunsui_nagi <= -9"]
[call  storage="komyu_syu.ks"  target="*nagi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi >= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi <= -9 "]
[call  storage="komyu_syu.ks"  target="*nagi_nikubenki"  ]

;気になる存在
[elsif exp="f.komyu_insyou_suki_nagi>= 4 && f.komyu_insyou_jyunsui_nagi>= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_nagi >= 4 && f.komyu_insyou_jyunsui_nagi <= -4"]
[call  storage="komyu_syu.ks"  target="*nagi_sennou"  ]

;苦手な相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi >= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_nigate"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi <= -4 "]
[call  storage="komyu_syu.ks"  target="*nagi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_nagi>= 7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;ストーカー
[elsif exp="f.komyu_insyou_jyunsui_nagi<= -7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_nagi<= -7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_nagi>= 7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]



;それ以外は以下を表示
;ただの幼馴染み
[else]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

[endif]
[_tb_end_tyrano_code]

[call  storage="sansaku_byouinEV_nagi.ks"  target="*sasiire1"  cond="f.sasiire_nagi==0"  ]
[jump  storage="sansaku_byouinEV_nagi.ks"  target="*aisatu_end"  ]
*aisatu4_suki

[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi2_{number}.mp3" number=4]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「Shun-chan! Khc, nhìn thấy bóng cậu nên tớ đuổi theo luôn đấy.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凪へ印象別のセリフをコール

;運命の人
[if exp="f.komyu_insyou_suki_nagi>= 9 && f.komyu_insyou_jyunsui_nagi>= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_nagi >= 9 && f.komyu_insyou_jyunsui_nagi <= -9"]
[call  storage="komyu_syu.ks"  target="*nagi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi >= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi <= -9 "]
[call  storage="komyu_syu.ks"  target="*nagi_nikubenki"  ]

;気になる存在
[elsif exp="f.komyu_insyou_suki_nagi>= 4 && f.komyu_insyou_jyunsui_nagi>= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_nagi >= 4 && f.komyu_insyou_jyunsui_nagi <= -4"]
[call  storage="komyu_syu.ks"  target="*nagi_sennou"  ]

;苦手な相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi >= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_nigate"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi <= -4 "]
[call  storage="komyu_syu.ks"  target="*nagi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_nagi>= 7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;ストーカー
[elsif exp="f.komyu_insyou_jyunsui_nagi<= -7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_nagi<= -7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_nagi>= 7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]



;それ以外は以下を表示
;ただの幼馴染み
[else]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

[endif]
[_tb_end_tyrano_code]

[call  storage="sansaku_byouinEV_nagi.ks"  target="*sasiire2"  cond="f.sasiire_nagi==1"  ]
[jump  storage="sansaku_byouinEV_nagi.ks"  target="*aisatu_end"  ]
*aisatu5_koibito

[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi2_{number}.mp3" number=5]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「Khc, hôm nay tớ có linh cảm là sẽ gặp được Shun-chan. Trúng phóc luôn.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;凪へ印象別のセリフをコール

;運命の人
[if exp="f.komyu_insyou_suki_nagi>= 9 && f.komyu_insyou_jyunsui_nagi>= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_nagi >= 9 && f.komyu_insyou_jyunsui_nagi <= -9"]
[call  storage="komyu_syu.ks"  target="*nagi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi >= 9 "]
[call  storage="komyu_syu.ks"  target="*nagi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi <= -9 "]
[call  storage="komyu_syu.ks"  target="*nagi_nikubenki"  ]

;気になる存在
[elsif exp="f.komyu_insyou_suki_nagi>= 4 && f.komyu_insyou_jyunsui_nagi>= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_nagi >= 4 && f.komyu_insyou_jyunsui_nagi <= -4"]
[call  storage="komyu_syu.ks"  target="*nagi_sennou"  ]

;苦手な相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi >= 4 "]
[call  storage="komyu_syu.ks"  target="*nagi_nigate"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi <= -4 "]
[call  storage="komyu_syu.ks"  target="*nagi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_nagi>= 7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;ストーカー
[elsif exp="f.komyu_insyou_jyunsui_nagi<= -7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_nagi<= -7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_nagi>= 7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]



;それ以外は以下を表示
;ただの幼馴染み
[else]
[call  storage="komyu_syu.ks"  target="*nagi_osananajimi"  ]

[endif]
[_tb_end_tyrano_code]

[call  storage="sansaku_byouinEV_nagi.ks"  target="*sasiire2"  cond="f.sasiire_nagi==1"  ]
[jump  storage="sansaku_byouinEV_nagi.ks"  target="*aisatu_end"  