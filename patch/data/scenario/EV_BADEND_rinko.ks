
[_tb_system_call storage=system/_EV_BADEND_rinko.ks]

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
[bg  time="0"  method="crossfade"  storage="back_room.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kodomo.mp3"  ]
[tb_start_text mode=1 ]
Kể từ đó, tôi vẫn tiếp tục làm công việc bán thời gian tại tiệm của cô Rinko.[p]
Thế nhưng mối quan hệ giữa hai chúng tôi chẳng hề có chút tiến triển nào, mãi mãi chỉ dừng lại ở mức chủ tiệm và nhân viên làm thêm.[p]
Gần đây, tôi thậm chí còn có cảm giác cô Rinko đang cố tình giữ khoảng cách và né tránh mình…[p]
[舜]（Có lẽ do cách hành xử thường ngày của mình tệ quá chăng…）[p]
[舜]（Mà nghĩ lại thì, mình cũng có vài điểm đáng ngờ thật…）[p]
Từ bên ngoài cửa sổ, tiếng cười đùa huyên náo của lũ trẻ con vọng vào tai.[p]
Rốt cuộc thì một kẻ như tôi chỉ thích hợp với việc sống tách biệt hoàn toàn khỏi xã hội này mà thôi.[p]
[舜]「Chắc cũng sắp đến lúc nghỉ công việc làm thêm này rồi…」[p]
Cất công bước chân ra ngoài xã hội, nhưng kiếm tiền mưu sinh quả thực chẳng dễ dàng chút nào.[p]
Lại phải quay về với cuộc sống tẻ nhạt trước đây sao… Tôi vừa thở dài ngao ngán vừa ngồi vào trước màn hình máy tính.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
【BAD END - Giấc Mơ Tan Biến】[p]
[_tb_end_text]

[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
