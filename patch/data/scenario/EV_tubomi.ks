]
[_tb_system_call storage=system/_EV_tubomi.ks]

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
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="knock.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_date1_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
Tsubomi「Kính chào Chủ nhân đã về. Em là Amelia ạ.」[p]
[_tb_end_text]

[call  storage="character.ks"  target="*tubomi_meido_hutuu"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_text mode=1 ]
Giọng điệu tuy tươi sáng, nhưng không hiểu sao tôi lại nghe ra được sự tức giận ẩn chứa trong đó.[p]
Một thái độ không thể chấp nhận được đối với một hầu gái,[r]nhưng nếu tôi mà nói ra điều đó thì chắc chắn sẽ nhận lại sự phản đòn kinh khủng.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif" wait="false"]Tsubomi「Hà…… anh thì sướng rồi. Lúc nào trông cũng rảnh rỗi, ghen tị thật đấy.[r]Tôi đây từ sáng đã chạy ngược chạy xuôi, bận tối mắt tối mũi đây này.」[p]
Vừa đóng cửa phòng lại, vẻ niềm nở của cô nàng liền biến mất, thay vào đó là cái nhăn mặt.[r]Nếu tôi mà là chủ nhân thật, tôi xin kiếu cô hầu gái đáng sợ này.[p]
[舜]「Hẹn hò đi. Dù sao thì trên danh nghĩa chúng ta cũng làm cùng chỗ mà.」[p]
#蕾
Tsubomi「Cái gì mà danh nghĩa với chả bí mật, đừng có nói kiểu kỳ quặc thế![r]Tiệm Reflex đâu phải là chỗ làm mấy trò mờ ám, công việc của tôi là giúp khách hàng thấy khỏe khoắn hơn mà!」[p]
[舜]「Đừng có giận thế chứ. Anh biết rồi mà...!」[p]
#蕾
Tsubomi「Nếu muốn hẹn hò thì mua thêm dịch vụ đi. Ở đây có cả gói hẹn hò ngoài tiệm đấy.」[p]
Trên bảng thực đơn mà Tsubomi chỉ vào quả thực có dòng chữ 『Hẹn hò ngoài tiệm』.[p]
Đã có cái dịch vụ này rồi mà còn khăng khăng đây là tiệm massage thì thật khiên cưỡng, nhưng tôi đành cố nhịn không nói ra.[p]
[舜]「Được thôi, anh cũng vừa nhận lương làm thêm mà. Cho một gói hẹn hò đi.」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif" wait="false"]Tsubomi「Hả? Tiền lương mẹ trả mà anh lại đem phung phí thế này, nghĩ thôi đã thấy bực mình rồi.」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]Tsubomi「Mà thôi kệ đi. Nhờ anh mua thêm dịch vụ mà lương tôi cũng tăng lên. Tôi đi chuẩn bị đây.[r]5 phút nữa tôi quay lại đón, ngồi đợi đi nhé?」[p]
Bỏ lại một câu lạnh lùng như mọi khi, Tsubomi bước ra khỏi phòng.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="event/tubomi1.png"  ]
[tb_cg  id="cg_tubomi1"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*date"  ]
[tb_start_text mode=1 ]
[舜]（Đ-Đây thật sự là hẹn hò sao?）[p]
Lẽo đẽo theo sau một cô gái cứ phăm phăm bước đi phía trước thế này gọi là hẹn hò sao.[r]Nếu là tôi, tôi sẽ đặt tên cho nó là 『Trải nghiệm game nhập vai cổ điển』.[p]
Tsubomi dừng lại trước hết cửa hàng này đến cửa hàng khác, liên tục cầm quần áo lên xem.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#蕾
Tsubomi「Cái này dễ thương quá~! Hay là mua luôn nhỉ.」[p]
[舜]「Cô cần nhiều quần áo thế cơ à? Nãy giờ mua mấy bộ rồi đấy.」[p]
#蕾
Tsubomi「Eo ôi... Câu đó lọt top 10 những câu không nên nói với con gái đấy.」[p]
[舜]「Không, tại vì...」[p]
#蕾
Tsubomi「Chi phí cần thiết! Tôi mua để mặc đi thử vai mà.」[p]
Tsubomi thoáng lộ vẻ mặt như thể lỡ lời, rồi lập tức thở dài.[p]
#蕾
Tsubomi「Định không nói rồi cơ... nhưng thà nói ra còn hơn bị coi là phung phí.」[p]
#蕾
Tsubomi「Tôi muốn làm người mẫu. Từ nhỏ tôi đã muốn bước chân vào giới giải trí rồi...」[p]
#蕾
Tsubomi「Thế nên tôi đang đi thử vai khắp nơi để được vào công ty quản lý.」[p]
[舜]「Chà, lần đầu tiên anh nghe đấy.」[p]
#蕾
Tsubomi「Đương nhiên rồi? Tôi đã kể cho ai nghe bao giờ đâu. Với lại tôi cũng chưa trúng tuyển lần nào...」[p]
#蕾
Tsubomi「Còn chưa bước được bước đầu tiên thì sao dám nói với ai chứ.」[p]
Tsubomi nở một nụ cười tự trào, xen lẫn nét buồn bã.[p]
Có vẻ như cô ấy đang cảm thấy bực bội và bất lực với bản thân vì mãi không trúng tuyển.[p]
[舜]「Việc cô bắt tay vào hành động đã là bước đầu tiên rồi còn gì.」[p]
#蕾
Tsubomi「Cảm ơn anh... nhưng không trúng tuyển thì cũng vô nghĩa thôi.」[p]
#蕾
Tsubomi「Tôi thừa biết là có đầy người dễ thương hơn tôi.[r]Chính vì thế nên tôi mới phải thể hiện cá tính riêng của mình chứ.」[p]
[舜]「Hửm? Nếu vậy thì trang phục đi thử vai nên đơn giản một chút thì tốt hơn chứ nhỉ?」[p]
#蕾
Tsubomi「Đồ dễ thương thì tốt hơn chứ sao? Người ta còn thấy được cá tính của mình nữa.」[p]
[舜]「Người ta muốn xem sức hút của bản thân cô mà, nên đừng mặc đồ quá lộng lẫy thì hơn.」[p]
Tsubomi khẽ rên lên "Ưm..." ra chiều suy nghĩ.[p]
#蕾
Tsubomi「Mà thôi, tôi sẽ nghe để tham khảo. Về nhà tôi sẽ tìm hiểu thử xem.」[p]
#蕾
Tsubomi「Vậy thì sang cửa hàng tiếp theo thôi! Anh đi theo cũng được đấy.」[p]
[舜]「Cô... ! Đây là dịch vụ của tiệm đấy nhé!」[p]
Dù cự nự như vậy, nhưng tôi vẫn ngoan ngoãn đi theo sau cô hầu gái kiêu ngạo ấy.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_tubomi1=1"  name="EV_tubomi1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  