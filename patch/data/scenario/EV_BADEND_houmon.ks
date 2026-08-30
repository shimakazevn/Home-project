
[_tb_system_call storage=system/_EV_BADEND_houmon.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;画像OFF
[freeimage layer="2" time=0"]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="bell.mp3"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm…!」[p]
Nagi khẽ giật mình nhưng không hề đẩy tôi ra, trái lại còn vụng về đáp lại nụ hôn.[p]
[舜]「Nagi… Môi cậu ngọt thật đấy」[p]
Nagi「Shun-chan… Hôn nữa đi… Tớ thấy dễ chịu lắm…」[p]
Hơi thở của Nagi ngày càng dồn dập, đôi má đỏ ửng như trái cà chua chín mọng.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="dooropen.mp3"  ]
[bg  time="2000"  method="crossfade"  storage="back_room_genkan.png"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="kintyou.mp3"  ]
[tb_start_text mode=1 ]
Bàn tay tôi bắt đầu luồn vào trong áo, chạm vào bầu ngực căng tròn mềm mại.[p]
Nagi「A… Chỗ đó… Shun-chan… Nhột quá…」[p]
[舜]「Ngực Nagi mềm thật đấy… Đã lớn đến mức này rồi sao」[p]
Nagi「Đừng nói thế mà… Ngại chết đi được… Nhưng mà… Tay cậu ấm lắm…」[p]
Tôi khẽ véo nhẹ đầu nhũ hoa đang cương cứng qua lớp áo lót mỏng.[p]
Nagi「Á…! A… ưm… Cảm giác lạ quá… Bên dưới tớ… Nó cứ rạo rực thế nào ấy…」[p]
[舜]「Bên dưới sao cơ? Để tớ kiểm tra thử xem nhé」[p]
Nagi「Kh-Không được đâu mà… Chỗ đó xấu hổ lắm…」[p]
Dù nói vậy nhưng hai chân Nagi lại khẽ mở ra trong vô thức dưới tác dụng của men rượu.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
Bàn tay tôi trượt xuống, chạm vào chiếc quần lót đã ướt đẫm một mảng lớn.[p]
[_tb_end_text]

[l  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  