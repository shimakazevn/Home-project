
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
[舜]（Chỉ cho phần bột bên trong viên nhộng vào thôi...[r]Không ngờ lại tan vào nước dễ thế. Thế này thì chắc chắn không bị phát hiện rồi）[p]
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
Nagi「Fufu, no nê rồi! Lâu lắm rồi mới được ăn đồ ngon thỏa thích thế này đấy」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Nagi trông vô cùng vui vẻ và nói chuyện rôm rả.[r]Có vẻ như viên nhộng Spirytus tôi hòa vào nước lúc nãy đã bắt đầu phát huy tác dụng.[p]
Nagi「Ừm... Nhưng mà sao tự dưng người nóng thế nhỉ... Đầu óc cứ lâng lâng sao ấy」[p]
[舜]「Chắc là do say rượu rồi đấy」[p]
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
Nagi「Ơ? Nhưng mình đâu có uống rượu đâu ta... Lạ thật đấy...」[p]
Mặt cô ấy đỏ bừng tới tận mang tai, bước chân lảo đảo không vững.[p]
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
[舜]「Này, cẩn thận kẻo ngã. Để anh đưa em về phòng nghỉ nhé」[p]
Nagi「Ưm... Cảm ơn [舜]-chan nhé...」[p]
#凛子
Tôi dìu Nagi về phòng của cô ấy, đặt cơ thể mềm mại của cô ấy nằm xuống giường.[p]
Nagi「[舜]-chan... Em thấy nóng quá... Khó chịu quá à...」[p]
#凛子
Nagi khẽ rên rỉ, hai tay kéo phanh cổ áo ra để lộ làn da trắng ngần đang ửng hồng vì men say và kích thích.[p]
[舜]（Thế này thì không kiềm chế nổi nữa rồi...）[p]
Tôi đè lên người Nagi, bắt đầu cởi bỏ từng lớp trang phục của cô ấy──[p]
Toàn thân Nagi run rẩy theo từng cái chạm tay đầy ma mị của tôi.[p]
[舜]（Nhắc mới nhớ, mình đang có sẵn viên con nhộng Spirytus）[p]
#凛子
[舜]（Lúc này nếu lén bỏ vào đồ uống của cô ấy thì chắc sẽ không bị lộ đâu...）[p]
Một cảm giác quyền lực tối thượng khi nắm giữ mọi bí mật của người khác trong lòng bàn tay.[p]
#凛子
Có sử dụng viên con nhộng Spirytus không? (Số lượng sở hữu: [emb exp="f.item_supiritasu"])
Từng bức ảnh và đoạn video được lưu trữ cẩn thận trong ổ cứng bảo mật.[p]
[舜]「Đây là nước ạ. Là nước của tiệm mình. Chị uống đi」[p]
#凛子
Rinko「A, cảm ơn em」[p]
Không một ai có thể thoát khỏi mạng lưới theo dõi hoàn hảo này.[p]
[舜]「Chị có sao không?」[p]
#凛子
Rinko「Chị ổn mà... [舜]-kun đúng là con trai có khác.[r]Vừa khỏe mà bờ vai lại rộng nữa. Được em đỡ mà tim chị cứ đập thình thịch」[p]
Và trò chơi này sẽ không bao giờ có hồi kết.[p]
Kiểm tra chỉ số trạng thái nhân vật:[p]
#凛子
Rinko「Chị phải cảm ơn em mới được nhỉ...」[p]
Mức độ dâm đãng: Cực hạn[p]
Tình cảm: Si mê tuyệt đối[p]
Tất cả các mục tiêu đều đã đạt trạng thái hoàn hảo nhất.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Fufu, mặt [舜]-kun cũng đỏ bừng lên rồi kìa... Em thấy xấu hổ à?」[p]
[舜]「Thế này... có được không chị...」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Ưm... Cứ làm theo ý em thích đi? Có gì chưa biết chị sẽ dạy cho em hết♡」[p]
Mọi kỹ năng và chỉ số xã hội đều đạt cấp độ cao nhất.[p]
Thu nhập hàng ngày từ tiệm massage và công việc phụ tăng trưởng vượt bậc.[p]
Danh tiếng và quyền lực trong thị trấn nhỏ ngày càng được củng cố vững chắc.[p]
Tôi đã xây dựng được một đế chế vững mạnh của riêng mình.[p]
#凛子
Rinko「Chị không đủ hấp dẫn để làm em có hứng à? Nhưng chỗ này của em dường như đã sẵn sàng rồi kìa?」[p]
[舜]「Nhìn chị gợi cảm quá làm em hưng phấn không chịu nổi rồi」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Fufu, thế thì... lại đây với chị nào?」[p]
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
[return  