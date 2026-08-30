
[_tb_system_call storage=system/_EV_kokuhaku_tubomi.ks]

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

[bg  time="1000"  method="crossfade"  storage="sora.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_kokuhaku_tubomi{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Ủa? Tsubomi gọi này.」[p]
[舜]「Alo, sao thế? Ở quán Reflex có chuyện gì à?」[p]
#蕾
Tsubomi「...A, ừm...... à thì.」[p]
[_tb_end_text]

[call  storage="BGM.ks"  target="*love1"  ]
[tb_start_text mode=1 ]
#蕾
Tsubomi「Không, không phải chuyện đó......[r]N-Nếu anh đang ở gần đây, thì mình cùng về chung được không...... Không được sao?」[p]
[舜]「Được chứ. Anh sẽ qua quán Reflex, em đợi trước cửa quán nhé.」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Tôi vội vàng chạy đến quán Reflex thì Tsubomi đã đứng đợi sẵn.[p]
Tôi đã chuẩn bị tinh thần sẽ bị cằn nhằn "Chậm quá!" như mọi khi,[r]nhưng hôm nay em ấy lại ngoan ngoãn đến lạ thường.[p]
Thậm chí, em ấy còn chẳng tràn đầy sức sống như mọi ngày, không cười mà cũng ít nói hơn hẳn.[r]Ngay cả những lời trêu chọc ác ý thường ngày hôm nay cũng lặn mất tăm.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_kaerimiti_yoru.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_hutuu"  ]
[tb_start_text mode=1 ]
Tôi cố tình không gặng hỏi thêm, chỉ lẳng lặng bước đi sóng đôi cùng Tsubomi trên đường về.[p]
[舜]「Có chuyện gì sao? Đừng bảo là bị khách làm gì rồi nhé...」[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_03c.gif"]Tsubomi「Câu đó mà anh cũng nói được à? Không phải. Chỉ là em thi rớt buổi thử vai thôi.」[p]
Tsubomi cười gượng gạo rồi bước vào một công viên nằm trên đường đi.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[chara_hide  name="kyara_tubomi_sabun"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_tubomi"  time="0"  wait="true"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Thấy Tsubomi ngồi xuống xích đu, tôi cũng bắt chước ngồi xuống chiếc xích đu bên cạnh.[r]Giọng nói của em ấy dần trở nên ướt át, nghẹn ngào.[p]
[_tb_end_text]

[bg  time="2000"  method="fadeInDown"  storage="event/tubomi5.png"  ]
[tb_cg  id="cg_tubomi_kokuhaku"  ]
[tb_start_text mode=1 ]
#蕾
Tsubomi「Đến hội trường rồi mới thấy, ở đó có đầy những cô gái vừa dễ thương, vừa xinh đẹp lại có thân hình chuẩn hơn em nhiều.」[p]
#蕾
Tsubomi「Em thấy mình thật lạc lõng... xấu hổ lắm. Em chỉ muốn đi về ngay lập tức thôi. Đầu óc thì trống rỗng...」[p]
Đôi mắt to tròn ấy như sắp chực trào nước mắt. Nhưng em ấy vẫn đang cố kìm nén.[p]
#蕾
Tsubomi「Nhưng mà, em không thể tha thứ cho bản thân mình nhất khi trở nên như vậy.[r]Chỉ mới thế thôi mà đã muốn bỏ chạy rồi... em thật sự thất vọng về bản thân.」[p]
[舜]「Không, anh hiểu, anh hiểu mà...[r]Anh đây còn từng không nói được những điều mình muốn nói, vã mồ hôi hột rồi suýt ngất xỉu nữa kìa.」[p]
Cái cảm giác bị vô số người đánh giá, dò xét ấy.[r]Những ngày tháng liên tục bị dập tắt sự tự tin, đứng chôn chân không biết bao nhiêu lần mỗi khi đi phỏng vấn xin việc.[p]
Nỗi đau ấy, tôi tự nhủ mình hiểu rõ hơn bất kỳ ai.[p]
#蕾
Tsubomi「Khc..., như thế thì thảm hại quá rồi...」[p]
Tôi cảm giác nét mặt căng thẳng của Tsubomi đã giãn ra đôi chút.[p]
[舜]「Thấy chưa? Anh còn thê thảm hơn em nhiều đúng không?」[p]
#蕾
Tsubomi「Cảm ơn anh... Anh đang an ủi em đúng không. Nhờ anh mà em cũng thấy khá hơn chút rồi.」[p]
#蕾
Tsubomi「Nhưng mà... hiện tại mọi chuyện của anh vẫn đang suôn sẻ mà.」[p]
#蕾
Tsubomi「Trong mắt mẹ, anh là nhân viên làm thêm tuyệt vời nhất đấy.[r]Chỉ cần đứng đúng nơi dành cho mình thì ai cũng có thể tỏa sáng nhỉ.」[p]
[舜]「Chính anh cũng là người ngạc nhiên nhất khi mọi chuyện lại thành ra thế này đấy.」[p]
#蕾
Tsubomi「Khc..., gì vậy chứ...!」[p]
Lần này thì em ấy đã bật cười thành tiếng.[p]
#蕾
Tsubomi「Không biết em có nơi nào như thế không nhỉ? Có lẽ thử tìm kiếm một ước mơ mới cũng không tồi.」[p]
#蕾
Tsubomi「Xin lỗi anh nhé, dù đã bắt anh phải đi cùng em nãy giờ.」[p]
[舜]「Có gì đâu mà phải xin lỗi. Anh cũng chẳng làm gì cả mà.」[p]
#蕾
Tsubomi「Em thì lại nghĩ là anh đã làm rất nhiều đấy! [r]Này, em sẽ cố gắng hết sức... từ nay về sau anh vẫn sẽ dõi theo em chứ?」[p]
[舜]「Hả? Thì anh vẫn định thế mà?」[p]
#蕾
Tsubomi「Cái phản ứng nhạt nhẽo gì vậy hả! ...Thiệt tình! Đồ ngốc nghếch!」[p]
[舜]「G-Gì chứ...! Có gì thì nói rõ ràng ra xem nào.」[p]
#蕾
Tsubomi「……Thế nên là」[p]
Sau khi thốt lên vài tiếng, Tsubomi chìm vào im lặng một lúc.[r]Em ấy khẽ hít một hơi, nhưng vẫn chưa thể nói tiếp ngay được.[p]
Đôi mắt vẫn cụp xuống, bờ môi khẽ run rẩy.[p]
#蕾
Tsubomi「……Em chỉ nói một lần thôi đấy nhé.」[p]
#蕾
Tsubomi「Phải nghe cho kỹ đấy, biết chưa?」[p]
Em ấy nhẹ nhàng ngẩng mặt lên, chạm ánh mắt với tôi.[r]Trong đôi mắt ấy, chẳng còn chút do dự nào nữa.[p]
#蕾
Tsubomi「Em…… thích anh, [舜].」[p]
#蕾
Tsubomi「Làm bạn trai em đi……」[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[舜](Thật luôn sao...! Cảm xúc của mình là──)
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_kokuhaku_tubomi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Đồng ý nhận lời"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_kokuhaku_tubomi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Từ chối"  _clickable_img=""  target="*no"  ]
[s  ]
*yes

[tb_eval  exp="f.koukando_tubomi_koibito=1"  name="koukando_tubomi_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_text mode=1 ]
Trong khoảnh khắc, tôi không thốt nên lời. Nhưng trong thâm tâm, tôi đã có câu trả lời.[p]
[舜]「……Nếu đã nói vậy rồi, thì tất nhiên là anh đồng ý.」[p]
#蕾
Tsubomi「Thật á? Là em cũng được sao? Em vừa xấc xược lại còn hay làm anh quay mòng mòng đấy nhé?」[p]
[舜]「Thế cũng được. Trái lại... em rất nỗ lực, lại còn dễ thương nữa.」[p]
#蕾
Tsubomi「Gì chứ... tự dưng lại nói mấy lời ngầu thế. Làm tim em đập thình thịch vì [舜] rồi này.」[p]
Chợt, ánh mắt tôi chạm ánh mắt Tsubomi.[r]Tôi có thể cảm nhận rõ ràng tình cảm ẩn sâu trong đôi mắt ấy.[p]
#蕾
Tsubomi「……Này」[p]
#蕾
Tsubomi「Hôm nay…… em không muốn cứ thế này mà về đâu.」[p]
#蕾
Tsubomi「Em muốn ở bên cạnh [舜] nhiều hơn nữa.」[p]
Giọng nói như đang run rẩy. Nhưng những lời nói ấy lại chứa đựng tình cảm vô cùng chân thành.[p]
[舜]「……Vậy, đến nhà anh nhé?」[p]
#蕾
Tsubomi「Vâng...」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Tôi nhẹ nhàng chìa tay ra, Tsubomi liền khẽ đặt tay mình lên tay tôi.[r]Dù em ấy hơi cúi mặt xuống, nhưng hơi ấm ấy vẫn truyền đến thật rõ ràng.[p]
Tôi dịu dàng nắm lấy bàn tay ấy, cả hai cùng nhau chậm rãi bước đi.[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="tubomi_kokuhaku"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top"  ]
*H_back

[bg  time="1000"  method="crossfade"  storage="back_room_yoru0.png"  ]
[tb_start_text mode=1 ]
Vừa dùng ngón tay vuốt lại mái tóc rối, Tsubomi vừa cúi mặt xuống đầy vẻ ngượng ngùng.[p]
#蕾
Tsubomi「……Tự dưng thấy xấu hổ khi nhìn mặt anh quá. Anh thấy bình thường sao? Tức thật đấy……」[p]
Chưa kịp đáp lại lời nào, Tsubomi đã nép sát vào người tôi, đặt một nụ hôn phớt nhẹ lên má tôi.[r]Nhìn vẻ mặt ngạc nhiên của tôi, Tsubomi nở nụ cười đầy tinh nghịch.[p]
#蕾
Tsubomi「Khc..., cứ tỏ ra thong dong như thế, anh ăn gian quá.」[p]
Nhanh hơn cả lúc tôi kịp mở lời, Tsubomi đã khẽ đan tay vào tay tôi.[r]Từ nay về sau, chắc chắn tôi sẽ bị em ấy xoay như chong chóng mất thôi――một tương lai như thế bất chợt hiện lên trong tâm trí tôi.[p]
Nhưng mà, tôi chợt nghĩ, như vậy có khi cũng không tệ chút nào.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã trở thành người yêu của Tsubomi[resetfont][p]
[_tb_end_text]

[jump  storage="room_yoru.ks"  target="*top"  ]
*no

[tb_eval  exp="f.koukando_tubomi_huru=1"  name="koukando_tubomi_huru"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="back_kaerimiti_yoru.png"  ]
[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="8"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_03c.gif"  width="832"  height="832"  left="242"  top="8"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;蕾音声開始
[voconfig sebuf=2 name="蕾" vostorage="tubomi/voice_kokuhaku_tubomi{number}.mp3" number=29]
[vostart]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Anh xin lỗi...」[p]
#蕾
Tsubomi「...Vậy à, ra là vậy. Anh thích mẹ em sao?」[p]
[舜]「……」[p]
Nước mắt lưng tròng, Tsubomi bật cười thành tiếng.[p]
#蕾
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]Tsubomi「Thảm hại quá, bị đá mất tiêu rồi! [r]Nhưng mà thấy nhẹ nhõm hẳn nên không sao... Chắc em sẽ bước tiếp được một bước mới thôi.」[p]
#蕾
Tsubomi「Cảm ơn anh nhé. Vậy thì...」[p]
[_tb_end_text]

[call  storage="character.ks"  target="*taijyou"  ]
[tb_start_text mode=1 ]
Em ấy quay ngoắt lại rồi chạy vụt đi. Tôi đứng lặng nhìn theo bóng lưng ấy.[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="tubomi_kokuhaku"  ]
[jump  storage="room_yoru.ks"  target="*top"  