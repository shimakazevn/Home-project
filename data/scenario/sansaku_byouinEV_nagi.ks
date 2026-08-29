

[_tb_system_call storage=system/_sansaku_byouinEV_nagi.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
Có lẽ vì đang là giờ ăn tối nên bệnh viện yên tĩnh hơn mọi khi.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Có Nagi kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_byouinEV_nagi.ks"  size="20"  text="Bắt chuyện với Nagi"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="Khám bệnh (Hồi Thể lực / -5,000 Yên)"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin2.png"  ]
[call  storage="character.ks"  target="*nagi_sigotogi"  ]
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
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「A... Cậu chủ động bắt chuyện với tớ, hiếm thấy nha. Có chuyện gì thế?」[p]
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
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi{number}.mp3" number=2]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「A, hôm nay cậu đến khám bệnh à? Gặp nhau ở bệnh viện thế này có cảm giác lạ lạ nhỉ.」[p]
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
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi{number}.mp3" number=3]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「Nhìn thấy mặt Shun-chan, tự nhiên tớ thấy nhẹ nhõm hẳn. Hôm nay từ sáng đã bận rộn suốt rồi.」[p]
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
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi{number}.mp3" number=4]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「A... Cậu đến đột ngột quá. Hôm nay bận rộn nên tóc tai tớ rối bù hết cả rồi... Xấu hổ chết đi được.」[p]
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
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_han_nagi{number}.mp3" number=5]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
Nagi「Alo bệnh nhân ơi? Có phải anh vừa nhìn y tá khác không đấy? [r]Khc, cấm không được nhìn ngó lung tung đâu nhé?」[p]
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
*sasiire1

[tb_start_text mode=1 ]
Nagi「A, Shun-chan. Cậu có muốn ăn chút sô cô la không?」[p]
Nagi「Lúc nào đói bụng hay mất tập trung mà ngậm một viên là tỉnh táo lại ngay đấy.[r]A, giữ bí mật với y tá trưởng nhé? Shun-chan cũng ăn thử đi.」[p]
Nagi「À đúng rồi, cậu còn nhớ món bánh flan này không? Món bánh flan hồi nhỏ tụi mình hay ăn cùng nhau ấy. Hoài niệm quá nên tớ mua luôn.」[p]
Nagi「Cho Shun-chan này. Ăn vào là nhớ lại chuyện ngày xưa ngay nhỉ? [r]Khc, có khi lại trở về làm trẻ con luôn ấy chứ?」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_nagi+=1"  name="sasiire_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*sasiire2

[tb_start_text mode=1 ]
Đã nhận được bánh flan[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
Có lẽ vì đang là giờ ăn tối nên bệnh viện yên tĩnh hơn mọi khi.[p]
（Có Nagi và Hayato kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_nagi+=1"  name="sasiire_nagi"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  ]
[return  ]
*aisatu_end

[jump  storage="komyu_nagi.ks"  target="*top" ]
