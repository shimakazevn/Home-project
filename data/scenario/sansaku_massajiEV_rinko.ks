
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
Bên trong tiệm khá vắng vẻ, một khoảng thời gian êm đềm vẫn trôi qua như thường lệ.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Cô Rinko đang làm việc kìa. Có nên bắt chuyện thử không nhỉ?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV_rinko.ks"  size="20"  text="Bắt chuyện với Rinko"  x="415"  y="180"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="Massage thư giãn (Giảm Stress)"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[glink  color="btn_03_black"  storage="sansaku.ks"  size="20"  text="Quay về nhà"  x="415"  y="400"  width="497"  height="57"  _clickable_img=""  target="*end"  ]
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
[舜]「Cô Rinko ơi.」[p]
#Rinko
Rinko「A... ừm... cháu để quên thứ gì sao? Có chuyện gì vậy?」[p]
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
#Rinko
Rinko「Shun-kun. Cháu vất vả rồi.[r]Có phải cháu đến để học hỏi về massage không? Khc, cháu nhiệt tình thật đấy.」[p]
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
#Rinko
Rinko「Quả nhiên là vậy. Cô đã nghĩ cách mở cửa nghe giống Shun-kun mà. Chỉ cần nghe tiếng là cô nhận ra ngay.」[p]
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
#Rinko
Rinko「Chào mừng cháu. Khc, cô vừa mới nghĩ muốn gặp cháu thì cháu lại đến. Thật kỳ diệu.」[p]
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
#Rinko
Rinko「Kính chào quý khách. Quý khách đã đặt lịch trước chưa ạ?[r]Cô đùa thôi. Khc, chào cháu nhé.」[p]
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
Rinko「Đúng rồi, lúc nãy cô được khách hàng tặng bánh donut đấy.[r]Cháu có muốn ăn thử không? Ngọt và ngon lắm đó.」[p]
Rinko「Khc, cứ để thế này mà ăn một mình thì cô sẽ mập lên mất... Cứ coi như cháu đang giúp người đi, nhé?」[p]
Đã nhận được bánh donut[p]
[font color="yellow"]Chỉ số Hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_rinko+=1"  name="sasiire_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*sasiire2

[tb_start_text mode=1 ]
Rinko「Mùi thơm lắm đúng không? Đã lâu rồi cô mới thử chiên bánh donut đấy.」[p]
Rinko「Giờ nghỉ giải lao chắc cháu cũng đói bụng rồi nhỉ? Thế nên cô muốn Shun-kun ăn thử.[r]Hy vọng là hợp khẩu vị của cháu. Thế nào?」[p]
Đã nhận được bánh donut[p]
[font color="yellow"]Chỉ số Hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_rinko+=1"  name="sasiire_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  ]
[return  ]
*aisatu_end

[jump  storage="komyu_rinko.ks"  target="*top"  ]
