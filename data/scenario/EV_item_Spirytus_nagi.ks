
[_tb_system_call storage=system/_EV_item_Spirytus_nagi.ks]

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

[wait  time="1000"  ]
[bg  time="2000"  method="fadeIn"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]（Nhắc mới nhớ, mình đang có sẵn viên nang Spirytus）[p]
[舜]（Bây giờ mà lén bỏ vào đồ uống của em ấy thì chắc không bị phát hiện đâu…）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Có sử dụng viên nang Spirytus không? (Số lượng sở hữu: [emb exp="f.item_supiritasu"])
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_nagi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Sử dụng"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_nagi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không sử dụng"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]（Mà thôi, lần này bỏ qua vậy）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
・・・Cảm giác như tôi đã thân thiết hơn với Nagi một chút[p]
Đã thanh toán tiền ăn tối 　[font color="yellow"]-￥5000[resetfont][p]
[font color="yellow"]Tâm trạng hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*yes

[cm  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[舜]（Canh lúc em ấy rời khỏi bàn để ra tay xem sao…）[p]
[舜]（Chỉ cần đổ phần thuốc bên trong viên nang ra… thế là xong.[r]Nó hòa tan vào nước nhanh đến bất ngờ. Thế này thì chắc chắn không bị lộ đâu）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*nagi_sotogi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_item1_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Cơn gió đêm mơn man lướt qua đôi gò má ửng hồng mang lại cảm giác dễ chịu đến lạ lùng.[r]Chẳng mấy chốc, cả hai chúng tôi đã về tới trước cửa nhà.[p]
#Nagi
Nagi「A~ ngon quá đi mất![r]Mỗi lần đi ăn với Hayato toàn vào mấy nhà hàng đắt đỏ làm tớ căng thẳng muốn chết… Nên hôm nay thấy mới mẻ ghê á」[p]
[舜]「Này, đừng có đem ra so sánh chứ. Khoe khoang đấy à?」[p]
#Nagi
Nagi「Không phải đâu, ý tớ là vui lắm cơ」[p]
Nagi hào hứng ôm lấy cánh tay tôi đung đưa.[r]Hương thơm dịu ngọt thoang thoảng phả vào mũi khiến tim tôi bất giác đập rộn ràng.[p]
[舜]（Có vẻ như tác dụng của viên nang Spirytus bắt đầu phát huy rồi…）[p]
Lúc nãy mình nhớ là đã pha liều lượng khá ít.[r]Vậy mà Nagi chỉ hơi ngà ngà say, bước chân vẫn vững vàng như thường.[p]
[舜]（Chẳng lẽ tửu lượng của Nagi lại khủng đến mức này sao…?）[p]
#Nagi
Nagi「Món gà nướng xiên cũng ngon nữa. Cả thịt viên lẫn gà xiên hành boa-rô. A, khoai tây chiên cũng tuyệt cú mèo luôn」[p]
[舜]「Thấy cậu chọn ăn đủ thứ món ngon lành mà」[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
#Nagi
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]Nagi「Ừm…… Tớ cứ nghĩ là mình rất dở trong việc tự đưa ra lựa chọn」[p]
[_tb_end_text]

[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
#Nagi
Nagi「Từ quần áo mặc, kiểu tóc, cho đến cách cư xử đi đứng sao cho ra dáng con gái… tất cả đều là do Hayato chỉ bảo cho tớ đấy」[p]
[舜]「Hả? Đến mức đó luôn cơ à?」[p]
#Nagi
Nagi「Ừm. Tại tính tớ vốn vô tư vô lo, chẳng hiểu gì về mấy chuyện điệu đà của con gái hết trơn……[r]Nên lúc đó tớ thấy được anh ấy chỉ bảo cũng đỡ biết bao nhiêu」[p]
#Nagi
Nagi「Nhưng mà, tự mình lựa chọn cũng vui thật đấy. Không có Shun-chan thì chắc tớ chẳng bao giờ nhận ra đâu」[p]
[舜]「Đúng thế còn gì. Hồi xưa khi ở cạnh người quen thân là Nagi bạo dạn và áp đảo người ta kinh khủng lắm」[p]
[舜]「Tự dưng lại bảo muốn xem cơ thể con trai trần truồng thế nào, rồi lột sạch quần áo của tớ ra luôn cơ mà」[p]
#Nagi
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif"]Nagi「Hả, tớ từng làm chuyện như thế thật á?」[p]
Nagi mở tròn xoe đôi mắt, đưa tay lên cằm ngẫm nghĩ một hồi lâu.[p]
Trông em ấy có vẻ đang lục tung từng ngăn ký ức trong đầu. Chuyện này em không nhớ ra là không xong với tôi đâu đấy.[p]
Bởi vì hồi đó, tôi đã phải chịu một nỗi xấu hổ không hề nhỏ chút nào.[p]
[舜]「Rồi Nagi cũng cởi hết ra, rốt cuộc hai đứa tắm chung bồn tắm luôn còn gì」[p]
Hình như hồi đó tôi học tiểu học… còn Nagi mới tầm mẫu giáo thì phải. Nagi chợt sực nhớ ra, vội đưa hai tay ôm lấy má thẹn thùng.[p]
#Nagi
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]Nagi「Nhắc mới nhớ… đúng là hai đứa mình từng khoe thân cho nhau xem thật…! Xấu hổ chết đi được… Tớ xin lỗi nhé」[p]
[舜]「Chuyện hồi xưa rồi mà. Trẻ con thì tò mò là chuyện bình thường thôi」[p]
#Nagi
Nagi「Thôi đi mà~, đừng có nói kiểu trêu chọc thế chứ. Chuyện con nít hồi bé thôi mà, tha cho tớ đi…」[p]
Nagi ngượng ngùng cúi gằm mặt xuống, rồi đột nhiên khựng bước lại.[p]
#Nagi
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]Nagi「Nhưng mà… tự dưng thấy nhớ ghê… mấy chuyện như thế」[p]
Nagi ngước nhìn về phía tôi. Đôi mắt long lanh của em ấy đang ngấn chút nước.[p]
Tôi nhận ra ngay đó không chỉ đơn thuần là do men say, mà ẩn chứa trong đó còn có một thứ cảm xúc rất khác.[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"][舜]「Hay là bây giờ… thử lại xem sao?」[p]
Tôi cố hết sức nén lại sự run rẩy trong giọng nói của mình.[p]
[舜]「Nếu cả hai đứa cùng cởi sạch ra… thì tớ cũng có thể cân nhắc đấy」[p]
Nagi với gương mặt đỏ bừng khẽ gật đầu một cái thật nhẹ.[p]
#Nagi
Nagi「Ừm… chuyện như vậy có khi cũng vui… đấy nhỉ」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Sau đó, việc hai đứa về phòng bằng cách nào thì ký ức tôi đã mơ hồ mông lung. Không phải vì say rượu.[p]
Mà chỉ là bởi sự hưng phấn âm ỉ, cùng với nỗi kỳ vọng và bối rối về việc chuyện giữa hai chúng tôi rồi sẽ đi đến đâu.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sin_nagi_nagiroom_yoru.png"  ]
[tb_start_text mode=1 ]
Vừa bước chân vào phòng, tôi liền vội vã lột bỏ hết quần áo trên người.[p]
Nhìn Nagi bẽn lẽn cởi bỏ từng món đồ lót, e thẹn không dám nhìn thẳng vào mắt tôi, ngọn lửa dục vọng trong tôi bùng cháy dữ dội.[p]
[_tb_end_text]

[bg  time="2000"  method="fadeInUp"  storage="event/item_spirytus_nagi.png"  ]
[tb_cg  id="cg_item_spirytus"  ]
[tb_start_text mode=1 ]
[舜]「Nagi…」[p]
Cổ họng tôi khô khốc. Khó khăn lắm mới cất nên lời. Nagi khẽ liếc nhìn tôi rồi thẹn thùng cúi mặt.[p]
#Nagi
Nagi「Shun-chan… của cậu cương to quá rồi kìa…」[p]
[舜]「Ừm…」[p]
#Nagi
Nagi「Cậu nhìn tớ…… bằng ánh mắt ham muốn như thế sao?」[p]
Giọng nói run rẩy của em đan xen giữa nỗi bất an lẫn niềm mong đợi ngập tràn.[p]
[舜]「……Tớ muốn hiểu nhiều hơn về Nagi. Hãy cho tớ nhìn thấy đi」[p]
Nagi khẽ gật đầu, chầm chậm dạng rộng hai chân ra.[p]
Ánh sáng mờ ảo dịu dàng chiếu rọi lên những đường cong nuột nà của em.[r]Cơ thể của Nagi gợi cảm và dâm đãng hơn tôi tưởng tượng gấp bội phần.[p]
#Nagi
Nagi「Thấy hết rồi hả…? Nói gì đi chứ… Xấu hổ chết đi được…」[p]
[舜]「……Đẹp lắm. Đẹp đến mức không thể tin nổi……」[p]
Nhìn thấy tôi bắt đầu dùng tay vuốt ve sục cặc, Nagi thảng thốt phát ra tiếng thở ngỡ ngàng.[p]
Nhịp tim đập dồn dập, từng hơi thở phả ra nóng rực.[p]
Trong không gian tĩnh lặng chỉ còn lại hơi thở nồng nàn của hai đứa, mọi giác quan như được đánh thức và căng tràn đến tột cùng.[p]
[舜]「Cậu định chỉ để mình tớ làm thôi sao?」[p]
#Nagi
Nagi「Xấu hổ lắm… nhưng mà──」[p]
Ngập ngừng một thoáng, Nagi cũng đưa ngón tay luồn xuống giữa hai khe đùi.[p]
Ngay lập tức, âm thanh nhóp nhép ướt át đầy kích thích vang vọng khắp căn phòng.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="teman1.mp3"  fadein="true"  loop="true"  ]
[tb_start_text mode=1 ]
Cơ thể Nagi khẽ giật bắn lên một cái, rồi em bắt đầu chầm chậm di chuyển những đầu ngón tay.[p]
#Nagi
Nagi「Ưm… haah, aah♡」[p]
#Nagi
Nagi「Shun-chan…♡ A, Shun-chan ơi♡ Cậu đang nhìn tớ chằm chằm kìa…」[p]
[舜]「Ừm, tớ đang nhìn Nagi đây.」[p]
#Nagi
Nagi「Lần đầu tiên tớ làm chuyện xấu hổ thế này đấy…♡ Haa, không được… thế này là sai trái…」[p]
#Nagi
Nagi「Dù biết là không được, nhưng sướng quá đi mất…♡」[p]
Cả hai chúng tôi bị hớp hồn bởi dáng vẻ trần trụi của đối phương, từng ngón tay chuyển động càng lúc càng mãnh liệt.[p]
Trong màn đêm tĩnh mịch, hơi thở hổn hển cùng những tiếng rên rỉ mê đắm của Nagi khẽ vang lên không dứt.[p]
[舜]「T-Tớ cũng sắp ra rồi…」[p]
#Nagi
Nagi「Tớ cũng… lên đỉnh mất thôi…!」[p]
Nagi dạng chân rộng hơn nữa, uốn cong hông nhổm người lên.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[wait  time="2000"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#Nagi
Nagi「A♡ Ưm♡ Ưm, ưm ưm♡」[p]
Cắn chặt lấy bờ môi, toàn thân Nagi run rẩy từng cơn co giật đê mê.[p]
Cùng lúc đó, trong đầu và nơi bàn tay tôi, dòng khoái cảm nóng rực bùng nổ tung tóe.[p]
#Nagi
Nagi「Không chịu đâu… làm chuyện xấu hổ thế này…… trước mặt Shun-chan cơ chứ……」[p]
[舜]「Chỉ là chơi đùa thôi mà… coi như hai đứa chơi trò trẻ con thôi. Mặc quần áo vào là xong hết ấy mà」[p]
Cơn hưng phấn vẫn còn chưa hạ nhiệt, tôi vội gom lại những bộ quần áo đã vứt vương vãi dưới sàn.[p]
Cảm nhận từng cử chỉ chậm rãi của Nagi ở bên cạnh, sâu thẳm trong lòng tôi khao khát được tiến thêm một bước xa hơn nữa với em.[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_item_supiritasu"  ]
[tb_start_text mode=1 ]
・・・Cảm giác như tôi đã thân thiết hơn với Nagi một chút[p]
Đã thanh toán tiền ăn tối 　[font color="yellow"]-￥5000[resetfont][p]
[font color="yellow"]Tâm trạng hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_nagi=1"  name="itemEV_supiritasu_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[call  storage="system.ks"  target="*fade_in"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_hiru.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi_hutuu"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="nagi.mp3"  ]
[tb_start_text mode=1 ]
Tại điểm tập kết rác, khi tôi bất giác ngẩng đầu lên thì ── Nagi đã đứng ở đó từ lúc nào.[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]Nagi「A…… ừm thì……」[p]
Nagi đứng chôn chân với vẻ mặt đầy bối rối và ngượng ngùng.[p]
Chắc hẳn em đang nhớ lại chuyện tối qua, hai gò má đỏ bừng ửng hồng, mắt không dám nhìn thẳng vào tôi.[r]Những ngón tay em cứ bồn chồn vân vê gấu áo không yên.[p]
[舜]「Chào buổi sáng」[p]
Nagi「Ch-Chào buổi sáng! H-Hôm nay trời lại nóng ghê ha~…… A haha…….[r]M-Mình phải đi nhanh thôi, không kẻo muộn mất!」[p]
Cố gắng tỏ ra vui vẻ tự nhiên, nhưng tôi có thể cảm nhận rõ sự lúng túng đang bộc lộ ra ngoài.[p]
[舜]「Ừm, đi làm vui vẻ nhé」[p]
Khi tôi nở nụ cười tiễn em, Nagi khựng bước lại trong giây lát. Và rồi ──[p]
Nagi「…… À ừm, chuyện tối hôm qua ấy……」[p]
Em lí nhí nói nửa câu, nhưng rồi lập tức lắc mạnh đầu,[p]
Nagi「M-Mà thôi không có gì đâu! Em đi làm đây ạ!!」[p]
Gương mặt đỏ gay như quả cà chua chín, em cắm đầu chạy thục mạng như muốn trốn chạy khỏi tôi.[p]

[_tb_end_text]

[call  storage="system.ks"  target="*fade_in"  ]
[chara_hide  name="kyara_nagi_sabun2"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[tb_start_text mode=1 ]
[舜]（……Đâu cần phải xấu hổ đến mức đấy cơ chứ）[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.itemEV_supiritasu_nagi=2"  name="itemEV_supiritasu_nagi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1000"  ]
[return  ]
