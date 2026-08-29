[_tb_system_call storage=system/_EV_item_Spirytus_tubomi.ks]

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
Mọi kết thúc đều là sự khởi đầu cho một chương mới tươi đẹp hơn.[p]
Xin chào và hẹn gặp lại trong những câu chuyện tiếp theo.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
HOME (ROOM) - Bản Việt Hóa Hoàn Tất 100%.[p]
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_tubomi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_tubomi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không sử dụng"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
Shimakaze VN Translation Team.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Chúc bạn có những giờ phút trải nghiệm game thật tuyệt vời![p]
Hẹn gặp lại trong các dự án Visual Novel tiếp theo![p]
Trân trọng cảm ơn tất cả các bạn đã ủng hộ![p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*yes

[cm  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
The End.[p]
Hoàn tất kịch bản đặc biệt.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai_yoru.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_item1_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
Mở khóa toàn bộ thư viện ảnh CG và âm nhạc.[p]
Bạn có thể xem lại tất cả các cảnh trong menu Kỷ niệm.[p]
#蕾
Cảm ơn vì đã chơi hết toàn bộ các tuyến nhân vật.[p]
Thành tựu cao nhất: Bậc Thầy Chiếm Đoạt.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"] Toàn bộ bí mật của thị trấn đã được khám phá trọn vẹn.[p]
Tất cả các kết thúc đã được mở khóa thành công.[p]
Dữ liệu lưu trữ đã được đồng bộ hoàn tất.[p]
#蕾
Hệ thống sẵn sàng cho chế độ Chơi Lại (New Game+).[p]
Bảo lưu toàn bộ điểm kỹ năng và chỉ số đã đạt được.[p]
Khởi động lại vòng lặp với những trải nghiệm phong phú hơn.[p]
Một thế giới mới đang chờ đợi bạn khám phá.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"] Hãy tận hưởng trò chơi theo cách riêng của bạn.[p]
Trân trọng cảm ơn tác giả gốc đã tạo nên một tác phẩm tuyệt vời.[p]
Bản địa hóa tiếng Việt thực hiện với tình yêu dành cho Visual Novel.[p]
#蕾
Bảo lưu toàn bộ bản quyền thuộc về nhà sản xuất gốc.[p]
Mọi đóng góp ý kiến xin gửi về nhóm dịch Shimakaze VN.[p]
Dự án hoàn thành vào ngày 29 tháng 08 năm 2026.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="H3.mp3"  ]
[tb_start_text mode=1 ]
Chúc các bạn chơi game vui vẻ![p]
Và hẹn gặp lại trong những tác phẩm tiếp theo![p]
[舜]「Đến nơi rồi. Nè, uống nước đi」[p]
Tôi đưa chai nước khoáng đặt trong tiệm cho Tsubomi.[p]
Em ấy uống với vẻ mặt mơ màng đờ đẫn rồi thở dài một hơi thật mạnh.[p]
#蕾
Tsubomi「Hình như em bị say rồi hay sao ấy… Lạ thật, rõ ràng em đâu có uống rượu đâu chứ」[p]
[舜]「Chắc quán nước mang nhầm đồ uống có cồn ra rồi cũng nên」[p]
#蕾
Tsubomi「Trời ạ~. Ghét quá… Người em nóng bừng bừng hết cả lên rồi nè」[p]
Bị đôi mắt ươn ướt ngấn lệ của Tsubomi nhìn chằm chằm, tôi cũng đã sắp tới giới hạn chịu đựng rồi.[p]
[舜]「Thế thì phải cởi bớt quần áo ra thôi」[p]
#蕾
Tsubomi「Không chịu đâu, ơ, a, khoan đã nào…」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tôi đè trọn cơ thể mảnh mai của em ấy xuống rồi vén chiếc áo lên.[p]
Chiếc áo lót cũng theo đó mà xộc xệch, để lộ đôi gò bồng đảo mềm mại nảy nở trần trụi.[p]
#蕾
Tsubomi「Đã bảo là không được rồi mà…」[p]
Dù em ấy khua khoắng tay chân như muốn phản kháng, nhưng một cô gái đã say mèm thì làm sao đủ sức đẩy tôi ra được.[p]
Làn da trắng nõn nà trên thân hình mảnh mai mềm mại. Phải thưởng thức thế nào đây──[p]
[_tb_end_text]

[jump  storage="H_tubomi_supiritasu.ks"  target="*top"  ]
*back

[bg  time="2000"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[tb_start_text mode=1 ]
#蕾
Tsubomi「Hà…♡ Hà…♡ Hà…♡ Không chịu đâu mà…♡」[p]
Vừa run rẩy toàn thân, Tsubomi vừa lắc đầu nguầy nguậy phản đối.[p]
Rồi cứ thế, em ấy nhắm nghiền hai mắt lại và bắt đầu thở đều đều chìm vào giấc ngủ.[p]
[舜]（Ngủ mất rồi sao, cứ tưởng được vui vẻ thêm chút nữa chứ. Mà thôi kệ đi）[p]
Một cô gái bình thường luôn chăm chút kỹ lưỡng cho vẻ ngoài và cách ăn mặc, giờ đây đang phơi bày thân thể trần truồng trước mặt tôi.[p]
Hai chân dạng rộng hớ hênh, từ khe rãnh dâm dịch rỉ ra ướt át… Chỉ bấy nhiêu thôi cũng đã quá đủ rồi.[p]
Tôi rút điện thoại ra, chụp lại một tấm ảnh duy nhất của cô thiếu nữ ôm mộng làm người mẫu này.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
……Cảm giác như tôi và Tsubomi đã trở nên thân thiết hơn một chút.[p]
Đã thanh toán tiền bữa tối 　[font color="yellow"]-¥5,000[p]
Hưng phấn tăng lên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_tubomi=1"  name="itemEV_supiritasu_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
Chuông báo tin nhắn vang lên, tôi mở điện thoại ra xem──[p]
『Em chẳng nhớ gì về chuyện tối qua cả. Anh không làm trò gì bậy bạ đấy chứ?』[p]
Một tin nhắn từ Tsubomi gửi tới.[p]
[舜]「Quả nhiên là không nhớ gì thật」[p]
『Anh có làm gì đâu. Em bảo buồn ngủ nên anh để em ngủ thôi mà』[r]Tôi thản nhiên nhắn lại mà không hề do dự. Cơ thể cũng đã lau sạch, quần áo cũng mặc lại đàng hoàng. Chẳng còn bằng chứng nào cả…[p]
Ngoại trừ bức ảnh nằm sâu bên trong album điện thoại của tôi.[p]
Tôi mở lại bức ảnh chụp tối qua một lần nữa, chậm rãi ngắm nhìn thưởng thức.[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_supiritasu_tubomi=2"  name="itemEV_supiritasu_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1500"  ]
[return  