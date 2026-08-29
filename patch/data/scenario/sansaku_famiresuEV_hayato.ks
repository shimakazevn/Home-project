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
Hayato「Yo, cậu làm gì ở đây thế. Cậu lúc nào cũng có vẻ thảnh thơi, sướng thật đấy.」[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Hayato「Yo, cậu có hẹn với ai à? A, đi một mình sao... Mà, một mình thì cũng thoải mái nhỉ.」[p]
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_famiresuEV_hayato.ks"  size="20"  text="Bắt chuyện với Hayato"  x="410"  y="160"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Cứ thế bước vào quán"  x="410"  y="240"  width="497"  height="57"  _clickable_img=""  target="*taberu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Làm thêm ca đêm (+4,000 Yên / Giảm Thể lực)"  x="410"  y="320"  width="497"  height="57"  _clickable_img=""  target="*baito"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Quay về nhà"  x="410"  y="400"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
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

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*aisatu2_hutuu

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

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end"  ]
*aisatu3_yuukou

[tb_start_text mode=1 ]
Hayato「Cái này là nước tăng lực người ta vừa phát đằng kia đấy. Cho cậu này.」[p]
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
Hayato「Hồi trưa tôi đã uống một lon rồi.[r]Uống nhiều quá cũng không tốt cho sức khỏe đâu nhỉ? Nên cậu cứ lấy đi.」[p]
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
Đã nhận được nước tăng lực[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
Hayato「Loại nước tăng lực mới này uống vào khỏe lắm đấy.[r]A, nếu thích thì cậu uống thử một lon xem.」[p]
Hayato「Uống xong là sinh lực với tinh thần dồi dào lắm, đừng có thừa năng lượng quá mà chạy nhảy lung tung đấy nhé?」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.sasiire_hayato+=1"  name="sasiire_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[return  ]
*sasiire2

[tb_start_text mode=1 ]
Đã nhận được nước tăng lực[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
Hayato「Đúng rồi, ngày nghỉ tới mình đi đâu đó chơi đi? Đằng nào cậu cũng rảnh rỗi mà đúng không?」
[舜]「...Ừm, cũng được thôi.」[p]
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
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Cái thái độ gì đấy! Đi với tôi làm cậu không hài lòng sao~?」[p]
[_tb_end_text]

[glink  color="btn_05_black"  storage="sansaku_famiresuEV_hayato.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Có / Đồng ý"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="sansaku_famiresuEV_hayato.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không"  _clickable_img=""  target="*no"  ]
[s  ]
*yes

[tb_eval  exp="f.deto_hayato=1"  name="deto_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_text mode=1 ]
[舜]（Chứ còn gì nữa.）[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"] Hayato「Nhưng mà, cậu lúc nào cũng lủi thủi một mình. Thỉnh thoảng đi chơi với ai đó cũng tốt chứ sao?」[p]
[舜]（......Lắm chuyện thật.）[p]
[font color="yellow"]Đã hẹn đi chơi với Hayato[resetfont][p]
[舜]「Không... Xin lỗi nhưng tôi có việc bận rồi.」[p]
Hayato「Vậy sao? Thấy cậu lúc nào cũng thui thủi một mình trông rõ tội, nên tôi mới tốt bụng rủ cậu đi đấy.」[p]
[_tb_end_text]

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end_back"  ]
*no

[cm  ]
[tb_start_text mode=1 ]
Hayato「Thôi được rồi, lần sau phải đi đấy nhé?」[p]
[舜]（......Không đời nào.）[p]
Bên trong quán khá náo nhiệt, nhưng đâu đó vẫn phảng phất một sự tĩnh lặng dễ chịu.[p]
（Có Tsubomi kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*aisatu_end_back"  