
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
[舜]（Nhắc mới nhớ, mình đang có sẵn viên nang Spirytus）[p]
[舜]（Bây giờ mà lén bỏ vào đồ uống của em ấy thì chắc không bị phát hiện đâu…）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Có sử dụng viên nang Spirytus không? (Số lượng sở hữu: [emb exp="f.item_supiritasu"])
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_tubomi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Sử dụng"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_tubomi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không sử dụng"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
[舜]（Thôi bỏ đi, lần này không dùng vậy）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
・・・Cảm giác như tôi đã thân thiết hơn với Tsubomi một chút[p]
Đã thanh toán tiền ăn tối 　[font color="yellow"]-￥5000[resetfont][p]
[font color="yellow"]Tâm trạng hưng phấn đã tăng lên[resetfont][p]
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
[舜]（Canh lúc em ấy rời khỏi bàn để ra tay xem sao…）[p]
[舜]（Chỉ cần đổ phần thuốc bên trong viên nang vào… thế là xong.[r]Nó hòa tan vào nước nhanh đến bất ngờ. Thế này thì không sợ bị lộ đâu）[p]
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
#Tsubomi
Tsubomi「Lần tới em muốn đi ăn thử mấy chỗ có quầy salad bar cơ. Rồi sau đó ăn thả ga cho đã luôn~」[p]
Tsubomi hào hứng nói liến thoắng không ngừng.[r]Xem ra lượng Spirytus tôi lén pha vào nước lúc nãy đã bắt đầu phát huy tác dụng trong cơ thể em ấy.[p]
#Tsubomi
Tsubomi「Mà này, ước gì ăn bao nhiêu cũng không bị béo lên thì tốt biết mấy ha~」[p]
[舜]「Trông mũm mĩm đầy đặn một chút cũng dễ thương mà?」[p]
#Tsubomi
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]Tsubomi「A ha ha ha! Đó là do anh tự nghĩ thế thôi đúng hông? Fufufu~」[p]
Đôi tai em đỏ ửng, ánh mắt đờ đẫn mơ màng. Rõ ràng là em đã say mèm rồi.[p]
Chẳng mấy chốc, giọng nói của em bắt đầu nhịu đi, bước chân cũng loạng choạng không vững.[p]
#Tsubomi
Tsubomi「Ủa? Lạ ghê… mặt đất cứ bồng bềnh trôi nổi thế này…」[p]
[舜]（Đúng là công hiệu của viên nang Spirytus ghê gớm thật…）[p]
Lúc nãy mình nhớ là đã pha liều lượng khá ít.[r]Nhưng với vóc dáng nhỏ nhắn của em ấy thì chừng đó cũng đủ khiến em say không biết trời trăng mây gió gì rồi.[p]
[舜]「Aida, nguy hiểm quá kìa. Em thấy trong người khó chịu lắm à?」[p]
#Tsubomi
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]Tsubomi「Em hổng có sao hếttt á. Ưm fufu, thấy tâm trạng thoải mái dễ chịu lắm cơ~」[p]
Tuy nhiên ngay sau đó, chân em như bủn rủn không bước nổi nữa, tôi liền vội đỡ lấy thân hình mảnh mai của em.[p]
[舜]「Tìm chỗ nào nghỉ chân một lát nhé…」[p]
#Tsubomi
Tsubomi「Đừng có mà rủ vào khách sạn đấy nhá~? Em không thèm vào khách sạn với cái đồ như anh đâuuu~!」[p]
[舜]（Chậc… Mình đang tính dẫn em ấy vào khách sạn thật. Riêng khoản này thì tỉnh táo gớm）[p]
[舜]「Anh biết rồi. Tiệm Refle ở ngay gần đây thôi. Qua đó đi. Giờ này quán đóng cửa nghỉ rồi nên không sao đâu」[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="H3.mp3"  ]
[tb_start_text mode=1 ]
Tôi bật đèn trong quán lên rồi cùng Tsubomi bước vào phòng riêng.[p]
Nơi đây vốn là chỗ phục vụ các dịch vụ theo quy định cho khách. Nhưng giờ này thì chẳng còn bất kỳ quy tắc hay giới hạn nào nữa.[r]Đỡ Tsubomi đang hoàn toàn mềm nhũn nằm xuống đệm, một mùi hương ngọt ngào phả ra ngào ngạt.[p]
[舜]「Tới nơi rồi. Nè, uống nước đi」[p]
Tôi đưa chai nước khoáng có sẵn trong tiệm cho Tsubomi.[p]
Với vẻ mặt mơ màng đờ đẫn, em uống từng ngụm rồi thở dài một hơi thật sâu.[p]
#Tsubomi
Tsubomi「Hình như em bị say thì phải… Kỳ lạ ghê, rõ ràng em đâu có uống rượu đâu ta」[p]
[舜]「Chắc là quán người ta đưa nhầm đồ uống có cồn đấy」[p]
#Tsubomi
Tsubomi「Thôi đi mà~. Khó chịu quá… người em nóng ran hết cả lên rồi」[p]
Bị đôi mắt long lanh ngấn lệ của Tsubomi nhìn chằm chằm, tôi cũng đã chạm tới giới hạn kiềm chế của mình.[p]
[舜]「Thế thì phải cởi bớt quần áo ra thôi」[p]
#Tsubomi
Tsubomi「Hổng chịu đâuuu, ơ, kìa, khoan đã…」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tôi đè người lên thân thể mảnh mai của em rồi kéo áo em lên.[p]
Nội y cũng bị xô lệch theo, đôi gò bồng đào mềm mại nảy ra trắng nõn nà.[p]
#Tsubomi
Tsubomi「Đã bảo là không đượccc mà…」[p]
Em vung vẩy tay chân phản kháng một cách yếu ớt, nhưng với một cô gái đã say mèm thì sức lực chẳng đủ để đẩy tôi ra.[p]
Làn da trắng ngần trên thân hình mảnh mai nuột nà. Giờ thì mình nên thưởng thức em thế nào đây──[p]
[_tb_end_text]

[jump  storage="H_tubomi_supiritasu.ks"  target="*top"  ]
*back

[bg  time="2000"  method="crossfade"  storage="back_rihure_sekkyaku.png"  ]
[tb_start_text mode=1 ]
#Tsubomi
Tsubomi「Haa♡ Haa♡ Haa♡ Không chịu nổi nữa rồi…♡」[p]
Toàn thân run rẩy, Tsubomi chỉ còn biết lắc lắc đầu qua lại trong cơn cực khoái.[p]
Và rồi em nhắm nghiền mắt lại, bắt đầu chìm vào giấc ngủ say với nhịp thở khe khẽ.[p]
[舜]（Ngủ mất tiêu rồi à. Dù vẫn muốn chơi đùa thêm chút nữa… mà thôi kệ đi）[p]
Cô gái bình thường vốn rất điệu đà chăm chút ngoại hình, nay lại phơi bày toàn bộ cơ thể trần trụi trước mặt tôi.[p]
Hai chân dạng ra buông thả, nơi khe rãnh nhạy cảm vẫn còn ướt đẫm dịch nhờn… Chỉ bấy nhiêu thôi cũng đã quá đủ thỏa mãn rồi.[p]
Tôi rút điện thoại ra, chụp lại một bức ảnh duy nhất của cô nàng nuôi mộng làm người mẫu này.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
・・・Cảm giác như tôi đã thân thiết hơn với Tsubomi một chút[p]
Đã thanh toán tiền ăn tối 　[font color="yellow"]-￥5000[resetfont][p]
[font color="yellow"]Tâm trạng hưng phấn đã tăng lên[resetfont][p]
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
Tiếng chuông tin nhắn vang lên, tôi mở màn hình điện thoại ra──[p]
『Tối qua em chẳng nhớ gì cả. Anh không làm trò gì bậy bạ đấy chứ?』[p]
Tin nhắn được gửi đến từ Tsubomi.[p]
[舜]「Quả nhiên là em ấy không nhớ gì thật」[p]
『Anh đâu có làm gì. Thấy em bảo buồn ngủ nên để em ngủ thôi mà』[r]Tôi nhắn lại không chút do dự. Người cũng đã lau sạch, quần áo cũng đã mặc lại đàng hoàng. Chẳng còn bằng chứng nào hết…[p]
Ngoại trừ bức ảnh nằm trong bộ sưu tập điện thoại của tôi.[p]
Tôi mở lại bức ảnh đã chụp tối qua và ngắm nhìn nó thêm một lần nữa.[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_supiritasu_tubomi=2"  name="itemEV_supiritasu_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1500"  ]
[return  ]
