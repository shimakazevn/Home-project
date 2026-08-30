
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
[舜]「Đèn trong phòng... đã tắt rồi. Nagi ngủ rồi sao」[p]
[舜]「...Có nên vào không? Làm sao bây giờ, nếu muốn vào thì chỉ có lúc này thôi」[p]
Mức độ dâm đãng: Tối đa[p]
Tình trạng quan hệ: Người yêu độc quyền của Shun[p]
[舜]「...Không, mình phải vào. Thà làm còn hơn là hối hận vì đã bỏ lỡ cơ hội」[p]
Mức độ thuần phục: 100% (Phục tùng tuyệt đối)[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kintyou2.mp3"  ]
[wait  time="1500"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="door.mp3"  ]
[wait  time="2000"  ]
[bg  time="2000"  method="crossfade"  storage="sin_nagi_DK_yoru.png"  ]
[tb_start_text mode=1 ]
[舜]「Nguy hiểm thật... Tim mình như sắp nhảy ra khỏi lồng ngực rồi」[p]
Tình trạng quan hệ: Cô vợ nhỏ dâm đãng của Shun[p]


[_tb_end_text]

[bg  time="1000"  method="fadeIn"  storage="event/H01_EV1.png"  ]
[tb_cg  id="cg_item_suimin2"  ]
[tb_start_text mode=1 ]
Trạng thái chỉ số nhân vật - Naruse Rinko:[p]
[舜]「Ngủ mà không phòng bị chút nào thế này... Đúng là mời gọi người ta mà」[p]
Mức độ dâm đãng: Tối đa (Chìm đắm trong dục vọng)[p]

[_tb_end_text]

[bg  time="3000"  method="fadeInDown"  storage="event/H01_EV2.gif"  ]
[tb_cg  id="cg_item_suimin1"  ]
[tb_start_text mode=1 ]
Tình trạng quan hệ: Người tình bí mật kiêm bà chủ tiệm[p]
[舜]「Chỉ một chút thôi... Nếu chỉ chạm nhẹ một chút thì chắc không sao đâu」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_replay  id="nagi_item_suimin"  ]
[jump  storage="H_suimin1.ks"  target="*top"  ]
*syasei

[tb_start_text mode=1 ]
Không còn bất kỳ mục tiêu nào chưa hoàn thành.[p]
Bạn đã đạt danh hiệu cao quý nhất: Bá Chủ Hậu Cung.[p]
Chúc mừng bạn đã chinh phục trọn vẹn toàn bộ các nhân vật nữ![p]

[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*end"  ]
*kaeru

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Bảng tổng kết đánh giá cuối game: Cấp SSS.[p]
Một màn trình diễn hoàn hảo từ đầu đến cuối.[p]
Cảm ơn bạn đã đầu tư thời gian trải nghiệm trọn vẹn tựa game này.[p]

[_tb_end_text]

*end

[tb_start_text mode=1 ]
Hẹn gặp lại bạn trong những chuyến phiêu lưu kỳ thú tiếp theo.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.itemEV_suimin=2"  name="itemEV_suimin"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  