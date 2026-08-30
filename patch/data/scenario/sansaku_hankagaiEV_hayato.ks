
[_tb_system_call storage=system/_sansaku_hankagaiEV_hayato.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

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
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
[舜]（Vẫn đông người như mọi khi, mệt thật đấy.）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Có Hayato kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_hayato.ks"  size="20"  text="Bắt chuyện với Hayato"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_hayato.ks"  size="20"  text="Đi dạo quanh phố"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sansaku"  ]
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

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[wait  time="200"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
[tb_start_tyrano_code]
;好感度別で会話が変化_隼人

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
Hayato「Ồ... Cậu làm gì ở đây thế. Cậu lúc nào cũng có vẻ thảnh thơi, sướng thật đấy.」[p]
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
Hayato「Hể, cậu có hẹn với ai à? A, đi một mình sao... Mà, một mình thì cũng thoải mái nhỉ.」[p]
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
Hayato「Ồ~, khỏe không? Đang định đi đâu à? Nếu đi mua sắm thì cứ bảo tôi, tôi chỉ cho mấy tiệm hay lắm.」[p]
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
[jump  storage="sansaku_hankagaiEV_hayato.ks"  target="*jimusasoi"  cond="f.koukando_hayato>19"  ]
[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*aisatu4_suki

[tb_start_text mode=1 ]
Hayato「Úi chà! Chạm mắt nhau rồi thì cậu phải nhận ra trước chứ. Ha ha, mà thôi không sao.」[p]
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
[jump  storage="sansaku_hankagaiEV_hayato.ks"  target="*jimusasoi"  cond="f.koukando_hayato>19"  ]
*aisatu_end

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*jimusasoi

[tb_start_text mode=1 ]
Hayato「Đúng rồi, tôi đang định đi tập gym đây, cậu đi cùng không?」[p]
[舜]「Hả? Tự nhiên lại đi tập gym...」[p]
Hayato「Nền tảng của thời trang là vóc dáng cơ thể mà đúng không? Vận động một chút cũng giúp tinh thần sảng khoái hơn.」[p]
Hayato「Vừa được tiếng là người đàn ông phong độ, đúng là một công đôi việc. Không phải hội viên thì cứ xì ra 5.000 Yên là vào được.」[p]
[舜]（Đắt thế! Phòng tập hút máu người à... Nhưng đây cũng là cơ hội để tìm ra sơ hở của hắn nhỉ?）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Không ngờ lại được tên này rủ rê...）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_hayato.ks"  size="20"  text="Đi cùng nhau (-5,000 Yên)"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*iku"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_hayato.ks"  size="20"  text="Từ chối"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*kotowaru"  ]
[s  ]
*iku

[cm  ]
[jump  storage="sansaku_hankagaiEV_hayato.ks"  target="*okanenasi"  cond="f.money<5000"  ]
[tb_start_text mode=1 ]
[舜]「Ừm, đi cùng cậu cũng được.」[p]
Hayato「Ha ha, thái độ kiểu gì thế. Phải tỏ ra vui mừng thành thật hơn đi chứ.」[p]
Hayato「Vậy để tôi hướng dẫn cậu tập nhé. Cùng nhau rèn luyện vóc dáng sát gái nào.」[p]
[舜]（Phiền phức thật... Mà đã quyết định đi rồi thì phải tập cho đáng đồng tiền bát gạo mới được.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="hasiru3.mp3"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
（Chết tiệt, hoàn toàn không theo kịp tốc độ của hắn.........）[p]
Dù hoàn toàn không theo kịp nhịp độ của Hayato, nhưng kỳ lạ là tôi lại không hề thấy khó chịu chút nào.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Sức mạnh tăng 10 điểm[resetfont][r][font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.para_kinryoku_updated+=10"  name="para_kinryoku_updated"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kinryoku_update"  ]
[jump  storage="sansaku_hankagaiEV_hayato.ks"  target="*atm"  cond="f.kan_atm_hayato==1"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã thanh toán 5000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
*atm_call

[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
[舜]「Không đi đâu. Tôi không rảnh.」[p]
[舜]（Nói đúng hơn là không có tiền.）[p]
Hayato「Cậu đấy nhé. Cứ cái kiểu đó bảo sao...[r]Mà thôi cũng được, lần sau nhớ đi cùng đấy.」[p]
Hayato「Vậy nhé.」[p]
[_tb_end_text]

[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*kotowaru

[tb_start_text mode=1 ]
[舜]「Tôi xin kiếu.」[p]
[舜]（Cũng chẳng có lý do gì phải đi tập tành với tên này.）[p]
Hayato「À, vậy sao? Mà cũng không cần phải gượng ép đâu.」[p]
Hayato「Thế thì tôi đành một mình rèn luyện để đẹp trai và sát gái hơn vậy.」[p]
[舜]（Mở miệng ra câu nào là thấy ghét câu đó...! Tên này bị cái quái gì vậy.）[p]
[_tb_end_text]

[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*atm

[call  storage="statusUP.ks"  target="*jyouken_cleared"  ]
[tb_start_text mode=1 ]
[舜]（Không hiểu sao Hayato lại trả tiền luôn cho mình rồi. May quá!）[p]
[_tb_end_text]

[jump  storage="sansaku_hankagaiEV_hayato.ks"  target="*atm_call"  