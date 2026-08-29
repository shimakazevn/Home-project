[_tb_system_call storage=system/_EV_OP3.ks]

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

[bg  time="1000"  method="crossfade"  storage="back_byouin.png"  ]
[tb_start_text mode=1 ]
Bệnh viện gần nhà nhất. Đúng như trong ký ức, những bệnh nhân lớn tuổi đang nhàn nhã đi dạo xung quanh.[p]
[舜]「Haa……nhắc mới nhớ, từ xưa đây đã là bệnh viện đông khách rồi nhỉ.[r]Đông người thế này làm mình thấy chán nản quá……」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_byouin2.png"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_op_nagi{number}.mp3" number=4]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（Nhắc mới nhớ, Nagi làm việc ở đây mà. Nhưng quả thật mình cũng không biết cô ấy làm ở khoa nào──）[p]
#凪
Nagi「Bác Tanaka ơiiii! Bác có ở đây không ạ~?」[p]
[舜]（……Có kìa!）[p]
Trước phòng chờ khoa nội có lẽ là nơi đông đúc nhất, Nagi trong bộ đồng phục y tá đang gọi một ông lão.[p]
Dù có chút lúng túng trước những câu hỏi của các bệnh nhân tự do tự tại, cô ấy vẫn trả lời một cách lịch sự.[p]
[舜]（Cô ấy thực sự đang làm y tá đàng hoàng nhỉ）[p]
Ngay lúc đó, tôi có cảm giác bất chợt chạm mắt với Nagi đang đứng cách đó một đoạn.[p]
[_tb_end_text]

[stopbgm  time="500"  fadeout="true"  ]
[call  storage="character.ks"  target="*nagi_sigotogi"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_text mode=1 ]
#凪
Nagi「Shun-chan? Quả nhiên là Shun-chan mà! [r]Tớ nhận ra ngay đấy. Bất ngờ thật, chắc cũng phải 10 năm rồi nhỉ?」[p]
#凪
Nagi「Có phải cậu mới chuyển về đây không? Giá mà cậu nói cho tớ biết thì tốt biết mấy~」[p]
[舜]（Á, không ngờ lại chạm mặt thế này... Mình chỉ định đứng nhìn từ xa thôi mà）[p]
[舜]（……Hửm? Cô ấy nghĩ mình mới chuyển về quê à. Vậy là không biết chuyện mình sống thu mình rồi.）[p]
#凪
Nagi「Nhớ ngày xưa quá, cậu vẫn khỏe chứ...? A, không phải.[r]Cậu đang ở bệnh viện mà. Xin lỗi nhé... Tớ vô ý quá.」[p]
[舜]「Không sao, tôi chỉ hơi đau đầu nên đến lấy thuốc thôi──」[p]
Hayato「A, Nagi...!」[p]
[_tb_end_text]

[chara_hide  name="kyara_nagi_sabun2"  time="0"  wait="false"  pos_mode="false"  ]
[wait  time="300"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="300"  ]
[call  storage="character.ks"  target="*2kyara_hayatonagi"  ]
[tb_start_text mode=1 ]
[舜]（Hả? Sao lại là tên này nữa...!）[p]
Hayato chạy đến chỗ Nagi, quay sang nhìn tôi với vẻ mặt ngạc nhiên "Ủa?".[p]
Hayato「Nhân viên làm thêm ở chỗ mẹ tôi... à, [舜] đúng không.」[p]
#凪
Nagi「Ủa, Shun-chan và anh Hayato quen nhau sao?」[p]
Hayato「Hả? Nagi mới là người quen của cậu ta sao?」[p]
#凪
Nagi「Ư-ừm... Em và Shun-chan là bạn thuở nhỏ. Hồi bé bọn em hay chơi chung lắm.」[p]
#凪
Nagi「À, Shun-chan, đây là anh Naruse Hayato, người tớ đang hẹn hò.」[p]
"Nhỉ?" cô ấy hỏi, tôi khẽ gật đầu.[p]
Hayato, người chồng sắp cưới, thoáng lộ vẻ khó chịu nhưng ngay lập tức lấy lại nụ cười như cũ.[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Giới thiệu lại nhé, tôi cũng mong được giúp đỡ. Cố gắng làm tốt công việc làm thêm nhé?」[p]
[舜]（Tên này...! Chắc chắn hắn đang coi thường mình...）[p]
#凪
Nagi「Không hiểu sao, hôm nay được gặp gỡ nhiều người thế này tớ vui lắm.」[p]
Tôi nhìn thấy một nữ y tá có vẻ đanh đá đang hầm hầm bước về phía này.[p]
Y tá phụ「Cô đang trong giờ nghỉ đấy à? Làm gì có thời gian rảnh rỗi mà đứng tán gẫu.」[p]
#凪
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"][chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif" wait="false" ] Nagi「X-xin lỗi chị ạ! Em sẽ quay lại làm việc ngay!」[p]

[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="kami.mp3"  ]
[tb_start_text mode=1 ]
Đúng lúc định chạy đi, tập bệnh án cô ấy đang cầm rơi tung tóe xuống chân.[p]
[_tb_end_text]

[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="event/op_3.png"  ]
[tb_cg  id="cg_op3"  ]
[tb_start_text mode=1 ]
#凪
Nagi「A! Thiệt tình... sao mình lại hậu đậu thế này cơ chứ.」[p]
Y tá phụ「Nhặt lên xong rồi quay lại làm việc đi.」[p]
#凪
Nagi「Vâng...!」[p]
Nagi cuống cuồng nhặt tập bệnh án lên.[p]
Bất chợt, tôi nhìn thấy đồ lót của cô ấy lấp ló từ dưới chân.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_byouin2.png"  ]
[tb_start_text mode=1 ]
#凪
Nagi「Vậy nhé Shun-chan, anh Hayato, hẹn gặp lại.」[p]
Tôi có cảm giác như nghe thấy tiếng bước chân lạch bạch chạy đi của cô ấy cùng với tiếng quát "Không được chạy!" của nữ y tá.[p]
[_tb_end_text]

[call  storage="character.ks"  target="*hayato_hudangi"  ]
[tb_start_text mode=1 ]
Hayato「Nagi dễ thương nhỉ. Yên tâm đi, tôi đang trân trọng cô ấy lắm.」[p]
[舜]「Hả?」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Cậu giống như anh trai của cô ấy đúng không? Tôi đoán chắc cậu cũng lo lắng cho Nagi.」[p]
[舜]「T-Tôi thì cũng đâu có...」[p]
Hayato「Vậy sao? Vậy thì thôi. Tôi đến thăm mẹ của Nagi đây. Hẹn gặp lại.」[p]
[舜]「Mẹ của Nagi đang nằm viện sao?」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]Hayato「Hả? Cậu không biết sao. Bà ấy nằm viện lâu rồi.」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Đã là người như anh trai thì cậu phải biết chuyện này chứ~」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]Vỗ bộp bộp lên vai tôi, Hayato vừa cười nhếch mép vừa đi về phía sảnh thang máy.[p]

[_tb_end_text]

[chara_hide  name="kyara_hayato_sabun"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[tb_start_text mode=1 ]
[舜]（Tên đó bị sao vậy...）[p]
[舜]（Nhưng... hắn nói đúng. Mình chẳng biết gì về Nagi cả...）[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[stopbgm  time="500"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_room0.png"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="semi.mp3"  fadein="true"  ]
[wait  time="1000"  ]
[playbgm  volume="100"  time="3000"  loop="true"  storage="kodomo.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
[舜]（Haa……đã sáng rồi sao. Hôm qua đúng là một ngày dài.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[舜]（Bao nhiêu năm rồi mới được nói chuyện đàng hoàng với Nagi nhỉ.[r]Bề ngoài tuy đã trưởng thành hơn, nhưng cách nói chuyện và phong thái vẫn y như xưa.）[p]
[舜]（Nagi đang làm việc đàng hoàng, đang bước đi trên con đường của một người trưởng thành.[r]Cô ấy luôn hướng về phía trước, thậm chí còn suy nghĩ đến cả tương lai nữa……）[p]
[舜]（……Chẳng phải ngày xưa em từng nói sẽ kết hôn với anh sao. Thế mà giờ lại……khốn kiếp!）[p]
Mặc cho sự uất ức và giận dữ trào dâng, [舜] liên tục đấm mạnh xuống gối.[p]
Thế nhưng, sau khi trút hết mọi cảm xúc, thứ bủa vây lấy tôi chỉ là sự trống rỗng đến vô phương cứu chữa.[p]
[舜]（Còn mình thì……sao chứ? Thời gian của mình cứ mãi dừng lại trong căn phòng này mà.）[p]
Dù vậy——vẫn còn quá sớm để nôn nóng.[p]
Vẫn còn kịp. Bắt đầu từ bây giờ. Nhất định mình sẽ vươn lên.[p]
[舜]（……Tên đó nói muốn kết hôn vào mùa thu nhỉ.）[p]
[舜]（Nói cách khác, [font color="yellow"]mình chỉ có thể hành động trong mùa hè này thôi sao.[resetfont][r]Không có thời gian để chần chừ nữa. Phải bắt đầu hành động ngay lập tức.）[p]
Hayato... chỉ riêng tên đó, mình tuyệt đối không tha thứ.[r]Mình sẽ đập nát hắn triệt để, đến mức không bao giờ ngóc đầu lên nổi.[p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
*skip

[tb_eval  exp="sf.puro_nagi_sigoto=1"  name="puro_nagi_sigoto"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_nagi_on=1"  name="chara_nagi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.month=6"  name="month"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="room_asa.ks"  target="*top0"  