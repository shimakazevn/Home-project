
[_tb_system_call storage=system/_EV_BADEND_suimin.ks]

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

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_BADEND_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#Nagi
Nagi「Ưm……」[p]
#Nagi
Nagi「……Ai…… đó, đang ở đây à?」[p]
Khoảnh khắc câu nói ấy cất lên phá tan bầu không khí, tôi cảm thấy toàn bộ máu trong người như đảo ngược chảy ngược lên não.[r]Mí mắt em từ từ mở ra, và ngay khi nhận ra bóng người trong bóng tối, gương mặt Nagi liền biến sắc vì kinh hãi tột cùng.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom_yoru.png"  ]
[chara_show  name="kyara_nagi"  time="0"  wait="true"  storage="chara/153/ADV_nagi_00_base2.png"  width="832"  height="832"  left="260"  top="20"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="BADEND.mp3"  ]
[tb_start_text mode=1 ]
#Nagi
Nagi「──Kyaaaaaaaa!」[p]
（Dừng lại mau, đừng có hét lên……!）[p]
Theo phản xạ, tôi vội vã đưa tay bịt chặt miệng Nagi lại. Đôi mắt Nagi mở to trừng trừng, tuyệt vọng vùng vẫy chống cự.[r]Cơ thể em ấy thật nhỏ bé và yếu ớt.[p]
Thế nhưng, chính sức lực dùng hết bình sinh để đẩy tôi ra của Nagi[r]đã kéo một chút lý trí ít ỏi trong tôi quay trở lại.[p]
[舜]「Khốn nạn, chết tiệt, mình…… đang làm cái trò quái quỷ gì thế này……!」[p]
Thân thể Nagi run rẩy bần bật, từng cơn co giật nghẹn ngào khó thở của em đã khiến tôi hoàn toàn bừng tỉnh.[p]
Suýt chút nữa là mình đã giết chết em ấy rồi. Vừa rồi, suýt nữa chính tay mình đã tước đoạt mạng sống của Nagi──[p]
#Nagi
Nagi「Khụ! Khụ! Chẳng lẽ…… là [舜]-chan đấy ư……?」[p]
[舜]「──C-Chết tiệt……!」[p]
Giọng nói yếu ớt nghẹn ngào ấy như bóp nghẹt trái tim tôi tan nát.[r]Tôi không thể ở lại nơi đó thêm một giây phút nào nữa. Như một kẻ tội đồ tháo chạy, tôi lao thẳng ra khỏi nhà Nagi.[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="hasiru.mp3"  loop="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Lao thục mạng xuống cầu thang, tôi chạy chân trần trên nền nhựa đường lạnh ngắt.[r]Từng cơn gió đêm tát vào mặt như kéo tôi quay trở về với thực tại phũ phàng.[p]
（Mình đang làm cái quái gì thế này…… Mình bị điên rồi sao…… Sao mọi chuyện lại trở nên thế này cơ chứ……）[p]
Tôi chỉ quan tâm đến Nagi, chỉ muốn đến gần em ấy thêm một chút thôi mà.[p]
Nhưng giờ đây dù có hối hận ngàn lần thì cũng đã quá muộn màng rồi.[p]
Ngỡ như lạc vào một mê cung vô tận, tôi chẳng còn biết cảm xúc của chính mình đang hướng về nơi đâu nữa.[p]
[舜]「Uwaaaaaaaaaa!」[p]
Ngủ ngon nhé, Nagi của anh.[p]
Ánh trăng ngoài cửa sổ rọi vào căn phòng tĩnh lặng, chứng giám cho sự gắn kết vĩnh cửu này.[p]
[_tb_end_text]

[wait  time="3000"  ]
[stopse  time="2000"  buf="0"  fadeout="true"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[tb_start_text mode=1 ]
Tất cả mọi rào cản giữa chúng tôi đã hoàn toàn tan biến.[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[l  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
