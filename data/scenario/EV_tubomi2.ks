
[_tb_system_call storage=system/_EV_tubomi2.ks]

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
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_date2_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#蕾
Tsubomi「Hà, hôm nay mệt rã rời luôn~」[p]
Rốt cuộc thì câu chào "Kính chào Chủ nhân đã về" cũng biến mất luôn rồi.[r]Tsubomi bước vào phòng với vẻ mặt chán nản tột độ.[p]
[舜]「Hôm nay có cô hầu gái chẳng thân thiện chút nào đến phục vụ nhỉ, có đúng là bé Amelia không đấy?」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif" wait="false"]Tsubomi「Khừ... Kính chào Chủ nhân đã về. Ngài lại về nữa rồi à~」[p]
[舜]「Đừng có nói cái kiểu như bình thường anh không về nhà chứ...」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]Tsubomi「Chủ nhân cũng phải tự hiểu đi chứ.」[p]
[舜]「Anh đang được cô Rinko hướng dẫn thực hành massage mà. Anh phải học hỏi nhiều dịch vụ khác nhau chứ.」[p]
Thật ra tôi chỉ đến để nhìn mặt Tsubomi thôi... nhưng tôi cứ thử bịa ra một lý do nghe có vẻ hợp lý xem sao.[r]Tsubomi ngây thơ gật gù ra chiều đã hiểu "Ra là vậy".[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif" wait="false"]Tsubomi「Mẹ tôi đẹp thì đẹp thật đấy. Nhưng anh đừng có làm trò gì kỳ quặc đấy nhé?」[p]
[舜]「A-Anh biết rồi mà. Anh đang làm việc nghiêm túc cơ mà.」[p]
Tsubomi xịt cồn lên tay tôi rồi bắt đầu massage tay.[r]Có vẻ như khi tập trung, môi dưới của cô ấy sẽ hơi trề ra. Khám phá ra một nét đáng yêu này, tôi khẽ nhếch mép cười thầm.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]Tsubomi「Chuyện đó thì tôi biết... Mẹ khen anh suốt mà. Mẹ hay nhắc đến anh lắm.」[p]
#蕾
Tsubomi「Mẹ bảo anh đã hứa là tuyệt đối sẽ giữ lời, giải thích một lần là nhớ ngay, lại còn chăm chỉ nữa……」[p]
#蕾
Tsubomi「Với lại, dạo này trông mẹ có vẻ vui lắm... Từ lúc anh đến làm, mẹ cứ như được tiếp thêm sức sống ấy.」[p]
#蕾
Tsubomi「Đối với tôi thì anh đúng là tởm lợm thật.[r]Nhưng mà... cảm ơn anh nhé. Lâu lắm rồi tôi mới thấy mẹ vui vẻ như vậy.」[p]
Vẫn không rời mắt khỏi lòng bàn tay tôi, cô ấy khẽ mỉm cười.[r]Không hiểu sao tự dưng tôi lại thấy xấu hổ, chưa kịp suy nghĩ thì lời nói đã tuôn ra khỏi miệng──[p]
[舜]「Nhân tiện cảm ơn thì cô mút cu cho anh luôn cũng được đấy?」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif" wait="false"]Tsubomi「Hả?」[p]
[舜]（Khỉ thật... lỡ đùa quá trớn rồi... Kiểu gì cũng bị ăn chửi cho xem──）[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]Tsubomi「Được thôi.」[p]
Lần này đến lượt tôi phải thốt lên "Hả?".[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]Tsubomi「Nh-Nhưng anh phải giữ bí mật với tiệm đấy... Với lại anh phải trả thêm tiền boa cho tôi nữa.」[p]
Không dám nhìn thẳng vào mắt tôi, cô ấy ấp úng với vẻ mặt ngượng ngùng.[r]Được chứng kiến bộ dạng lần đầu tiên cô ấy thể hiện này... khiến tôi hưng phấn không chịu nổi.[p]
#蕾
Tsubomi「Tôi cần tiền để đi thử vai. Tôi cũng định đăng ký lớp học kỹ năng nữa.」[p]
#蕾
Tsubomi「Thế nên... tôi đồng ý. Anh cởi đồ ra đi.」[p]
Sợ Tsubomi đổi ý, tôi vội vàng đứng dậy tuột quần dài và quần lót xuống.[r]Dương vật đã rạo rực từ nãy giờ đang cương cứng chực chờ.[p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#蕾
Tsubomi「C-Cái này á...」[p]
[舜]「Đúng thế, cô phải liếm nó đấy. Sao, sợ rồi à?」[p]
#蕾
Tsubomi「Làm gì có chuyện đó...!」[p]
Lập tức sưng sỉa mặt mày, Tsubomi ngậm phập lấy phần đỉnh dương vật.[r]Ngay sau đó, một vật cứng cạ vào khiến tôi bất giác giật nảy mình.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/tubomi2.gif"  ]
[tb_cg  id="cg_tubomi2"  ]
[call  storage="BGM.ks"  target="*love2"  ]
[playse  volume="60"  time="2000"  buf="0"  storage="fera1.mp3"  loop="true"  fadein="true"  ]
[tb_start_text mode=1 ]
[舜]「Ây da, đừng có cắn chứ...!」[p]
#蕾
Tsubomi「Biết làm sao được... Lần đầu của tôi mà. Ọe, mùi vị kỳ quá... Đầu lưỡi cứ tê rần mà còn đắng nữa.」[p]
Dù còn vụng về, nhưng cô ấy đã bắt đầu thò lưỡi ra liếm láp phần quy đầu và rãnh khấc.[p]
Cảm giác ấm áp từ đầu lưỡi truyền đến trực tiếp.[r]Sự nhồn nhột dễ chịu khiến tôi buột miệng thở hắt ra.[p]
[舜]「Ưm, a... sướng quá.」[p]
#蕾
Tsubomi「Chụt, chụt, ưm, thật không? Vậy tôi làm thêm cho anh nhé... ưm.」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
Tsubomi không chút do dự há miệng ngậm trọn lấy dương vật.[p]
Hơi nóng cùng cảm giác trơn ướt trong khoang miệng khiến tôi muốn nhũn cả hông, nhưng tôi vẫn cố cắn răng chịu đựng.[p]
Với tính cách của Tsubomi, nếu tôi mà gục ngã vì sung sướng thì chắc chắn sẽ bị cô nàng cười nhạo cho xem.[r]Tôi cố kìm nén, gắng gượng chống đỡ.[p]
#蕾
Tsubomi「Ưm, phù, chụt, anh thở hổn hển rồi kìa……」[p]
Có lẽ sự hưng phấn của tôi đã lây sang cô ấy.[r]Đôi má ửng đỏ của Tsubomi hóp lại, ra sức mút mạnh.[p]
Tôi bất giác đè đầu cô ấy xuống, ấn sâu vào tận gốc.[p]
#蕾
Tsubomi「Ưm, ọe... ngạt thở quá... ưm...」[p]
[舜]「Hà, hà... mút mạnh hơn nữa đi...」[p]
#蕾
Tsubomi「Ưm, anh có nói thế thì...」[p]
#蕾
Tsubomi「Ưm, chụt, chụt, sao tự dưng lại thấy đắng hơn thế này. Chùn chụt.」[p]
Tsubomi nhắm tịt mắt, bắt đầu tuyệt vọng lắc đầu qua lại.[p]
Âm thanh nhóp nhép dữ dội cùng tiếng thở dốc của cô ấy vang lên,[r]đến mức tôi cứ ngỡ những người xung quanh cũng có thể nghe thấy.[p]
Cảm giác mút mát vụng về ấy khiến tôi nhanh chóng chạm đến giới hạn──[p]
[舜]「...A, anh ra mất...!」[p]
Tôi ấn chặt vào tận sâu trong cuống họng... nơi mềm mại nhất, rồi thỏa sức phóng thích dục vọng.[p]
Tsubomi ứa nước mắt, nhọc nhằn nuốt chửng thứ chất lỏng đang ngậm trong miệng.[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[wait  time="2000"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「N-Này. Anh đã bảo là không cần phải nuốt đâu mà.」[p]
#蕾
Tsubomi「Đổi lại, em sẽ nhận tiền công đàng hoàng đấy nhé?」[p]
[舜]「Anh biết rồi...!」[p]
#蕾
Tsubomi「Với lại... Đây là lần đầu tiên em làm chuyện này đấy. Đừng có nghĩ là em làm thế với bất kỳ ai nhé.」[p]
Nhìn kỹ thì hai má Tsubomi đang đỏ bừng.[p]
Trái tim đập rộn ràng, tôi gật đầu hết lần này đến lần khác.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_tubomi2=1"  name="EV_tubomi2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
