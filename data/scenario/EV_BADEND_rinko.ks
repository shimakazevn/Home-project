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
Nagi「Vào trong tớ… Được thôi, nếu là Shun-chan thì tớ sẵn sàng rồi…」[p]
Tôi kê đầu khấc vào cửa mình ướt át của Nagi rồi từ từ nhấn sâu vào.[p]
Nagi「Ưm…! Đau một chút… Nhưng mà… Đầy ắp bên trong rồi…」[p]
[舜]「Khít quá… Nagi thả lỏng ra nào」[p]
Nagi「Hà… phù… Tớ quen rồi… Shun-chan cử động đi…」[p]
Từng cú nhấp chậm rãi ban đầu dần chuyển thành những đợt thúc dồn dập đầy mê đắm.[p]
Nagi「A… a a…! Sâu quá… Chạm vào tận sâu trong bụng tớ rồi…!」[p]
[舜]「Nagi… Bên trong em tuyệt vời lắm…」[p]
Nagi「Shun-chan… Tớ sướng quá… Cơ thể tớ đang tan chảy ra mất rồi…♡」[p]
Tiếng rên rỉ ngọt ngào hòa lẫn tiếng da thịt chạm nhau tạo nên một bản hòa tấu cuồng say.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Nagi「Mạnh nữa lên đi anh… Hãy biến tớ thành của riêng cậu đi!」[p]
[_tb_end_text]

[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s ]
