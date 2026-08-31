
[_tb_system_call storage=system/_EV_kyouaiEND_nagi.ks]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="END.mp3"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_ END3_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Kể từ lúc nhận được thông báo Nagi và Hayato đã kết hôn, cũng đã hơn một năm trôi qua.[p]
Vào một buổi chiều mùa hè nọ, lúc ấy vừa qua buổi trưa một chút.[p]
Giữa tiếng ve kêu râm ran ồn ã ngoài cửa sổ, tôi ghé thăm nhà Nagi sau một thời gian dài.[p]
#Nagi
Nagi「Chào cậu...... Shun-chan, mời cậu vào.」[p]
[舜]「Hayato đâu rồi?」[p]
#Nagi
Nagi「Không sao đâu, bây giờ anh ấy không có nhà. Anh ấy ngày nào cũng bận rộn... nhưng cứ hết giờ làm là lập tức về ngay. Anh ấy lo cho em bé lắm.」[p]
Bụng Nagi đã phình to. Cũng sắp đến ngày dự sinh rồi.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/nagi_kyouaiEND.png"  ]
[tb_cg  id="cg_nagi_kyouaiEND"  ]
[tb_start_text mode=1 ]
[舜]「Bụng cậu lớn quá rồi nhỉ. Bao giờ thì sinh thế?」[p]
#Nagi
Nagi「Sắp rồi...... Hayato ấy, dạo này ngày nào cũng đứng ngồi không yên.[r]Cứ khăng khăng bảo “Chắc chắn là con gái”, rồi còn nghĩ cả tên sẵn luôn rồi đấy.」[p]
[舜]「......Vậy à.」[p]
Đôi mắt Nagi khi cười trông thật hiền từ.[p]
Thế nhưng sâu thẳm trong đôi mắt ấy, lại ánh lên một tia nhìn xa xăm nào đó.[p]
[舜]（Dù đứa bé này có ra đời, chắc chắn Hayato cũng sẽ không chấp nhận nó）[p]
[舜]（Nhưng mà, tôi…… chỉ cần nhìn thấy gương mặt đứa bé này, là đã mãn nguyện rồi）[p]
Đúng vậy, chắc chắn đứa bé sẽ mang gương mặt giống tôi.[p]
Nhưng mà, Nagi sẽ không phá vỡ gia đình này.[p]
Và tôi, cũng không hề có ý định phá vỡ nó.[p]
#Nagi
Nagi「Thực ra thì...... đứa bé trong bụng là con trai đấy.[r]Nhưng mà──lần tới, em mong sẽ là con gái. Chắc chắn Hayato sẽ mừng lắm.」[p]
[舜]「......Ừ, đúng vậy nhỉ.」[p]
Nagi nhẹ nhàng đặt tay lên bụng, khẽ mỉm cười.[p]
Dáng vẻ ấy vô cùng bình yên, sự dịu dàng của một người mẹ hòa quyện cùng nét yêu kiều kiều diễm.[p]
#Nagi
Nagi「Này... Dù đứa bé này có ra đời, Shun-chan vẫn sẽ ở bên cạnh em chứ?」[p]
[舜]「Ừ, tất nhiên rồi. Chúng ta sẽ sớm sinh đứa thứ hai nữa nhé.」[p]
#Nagi
Nagi「Cảm ơn anh... em vui lắm!♡」[p]
Chỉ cần như vậy, là đã quá đủ rồi.[p]
Mối quan hệ giữa hai chúng tôi, chẳng thể gọi thành tên.[p]
Thế nhưng, trái tim của cả hai thực sự đã hướng về nhau.[p]
[舜]「Hôm nay mình làm trong phòng ngủ của vợ chồng em đi... Phải dạy cho đứa bé trong bụng biết ai mới là người bố thật sự của nó chứ.」[p]
Nagi mang vẻ mặt như thể không thể kìm nén được nữa, cởi phăng chiếc quần của tôi ra.[p]
#Nagi
Nagi「Aaa♡ Cái này, em muốn cái này cơ♡」[p]
Gánh vác cả quá khứ lẫn tương lai, chỉ buông mình vào khoảnh khắc của hiện tại,[p]
Hai chúng tôi khẽ khàng hòa quyện vào nhau, rồi khuất dần sau cánh cửa.[p]


[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
【Nagi_Cuồng Ái END　Tận cùng của sự méo mó】[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_kyouaiEND"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event_fin2.jpg"  ]
[tb_hide_message_window  ]
[tb_eval  exp="sf.zenkaihou=1"  name="zenkaihou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[wait  time="2000"  ]
[l  ]
[bg  time="3000"  method="crossfade"  storage="event_fin.jpg"  ]
[wait  time="3000"  ]
[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]