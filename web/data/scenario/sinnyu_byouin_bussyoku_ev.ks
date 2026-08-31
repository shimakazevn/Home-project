
[_tb_system_call storage=system/_sinnyu_byouin_bussyoku_ev.ks]

*syuunou1

[tb_start_text mode=1 ]
[舜]（Dùng sức kéo thử thì mở được luôn...）[p]
[舜]（Đây... có vẻ là đồ cá nhân của tiền bối.）[p]
[舜]「Xin lỗi tiền bối, nhất định có ngày em sẽ trả... chắc vậy.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 4000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=4000"  name="money_updated"  cmd="+="  op="t"  val="4000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_syuunou+=1"  name="bussyoku_syuunou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syuunou2

[tb_start_text mode=1 ]
[舜]（Mình nhận ra là chỉ cần đẩy ngược lên trên là tủ mở dễ dàng.[r]Tủ đồ đơn giản thế này có ổn không đấy?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syuunou+=1"  name="bussyoku_syuunou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syuunou3

[tb_start_text mode=1 ]
[舜]（Cũng có lúc bị những kẻ như mình lục lọi mà... Tủ đồ thì cần phải chắc chắn hơn chút chứ.）[p]
[舜]（......Cơ mà, mình nói câu này nghe chẳng có sức thuyết phục gì cả.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syuunou+=1"  name="bussyoku_syuunou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*soujiyougu1

[tb_start_text mode=1 ]
[舜]（Ồ, chỗ này chứa đồ y tế dự trữ à.）[p]
[舜]（Băng gạc, bông y tế... đủ thứ luôn này.）[p]
[舜]（Nhắc mới nhớ, mình từng thấy y tá ra vào đây vài lần.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_soujiyougu+=1"  name="bussyoku_soujiyougu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*soujiyougu2

[tb_start_text mode=1 ]
[舜]（Chỗ này, quay từ dưới lên được đúng không?）[p]
[舜]（Có thêm thú vui trong lúc làm việc rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_soujiyougu+=1"  name="bussyoku_soujiyougu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*soujiyougu3

[tb_start_text mode=1 ]
[舜]（Sắp xếp gọn gàng! ......Ủa, mình hoàn toàn bị công việc làm thêm đầu độc rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_soujiyougu+=1"  name="bussyoku_soujiyougu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*keijiban1

[tb_start_text mode=1 ]
[舜]（Hê, có ghi cả cách dọn dẹp nữa à.）[p]
[舜]（Giống hệt những gì được hướng dẫn nên chắc chẳng có gì mới.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_keijiban+=1"  name="bussyoku_keijiban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*keijiban2

[tb_start_text mode=1 ]
[舜]（Bảng phân ca đây rồi. Ừm ừm, đúng ca mình muốn.）[p]
[舜]（Cứ tưởng làm lao công thì bóc lột lắm, ai ngờ lại nhàn hạ phết.）[p]
[舜]（Tạm thời cứ cố gắng làm ở đây vậy.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_keijiban+=1"  name="bussyoku_keijiban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*keijiban3

[tb_start_text mode=1 ]
[舜]（"Hãy sử dụng đúng quy định" à. Cấm hút thuốc, cấm xả rác bừa bãi......）[p]
[舜]（Hừm, chắc không có ai vô ý thức đến mức đó đâu.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_keijiban+=1"  name="bussyoku_keijiban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka1_1

[tb_start_text mode=1 ]
[舜]（Nagi để đủ thứ trong tủ đồ nhỉ.）[p]
[舜]（Quần áo thoang thoảng mùi nhà Nagi... Mùi hương mang lại cảm giác yên bình.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka+=1"  name="bussyoku_rokka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka1_2

[tb_start_text mode=1 ]
[舜]（Phát hiện sổ tay. Không biết có ghi gì không?）[p]
[舜]（Ký hiệu trong phần lịch trình là... ngày đi thăm mẹ à.）[p]
[舜]（Nhìn kỹ thì lịch trình toàn xoay quanh mẹ. Nagi... đúng là một người con hiếu thảo.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka+=1"  name="bussyoku_rokka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka1_3

[tb_start_text mode=1 ]
[舜]（Có cả điện thoại nữa. A, bị khóa rồi nên không xem được.）[p]
（Mà có xem được thì ở đây cũng không thể thong thả xem được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka+=1"  name="bussyoku_rokka"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka2_1

[tb_start_text mode=1 ]
[舜]（Tủ đồ ở bệnh viện này chỉ cần đẩy ngược lên là mở được dễ dàng. Từ trước đến giờ không bị trộm đúng là kỳ tích.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka2+=1"  name="bussyoku_rokka2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka2_2

[tb_start_text mode=1 ]
[舜]（Tủ đồ này là... của tiền bối Nagi chăng.）[p]
[舜]（Túi xách này, hay thấy trên mạng xã hội lắm. Đồ hiệu nổi tiếng à?）[p]
[舜]（Nagi chẳng bao giờ dùng mấy cái túi lòe loẹt thế này.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_rokka2+=1"  name="bussyoku_rokka2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*rokka2_3

[tb_start_text mode=1 ]
[舜]（Ồ, có cả tiền mặt để hớ hênh thế này...）[p]
[舜]（5000 Yên à... Xin lỗi nhé nhưng tôi mượn tạm vậy. Có thêm khoản thu nhập bất ngờ.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã nhặt được 5000 Yên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.bussyoku_rokka2+=1"  name="bussyoku_rokka2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*eakon1

[tb_start_text mode=1 ]
[舜]（A, có vẻ quay được từ chỗ máy lạnh này.）[p]
[舜]（Góc này thì chắc quay được rõ cảnh trong phòng đấy nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_eakon+=1"  name="bussyoku_eakon"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*eakon2

[tb_start_text mode=1 ]
[舜]（Nhiệt độ cài đặt... hơi cao thì phải...）[p]
[舜]（Nghe nói con gái chịu lạnh kém lắm, không biết có thật không...）[p]
[舜]（Phải mình thì chắc mồ hôi nhễ nhại rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_eakon+=1"  name="bussyoku_eakon"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*eakon3

[tb_start_text mode=1 ]
[舜]（Máy lạnh có vẻ được vệ sinh sạch sẽ nhỉ...）[p]
[舜]（Quả là bệnh viện. Máy lạnh phòng mình chưa bao giờ được dọn dẹp cả.）[p]
[舜]（Tự dưng thấy lo lo rồi đấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_eakon+=1"  name="bussyoku_eakon"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*konsento1

[tb_start_text mode=1 ]
[舜]（Góc này, có thể quay từ dưới lên được đấy.）[p]
[舜]（Biết đâu lại quay được cảnh gợi cảm của Nagi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_konsento+=1"  name="bussyoku_konsento"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*konsento2

[tb_start_text mode=1 ]
[舜]（Nghe nói ổ cắm điện hay bị dùng để gắn máy quay lén với máy nghe lén...）[p]
[舜]（Không chừng đã có sẵn camera hay mic ở đây rồi cũng nên.）[p]
[舜]（Làm gì có chuyện đó...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_konsento+=1"  name="bussyoku_konsento"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*konsento3

[tb_start_text mode=1 ]
[舜]（Ổ cắm này bình thường dùng để làm gì nhỉ?）[p]
[舜]（A... Chắc là lén sạc điện thoại đây mà.）[p]
[舜]（Tưởng tượng ra ngay cảnh đó...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_konsento+=1"  name="bussyoku_konsento"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki_byouin1

[tb_start_text mode=1 ]
[舜]（Lên cơn nứng ở cái chỗ này, mình đang làm cái quái gì vậy.）[p]
[舜]（Nhưng mà, nhỡ có ai đến, bị tóm thì không phải chuyện đùa đâu.）[p]
[舜]（Thôi, quay lại nào. Ảo tưởng thì cứ để là ảo tưởng thôi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki_byouin+=1"  name="bussyoku_benki_byouin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki_byouin2

[tb_start_text mode=1 ]
[舜]（Vừa dọn dẹp xong... sạch sẽ hoàn hảo.）[p]
[舜]（Tự thấy mình làm việc cũng ra trò phết.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki_byouin+=1"  name="bussyoku_benki_byouin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki_byouin3

[tb_start_text mode=1 ]
[舜]（Giải quyết nỗi buồn mở hàng cho cái nhà vệ sinh sạch sẽ này cũng được, nhưng...）[p]
[舜]（Hiện tại cũng không buồn tè. Thôi về nào.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki_byouin+=1"  name="bussyoku_benki_byouin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*surippa1

[tb_start_text mode=1 ]
[舜]（Nagi cũng đi dép này à... Không biết có mùi thơm không nhỉ.）[p]
[舜]（......Không, không được. Mất vệ sinh quá. Mới nghĩ đến chuyện ngửi thôi là đã thấy nguy hiểm rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_surippa+=1"  name="bussyoku_surippa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*surippa2

[tb_start_text mode=1 ]
[舜]（...Không không, không đời nào. Dép bệnh viện thì ai mà muốn ngửi chứ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_surippa+=1"  name="bussyoku_surippa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*surippa3

[tb_start_text mode=1 ]
[舜]（Sao lần nào mình cũng kiểm tra thế này...）[p]
[舜]（Chết tiệt... Chỉ lần này thôi, một chút thôi...）[p]
[舜]（......Oẹ! Tởm quá. Buồn nôn chết đi được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_surippa+=1"  name="bussyoku_surippa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*doa1

[tb_start_text mode=1 ]
[舜]（Có ai đến à...?）[p]
[舜]（Không, chắc do mình tưởng tượng thôi. Nhưng ở lâu cũng không tốt.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_doa+=1"  name="bussyoku_doa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*doa2

[tb_start_text mode=1 ]
[舜]（Bị phát hiện thì cứ bảo là đang dọn dẹp là xong, nhưng...）[p]
[舜]（Vẫn thấy bồn chồn quá. Mình nghiện cảm giác mạnh à?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_doa+=1"  name="bussyoku_doa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*doa3

[tb_start_text mode=1 ]
[舜]（Chết, hình như có người đến thật.）[p]
[舜]（Phải chuồn thôi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_doa+=1"  name="bussyoku_doa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
