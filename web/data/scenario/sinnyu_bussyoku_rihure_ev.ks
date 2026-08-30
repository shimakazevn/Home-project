
[_tb_system_call storage=system/_sinnyu_bussyoku_rihure_ev.ks]

*isyou1

[tb_start_text mode=1 ]
[舜]（Đồng phục hầu gái... Chói mắt... Chói mắt quá đi.）[p]
[舜]（Mùi hương ngọt ngào này... Phù...... Lý trí ơi, cố lên.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_isyou+=1"  name="bussyoku_isyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*isyou2

[tb_start_text mode=1 ]
[舜]（Mặc bộ đồ này rồi gọi "Chủ nhân" đúng là giấc mơ của mọi thằng đàn ông.）[p]
[舜]（......Chắc mình hơi mệt rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_isyou+=1"  name="bussyoku_isyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*isyou3

[tb_start_text mode=1 ]
[舜]（Muốn sục một phát ghê... nhưng giờ thì không được. Hoàn toàn không được. Xong đời mất.）[p]
[舜]（......Hít thở sâu nào.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_isyou+=1"  name="bussyoku_isyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko1

[tb_start_text mode=1 ]
[舜]（Chai nước này... có ghi tên. "Amelia" là Tsubomi nhỉ.）[p]
[舜]（Mà, uống một ngụm chắc không sao...）[p]
[舜]（...Oa, ngon quá. ......Ủa, mình đang làm cái quái gì vậy.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko_rihure+=1"  name="bussyoku_reizouko_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko2

[tb_start_text mode=1 ]
[舜]（Nhỡ bị con nhỏ đó phát hiện thì phiền phức to.）[p]
[舜]（Nhưng mà... không bị phát hiện là được chứ gì.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko_rihure+=1"  name="bussyoku_reizouko_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko3

[tb_start_text mode=1 ]
[舜]（Phải để lại đúng vị trí cũ mới được. ...Ngon, nhãn chai cũng hướng đúng rồi.）[p]
[舜]（Cẩn thận, cẩn thận. Không được lơ là.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko_rihure+=1"  name="bussyoku_reizouko_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kyukei1

[tb_start_text mode=1 ]
[舜]（Phát hiện một cái ví xinh xắn. Bên trong... cũng nhiều tiền phết.）[p]
[舜]（Làm hầu gái bấm huyệt đúng là hái ra tiền nhỉ.）[p]
[舜]（Xin lỗi nhé, nhưng tôi xin vài tờ vậy.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 2000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=2000"  name="money_updated"  cmd="+="  op="t"  val="2000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_kyuukei+=1"  name="bussyoku_kyuukei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kyukei2

[tb_start_text mode=1 ]
[舜]（Bên này cũng có đồ để quên à? Ồ, ví tiền xu hình nhân vật hoạt hình.）[p]
[舜]（Xin lỗi nhé, tôi sẽ sử dụng cẩn thận.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 500 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=500"  name="money_updated"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_kyuukei+=1"  name="bussyoku_kyuukei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kyukei3

[tb_start_text mode=1 ]
[舜]（Quà khách tặng mà vứt lăn lóc thế này.）[p]
[舜]（Hừm, tặng gấu bông thì đúng là bó tay... Mình còn biết điều đó cơ mà.）[p]
[舜]（Ủa? Nhưng bên trong có tiền mặt này. May quá.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 2000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=2000"  name="money_updated"  cmd="+="  op="t"  val="2000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_kyuukei+=1"  name="bussyoku_kyuukei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kouisitu1

[tb_start_text mode=1 ]
[舜]（Tưởng phòng nghỉ của con gái thì phải thơm tho lắm chứ.）[p]
[舜]（Sao mùi... cứ như phòng câu lạc bộ nam sinh thế này.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kouisitu+=1"  name="bussyoku_kouisitu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kouisitu2

[tb_start_text mode=1 ]
[舜]（Có vẻ một góc phòng được dùng làm chỗ thay đồ.[r]...Ồ, phát hiện bảng phân ca... Mọi người nghỉ phép thoải mái gớm.）[p]
[舜]（Trong số đó thì Tsubomi đi làm chăm chỉ đấy chứ.）[p]
[舜]（Nhìn thế thôi chứ chắc cũng nghiêm túc lắm.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kouisitu+=1"  name="bussyoku_kouisitu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kouisitu3

[tb_start_text mode=1 ]
[舜]（"Mimirin", "Jody", "Kyawatan", nghệ danh tự do thật đấy.）[p]
[舜]（Cái tên Amelia nghe còn lọt tai nhất mới lạ...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kouisitu+=1"  name="bussyoku_kouisitu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pureto1

[tb_start_text mode=1 ]
[舜]（Treo biển Đang sử dụng thì chắc không ai vào đâu nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pureto+=1"  name="bussyoku_pureto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pureto2

[tb_start_text mode=1 ]
[舜]（Rèm đóng tức là có người đang thay đồ bên trong.）[p]
[舜]（Dù là nhìn trộm hay giở trò thì đây cũng là cơ hội.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pureto+=1"  name="bussyoku_pureto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pureto3

[tb_start_text mode=1 ]
[舜]（Thế này chẳng khác nào báo cho người ta biết là có con gái ở đây.）[p]
[舜]（Treo biển Đang sử dụng thật ra rất nguy hiểm... Nếu có những kẻ như mình.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pureto+=1"  name="bussyoku_pureto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou1

[tb_start_text mode=1 ]
[舜]（Gắn camera trên trần nhà... có thể quay từ trên xuống.）[p]
[舜]（Như vậy thì có quay được cảnh thay đồ không nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou_rihure+=1"  name="bussyoku_tenjyou_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou2

[tb_start_text mode=1 ]
[舜]（Chắc không ai nghĩ mình đang bị quay lén đâu...）[p]
[舜]（Cảnh thay đồ hớ hênh, chắc chắn sẽ quay được trọn vẹn.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou_rihure+=1"  name="bussyoku_tenjyou_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou3

[tb_start_text mode=1 ]
[舜]（Cứ giả vờ lau trần nhà rồi lén đặt camera là được.）[p]
[舜]（Giờ chỉ còn cách canh lúc không có ai thôi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou_rihure+=1"  name="bussyoku_tenjyou_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yuka1

[tb_start_text mode=1 ]
[舜]（Có vẻ không có gì đặc biệt...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yuka+=1"  name="bussyoku_yuka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yuka2

[tb_start_text mode=1 ]
[舜]（Đặt camera quanh đây thì có thể quay được góc thấp từ dưới lên.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yuka+=1"  name="bussyoku_yuka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yuka3

[tb_start_text mode=1 ]
[舜]（Hửm? Đồ ai bỏ quên à? Dưới chiếc tất... có cái gì đó──）[p]
[舜]（Là tiền. Bỏ quên thế này đúng là bất cẩn. Xin nhận vậy.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 2000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=2000"  name="money_updated"  cmd="+="  op="t"  val="2000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_yuka+=1"  name="bussyoku_yuka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kami1

[tb_start_text mode=1 ]
[舜]（Ôm 3000 Yên, ngủ cùng 5000 Yên... Đúng là đắt thật.）[p]
[舜]（Tsubomi bảo là chỉ massage thôi nhưng mà...）[p]
[舜]（Thực tế chắc cũng làm mấy trò đồi bại ở đây chứ gì.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kami+=1"  name="bussyoku_kami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kami2

[tb_start_text mode=1 ]
[舜]（Bề ngoài thì tỏ thái độ "Không có gì đâu" nhưng... Mà, cũng xám xịt lắm.）[p]
[舜]（Mình cũng nghĩ không biết Tsubomi có làm mấy chuyện đó không...）[p]
[舜]（Với cái tính cách đó thì... Không không, chắc chắn là không có đâu.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kami+=1"  name="bussyoku_kami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kami3

[tb_start_text mode=1 ]
[舜]（Nghĩa là tùy vào thỏa thuận mà có thể làm tình luôn sao...）[p]
[舜]（Tự dưng thấy có hứng ghê.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kami+=1"  name="bussyoku_kami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako1

[tb_start_text mode=1 ]
[舜]（Mấy thứ linh tinh... chắc không vứt ở đây đâu nhỉ.）[p]
[舜]（Tưởng ít ra cũng phải có bao cao su chứ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_rihure+=1"  name="bussyoku_gomibako_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako2

[tb_start_text mode=1 ]
[舜]（Sạch sẽ phết... Không, trống trơn thế này mới là lạ.）[p]
[舜]（Mấy cô gái tự vứt đi sao... Tiêu hủy chứng cứ đây mà.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_rihure+=1"  name="bussyoku_gomibako_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako3

[tb_start_text mode=1 ]
[舜]（Sạch sẽ thế này thì người dọn dẹp cũng nhàn.）[p]
[舜]（Nhỡ đâu tìm thấy thứ gì đó... mang ra nói chuyện với cô gái đó cũng hay.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_rihure+=1"  name="bussyoku_gomibako_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed1

[tb_start_text mode=1 ]
[舜]（Tùy số tiền mà có thể làm chuyện đồi bại với các cô gái sao...?）[p]
[舜]（Tsubomi bảo là không có chuyện đó, nhưng mấy đứa khác thì sao nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed_rihure+=1"  name="bussyoku_bed_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed2

[tb_start_text mode=1 ]
[舜]（Nghe nói thỉnh thoảng cũng có khách khó chiều, chắc công việc này vất vả hơn mình tưởng.）[p]
[舜]（Vậy mà vẫn giữ được nụ cười, đỉnh thật.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed_rihure+=1"  name="bussyoku_bed_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed3

[tb_start_text mode=1 ]
[舜]（Biết đâu mình cũng có cơ hội thì sao?）[p]
[舜]（......Không không, gây sự chú ý ở đây là hỏng bét. Phải bình tĩnh.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed_rihure+=1"  name="bussyoku_bed_rihure"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*telissyu1

[tb_start_text mode=1 ]
[舜]（Oa, khăn giấy lại sắp hết rồi. Phải nhớ bổ sung mới được.）[p]
[舜]（Không, lại còn lo nghĩ đến hàng tồn kho... Đầu óc mình hoàn toàn thuộc về công việc làm thêm rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_telissyu+=1"  name="bussyoku_telissyu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*telissyu2

[tb_start_text mode=1 ]
[舜]（Mà, khăn giấy dùng để làm gì thì cũng đoán được phần nào.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_telissyu+=1"  name="bussyoku_telissyu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*telissyu3

[tb_start_text mode=1 ]
[舜]（Nghĩ đến việc họ làm chuyện đó ở đây, tự dưng thấy hưng phấn lạ thường.）[p]
[舜]（Nhưng nghĩ lại thì, đúng là không thể tha thứ được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_telissyu+=1"  name="bussyoku_telissyu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
