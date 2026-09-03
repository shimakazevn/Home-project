
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
Tiếng chuông cửa dồn dập vang lên.[p]
[舜]「……Ai đấy ạ?」[p]
Liếc nhìn đồng hồ, lúc này chỉ vừa mới qua sáng sớm một chút.[r]Một linh cảm chẳng lành bất chợt ập đến khiến bước chân tôi hướng về phía cửa chính trở nên nặng trĩu.[p]
Ngập ngừng một hồi, tôi nắm lấy tay nắm cửa rồi khẽ xoay nhẹ.[p]
Kèm theo tiếng kẽo kẹt khô khốc, cánh cửa chính từ từ mở ra.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="dooropen.mp3"  ]
[bg  time="2000"  method="crossfade"  storage="back_room_genkan.png"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="kintyou.mp3"  ]
[tb_start_text mode=1 ]
Đứng trước mặt tôi là hai người đàn ông lạ mặt mặc vest trang nghiêm, lặng lẽ đứng nhìn chằm chằm.[p]
Người đàn ông「Cậu có phải là [日高] [舜]-san không?」[p]
Một người đàn ông cất giọng lạnh tanh vô cảm cất lời.[p]
Người đàn ông「Chúng tôi là cảnh sát. Cậu có thể dành chút thời gian trả lời một số câu hỏi liên quan đến hành vi phát tán hình ảnh bất hợp pháp không?」[p]
Trước khi kịp hiểu ý nghĩa câu nói đó, đầu óc tôi bỗng chốc trở nên trống rỗng trắng xóa.[r]Khuôn mặt, giọng nói của họ và toàn bộ cảnh vật xung quanh dường như mờ dần rồi biến mất trong làn sương mù.[p]
Tôi muốn mở miệng nói điều gì đó, nhưng cổ họng run rẩy chẳng thể thốt nên lời.[r]Trước hàng loạt câu hỏi được đưa ra dồn dập, tôi chỉ biết máy móc gật đầu trong vô thức.[p]
Khi được cho xem màn hình và xác nhận tài khoản, tôi vẫn chẳng thể cảm nhận được chút thực tế nào.[r]Mọi thứ ngỡ như một cơn ác mộng kinh hoàng.[p]
[舜]（A…… Tất cả, đã chấm hết thật rồi……）[p]
Chỉ còn duy nhất dòng suy nghĩ tuyệt vọng ấy còn đọng lại trong tâm trí tôi.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
【BAD END - Vị Khách Không Mời】[p]
[_tb_end_text]

[l  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
