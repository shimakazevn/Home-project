]
[_tb_system_call storage=system/_sansaku_famiresuEV_tubomi.ks]

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
[舜]「Yo.」[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Tsubomi「Tên tôi không phải là 'Yo' đâu nhé? Không có việc gì thì tôi đi đây.」[p]
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_famiresuEV_tubomi.ks"  size="20"  text="Bắt chuyện với Tsubomi"  x="415"  y="160"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Cứ thế bước vào quán"  x="415"  y="240"  width="497"  height="57"  _clickable_img=""  target="*taberu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Làm thêm ca đêm (+4,000 Yên / Giảm Thể lực)"  x="410"  y="320"  width="497"  height="57"  _clickable_img=""  target="*baito"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Quay về nhà"  x="410"  y="400"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*tubomi_hudangi"  ]
[wait  time="200"  ]
[mask_off  time="500"  effect="fadeOut"  ]
*hanasu2

[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_tyrano_code]
;好感度別で会話が変化_蕾

[if exp="f.koukando_tubomi_koibito == 1"]
[jump target="*aisatu5_koibito"]

[elsif exp="f.koukando_tubomi <= 9"]
[jump target="*aisatu1_nigate"]

[elsif exp="f.koukando_tubomi <= 19"]
[jump target="*aisatu2_hutuu"]

[elsif exp="f.koukando_tubomi <= 29"]
[jump target="*aisatu3_yuukou"]

[else]
[jump target="*aisatu4_suki"]
[endif]

[_tb_end_tyrano_code]

*aisatu1_nigate

[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_han_tubomi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Tsubomi「A, anh à... Sao thế? [r]Cứ ngó nghiêng lung tung là bị coi như kẻ khả nghi đấy nhé?」[p]
#蕾
Tsubomi「Anh ơi, đi hẹn hò với em không? Khc, đương nhiên là em đùa rồi.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;蕾へ印象別のセリフをコール
;運命の人
[if exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call  storage="komyu_syu.ks"  target="*tubomi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi <= -4"]
[call  storage="komyu_syu.ks"  target="*tubomi_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi <= -4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_tubomi <= -7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_tubomi <= -7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_tubomi >= 7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

[endif]
[_tb_end_tyrano_code]

[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*aisatu_end"  ]
*aisatu2_hutuu

[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_han_tubomi{number}.mp3" number=2]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
Tsubomi「A! Khc, tình cờ thật đấy. Anh đang định đi đâu à? Em đi cùng cho nhé?」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;蕾へ印象別のセリフをコール
;運命の人
[if exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call  storage="komyu_syu.ks"  target="*tubomi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi <= -4"]
[call  storage="komyu_syu.ks"  target="*tubomi_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi <= -4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_tubomi <= -7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_tubomi <= -7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_tubomi >= 7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

[endif]
[_tb_end_tyrano_code]

[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*aisatu_end"  ]
*aisatu3_yuukou

[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_han_tubomi{number}.mp3" number=3]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
[舜]「Ủa? Tình cờ thật.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;蕾へ印象別のセリフをコール
;運命の人
[if exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call  storage="komyu_syu.ks"  target="*tubomi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi <= -4"]
[call  storage="komyu_syu.ks"  target="*tubomi_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi <= -4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_tubomi <= -7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_tubomi <= -7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_tubomi >= 7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

[endif]
[_tb_end_tyrano_code]

[call  storage="sansaku_famiresuEV_tubomi.ks"  target="*sasiire1"  cond="f.sasiire_tubomi==0"  ]
[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*aisatu_end"  ]
*aisatu4_suki

[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_han_tubomi{number}.mp3" number=4]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
Tsubomi「A... Hôm nay em có linh cảm là sẽ gặp được anh. Trúng phóc luôn.[r]Có vẻ hôm nay sẽ có chuyện vui đây.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;蕾へ印象別のセリフをコール
;運命の人
[if exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call  storage="komyu_syu.ks"  target="*tubomi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi <= -4"]
[call  storage="komyu_syu.ks"  target="*tubomi_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi <= -4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_tubomi <= -7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_tubomi <= -7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_tubomi >= 7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

[endif]
[_tb_end_tyrano_code]

[call  storage="sansaku_famiresuEV_tubomi.ks"  target="*sasiire2"  cond="f.sasiire_tubomi==1"  ]
[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*aisatu_end"  ]
*aisatu5_koibito

[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_han_tubomi{number}.mp3" number=5]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Tsubomi「Ủa? Sao giọng anh khàn thế? Này, cho anh kẹo ngậm ho này.」[p]
#蕾
Tsubomi「Bảo vệ giọng nói cũng rất quan trọng trong ngành dịch vụ đấy nhé.[r]Vị này là em đặc biệt giới thiệu đấy. Ngậm xong nhớ cho em biết cảm nhận nhé.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;蕾へ印象別のセリフをコール
;運命の人
[if exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_unmei"  ]

;狂愛
[elsif exp="f.komyu_insyou_suki_tubomi >= 9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call  storage="komyu_syu.ks"  target="*tubomi_kyouai"  ]

;軽蔑
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi >= 9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_keibetu"  ]

;肉便器
[elsif exp="f.komyu_insyou_suki_tubomi <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikubenki"  ]

;気になる相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kininaru"  ]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 4 && f.komyu_insyou_jyunsui_tubomi <= -4"]
[call  storage="komyu_syu.ks"  target="*tubomi_sennou"  ]

;強い憎しみ
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi >= 4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_nikusimi"  ]

;復讐相手
[elsif exp="f.komyu_insyou_suki_tubomi <= -4 && f.komyu_insyou_jyunsui_tubomi <= -4 "]
[call  storage="komyu_syu.ks"  target="*tubomi_hukusyuu"  ]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_tubomi >= 7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;目下の相手
[elsif exp="f.komyu_insyou_jyunsui_tubomi <= -7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;無関心
[elsif exp="f.komyu_insyou_suki_tubomi <= -7 && f.komyu_insyou_jyunsui_tubomi >= -3 && f.komyu_insyou_jyunsui_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

;友達
[elsif exp="f.komyu_insyou_jyunsui_tubomi >= 7 && f.komyu_insyou_suki_tubomi >= -3 && f.komyu_insyou_suki_tubomi <= 3 "]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]


;それ以外は以下を表示
;kirai
[else]
[call  storage="komyu_syu.ks"  target="*tubomi_kirai"  ]

[endif]
[_tb_end_tyrano_code]

[call  storage="sansaku_famiresuEV_tubomi.ks"  target="*sasiire2"  cond="f.sasiire_tubomi==1"  ]
[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*aisatu_end"  ]
*sasiire1

[tb_start_text mode=1 ]

[_tb_end_text]

[tb_start_text mode=1 ]
Đã nhận được kẹo ngậm ho[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
Tsubomi「Cái này... cho anh này... Bánh quy em tự làm đấy. Em nhờ mẹ dạy cách làm rồi tự tay làm đó.」[p]
Tsubomi「Dù biết là mua ngoài tiệm thì vừa rẻ vừa ngon hơn.[r]Nhưng em muốn anh ăn thử...」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_tubomi+=1"  name="sasiire_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*sasiire2

[tb_start_text mode=1 ]
Đã nhận được bánh quy tự làm[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[舜]（Vẫn đông người như mọi khi, mệt thật đấy.）[p]
Tsubomi「Chỗ này, ngay gốc ngón tay... là vùng phản xạ của hệ thần kinh thực vật. Nếu hệ thần kinh bị rối loạn thì ấn vào sẽ khá đau đấy.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_hayato+=1"  name="sasiire_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  ]
[return  ]
*aisatu_end

[jump  storage="komyu_tubomi.ks"  target="*top"  