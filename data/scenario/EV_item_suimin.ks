
[_tb_system_call storage=system/_EV_item_suimin.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="back_room_yoru.png"  ]
[tb_show_message_window  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Đèn trong phòng…… đã tắt rồi. Nagi ngủ rồi sao?」[p]
[舜]「……Có nên vào không? Làm sao bây giờ, nếu muốn vào thì chỉ có cơ hội lúc này thôi」[p]
Trong lòng tôi giằng xé dữ dội.[r]Mình rất muốn vào. Nhưng vào rồi thì làm gì? Chỉ nhìn ngắm thôi là đủ sao?[p]
Trong lúc đứng chôn chân do dự, nhịp tim tôi đập ngày càng dồn dập.[p]
[舜]「……Không, mình phải vào. Thà làm còn hơn sau này phải ôm hối hận」[p]
Như để củng cố quyết tâm, tôi bước tới một bước.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kintyou2.mp3"  ]
[wait  time="1500"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="door.mp3"  ]
[wait  time="2000"  ]
[bg  time="2000"  method="crossfade"  storage="sin_nagi_DK_yoru.png"  ]
[tb_start_text mode=1 ]
[舜]「Nguy thật…… Tim mình như sắp nhảy ra khỏi lồng ngực rồi」[p]
Trong căn phòng tĩnh mịch phảng phất hơi ấm và hương thơm dịu nhẹ sau khi tắm.[p]


[_tb_end_text]

[bg  time="1000"  method="fadeIn"  storage="event/H01_EV1.png"  ]
[tb_cg  id="cg_item_suimin2"  ]
[tb_start_text mode=1 ]
Mái tóc ướt còn chưa kịp lau khô, Nagi đang thở đều khe khẽ trong giấc ngủ say sưa.[p]
[舜]「Em ngủ không chút phòng bị nào thế này…… Thật là gian xảo quá đi」[p]
Cảm giác như mình vừa nhìn thấy điều tuyệt đối cấm kỵ. Dẫu vậy, tôi vẫn không tài nào dời mắt đi được.[p]

[_tb_end_text]

[bg  time="3000"  method="fadeInDown"  storage="event/H01_EV2.gif"  ]
[tb_cg  id="cg_item_suimin1"  ]
[tb_start_text mode=1 ]
Đầu ngón tay tôi nóng ran lên, một luồng căng thẳng râm ran chạy dọc sống lưng.[p]
[舜]「Chỉ một chút thôi…… Nếu chỉ chạm nhẹ một chút thì chắc không sao đâu nhỉ」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_replay  id="nagi_item_suimin"  ]
[jump  storage="H_suimin1.ks"  target="*top"  ]
*syasei

[tb_start_text mode=1 ]
[舜]（Hà, hà…… Cứ để thế này thì nguy hiểm thật đấy……）[p]
[舜]（Lấy khăn giấy lau sạch rồi mặc lại quần áo cho em ấy thôi……）[p]
Khoảnh khắc chạm vào làn da mềm mại của Nagi, cảm xúc bị kìm nén lại một lần nữa dâng trào.[r]Để chế ngự thôi thúc ấy, tôi hít một hơi thật sâu rồi từ từ thở ra.[p]

[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*end"  ]
*kaeru

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]（Không thể làm tới mức này được nữa…… Nguy hiểm quá rồi. Nhịn lại đi, bản thân tôi ơi!）[p]
Khao khát muốn được chạm vào em nhiều hơn nữa, tôi đành nén sâu vào tận đáy lòng.[p]
Như để đè nén cơn hưng phấn đang trỗi dậy, tôi hít sâu rồi thở ra thật nhẹ.[r]Hãy bình tĩnh lại, tôi tự nhủ với chính mình.[p]

[_tb_end_text]

*end

[tb_start_text mode=1 ]
Không để Nagi thức giấc, tôi khẽ đứng dậy.[r]Gửi lại những tâm tư không thể chạm tới nơi đáy lòng, tôi lặng lẽ rời khỏi căn phòng.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.itemEV_suimin=2"  name="itemEV_suimin"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
