

[_tb_system_call storage=system/_EV_kyouaiEND_rinko.ks]

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
[bg  time="0"  method="crossfade"  storage="back_massajiten3.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="END.mp3"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_END2_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Sau khi hoàn tất việc đóng cửa tiệm, tắm rửa sạch sẽ mồ hôi và nghỉ ngơi một chút, sự tĩnh lặng lại bao trùm lấy phòng trị liệu.[p]
Ánh đèn được vặn nhỏ lại, trong không gian vẫn còn vương vấn hương thơm dịu nhẹ, tôi nằm ngửa ngắm nhìn trần nhà.[p]
Trong lúc tôi đang nằm ngửa đợi trong phòng trị liệu như mọi khi, cô Rinko trong tình trạng khỏa thân leo lên người tôi.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/rinko_kyouaiEND.png"  ]
[tb_cg  id="cg_rinko_kyouaiEND"  ]
[tb_start_text mode=1 ]
#Rinko
Rinko「Shun-kun, để em phải đợi rồi♡ Hôm nay mình cũng cùng nhau sướng thật nhiều nhé♡」[p]
[舜]「Cô Rinko đúng là rất thích làm tình nhỉ.」[p]
#Rinko
Rinko「Khc, là do Shun-kun đã dạy cho chị biết thế nào là sung sướng mà♡ Em sẽ lại làm cho chị nữa đúng không?」[p]
Từ biểu cảm của cô ấy, những cảm xúc không thể kìm nén bằng lý trí nữa đang dần tuôn trào.[p]
[舜]「Còn tùy xem chị Rinko có biết cách nài nỉ hay không đã nhé.」[p]
#Rinko
Rinko「Chị biết rồi, chị sẽ nài nỉ mà♡」[p]
Mỗi ngày, việc hòa quyện thể xác sau giờ làm việc thế này đã trở thành thói quen của hai chúng tôi.[p]
Dù ban đầu cô ấy còn chống cự và lộ rõ vẻ ngượng ngùng, [r]nhưng việc hạ gục một góa phụ đang khao khát dục vọng lại quá đỗi dễ dàng.[p]
Chỉ cần dùng dục vọng mãnh liệt của tuổi trẻ đâm xuyên qua, cô ấy đã chìm đắm trong cơn mê say chỉ trong nháy mắt.[p]
[舜]「Hôm nay chị muốn em làm thế nào đây?」[p]
#Rinko
Rinko「Xấu hổ lắm...」[p]
[舜]「Không nói là em không làm cho đâu đấy nhé?」[p]
#Rinko
Rinko「Không chịu đâu, chị nói, chị nói mà... Hôm nay... chị muốn được dẫn dắt Shun-kun cơ.」[p]
[舜]「Chị nói cho dễ hiểu hơn đi nào.」[p]
#Rinko
Rinko「Chị muốn được lắc hông trên người Shun-kun...♡ Muốn đút con cu vào, rồi sướng thật nhiều cơ♡」[p]
Cô ấy nũng nịu kề sát mặt vào tôi. Có lẽ đây mới chính là con người thật của cô ấy.[p]
Một khi đã nhớ nhung khoái cảm được đàn ông ngoan ngoãn thuần phục, cô ấy sẽ chẳng bao giờ có thể quay lại cuộc sống thiếu vắng tôi nữa.[p]
Nhưng thế này cũng tốt... Vì chính tôi cũng không thể tưởng tượng nổi một cuộc sống không có cô ấy nữa rồi.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
──Đúng lúc đó.[p]
Hayato「Mẹ ơi, mẹ có đó không? Về chuyện mấy bài đánh giá trên mạng dạo gần đây ấy......」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten3.png"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[chara_mod  name="kyara_hayato_sabun"  time="0"  cross="true"  storage="chara/177/ADV_hayato_04c.gif"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Hayato「......Mẹ......?」[p]
Giọng nói ấy pha lẫn sự bối rối và cảm giác không muốn tin vào mắt mình, xen lẫn chút run rẩy khe khẽ.[p]
[舜]「Bọn tôi đang yêu nhau. Đúng không, chị Rinko?」[p]
#Rinko
Rinko「......Đúng vậy. Mẹ, muốn được ở bên cạnh Shun-kun.」[p]
Giọng cô Rinko rất bình tĩnh, nghe như đã có sự chuẩn bị tâm lý từ trước.[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_04c.gif"]Hayato「......Thôi đi mà...... Tại sao...... tại sao mẹ lại, như thế......」[p]
Có lẽ cảnh tượng đập vào mắt hắn lúc này, chẳng khác nào một cơn ác mộng.[p]
Đôi môi hắn run rẩy, chẳng thể thốt nên lời.[p]
Hayato「Mẹ...... Mẹ đang làm cái quái gì vậy......!」[p]
Một giọng nói như thể bị vắt kiệt.[p]
Đó không phải là sự phẫn nộ. Cũng chẳng phải cảm giác bị phản bội hay bị cướp đoạt gì cả.[p]
Chỉ đơn giản là, thực tế phũ phàng khi thấy "người mẹ" của mình đang được một gã đàn ông khác yêu thương với tư cách là một "người phụ nữ" ngay trước mắt,[p]
đã đánh sập tận gốc rễ mọi giá trị quan của hắn.[p]
#Rinko
Rinko「Hayato, mẹ xin lỗi. Nhưng mà, mẹ không thể tiếp tục sống chỉ với tư cách là một "người mẹ" được nữa.」[p]
Một câu nói nhẹ nhàng, nhưng tuyệt nhiên không hề có sự hối hận.[p]
Hayato cứ đứng chôn chân tại chỗ, chẳng nói được lời nào, chỉ biết cúi gằm mặt xuống.[p]
Trên gương mặt hắn, hiện rõ vẻ mất mát tột cùng.[p]
Cuối cùng, hắn chầm chậm lùi lại, rồi thẫn thờ rời khỏi căn phòng.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「......Chị làm vậy, thực sự ổn chứ?」[p]
#Rinko
Rinko「Ừm. Dù rất đau lòng, nhưng chị không thể cứ tiếp tục nói dối mãi được.」[p]

Góc nghiêng của cô ấy tuy có chút đượm buồn, nhưng đâu đó lại toát lên vẻ thanh thản.[p]
Tôi nhẹ nhàng nắm lấy tay cô Rinko, đan những ngón tay vào nhau.[p]

[舜]「Từ nay về sau, đã có em ở bên cạnh chị rồi. Thế nên, không sao đâu.」[p]
#Rinko
Rinko「......Cảm ơn em. Shun-kun♡」[p]

Phía sau những lời nói được trao nhau trong tĩnh lặng ấy, một tương lai mới đang chầm chậm bắt đầu.[p]
[_tb_end_text]

[wait  time="1000"  ]
[tb_start_text mode=1 ]
【Rinko_Cuồng Ái END　Tận cùng của sự mất mát】[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_kyouaiEND"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event_fin2.jpg"  ]
[tb_hide_message_window  ]
[tb_eval  exp="sf.zenkaihou=1"  name="zenkaihou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[wait  time="2000"  ]
[l  ]
[bg  time="3000"  method="crossfade"  storage="event_fin.jpg"  ]
[wait  time="3000"  ]
[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]