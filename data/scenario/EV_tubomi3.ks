
[_tb_system_call storage=system/_EV_tubomi3.ks]

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
[call  storage="character.ks"  target="*tubomi_meido_nigate"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_date3_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
Tsubomi「Rồi, xong. Hôm nay là lịch trình hẹn hò đúng không?」[p]
Tôi đã hoàn toàn quen với việc lui tới chỗ của Tsubomi.[r]Chỉ buồn một nỗi là tôi phải tốn một khoản tiền kha khá cho việc đó.[p]
[舜]「Bé Amelia muốn làm gì nào?」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"] Tsubomi「Nhà hàng gia đình!」[p]
[舜]（Em ấy đói bụng rồi sao? Mà thôi kệ vậy...）[p]

[_tb_end_text]

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="back_famiresu2.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  ]
[call  storage="character.ks"  target="*tubomi_hudangi"  ]
[tb_start_text mode=1 ]
Vừa bước vào nhà hàng gia đình, chúng tôi đã được nhân viên dẫn đến dãy ghế sofa.[p]
Tsubomi ngồi xuống với vẻ mặt hớn hở, ngay lập tức chìa cuốn menu ra cho tôi.[p]
#蕾
Tsubomi「May quá nhà hàng đang vắng. Có ngồi lâu chắc cũng không làm phiền ai đâu nhỉ.」[p]
[舜]（Thật bất ngờ, bản chất em ấy cũng nghiêm túc phết nhỉ.）[p]
[舜]「Em định ăn thật nhiều hay sao vậy...?」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"] Tsubomi「Làm gì có chuyện đó chứ? Em là người mẫu mà. Em sẽ gọi~... salad và đồ uống.」[p]
Em ấy thao tác trên màn hình cảm ứng một cách điêu luyện và hoàn tất việc gọi món.[r]Sau đó, em ấy liền lấy giấy bút ra để lên bàn.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"] Tsubomi「Em muốn viết đơn đăng ký thử vai. Ở nhà thì sẽ bị mẹ nhìn thấy mất.[r]Vừa ăn vừa viết cũng được, anh đợi em chút nhé.」[p]
[舜]「Thế thì cũng được thôi...」[p]
#蕾
Tsubomi「Ưm~... Sở trường là... nhảy múa chăng? Với lại tạo dáng nữa.[r]Sở thích là gì nhỉ? Chắc là nấu cháo điện thoại với bạn bè.」[p]
[舜]（Khoan khoan... Viết vào đơn đăng ký thử vai như thế thì chẳng phải là quá tầm thường sao?）[p]
[舜]「Này nhé... Dù sao anh cũng từng viết sơ yếu lý lịch bừa phứa rồi nên anh hiểu lờ mờ thế này.」[p]
[舜]「Chẳng phải em nên viết sao cho người ta muốn gặp em ở vòng phỏng vấn thử vai hay sao?」[p]
#蕾
Tsubomi「A... Nghe anh nói mới để ý... Vậy sở trường là massage thư giãn thì sao? [r]Nhưng mà viết là đang luyện tập ở tiệm của mẹ có được không nhỉ?」[p]
[舜]「Thế chẳng phải thú vị lắm sao? Người ta chắc chắn sẽ muốn nghe chi tiết hơn đấy.」[p]
#蕾
Tsubomi「Công nhận là vậy. Thế thì sở thích cũng nên đổi thành cái khác nhỉ.」[p]
[舜]「Đúng thế, nếu không thể hiện được điểm mạnh của bản thân thì sẽ không được chọn đâu.」[p]
#蕾
Tsubomi「Hả... Nhắc mới nhớ, hình như anh hai cũng từng nói vậy.[r]Nhưng em thì không được lanh lẹ như anh hai.」[p]
[舜]「Cứ thành thật là được rồi. Dù có nói dối hay làm bộ làm tịch thì lúc bị lộ hậu quả sẽ rất lớn đấy.」[p]
[舜]「Cứ là chính mình thôi. Nếu chịu khó tìm kiếm thì chắc chắn sẽ có nơi cần đến em mà.」[p]
Đó cũng chính là những lời mà tôi muốn tự nhủ với bản thân mình.[p]
So với việc oán hận thế giới và nhốt mình trong phòng, thì ra ngoài thế này khiến tâm trạng thoải mái hơn đôi chút.[r]Tsubomi vui vẻ gật đầu liên tục, "Ra là vậy, đúng thế nhỉ".[p]
#蕾
Tsubomi「Để em suy nghĩ thêm một chút...」[p]
Tsubomi bĩu môi, có vẻ như đang nghiêm túc suy nghĩ về phần giới thiệu bản thân.[r]Khuôn mặt ngây thơ không chút phòng bị, như thể chẳng còn bận tâm đến xung quanh của em ấy khiến tôi nhìn đến ngẩn ngơ.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[bg  time="2500"  method="fadeInUp"  storage="event/tubomi3.png"  ]
[tb_cg  id="cg_tubomi3"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#蕾
Tsubomi「Này...」[p]
[舜]「Uwa, g-gì thế?」[p]
Tôi bắt gặp ánh mắt của Tsubomi đang nhìn về phía mình, vội vàng đảo mắt đi chỗ khác.[r]Tôi đã chuẩn bị tinh thần thể nào cũng bị mắng "Đừng có nhìn" cho xem. Thế nhưng...[p]
#蕾
Tsubomi「Tại sao anh lại suy nghĩ cho em đến mức đó?」[p]
Trước ánh mắt không thể dối lừa hay qua mặt ấy, tôi cũng bất giác ngồi thẳng lưng lên.[p]
[舜]「Thấy người đang cố gắng ngay trước mắt thì ai mà chẳng muốn cổ vũ chứ.」[p]
#蕾
Tsubomi「Hả... Ra là vậy. Vậy sao.」[p]
Tsubomi khẽ mỉm cười, rồi lại tiếp tục cắm cúi vào tờ đơn đăng ký thử vai.[p]
Và rồi──[p]
#蕾
Tsubomi「Xong rồi! Nhờ có anh mà em nghĩ đây sẽ là một tờ đơn đăng ký thử vai rất ấn tượng đấy.」[p]
Em ấy nở một nụ cười hồn nhiên với tôi.[r]Tsubomi nhẹ nhàng cất tờ đơn đăng ký thử vai vào cặp, rồi ngậm lấy ống hút.[p]
#蕾
Tsubomi「Em sẽ xuất hiện ầm ầm trên các buổi trình diễn thời trang và tạp chí cho xem.[r]Anh có thể tự hào khoe khoang là người quen của em đấy nhé?」[p]
[舜]「Ờ, anh sẽ mong chờ xem sao.」[p]
#蕾
Tsubomi「A, anh đang không tin đúng không~? Chuyện đó sẽ trở thành hiện thực cho xem!」[p]
Ngắm nhìn nụ cười của Tsubomi, tôi bất giác cảm thấy em ấy thật đáng yêu.[p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;体験版/6月末まで
[if exp="f.taikenban == 1"]
[jump storage="a_taikenban.ks" target="*END_taikenban"]
[endif]
[_tb_end_tyrano_code]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_tubomi3=1"  name="EV_tubomi3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  