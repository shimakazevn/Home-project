
[_tb_system_call storage=system/_EV_OP2.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*save

[cm  ]
[jump  storage="room_yoru_save.ks"  target="*op"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
*top

[wait  time="2000"  ]
[tb_show_message_window  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="back_room0.png"  ]
[tb_start_text mode=1 ]
[舜]「Trước hết, cần phải nắm rõ lịch trình sinh hoạt của Nagi đã──」[p]
Nagi luôn ra khỏi nhà vào một giờ cố định trong những buổi sáng ngày thường.[r]Hình ảnh đó có sự đều đặn như một chiếc đồng hồ được lắp ráp tinh xảo vậy.[p]
Thời gian cô ấy đi xuống cầu thang chung cư là vào khoảng từ 7 giờ 15 đến 7 giờ 30 sáng.[r]Ngay cả những ngày cô ấy ngủ nướng một chút, thời gian cũng không chênh lệch quá nhiều.[p]
Bước chân cô ấy nhẹ nhàng, trên gương mặt toát lên một vẻ thanh tao nào đó.[p]
Ở khoảng sân giữa chung cư, những cư dân đang dắt chó đi dạo hay những người già ra lấy báo đều khẽ chào cô ấy.[r]Nagi dịu dàng gật đầu đáp lại, rồi cứ thế đi khuất về hướng ga Kaminami, đó là thói quen hằng ngày của cô ấy.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_dantimae_hiru.png"  ]
[tb_start_text mode=1 ]
Trước đây, khi những người nội trợ hàng xóm đứng tán gẫu,[r]tôi đã tình cờ nghe được về nơi cô ấy đến.[p]
"Cô Nagi ấy à, đang làm việc ở Bệnh viện Đa khoa Kaminami đấy. Hình như là trợ lý y tá thì phải."[r]Họ đã nói như vậy.[p]
Nội dung cuộc trò chuyện đó tuy mơ hồ, nhưng vì có nhiều người dân cùng nói như vậy nên độ tin cậy rất cao.[p]
Một cuộc sống quy củ, đi làm một cách bình lặng.[r]Những điều đó càng làm cho hoàn cảnh ẩn giấu phía sau cô ấy trở nên bí ẩn hơn.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_start_text mode=1 ]
[舜]「Haa, khốn kiếp……sao lại đông người thế này cơ chứ……」[p]
Kim đồng hồ đã điểm qua 8 giờ sáng.[r]Đường phố tấp nập những người đi làm đang hối hả ngược xuôi.[p]
Tôi rẽ sang một con đường khác để tránh đám đông, hướng bước chân về phía con phố thưa thớt người qua lại.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="back_massajiten.png"  ]
[tb_start_text mode=1 ]
[舜]（Ở chỗ thế này……có tiệm massage từ bao giờ vậy? [r]Quanh khu này, các hàng quán thay đổi liên tục thật đấy.）[p]
Ánh mắt tôi tình cờ dừng lại ở cửa kính của tiệm, trên đó có dán một tờ giấy ghi "Tuyển nhân viên".[p]
[舜]（Một tiệm nhỏ bé ấm cúng nhỉ. Không lẽ chủ tiệm tự làm một mình sao?[r]Nếu là một bà lão nào đó thì mình cũng thấy thoải mái hơn.）[p]
？？？「Hửm? Ủa? Anh đang tìm việc làm thêm à?」[p]
[舜]「A, không, tôi thì──」[p]
Bị bắt chuyện bất ngờ, tôi trợn tròn mắt quay lại nhìn thì──[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="500"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
Người đang đứng đó──không sai vào đâu được. Chính là gã đàn ông đã ở cùng với Nagi.[p]
Tại sao, tên này là ai, hàng loạt dấu hỏi chấm bùng nổ trong đầu tôi.[p]
？？？「Tôi không làm việc ở đây đâu. Mẹ tôi mới là chủ tiệm này.」[p]
Giọng điệu của hắn nhẹ nhàng, tỏ vẻ thân thiết một cách kỳ lạ.[p]
？？？「Không phải tiệm massage mờ ám gì đâu. Tuy tôi là con trai nói ra thì hơi kỳ, nhưng tay nghề của bà ấy chắc chắn lắm.」[p]
？？？「Tôi là Naruse Hayato. Xin lỗi vì đã vồ vập nhé.」[p]
Gã đàn ông xưng tên là Hayato mỉm cười mở cửa tiệm massage cho tôi.[r]Đến cả cái tên cũng nghe bảnh bao thế cơ à, tôi lén tặc lưỡi.[p]
Hayato「Cậu đang tìm việc làm thêm phải không? [r]Nếu có con trai đến làm, chắc mẹ tôi cũng sẽ vui lắm đấy.」[p]
Bất giác tôi suýt buột miệng thốt ra "Không, tôi không phải", nhưng──đã vội nuốt lại lời nói đó.[p]
Phải bình tĩnh lại. Đây chẳng phải là cơ hội để tìm hiểu lai lịch của tên này sao.[r]Kìm nén sự thôi thúc muốn đuổi theo Nagi, tôi quyết định hùa theo lời của Hayato.[p]
Hayato「Gần đây mẹ tôi đang khổ tâm vì có nhiều khách hàng kỳ quặc hiểu lầm về dịch vụ trị liệu.[r]Có con trai ở đây thì mấy tên biến thái cũng khó mà giở trò được đúng không?」[p]
Dù có chút bối rối trước cách nói chuyện nhẹ nhàng và điệu bộ suôn sẻ đó,[r]tôi vẫn ậm ừ gật gù, rụt rè bước theo Hayato vào trong tiệm.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeInLeft"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[chara_hide  name="kyara_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_hayato_sabun"  time="0"  wait="false"  pos_mode="false"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[mask_off  time="1000"  effect="fadeOutLeft"  ]
[tb_start_text mode=1 ]
[舜]（Thôi thì mình cũng chẳng có gì để mất...）[p]
Hayato「Mẹ ơiiiii. Có người đang xem tờ thông báo tuyển nhân viên này.」[p]
[_tb_end_text]

[call  storage="character.ks"  target="*2kyara_hayatorinko"  ]
[call  storage="BGM.ks"  target="*rinko"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_op_rinko{number}.mp3" number=1]
[vostart]

;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_op_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
？？？「Hả? Thật sao?」[p]
Một người phụ nữ xinh đẹp với phong thái điềm đạm bước ra.[p]
[舜]（Hả? Người đẹp thế này mà lại là mẹ của tên đó á...?）[p]
Tuy có thể nhận thấy dấu vết tuổi tác ở khóe mắt, nhưng không thể tin được bà ấy lại cùng độ tuổi với mẹ tôi.[r]Người phụ nữ mỉm cười nói "Mời cậu vào lối này" rồi dẫn tôi vào căn phòng bên trong.[p]
#凛子
？？？「Hayato tự nhiên lại gọi cậu lại nhỉ. Xin lỗi cháu nhé.」[p]
#凛子
？？？「Cô là Naruse Rinko, chủ của cửa tiệm này.」[p]
[舜]「V-vâng. Cháu là [日高] [舜].」[p]
#凛子
Rinko「Vậy à, cháu là [舜]. Cái tên hay quá... Cháu đang tìm việc làm thêm sao?」[p]
[舜]「Vâng... Cháu có chút chuyện nên đã nghỉ việc... Tạm thời cháu định tìm một công việc làm thêm ạ.」[p]
#凛子
Rinko「Thế à... Cháu giỏi thật đấy, đã lập tức đi tìm việc ngay rồi.」[p]
Ngay từ bên cạnh, một cô gái trẻ buộc tóc hai bên thò mặt ra.[p]

[_tb_end_text]

[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="500"  ]
[call  storage="character.ks"  target="*3kyara_hayatorinkotubomi"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
Gương mặt trông có vẻ đanh đá, nhưng cũng là một thiếu nữ xinh đẹp đến ngỡ ngàng.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif" wait="false"]？？？「Cỡ tuổi anh hai mà. Thế mà không có việc làm à? Có vẻ thảm hại nhỉ?」[p]
[舜]（Hả? Con nhỏ này bị gì vậy...）[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_02c.gif" wait="false" ]Rinko「Thôi nào! Tsubomi. Đừng nói thế chứ. Ai cũng có hoàn cảnh riêng mà con.」[p]
#凛子
Rinko「Cô xin lỗi nhé [舜]. Đứa trẻ này vẫn chưa hiểu chuyện nên còn bướng bỉnh lắm.」[p]
[舜]（Là con gái của chủ tiệm à. Nhắc mới nhớ, đôi mắt có vẻ giống nhau...）[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif" wait="false"  ]Rinko「Cô cũng nhờ con gái phụ giúp. Vì tiệm chưa có nhân viên làm thêm.」[p]
Hayato「Mẹ tôi mới mở tiệm riêng. Dạo này bận quá nên không xuể việc.」[p]
#凛子
Rinko「Đúng vậy. Nếu cháu có thể giúp dọn dẹp giường chiếu hay giặt khăn thì cô vui lắm.」[p]
#凛子
Rinko「Khi nào quen việc, nếu cháu có thể tiếp khách và làm massage luôn thì tốt quá.」[p]
[舜]（Ư... Tiếp khách à. Khoản này mình muốn né nhất đây）[p]
#蕾
Tsubomi「Hả? Người này có ổn không đấy? Trông u ám thế nào ấy? Tiếp khách gì chứ──」[p]
[舜]「L-Làm được. Xin hãy giao cho tôi.」[p]
Cảm thấy tự ái, tôi vô tình gật đầu đồng ý.[p]
Ngay lập tức, khuôn mặt cô Rinko sáng bừng lên.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false" ]Rinko「Thật sao? May quá. Vậy lát nữa cháu cho cô xin thông tin liên lạc nhé?」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif" wait="false"][舜]（Chết tiệt... lỡ miệng rồi...）[p]
Tsubomi vẫn bĩu môi nhìn tôi chằm chằm.[p]
Giả vờ như không để ý, tôi tiếp tục lắng nghe câu chuyện của cô Rinko──[p]
[_tb_end_text]

[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="EV_OP_map.ks"  target="*top"  ]
