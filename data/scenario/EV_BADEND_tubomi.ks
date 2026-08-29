[_tb_system_call storage=system/_EV_BADEND_tubomi.ks]

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
Chỉ còn lại tình yêu và sự chiếm hữu thuần khiết nhất.[p]
Mọi thứ diễn ra đúng như những gì tôi hằng mong đợi.[p]
Kế hoạch trả thù đã biến thành sự chiếm đoạt trọn vẹn nhất.[p]
Và tôi hoàn toàn không hề hối hận về điều đó.[p]
Nagi là của tôi, mãi mãi là như vậy.[p]
Tôi khẽ hôn lên trán Nagi một nụ hôn dịu dàng.[p]
Em ấy mỉm cười trong giấc mơ, ôm tôi chặt hơn một chút.[p]
Một sự bình yên hiếm hoi sau chuỗi ngày toan tính và dục vọng.[p]
Nhưng tôi biết, ngọn lửa ham muốn sẽ không dừng lại ở đây.[p]
Ngày mai, sẽ lại có thêm những trò chơi mới thú vị hơn.[p]
Và Nagi sẽ luôn là bạn đồng hành trung thành nhất của tôi.[p]
Cuộc sống này, cuối cùng cũng trở nên đáng sống rồi.[p]
[_tb_end_text]

[bg  time="1500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Tôi nhắm mắt lại, tận hưởng trọn vẹn sự êm ái của màn đêm.[p]
[_tb_end_text]

[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  