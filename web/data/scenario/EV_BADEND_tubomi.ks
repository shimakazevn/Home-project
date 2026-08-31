
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
Rốt cuộc, mối quan hệ giữa tôi và Tsubomi vẫn chẳng có chút tiến triển nào.[p]
Kể từ khi tôi ngừng lui tới quán Refle, hai đứa cũng chẳng còn bất kỳ cuộc trò chuyện nào ngoài mức cần thiết.[p]
[舜]（Xem ra em ấy đang rất nỗ lực hết mình vì ước mơ làm người mẫu…）[p]
[舜]（Một cô gái sắp bước chân vào giới giải trí thì không nên dính líu đến một gã đàn ông tầm thường như mình thì hơn）[p]
Nhìn qua ô cửa sổ, tôi thoáng thấy bóng dáng Hayato đang bước vào nhà của Nagi.[p]
[舜]（Nghĩ lại thì, ban đầu mình chỉ định tiếp cận để trả thù hai người họ thôi mà nhỉ）[p]
Những ngày tháng bận rộn bên Tsubomi đã khiến tôi quên bẵng đi cả ý định ban đầu ấy.[p]
Mà thôi kệ đi… Tôi buông xuôi nằm vật ra giường.[p]
[舜]「Chắc cũng sắp đến lúc nghỉ làm thêm ở chỗ chị Rinko rồi」[p]
Như vậy thì sẽ không còn phải giáp mặt Tsubomi nữa, cũng chẳng cần phải cảm thấy ngượng ngùng khó xử làm gì.[p]
Có thể chấm dứt tất cả được rồi…[p]
Tôi ngước mắt nhìn lên trần nhà, trong lòng vẫn không thôi nghĩ về hình bóng Tsubomi.[p]
[_tb_end_text]

[bg  time="1500"  method="crossfade"  storage="black.jpg"  ]
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
