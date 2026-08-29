[_tb_system_call storage=system/_komyu_H.ks]

[bg  time="0"  method="crossfade"  storage="back_byouin.png"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*nagi

[tb_start_text mode=4 ]
（Nên rủ cô ấy đi đâu đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;狂愛、肉便器状態でジャンプ
[if exp="f.komyu_insyou_jyunsui_nagi <= -1 "]
[jump target="*nagi_kyouai"]
[endif]

[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="Muốn làm ở phòng Nagi"  _clickable_img=""  target="*nagi_H1_jyunai"  ]
[glink  color="btn_05_blue"  storage="komyu_nagi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="Quay lại"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;病院でしたい（凪の部屋でしている事）
[if exp="f.nagi_H1_jyunai == 1 "]
[call target="*nagi_H2"]
[endif]

;お風呂で遊びたい（ローションを所持している事）
[if exp="f.itemEV_oil == 1 "]
[call target="*nagi_H3"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*nagi_H2

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="Muốn làm ở bệnh viện"  _clickable_img=""  target="*nagi_H2_jyunai"  ]
[return  ]
*nagi_H3

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="Muốn chơi cùng gel bôi trơn"  _clickable_img=""  target="*nagi_H3_jyunai"  ]
[return  ]
*nagi_H1_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif" wait="false"] Nagi「Tất nhiên rồi. Chúng mình cùng thong thả tận hưởng nhé♡ Tớ muốn về nhà sớm quá...」[p]
Nagi「Tớ mong chờ đến mức từ giờ trở đi cứ bồn chồn mãi thôi... Lỡ bị mọi người thấy lạ thì sao đây.」[p]
Nagi「...Tình tứ xong thì cậu ngủ lại luôn nhé?[r]Đùa thôi, chắc Shun-chan bận lắm nhỉ.」[p]
[_tb_end_text]

[jump  storage="EV_nagi_J.ks"  target="*EV1_top"  ]
[s  ]
*nagi_H2_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif" wait="false"] Nagi「Hả... Như thế... có ổn không? Lỡ bị ai phát hiện thì sao đây.」[p]
[舜]「Không sao đâu. Giờ này phòng nghỉ cho nhân viên ít người lắm, vào phòng vệ sinh riêng thì chẳng ai vào đâu.」[p]
[舜]「Chỉ tình tứ một chút thôi thì không có vấn đề gì đâu.」[p]
Nagi「Nhưng mà... tớ hồi hộp lắm. Nếu chỉ một lát thôi thì... chắc không sao đâu nhỉ?」[p]
Nagi「Tớ sẽ cố gắng kìm nén giọng nói... nên là... cậu đừng làm mạnh quá nhé?」[p]
[舜]（Cái đó thì còn tùy thuộc vào Nagi thôi.）[p]
[_tb_end_text]

[jump  storage="EV_nagi_J.ks"  target="*EV3_top"  ]
[s  ]
*nagi_H3_jyunai

[tb_start_text mode=1 ]
[舜]「Lát nữa anh sẽ đến gặp em, nên tan làm thì liên lạc cho anh nhé.」[p]
Nagi「Ừm, cứ nghĩ đến chuyện lại được gặp anh là em lại cười tủm tỉm. Lát nữa em sẽ liên lạc nhé.」[p]
[_tb_end_text]

[jump  storage="EV_nagi_J.ks"  target="*EV2_top"  ]
[s  ]
*nagi_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="Muốn làm ở phòng Nagi"  _clickable_img=""  target="*nagi_H1_kyouai_talk"  ]
[glink  color="btn_05_blue"  storage="komyu_nagi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="Quay lại"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;ベランダでしたい（凪の部屋でしている事）
[if exp="f.nagi_H1_kyouai == 1 "]
[call target="*nagi_H2_kyouai"]
[endif]

;俺の部屋でしたい（SMグッズを所持している事）
[if exp="f.itemEV_SM == 1 "]
[call target="*nagi_H3_kyouai"]
[endif]


[_tb_end_tyrano_code]

[s  ]
*nagi_H2_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="Muốn làm ở ngoài ban công"  _clickable_img=""  target="*nagi_H2_kyouai_talk"  ]
[return  ]
*nagi_H3_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="Muốn làm ở phòng riêng của mình"  _clickable_img=""  target="*nagi_H3_kyouai_talk"  ]
[s  ]
[return  ]
*nagi_H1_kyouai_talk

[tb_start_text mode=1 ]
Nagi「Vâng... Không biết hôm nay anh Shun sẽ làm gì em đây... Em hồi hộp quá...」[p]
Nagi「Anh sẽ dạy cho em những chuyện sung sướng mà em chưa từng biết đúng không...♡」[p]
Nagi「Em mong chờ quá... Chỗ đó của em đã râm ran cả lên rồi đây này♡ [r]Anh Shun cứ làm em rối tung lên cho đến khi anh thỏa mãn nhé...」[p]
[_tb_end_text]

[jump  storage="EV_nagi_R.ks"  target="*EV1_top"  ]
[s  ]
*nagi_H2_kyouai_talk

[tb_start_text mode=1 ]
[舜]「Tối anh sẽ sang phòng em.」[p]
Nagi「A... Vâng... Chuyện này, em có thể mong chờ được đúng không?」[p]
Nagi「Vì quá mong chờ mà cơ thể em đã nóng bừng lên rồi đây này. Em sẽ cố gắng về nhà sớm nhất có thể...... Em mong chờ lắm đấy nhé.」[p]
[_tb_end_text]

[jump  storage="EV_nagi_R.ks"  target="*EV2_top"  ]
[s  ]
*nagi_H3_kyouai_talk

[tb_start_text mode=1 ]
Nagi「Được anh Shun làm cho rối tung lên ngay tại phòng anh ấy...」[p]
Nagi「Chỉ cần anh Shun muốn, em sẽ làm bất cứ điều gì♡」[p]
Nagi「Có vẻ như em không thể nhịn thêm được nữa rồi...[r]Em muốn đến nhà anh Shun ngay bây giờ... Em sẽ làm cho anh Shun sướng nhé.」[p]
[_tb_end_text]

[jump  storage="EV_nagi_R.ks"  target="*EV3_top"  ]
[s  ]
*rinko

[tb_start_text mode=4 ]
（Nên rủ cô ấy đi đâu đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;狂愛、肉便器状態でジャンプ
[if exp="f.komyu_insyou_jyunsui_rinko<= -1 "]
[jump target="*rinko_kyouai"]
[endif]

[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="Muốn làm ở tiệm Massage"  _clickable_img=""  target="*rinko_H1_jyunai"  ]
[glink  color="btn_05_blue"  storage="komyu_rinko.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="Quay lại"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;シャワールームでしたい（マッサージ店でしている事）
[if exp="f.rinko_H1_jyunai == 1 "]
[call target="*rinko_H2"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*rinko_H2

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="Muốn làm ở phòng tắm sen"  _clickable_img=""  target="*rinko_H2_jyunai"  ]
[return  ]
*rinko_H1_jyunai

[tb_start_text mode=1 ]
[舜]「Sau khi đóng cửa cháu sẽ lại đến.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"] Rinko「Cảm ơn cháu, cô sẽ đợi nhé. ...Hehe, cứ nghĩ đến chuyện lại được gặp cậu Shun là cô lại có thêm động lực để làm việc.」[p]
[_tb_end_text]

[jump  storage="EV_rinko_J.ks"  target="*EV1_top"  ]
[s  ]
*rinko_H2_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif" wait="false"] Rinko「A... Cậu Shun lại đang nghĩ mấy chuyện kỳ lạ đúng không? Thực ra... chị cũng vậy... Hehe, mong chờ quá đi.」[p]
Rinko「Nhưng mà, tất nhiên là phải sau khi đóng cửa tiệm đấy nhé?」[p]
[_tb_end_text]

[jump  storage="EV_rinko_J.ks"  target="*EV2_top"  ]
[s  ]
*rinko_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="Muốn làm ở tiệm Massage"  _clickable_img=""  target="*rinko_H1_kyouai_talk"  ]
[glink  color="btn_05_blue"  storage="komyu_rinko.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="Quay lại"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;ローションで遊びたい（ローションを所持していること）
[if exp="f.itemEV_oil == 1 "]
[call target="*rinko_H2_kyouai"]
[endif]

;3人でしたい（凛子と蕾が「狂愛」もしくは「肉便器」状態）
[if exp="f.komyu_insyou_jyunsui_rinko <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call target="*rinko_H3_kyouai"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*rinko_H2_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="Muốn chơi cùng gel bôi trơn"  _clickable_img=""  target="*rinko_H2_kyouai_talk"  ]
[return  ]
*rinko_H3_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="Muốn làm 3P cùng cả hai người"  _clickable_img=""  target="*rinko_H3_kyouai_talk"  ]
[return  ]
*rinko_H1_kyouai_talk

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif" wait="false"] Rinko「Cậu Shun... có phải em đang hưng phấn không? Nhìn mặt em cứ như không kìm nén được nữa ấy...」[p]
Rinko「Hehe... Thực ra chị cũng đang hồi hộp lắm đây. ...Sau khi tan làm, chúng mình cùng thong thả vui vẻ nhé.」[p]
[_tb_end_text]

[jump  storage="EV_rinko_R.ks"  target="*EV2_top"  ]
[s  ]
*rinko_H2_kyouai_talk

[tb_start_text mode=1 ]
[舜]「Sau khi đóng cửa cháu sẽ lại đến.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif" wait="false"] Rinko「Ừm, cô hiểu rồi. ...Hôm nay tiệm có hơi nhiều khách đặt trước nên chắc cô sẽ bận rộn lắm đây...」[p]
[_tb_end_text]

[jump  storage="EV_rinko_R.ks"  target="*EV1_top"  ]
[s  ]
*rinko_H3_kyouai_talk

[tb_start_text mode=1 ]
Rinko「......Sao thế? Cháu có chuyện gì muốn nói với cô à... Trông cháu khác hẳn mọi ngày.」[p]
Shun「Vâng. Một chuyện rất quan trọng đối với chúng ta. Sau khi đóng cửa, cháu sẽ lại đến.」[p]
Rinko「......Vậy à, cô hiểu rồi.」[p]
[_tb_end_text]

[jump  storage="EV_3P.ks"  target="*top"  ]
[s  ]
*tubomi

[tb_start_text mode=4 ]
（Nên rủ em ấy đi đâu đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;狂愛、肉便器状態でジャンプ
[if exp="f.komyu_insyou_jyunsui_tubomi<= -1 "]
[jump target="*tubomi_kyouai"]
[endif]

[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="Muốn làm ở tiệm Maid Reflex"  _clickable_img=""  target="*tubomi_H1_jyunai"  ]
[glink  color="btn_05_blue"  storage="komyu_tubomi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="Quay lại"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;ローションで遊びたい（ローションを所持していること）
[if exp="f.itemEV_oil == 1 "]
[call target="*tubomi_H2"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*tubomi_H2

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="Muốn chơi cùng gel bôi trơn"  _clickable_img=""  target="*tubomi_H2_jyunai"  ]
[return  ]
*tubomi_H1_jyunai

[tb_start_text mode=1 ]
[舜]「Hôm nay em làm ca đến lúc đóng cửa đúng không? Lát nữa anh sẽ liên lạc lại nhé.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"] Tsubomi「...Vâng, em biết rồi. Làm xong em sẽ liên lạc ngay!」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_J.ks"  target="*EV1_top"  ]
[s  ]
*tubomi_H2_jyunai

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"] Tsubomi「Anh định lôi em vào phòng à? Định làm gì em thế...? A, anh không cần nói ra đâu nhé?」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"] Tsubomi「Anh mà nói ra thì... từ giờ đến lúc đó em sẽ cứ để ý rồi thấy kỳ lạ lắm...」[p]
Tsubomi「Cứ để đến đó rồi tận hưởng cũng được... A, tận hưởng gì chứ... Em lại lỡ lời nói mấy câu đáng xấu hổ rồi.」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_J.ks"  target="*EV2_top"  ]
[s  ]
*tubomi_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="232"  width="310"  height="58"  text="Muốn làm ở tiệm Maid Reflex"  _clickable_img=""  target="*tubomi_H1_kyouai_talk"  ]
[glink  color="btn_05_blue"  storage="komyu_tubomi.ks"  size="20"  x="950"  y="439"  width="310"  height="58"  text="Quay lại"  _clickable_img=""  target="*top"  ]
[tb_start_tyrano_code]
;ボタンの呼び出し
;自分の部屋でしたい（リフレでしている事）
[if exp="f.tubomi_H1_kyouai == 1 "]
[call target="*tubomi_H2_kyouai"]
[endif]

;3人でしたい（凛子と蕾が「狂愛」もしくは「肉便器」状態）
[if exp="f.komyu_insyou_jyunsui_rinko <= -9 && f.komyu_insyou_jyunsui_tubomi <= -9"]
[call target="*tubomi_H3_kyouai"]
[endif]

[_tb_end_tyrano_code]

[s  ]
*tubomi_H2_kyouai

[glink  color="btn_05_black"  storage="komyu_H.ks"  size="20"  x="950"  y="301"  width="310"  height="58"  text="Muốn làm ở phòng riêng của mình"  _clickable_img=""  target="*tubomi_H2_kyouai_talk"  ]
[return  ]
*tubomi_H3_kyouai

[glink  color="btn_05_green"  storage="komyu_H.ks"  size="20"  x="950"  y="370"  width="310"  height="58"  text="Muốn làm 3P cùng cả hai người"  _clickable_img=""  target="*tubomi_H3_kyouai_talk"  ]
[return  ]
*tubomi_H1_kyouai_talk

[tb_start_text mode=1 ]
[舜]「Hôm nay em làm ca đến lúc đóng cửa đúng không? Lát nữa anh sẽ liên lạc lại nhé.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"] Tsubomi「Ưm... Vậy thì... sau khi đóng cửa tiệm nhé...」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_R.ks"  target="*EV1_top"  ]
[s  ]
*tubomi_H2_kyouai_talk

[tb_start_text mode=1 ]
[舜]「Hôm nay em tính sao? Tan làm thì đến nhà anh đi.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"] Tsubomi「Ừm thì... Vậy em sang làm phiền anh nhé...♡ Anh đã nài nỉ đến thế thì em cũng không thể từ chối được.」[p]
[_tb_end_text]

[jump  storage="EV_tubomi_R.ks"  target="*EV2_top"  ]
[s  ]
*tubomi_H3_kyouai_talk

[tb_start_text mode=1 ]
[舜]「Để xem nào... Trước tiên chúng ta cứ đến gặp cô Rinko đi.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"] Tsubomi「Không lẽ anh định nói chuyện của chúng mình cho mẹ biết sao...?」[p]
[_tb_end_text]

[jump  storage="EV_3P.ks"  target="*top"  ]
[s ]
