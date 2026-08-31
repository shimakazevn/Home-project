
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
[舜]（Nhắc mới nhớ, mình đang có sẵn viên nang Spirytus）[p]
[舜]（Bây giờ mà lén bỏ vào đồ uống của cô ấy thì chắc không bị phát hiện đâu…）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Có sử dụng viên nang Spirytus không? (Số lượng sở hữu: [emb exp="f.item_supiritasu"])
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_rinko.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Sử dụng"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_rinko.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không sử dụng"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]（Thôi bỏ đi, lần này không dùng vậy）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
・・・Cảm giác như tôi đã thân thiết hơn với cô Rinko một chút[p]
Đã thanh toán tiền ăn tối 　[font color="yellow"]-￥5000[p]
Tâm trạng hưng phấn đã tăng lên[resetfont][p]
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
[舜]（Canh lúc cô ấy rời khỏi bàn để ra tay xem sao…）[p]
[舜]（Chỉ cần đổ phần bột bên trong viên nang vào… thế là xong.[r]Nó hòa tan vào nước nhanh đến bất ngờ. Thế này thì không ai nhận ra được đâu）[p]
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
Tôi vừa đỡ cô Rinko vừa mở cửa bước vào phòng trị liệu massage.[p]
Cơ thể cô ấy nóng bừng và rịn chút mồ hôi…[r]Có vẻ như viên nang Spirytus mà tôi hòa vào ly nước của cô Rinko lúc nãy đã bắt đầu phát huy tác dụng.[p]
#Rinko
Rinko「Xin lỗi em nhé, chị chỉ định uống một chút thôi, không ngờ lại say đến mức này」[p]
[舜]「Chắc là do hôm nay chị mệt mỏi trong người đấy ạ」[p]
#Rinko
Rinko「[舜]-kun, xin lỗi em nhé… người chị nặng lắm đúng không?」[p]
[舜]「Không nặng chút nào đâu ạ. Chị cứ tự nhiên dựa vào em đi」[p]
Trong lúc nói chuyện, men say dường như càng ngấm sâu hơn.[r]Đôi tai cô ấy đỏ bừng, hơi thở phả ra nóng hổi dồn dập.[p]
Dáng vẻ gợi tình đầy mê đắm ấy khiến cho hạ bộ của tôi bất giác cương cứng lên.[p]
[舜]「Em để chị nằm lên tấm đệm dành cho khách nhé? Được không chị?」[p]
#Rinko
Rinko「Ừm. Cảm ơn em nhé. Chị đứng cũng không vững nữa rồi… May mà có [舜]-kun ở đây giúp đỡ」[p]
Cảm nhận sự mềm mại từ bầu ngực và hương thơm nồng nàn của cô Rinko, tôi nhẹ nhàng đặt cô ấy nằm xuống đệm.[p]
#Rinko
Rinko「Phù… lạ thật đấy. Đầu óc chị cứ quay cuồng choáng váng…」[p]
Khuôn ngực đẫy đà phập phồng theo từng hơi thở dốc dồn dập.[p]
[舜]「Nước đây ạ. Là nước lọc ở quán, chị uống đỡ cho tỉnh người nhé」[p]
#Rinko
Rinko「A, cảm ơn em」[p]
Khi tôi mở nắp chai đưa qua, cô Rinko uống ừng ực từng ngụm nước lớn.[r]Vài giọt nước tràn ra từ khóe môi, chảy dọc theo cằm rồi rơi xuống rãnh ngực sâu hoắm.[p]
[舜]「Chị thấy đỡ hơn chưa ạ?」[p]
#Rinko
Rinko「Chị ổn rồi… [舜]-kun, quả nhiên em là một chàng trai thực thụ nhỉ.[r]Vừa khỏe mạnh mà bờ vai lại vững chãi nữa. Lúc được em dìu, tim chị cứ đập thình thịch mãi thôi」[p]
Tôi biết ngay ánh mắt ươn ướt của cô Rinko không chỉ đơn thuần là vì say rượu.[p]
Tương tự như đầu lưỡi lấp ló sau bờ môi, khóe mắt cô ấy cũng ửng lên một màu hồng quyến rũ.[p]
#Rinko
Rinko「Chị phải cảm ơn em mới được…」[p]
Cô Rinko nắm lấy tay tôi và đặt thẳng lên bầu ngực căng mọng của mình.[p]
Cảm giác mềm mại và nóng bỏng truyền thẳng vào lòng bàn tay tôi.[r]Chỉ cần dùng lực nhẹ một chút là những ngón tay như lún sâu vào bên trong.[p]
Không ngờ ngực phụ nữ lại mềm mại đến nhường này… Cơn xúc động và sự hưng phấn dâng trào mãnh liệt như từng đợt sóng cuộn.[p]
#Rinko
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Fufu, mặt [舜]-kun cũng đỏ bừng lên rồi kìa…… Em thấy xấu hổ sao?」[p]
[舜]「Em được phép làm thế này thật sao chị…」[p]
#Rinko
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Ưm… cứ làm những gì em thích đi? Có điều gì chưa biết chị sẽ dạy cho em tất cả♡」[p]
[舜]（M-Mọi chuyện suôn sẻ thuận lợi đến mức này thật sao!?）[p]
Dù đã từng tưởng tượng nhiều lần, nhưng khi đối diện với thực tế, những ngón tay tôi vẫn run rẩy kịch liệt.[p]
Liệu mình có thể thoải mái làm những gì mình muốn với cô Rinko đang say mèm thế này không?[p]
Đúng lúc ấy, ngón tay cô ấy khẽ vuốt ve phần hạ bộ của tôi.[r]Nơi đó đã cương cứng ngắc và nóng bừng lên từ bao giờ.[p]
#Rinko
Rinko「Ở cùng chị không làm em có hứng sao? Nhưng chỗ này của em… hình như đã sẵn sàng hết rồi kìa?」[p]
[舜]「Vì chị quá đỗi gợi cảm nên em hưng phấn không chịu nổi rồi」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#Rinko
Rinko「Fufu, vậy thì… lại đây với chị nào?」[p]
Gương mặt cô Rinko đỏ ửng say đắm, cô bắt đầu cởi bỏ từng lớp áo trên tấm đệm.[p]
Thân hình đẫy đà tuyệt mỹ lộ ra trước mắt, sự kiên nhẫn trong tôi cũng chính thức nổ tung──[p]
[_tb_end_text]

[jump  storage="H_rinko_supiritasu.ks"  target="*top"  ]
*H_back

[tb_start_text mode=1 ]
Tôi trao cho cô Rinko đang kiệt sức một nụ hôn nồng cháy.[r]Vừa tận hưởng dư vị mềm mại từ bờ môi ấy, tôi vừa thấm thía niềm hạnh phúc ngập tràn khi mọi chuyện diễn ra thành công vượt xa tưởng tượng.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
・・・Cảm giác như tôi đã thân thiết hơn với cô Rinko một chút[p]
Đã thanh toán tiền ăn tối 　[font color="yellow"]-￥5000[p]
Tâm trạng hưng phấn đã tăng lên[resetfont][p]
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
『Chị xin lỗi em nhé, tối qua chị say quá chẳng nhớ gì cả. Chị có làm phiền hay gây rắc rối gì cho em không?』[p]
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
[return  ]
