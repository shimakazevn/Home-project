
[_tb_system_call storage=system/_sinnyu_bussyoku_massaji_ev.ks]

*tenjyou1

[tb_start_text mode=1 ]
[舜]（Nếu quay từ đây thì chắc chắn sẽ thấy được toàn bộ căn phòng.）[p]
[舜]（Không biết sẽ được chiêm ngưỡng cảnh tượng gì đây nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou+=1"  name="bussyoku_tenjyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou2

[tb_start_text mode=1 ]
[舜]（Ánh sáng màu này dễ chịu thật... Chắc cô ấy cất công chọn lựa kỹ lắm.）[p]
[舜]（Lần tới hỏi cô Rinko thử xem sao.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou+=1"  name="bussyoku_tenjyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tenjyou3

[tb_start_text mode=1 ]
[舜]（Được massage dưới ánh sáng thế này thì buồn ngủ chết mất...）[p]
[舜]（Nói đúng hơn là cũng dễ tạo bầu không khí gợi tình đấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tenjyou+=1"  name="bussyoku_tenjyou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana1

[tb_start_text mode=1 ]
[舜]（Dầu và kem dưỡng... Chắc là loại cô Rinko hay dùng.）[p]
[舜]（Hình như cô ấy bảo là chọn loại tốt cho da thì phải.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tana_massaji+=1"  name="bussyoku_tana_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana2

[tb_start_text mode=1 ]
[舜]（Hửm... Đây là... bao đựng thẻ à? Khách để quên sao.）[p]
[舜]（Có vẻ bên trong cũng có chút tiền đấy.）[p]
[舜]（Cứ coi như đây là phần thưởng của Thượng đế, xin nhận vậy.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 5000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_tana_massaji+=1"  name="bussyoku_tana_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana3

[tb_start_text mode=1 ]
[舜]（Ví đựng tiền xu à... Có 2000 Yên trong này.）[p]
[舜]（Có lấy chắc cũng không ai biết đâu, nhỉ... Hơi có lỗi với chủ nhân của nó.）[p]
[舜]（Mình sẽ sử dụng thật cẩn thận.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 2000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_tana_massaji+=1"  name="bussyoku_tana_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed1

[tb_start_text mode=1 ]
[舜]（Cô Rinko, không biết có làm trò đồi bại gì với khách trên chiếc giường này không...）[p]
[舜]（...Làm gì có chuyện đó, cô Rinko thì chắc chắn không rồi.）[p]
[舜]（Thôi thôi, ghen tuông chỉ tổ thiệt thân.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed+=1"  name="bussyoku_bed"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed2

[tb_start_text mode=1 ]
[舜]（Cô ấy cũng bảo muốn mình học massage mà...）[p]
[舜]（Phải luyện tập để giúp ích được phần nào cho cô Rinko mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed+=1"  name="bussyoku_bed"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*bed3

[tb_start_text mode=1 ]
[舜]（Ngủ trưa ở đây... Không không, thế thì không ổn chút nào.）[p]
[舜]（Biết đâu một ngày nào đó, chỉ có mình và cô Rinko ở đây...）[p]
[舜]（Mới nghĩ thôi đã thấy hưng phấn rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_bed+=1"  name="bussyoku_bed"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*katen1

[tb_start_text mode=1 ]
[舜]（Chỗ này lúc nào rèm cũng đóng nhỉ...）[p]
[舜]（Bên ngoài là... À đúng rồi, quốc lộ đông người qua lại mà. Mở rèm thì làm sao mà yên tâm được...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_katen+=1"  name="bussyoku_katen"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*katen2

[tb_start_text mode=1 ]
[舜]（Đóng rèm thế này thì bên ngoài cũng không nhìn thấy gì...）[p]
[舜]（Nói cách khác là, ở đây làm gì cũng được đúng không?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_katen+=1"  name="bussyoku_katen"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*katen3

[tb_start_text mode=1 ]
[舜]（Rèm cửa cũng có mùi thơm.）[p]
[舜]（Nước xả vải chăng? Hay là xịt nước hoa? Quả là cô Rinko, chú trọng đến từng chi tiết.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_katen+=1"  name="bussyoku_katen"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*raito1

[tb_start_text mode=1 ]
[舜]（Nếu quay từ vị trí bóng đèn này, chắc chắn sẽ thấy được toàn bộ.）[p]
[舜]（Cơ thể trần truồng của cô Rinko... Cả dáng vẻ lúc tắm cũng sẽ thấy hết sao.）[p]
[舜]（Ừm, không tồi đâu...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_raito+=1"  name="bussyoku_raito"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*raito2

[tb_start_text mode=1 ]
[舜]（Khác với phòng massage, đèn ở đây sáng thật.）[p]
[舜]（Nhìn rõ toàn bộ luôn... Quay phim thì chắc thấy rõ từng chi tiết mất.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_raito+=1"  name="bussyoku_raito"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*raito3

[tb_start_text mode=1 ]
[舜]（Đâu có ai rảnh rỗi mà nhìn kỹ xung quanh bóng đèn làm gì.）[p]
[舜]（Đặt camera ở đây chắc không bị phát hiện đâu.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_raito+=1"  name="bussyoku_raito"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ameniteli1

[tb_start_text mode=1 ]
[舜]（Ra vậy, đây là sữa tắm mà cô Rinko ưng ý sao.）[p]
[舜]（Cô ấy bảo là loại không phụ gia, dịu nhẹ cho da thì phải.）[p]
[舜]（Loại này chưa thấy bán ở hiệu thuốc bao giờ...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_ameniteli+=1"  name="bussyoku_ameniteli"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ameniteli2

[tb_start_text mode=1 ]
[舜]（Chắc cô Rinko cũng dùng loại này...）[p]
[舜]（Thảo nào da cô ấy đẹp thế. Mình cũng dùng thử xem sao...?）[p]
[舜]（Đàn ông thì da đẹp cũng tốt mà.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_ameniteli+=1"  name="bussyoku_ameniteli"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ameniteli3

[tb_start_text mode=1 ]
[舜]（V-Viết cái gì đây? Herbal, Aroma...）[p]
[舜]（Chịu, khó đọc quá...!）[p]
[舜]（Tóm lại là đồ tốt, thế là được rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_ameniteli+=1"  name="bussyoku_ameniteli"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurodoa1

[tb_start_text mode=1 ]
[舜]（Cô Rinko, không... đến đây.）[p]
[舜]（Cứ lảng vảng ở đây mãi nhỡ bị nghi ngờ thì sao.）[p]
[舜]（Xem xong xuôi thì phải chuồn lẹ thôi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurodoa+=1"  name="bussyoku_hurodoa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurodoa2

[tb_start_text mode=1 ]
[舜]（Có ai đứng đằng kia là thấy bóng in lên liền à.）[p]
[舜]（Phải cẩn thận kẻo lúc có người tắm lại đi nhầm vào phòng trang điểm.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurodoa+=1"  name="bussyoku_hurodoa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurodoa3

[tb_start_text mode=1 ]
[舜]（Từ bên kia cũng thấy bóng người đang tắm sao.）[p]
[舜]（Ít nhất cũng muốn thấy bóng dáng cô Rinko lúc tắm một lần.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurodoa+=1"  name="bussyoku_hurodoa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawaroom1

[tb_start_text mode=1 ]
[舜]（Phòng tắm cũng sạch sẽ thật.）[p]
[舜]（Khác một trời một vực với phòng tắm nhà mình...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawaroom+=1"  name="bussyoku_syawaroom"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawaroom2

[tb_start_text mode=1 ]
[舜]（Mùi thơm quá... Mùi dầu gội hay sữa tắm đây.）[p]
[舜]（Cô Rinko có nói là để toàn đồ cô ấy ưng ý mà.）[p]
[舜]（Nhắc mới nhớ, mùi này giống hệt mùi của cô Rinko.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawaroom+=1"  name="bussyoku_syawaroom"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawaroom3

[tb_start_text mode=1 ]
[舜]（Cô Rinko cũng hay tắm ở đây nhỉ?）[p]
[舜]（Cô ấy bảo làm việc đổ mồ hôi xong là phải tắm cho sạch sẽ mà...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawaroom+=1"  name="bussyoku_syawaroom"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kagami1

[tb_start_text mode=1 ]
[舜]（Gương cũng sáng bóng luôn. Quả là cô Rinko... Dọn dẹp cẩn thận thật.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kagami+=1"  name="bussyoku_kagami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kagami2

[tb_start_text mode=1 ]
[舜]「Ái chà, vẫn còn sót chỗ chưa lau này. ......Cảm giác mình đang dần trở thành một người đàn ông tháo vát rồi đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kagami+=1"  name="bussyoku_kagami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kagami3

[tb_start_text mode=1 ]
[舜]（Chết, tóc rối rồi... Phải chú ý vẻ bề ngoài mới được.）[p]
[舜]（Kiểu gì cũng bị Tsubomi cằn nhằn cho xem... Phải soi gương kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kagami+=1"  name="bussyoku_kagami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako1

[tb_start_text mode=1 ]
[舜]（Trong thùng rác cũng... sạch trơn. Chắc là thường xuyên vứt rác đây.）[p]
[舜]（Cứ tiện tay kiểm tra, đúng là bệnh nghề nghiệp rồi...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_massaji+=1"  name="bussyoku_gomibako_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako2

[tb_start_text mode=1 ]
[舜]（Nếu có đồ của cô Rinko vứt ở đây thì mình cũng muốn mang về đấy.）[p]
[舜]（Tiếc thật. Chẳng có gì vứt ở đây cả...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_massaji+=1"  name="bussyoku_gomibako_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako3

[tb_start_text mode=1 ]
[舜]（Nếu mà vứt bao cao su ở đây thì chắc mình sốc chết mất.）[p]
[舜]（Cũng may là không có gì đặc biệt.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_massaji+=1"  name="bussyoku_gomibako_massaji"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
