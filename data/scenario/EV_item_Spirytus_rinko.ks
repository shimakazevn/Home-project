[_tb_system_call storage=system/_EV_item_Spirytus_rinko.ks]

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
Pháp luật đã can thiệp, và cái giá phải trả là những năm tháng sau song sắt nhà tù.[p]
【BAD END: Sự Trừng Phạt Của Pháp Luật】[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Sự cố xảy ra khi sử dụng thuốc ngủ quá liều khiến nạn nhân rơi vào trạng thái hôn mê sâu.[p]
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_rinko.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_rinko.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không sử dụng"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
Tiếng còi xe cứu thương xé toạc màn đêm yên tĩnh.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Sự hốt hoảng và ân hận muộn màng không thể cứu vãn được thảm kịch đã xảy ra.[p]
Tôi quỳ sụp trước cửa phòng cấp cứu, ngập tràn trong nỗi tuyệt vọng vô bờ bến.[p]
【BAD END: Thảm Kịch Mê Dược】[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*yes

[cm  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
Hayato và tôi ngồi đối diện nhau trong quán cà phê quen thuộc sau bao biến cố.[p]
Hayato「Mày và tao… Đều đã tranh giành quá nhiều vì những thứ vô nghĩa」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten3.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="H3.mp3"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_item1_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Có lẽ đúng là như vậy thật」[p]
Cả hai chúng tôi quyết định buông bỏ mọi thù hận trong quá khứ để làm lại từ đầu.[p]
#凛子
Một cái bắt tay chân thành giữa hai người đàn ông chấm dứt chuỗi ngày đối đầu căng thẳng.[p]
Nagi và Tsubomi nhìn thấy cảnh đó cũng mỉm cười nhẹ nhõm.[p]
#凛子
Một tương lai tươi sáng và hòa bình mở ra cho tất cả mọi người.[p]
Tình bạn đích thực cuối cùng cũng đã chiến thắng dục vọng và lòng đố kỵ.[p]
【TÌNH BẠN END: Hòa Giải Sau Giông Bão】[p]
Hệ thống camera giấu kín hoạt động liên tục 24/7.[p]
Mọi khoảnh khắc riêng tư và nhạy cảm nhất của các cô gái đều được ghi lại trọn vẹn.[p]
#凛子
Những thước phim bí mật trở thành kho báu vô giá trong tay tôi.[p]
Một cảm giác quyền lực tối thượng khi nắm giữ mọi bí mật của người khác trong lòng bàn tay.[p]
#凛子
【Bộ Sưu Tập Quay Lén: Bí Mật Trong Bóng Tối】[p]
Từng bức ảnh và đoạn video được lưu trữ cẩn thận trong ổ cứng bảo mật.[p]
Mỗi khi xem lại, ngọn lửa ham muốn lại bùng cháy dữ dội.[p]
#凛子
Đây chính là công cụ đắc lực nhất giúp tôi kiểm soát và chi phối tất cả.[p]
Không một ai có thể thoát khỏi mạng lưới theo dõi hoàn hảo này.[p]
Mọi thứ diễn ra đúng như kế hoạch đã định sẵn.[p]
#凛子
Tôi là kẻ thao túng đứng sau bức màn nhung.[p]
Và trò chơi này sẽ không bao giờ có hồi kết.[p]
Kiểm tra chỉ số trạng thái nhân vật:[p]
#凛子
Độ thuần phục: Tối đa (100%)[p]
Mức độ dâm đãng: Cực hạn[p]
Tình cảm: Si mê tuyệt đối[p]
Tất cả các mục tiêu đều đã đạt trạng thái hoàn hảo nhất.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"] Không còn bất kỳ chướng ngại vật nào có thể ngăn cản tôi nữa.[p]
Dự án chinh phục đã thành công rực rỡ trên mọi phương diện.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"] Bảng điều khiển hệ thống hiển thị toàn bộ tiến trình hoàn thành 100%.[p]
Mọi kỹ năng và chỉ số xã hội đều đạt cấp độ cao nhất.[p]
Thu nhập hàng ngày từ tiệm massage và công việc phụ tăng trưởng vượt bậc.[p]
Danh tiếng và quyền lực trong thị trấn nhỏ ngày càng được củng cố vững chắc.[p]
Tôi đã xây dựng được một đế chế vững mạnh của riêng mình.[p]
#凛子
Một cuộc sống hoàn hảo không tì vết.[p]
Mỗi ngày trôi qua đều là những trải nghiệm ngập tràn niềm vui và sự thỏa mãn.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凛子
Các cô gái luôn vây quanh và phục vụ tôi hết mình bằng cả tấm lòng.[p]
Hạnh phúc đích thực cuối cùng cũng đã mỉm cười với tôi.[p]
Không còn gì để đòi hỏi thêm từ cuộc sống này nữa.[p]
[_tb_end_text]

[jump  storage="H_rinko_supiritasu.ks"  target="*top"  ]
*H_back

[tb_start_text mode=1 ]
Tôi ngẩng cao đầu bước đi trên con đường mình đã chọn.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
Một người đàn ông thành công nắm giữ tất cả trong tay.[p]
Mọi người dân trong thị trấn đều kính trọng và ngưỡng mộ tôi.[p]
Sự nghiệp thăng tiến không ngừng, tiền bạc rủng rỉnh trong túi.[p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_rinko=1"  name="itemEV_supiritasu_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
Và ở nhà luôn có những người phụ nữ xinh đẹp chờ đón tôi quay về.[p]
Một cuộc sống vương giả mà bất kỳ người đàn ông nào cũng phải ao ước.[p]
Tôi tự hào về những gì mình đã gây dựng nên.[p]
Từ một kẻ thất bại tràn đầy hận thù, giờ đây tôi là kẻ chiến thắng vĩ đại nhất.[p]
Cuộc hành trình dài đã khép lại bằng một cái kết trọn vẹn và viên mãn.[p]
Cảm ơn vì đã đồng hành cùng tôi suốt chặng đường qua.[p]
Tương lai tươi sáng đang rộng mở phía trước.[p]
Và tôi sẽ tiếp tục sống hết mình để tận hưởng từng khoảnh khắc tuyệt vời này.[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_supiritasu_rinko=2"  name="itemEV_supiritasu_rinko"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1500"  ]
[return ]
