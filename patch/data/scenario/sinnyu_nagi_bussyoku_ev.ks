
[_tb_system_call storage=system/_sinnyu_nagi_bussyoku_ev.ks]

*omoide

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Ký ức thời thơ ấu chợt ùa về[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.omoide_para+=1"  name="omoide_para"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko1

[tb_start_text mode=1 ]
[舜]「Ồ, bên trong có khá nhiều thứ đấy chứ...」[p]
[舜]（Có cả đồ ăn làm sẵn nữa... Khác hẳn với mình.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko+=1"  name="bussyoku_reizouko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*reizouko2

[tb_start_text mode=1 ]
[舜]「Ồ, rễ ngưu bàng xào. May quá.」[p]
[舜]「...Ừm, ngon thật. Lâu lắm rồi mới được ăn món ăn gia đình thế này.」[p]
[舜]（Món kho này cũng ngon quá, đây là đồ ăn do chính tay Nagi nấu sao...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko+=1"  name="bussyoku_reizouko"  cmd="+="  op="t"  val="1"  ]
[return  ]
*reizouko3

[tb_start_text mode=1 ]
[舜]「A, hộp sữa đang uống dở......」[p]
[舜]（Mình cũng chẳng có sở thích kiểu này đâu nhưng... quả nhiên vẫn muốn thử một lần.）[p]

Tôi cởi quần dài và quần lót ra, cọ xát dương vật vào miệng hộp sữa.[p]

[_tb_end_text]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  ]
[wait  time="2500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_reizouko.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[wait  time="500"  ]
[tb_start_text mode=1 ]
Cùng với khoái cảm, dòng tinh dịch nóng hổi đặc sệt tuôn ra. Nó chảy cả vào miệng hộp sữa.[p]

[舜]（Màu cũng giống nhau... chắc là không sao đâu nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_reizouko+=1"  name="bussyoku_reizouko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_reizouko=1"  name="trap_reizouko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[mask_off  time="500"  effect="fadeOut"  ]
[return  ]
*reizouko4

[tb_start_text mode=1 ]
[舜]（Không có gì đáng bận tâm cả.）[p]
[_tb_end_text]

[return  ]
*kittin1

[tb_start_text mode=1 ]
[舜]「Khu bếp cũng hoàn toàn không thay đổi... nhưng hình như đồ đạc đã bớt đi một chút thì phải?」[p]
[舜]（Nagi thường nấu ăn ở đây sao...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kittin+=1"  name="bussyoku_kittin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kittin2

[tb_start_text mode=1 ]
[舜]（Nhắc mới nhớ, hồi nhỏ hai đứa từng cùng nhau nấu mì gói nhỉ.）[p]
[舜]（Vì Nagi bảo sợ nước sôi nên mình đã đun nước và nấu cho cô ấy.[r]Hoài niệm thật... Ngày xưa mình từng nghĩ là phải bảo vệ Nagi cơ đấy.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_kittin+=1"  name="bussyoku_kittin"  cmd="+="  op="t"  val="1"  ]
[return  ]
*kittin3

[tb_start_text mode=1 ]
[舜]（Hayato cũng hay đến nhà này chơi nhỉ? Vậy có nghĩa là hắn cũng được ăn đồ do Nagi nấu sao...?）[p]
[舜]「Bực mình thật... Biết thế đã không nghĩ đến.」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kittin+=1"  name="bussyoku_kittin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*mado1

[tb_start_text mode=1 ]
[舜]「Đúng rồi, từ đây có thể nhìn thấy nhà mình.」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_mado+=1"  name="bussyoku_mado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*mado2

[tb_start_text mode=1 ]
[舜]（Bây giờ Nagi có bao giờ nhìn sang nhà mình từ bên này không nhỉ...）[p]
[舜]（Cô ấy đâu phải là mình, chắc không làm chuyện đó đâu.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_mado+=1"  name="bussyoku_mado"  cmd="+="  op="t"  val="1"  ]
[return  ]
*mado3

[tb_start_text mode=1 ]
[舜]（Hồi nhỏ, đêm đến hai đứa hay ở nhà mình chiếu đèn pin sang chơi đùa nhỉ.）[p]
[舜]（Dù chỉ là nhìn ánh đèn pin nhấp nháy thôi nhưng──[r]Cảm giác dù ở nhà mà vẫn kết nối được với Nagi khiến mình rất vui...）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_mado+=1"  name="bussyoku_mado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syokkidana1

[tb_start_text mode=1 ]
[舜]（Bát đĩa được xếp ngay ngắn... Bên trong này cũng vẫn như ngày xưa.）[p]
[舜]（Đã qua bao nhiêu thời gian rồi mà chẳng thay đổi gì cả.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syokkidana+=1"  name="bussyoku_syokkidana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syokkidana2

[tb_start_text mode=1 ]
[舜]（A, cái này... là cái bát nhỏ đổi được nhờ gom tem dán trên bánh mì đây mà.）[p]
[舜]（Hồi nhỏ hai đứa đã cùng nhau đi đổi nhỉ.）[p]
[舜]（Vẫn còn dùng sao... Mà chưa vỡ thì vẫn dùng thôi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syokkidana+=1"  name="bussyoku_syokkidana"  cmd="+="  op="t"  val="1"  ]
[return  ]
*syokkidana3

[tb_start_text mode=1 ]
[舜]（Ồ, tìm thấy cả cái cốc yêu thích của Nagi nữa.）[p]
[舜]（Giữ đồ kỹ thật đấy...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syokkidana+=1"  name="bussyoku_syokkidana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*denwa1

[tb_start_text mode=1 ]
[舜]（Điện thoại bàn, vẫn còn để dùng được sao?）[p]
[舜]（Hầu như chẳng mấy khi ở nhà, chắc cũng chẳng có dịp nào dùng đến đâu.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_denwa+=1"  name="bussyoku_denwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*denwa2

[tb_start_text mode=1 ]
[舜]（Bây giờ Nagi có hay nghe điện thoại không nhỉ... Ngày xưa cô ấy bảo là sợ nghe điện thoại cơ mà.）[p]
[舜]（Cứ hễ đến nhà Nagi là không hiểu sao mình lại là người nghe điện thoại...）[p]
[舜]（Hồi đó, chắc chắn ai cũng nghĩ mình là con cái trong nhà này luôn rồi.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_denwa+=1"  name="bussyoku_denwa"  cmd="+="  op="t"  val="1"  ]
[return  ]
*denwa3

[tb_start_text mode=1 ]
[舜]（Cũng không có tin nhắn thoại nào...）[p]
[舜]（Cũng phải thôi, có chuyện gì thì người ta sẽ gọi vào điện thoại di động của Nagi chứ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_denwa+=1"  name="bussyoku_denwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako1

[tb_start_text mode=1 ]
[舜]（Vỏ kẹo với cả vỏ hộp mỹ phẩm à...）[p]
[舜]（Đúng là nhìn vào là thấy ngay dấu vết sinh hoạt nhỉ~）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako+=1"  name="bussyoku_gomibako"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako2

[tb_start_text mode=1 ]
[舜]（Nếu mà lòi ra cái bao cao su đã dùng rồi thì chắc suy sụp mất... nhưng chắc không có đâu nhỉ.）[p]
[舜]（Sao mình lại thở phào nhẹ nhõm chứ... Thiệt tình.）[p]
[舜]（Nhưng mà, không có tức là làm tình trần sao? Không, không thể nào!）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako+=1"  name="bussyoku_gomibako"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako3

[tb_start_text mode=1 ]
[舜]（Trong thùng rác có thứ gì kỳ lạ không... Có vẻ như không có gì đặc biệt.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako+=1"  name="bussyoku_gomibako"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc1

[tb_start_text mode=1 ]
[舜]（Máy tính và máy tính bảng của Nagi. ...Quả nhiên là có cài mật khẩu.）[p]
[舜]（Mật khẩu là... Không được, cứ bấm bừa thì sao mà vào được chứ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc2

[tb_start_text mode=1 ]
[舜]（Hửm? Cái máy tính bảng này...）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tabu.png" time="800" ]
[_tb_end_tyrano_code]

[wait  time="500"  ]
[tb_start_text mode=1 ]
[舜]（Dấu vân tay của Nagi in rõ mồn một.[r]Bất cẩn quá... Mà bình thường thì chắc cũng chẳng ai để ý đến mức này đâu nhỉ.）[p]

[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_1

[tb_start_text mode=1 ]
[舜]（Vậy thì, để mình xem thử dữ liệu bên trong nào.）[p]
[_tb_end_text]

[call  storage="sinnyu_PC.ks"  target="*1"  ]
[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_2

[tb_start_text mode=1 ]
[舜]（Được rồi, xem ngay thôi...）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_messe2.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
（Mối quan hệ giữa Nagi và Hayato đang ở mức nhạy cảm.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_3

[tb_start_text mode=1 ]
[舜]（Được rồi, xem ngay thôi...）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_messe3.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
（Mối quan hệ giữa Nagi và Hayato đang rất căng thẳng.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*pc3_4

[tb_start_text mode=1 ]
[舜]（Được rồi, xem ngay thôi...）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_messe4.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
（Sau khi Nagi đá Hayato.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*senpuuki1

[tb_start_text mode=1 ]
[舜]（Ồ! Cái quạt máy này vẫn còn chạy tốt sao. Ngày xưa hai đứa hay kề mặt vào quạt máy đùa giỡn nhỉ~）[p]
[舜]（Nagi cũng thích chí lắm cơ. Bình thường cô ấy ít khi cười nên thấy cô ấy vui mình cũng vui lây~）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_senpuuki+=1"  name="bussyoku_senpuuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*senpuuki2

[tb_start_text mode=1 ]
[舜]（Cái quạt có từ hồi nhỏ mà giờ vẫn chạy được, cừ thật.）[p]
[舜]（Chắc Nagi giữ gìn cẩn thận lắm.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_senpuuki+=1"  name="bussyoku_senpuuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*senpuuki3

[tb_start_text mode=1 ]
[舜]（Cô ấy không chịu được gió máy lạnh sao? Mình thì lại chuộng máy lạnh hơn.）[p]
[舜]（Mà con gái thì chắc cũng sợ bị lạnh người các kiểu nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_senpuuki+=1"  name="bussyoku_senpuuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana1

[tb_start_text mode=1 ]
[舜]（Giá sách... toàn là sách ôn thi chứng chỉ y tá quốc gia.）[p]
[舜]（Chắc cô ấy đã cố gắng học hành vất vả lắm.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tana+=1"  name="bussyoku_tana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana2

[tb_start_text mode=1 ]
[舜]（Tìm thấy album ảnh rồi...! Toàn ảnh ngày xưa... Nagi hồi đó nhỏ xíu~）[p]
[舜]（Hửm? Sao trong tấm ảnh này Nagi trông có vẻ khó chịu thế?）[p]
[舜]（À, là lúc đang chơi game thì bị bắt dừng lại đây mà...）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_tana+=1"  name="bussyoku_tana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tana3

[tb_start_text mode=1 ]
[舜]（Đống game sưu tầm ngày xưa, cô ấy vứt hết rồi sao?）[p]
[舜]（Mà lớn rồi thì... chắc cũng chẳng có thời gian mà chơi nữa.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tana+=1"  name="bussyoku_tana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tansu1

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（Tìm thấy đồ lót rồi...!!）[p]
[舜]（Nagi mặc loại này sao... Trông giản dị thế này mà lại gợi dục phết.）[p]
[舜]（Mùi bột giặt thoang thoảng... Tự dưng thấy hơi hồi hộp rồi.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_tansu+=1"  name="bussyoku_tansu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*tansu2

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（Đã tìm thấy quần lót rồi thì chỉ có một việc để làm thôi.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi.png" time="800" ]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]（Uầy... Cảm giác chạm vào quần lót là thế này sao......）[p]
Tôi điên cuồng cọ xát dương vật đã cứng ngắc vào đũng quần lót.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi_syasei.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（Chết. Bẩn mất rồi... Nhưng mà thôi kệ đi.）[p]
[舜]（Làm bẩn đồ lót người ta đã giặt sạch, quả thực cũng hơi áy náy.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_tansu+=1"  name="bussyoku_tansu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_tansu=1"  name="trap_tansu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*tansu3

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（Phải để lại chỗ cũ sao cho không bị lộ mới được...）[p]
[舜]（Gấp lại cẩn thận... Được rồi, làm đến mức này thì chắc không sao đâu.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_tansu+=1"  name="bussyoku_tansu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huton1

[tb_start_text mode=1 ]
[舜]（Hồi nhỏ Nagi từng nói "Nếu ngủ chung thì phải kết hôn với nhau"）[p]
[舜]（Thế mà không hiểu sao mình cũng tin sái cổ, còn quyết tâm sẽ mang lại hạnh phúc cho cô ấy nữa chứ.）[p]
[舜]（Sau đó, mình đã bị mẹ cười cho một trận...）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_huton+=1"  name="bussyoku_huton"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huton2

[tb_start_text mode=1 ]
[舜]（Nagi luôn ngủ ở đây sao...）[p]
[舜]（Đúng là có mùi của Nagi... Mình thử nằm một chút... chắc không bị lộ đâu nhỉ.）[p]
[舜]（Cứ như đang ngủ cùng Nagi vậy... Mùi hương thật dễ chịu...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huton+=1"  name="bussyoku_huton"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huton3

[tb_start_text mode=1 ]
[舜]（Sục cu ở đây, cảm giác tội lỗi tăng lên gấp bội luôn.）[p]
[_tb_end_text]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[wait  time="2000"  ]
[tb_start_text mode=1 ]
[舜]「A, chết, sắp ra rồi... Ra gối mất... Hức.」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_huton.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[wait  time="500"  ]
[tb_start_text mode=1 ]
[舜]（Ây da, gối bị bẩn mất rồi... Hy vọng là không bị lộ...）[p]
[舜]（Mà chắc một lúc nữa sẽ khô thôi, không sao đâu nhỉ.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.bussyoku_huton+=1"  name="bussyoku_huton"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_makura=1"  name="trap_makura"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hosu1

[tb_start_text mode=1 ]
[舜]（Ống nước máy giặt à... Cái này dùng để làm gì nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hosu+=1"  name="bussyoku_hosu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hosu2

[tb_start_text mode=1 ]
[舜]（Chắc cô ấy cũng giống mình, chỉ coi nó như một phụ kiện không dùng đến thôi.）[p]
[舜]（Lần tới thử khéo léo hỏi xem sao.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hosu+=1"  name="bussyoku_hosu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hosu3

[tb_start_text mode=1 ]
[舜]（Mình chưa bao giờ để ý xem máy giặt ở nhà mình trông như thế nào cả.）[p]
[舜]（Về nhà phải kiểm tra thử mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hosu+=1"  name="bussyoku_hosu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sentakuki1

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_sentakuki.png" time="500" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（Trong máy giặt có thứ gì đó... Ồ, phát hiện quần lót đã qua sử dụng!）[p]
[舜]（Cái kiểu vứt bừa bãi thế này cũng tuyệt lắm cơ~）[p]
[舜]（Hít... Hà... Một mùi hương hòa quyện giữa chút chua chua của mồ hôi và vị ngai ngái... Đây là mùi của Nagi sao...）[p]

[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakuki+=1"  name="bussyoku_sentakuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*sentakuki2

[tb_start_text mode=1 ]
[舜]（Xin phép mượn một chiếc nhé... Đằng nào cũng giặt mà... Chắc không sao đâu nhỉ?）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi2.png" time="500" ]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]（Uầy... Lớp vải ẩm ướt ở đũng quần đang dính chặt lấy...）[p]
[舜]（Cứ như vẫn còn lưu lại hơi ấm cơ thể vậy, cảm giác chân thực đến phát điên...）[p]
[舜]「A, chết, sắp ra rồi...」[p]
[_tb_end_text]

[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_siyouzumi_syasei2.png" time="800" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（Ưư, ...Kiểu này chắc thành thói quen mất.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakuki+=1"  name="bussyoku_sentakuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_sentaku=1"  name="trap_sentaku"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*sentakuki3

[tb_start_text mode=1 ]
[舜]（Ngoài ra... chắc không còn gì đặc biệt nữa.）[p]
[舜]（Thực lòng thì muốn mang đồ lót của cô ấy về lắm, nhưng phải kiềm chế thôi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakuki+=1"  name="bussyoku_sentakuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sentakumono1

[tb_start_text mode=1 ]
[舜]（Đồ giặt phơi ở đây sao... A, mép vải vẫn còn bị gập kìa.）[p]
[舜]（Nagi ẩu đoảng thật đấy. Vẫn chưa biết cách treo móc áo đàng hoàng sao.）[p]
[舜]（Hồi nhỏ cũng hay bị mẹ Nagi mắng vì chuyện này mà.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakumono+=1"  name="bussyoku_sentakumono"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[return  ]
*sentakumono2

[tb_start_text mode=1 ]
[舜]（Phơi khô ở đây rồi cứ thế mặc luôn sao.）[p]
[舜]（Thì ra là vậy, tiện lợi thật... Đỡ mất công gấp gọn.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakumono+=1"  name="bussyoku_sentakumono"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sentakumono3

[tb_start_text mode=1 ]
[舜]（Mùi nước xả vải thơm quá.）[p]
[舜]（Nhắc mới nhớ, Nagi cũng có mùi hương giống thế này.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sentakumono+=1"  name="bussyoku_sentakumono"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*taoru1

[tb_start_text mode=1 ]
[舜]（Cái khăn mặt này, mùi thơm quá... Đã cất công đến đây rồi, mình cũng dùng để lau mặt thử xem sao.）[p]
[舜]（Nghĩ kỹ lại thì, thế này chẳng phải là hôn gián tiếp sao?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_taoru+=1"  name="bussyoku_taoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*taoru2

[tb_start_text mode=1 ]
[舜]（Sáng nào cô ấy cũng dùng chiếc khăn này để lau mặt nhỉ...）[p]
[舜]（Đằng nào cũng vậy, hay là bôi thêm chút dâm dịch đầu cu lên nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_taoru+=1"  name="bussyoku_taoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*taoru3

[tb_start_text mode=1 ]
[舜]（Nghĩ đến cảnh cô ấy không hay biết gì mà cứ thế đi làm thì......）[p]
[舜]（Nói sao nhỉ... Cảm giác tội lỗi kỳ lạ này cứ râm ran trong người.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_taoru+=1"  name="bussyoku_taoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kago1

[tb_start_text mode=1 ]
[舜]（Cái này... vẫn chưa giặt sao. Chắc là gom lại rồi mới giặt một mẻ đây mà~）[p]
[舜]（Mà sống một mình thì cũng không cần ngày nào cũng giặt.）[p]
[舜]（Có những thứ gì ở đây nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kago+=1"  name="bussyoku_kago"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kago2

[tb_start_text mode=1 ]
[舜]（Đây chẳng phải là quần tất trắng Nagi hay mặc ở chỗ làm sao!）[p]
[舜]（Gợi dục quá... Mặc thử một lần xem sao. Ấy, chật ních thế này thì làm sao mà mặc vừa được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kago+=1"  name="bussyoku_kago"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kago3

[tb_start_text mode=1 ]
[舜]（Chết thật, muốn sục cu quá... Xin phép một chút nhé...）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_pansuto.png" time="800" ]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]「Uầy... mượt mà quá...! Cảm giác của quần tất là thế này sao...」[p]
[舜]「Mềm mại quá, cứ như dương vật đang được bao bọc dịu dàng vậy...」[p]
[_tb_end_text]

[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_pansuto_syasei.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（Hà, hưng phấn quá đi mất... Giặt sạch đi là không bị lộ đâu nhỉ?）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.trap_sentakukago=1"  name="trap_sentakukago"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.bussyoku_kago+=1"  name="bussyoku_kago"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kabekake1

[tb_start_text mode=1 ]
[舜]（Bức ảnh hoa hướng dương...... Nagi trang trí sao.）[p]
[舜]（Đúng rồi, mình nhớ ra rồi. Nagi từ ngày xưa đã rất thích hoa hướng dương...）[p]
[舜]（Cứ đến mùa hè là hai đứa lại hay ra cánh đồng hoa hướng dương chơi. Không biết Nagi có còn nhớ không.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_kabekake+=1"  name="bussyoku_kabekake"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kabekake2

[tb_start_text mode=1 ]
[舜]（Lúc đi vệ sinh, Nagi có hay nhìn bức ảnh này không nhỉ?）[p]
[舜]（Cô ấy thường nghĩ về chuyện gì nhỉ...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kabekake+=1"  name="bussyoku_kabekake"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kabekake3

[tb_start_text mode=1 ]
[舜]（Nếu Nagi nói muốn đi ngắm cánh đồng hoa hướng dương lần nữa, mình nhất định sẽ dẫn cô ấy đi.）[p]
[舜]（Mà, bây giờ người cô ấy nhờ "dẫn đi" chắc không phải là mình nữa rồi.）[p]
[舜]「Tự nói xong tự thấy bực mình. Thôi bỏ đi.」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kabekake+=1"  name="bussyoku_kabekake"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*komado1

[tb_start_text mode=1 ]
[舜]（Cửa sổ thì... không có gì thay đổi cả.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_komado+=1"  name="bussyoku_komado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*komado2

[tb_start_text mode=1 ]
[舜]（Cửa sổ cũng được lau chùi sạch sẽ... Bằng chứng là cô ấy có dọn dẹp đàng hoàng.）[p]
[舜]（Nagi sống ngăn nắp thật đấy... Thỉnh thoảng mình cũng phải lau cửa sổ nhà vệ sinh mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_komado+=1"  name="bussyoku_komado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*komado3

[tb_start_text mode=1 ]
[舜]（Hồi nhỏ, Nagi hay bảo là sợ cửa sổ nhà vệ sinh nhỉ.）[p]
[舜]（Lúc đang chơi mà cô ấy buồn đi vệ sinh là mình lại phải đi cùng...）[p]
[舜]（Có lúc cô ấy còn mở toang cửa ra mà đi nữa. Có nên nhắc lại chuyện xưa với Nagi không nhỉ.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_komado+=1"  name="bussyoku_komado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*poti1

[tb_start_text mode=1 ]
[舜]（Túi đựng đồ trang điểm? Bên trong có gì thế? Đây là... băng vệ sinh sao.）[p]
[舜]「Mở ra xem một chút chắc không sao đâu nhỉ... Có đủ các loại kích cỡ và hình dáng luôn à.」[p]
[舜]「Phải dán cái này vào quần lót, làm phụ nữ vất vả thật đấy...」[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_poti+=1"  name="bussyoku_poti"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*poti2

[tb_start_text mode=1 ]
[舜]（Máu sẽ thấm vào đây sao? ...Khó hình dung quá.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_poti+=1"  name="bussyoku_poti"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*poti3

[tb_start_text mode=1 ]
[舜]（Tiếc là không phải băng vệ sinh đã qua sử dụng... Dù sao thì mình cũng tò mò muốn xem thử.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_poti+=1"  name="bussyoku_poti"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki1

[tb_start_text mode=1 ]
[舜]（Bệ bồn cầu mà Nagi hay ngồi sao...）[p]
[舜]（Nếu mình xuất tinh lên đây, Nagi sẽ ngồi lên đó nhỉ...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki+=1"  name="bussyoku_benki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki2

[tb_start_text mode=1 ]
[舜]（Không, khoan đã. Biết đâu Hayato cũng dùng cái này.）[p]
[舜]（Tụt hết cả hứng... Thôi dẹp đi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_benki+=1"  name="bussyoku_benki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*benki3

[tb_start_text mode=1 ]
[舜]（Hồi nhỏ Nagi toàn vừa ngồi bồn cầu vừa chơi game nhỉ.）[p]
[舜]（Ngồi lỳ hàng tiếng đồng hồ, có lần làm mọi người nháo nhào lên tưởng đi lạc...）[p]
[舜]（Rốt cuộc lại chui ra từ nhà vệ sinh ở nhà.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_benki+=1"  name="bussyoku_benki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huromado1

[tb_start_text mode=1 ]
[舜]（Cảnh vật nhìn từ đây cũng không thay đổi gì cả.）[p]
[舜]（Nhớ hồi tắm chung, Nagi từng nói "Nhỡ có ai nhìn trộm qua cửa sổ thì sao" nhỉ）[p]
[舜]（Sợ quá nên cứ bám rịt lấy mình nhỉ.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_huromado+=1"  name="bussyoku_huromado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huromado2

[tb_start_text mode=1 ]
[舜]（Có ánh sáng chiếu vào cho sáng sủa thì cũng tốt nhưng mà.）[p]
[舜]（Cửa sổ to quá thì con gái cũng lo lắng nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huromado+=1"  name="bussyoku_huromado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huromado3

[tb_start_text mode=1 ]
[舜]（Khả năng cao kẻ nhìn trộm là con người chứ không phải ma quỷ đâu.）[p]
[舜]（Mà, mình cũng chẳng có tư cách gì để nói câu đó...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huromado+=1"  name="bussyoku_huromado"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yokusou1

[tb_start_text mode=1 ]
[舜]（Hồi nhỏ mình hay tắm chung với Nagi lắm.）[p]
[舜]（Ngày xưa đâu có phân biệt nam nữ gì đâu...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yokusou+=1"  name="bussyoku_yokusou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yokusou2

[tb_start_text mode=1 ]
[舜]（Hai đứa còn khoe cơ thể trần truồng cho nhau xem nữa...）[p]
[舜]（Lần đầu tiên mình nhận thức được sự khác biệt về cơ thể giữa nam và nữ cũng là lúc tắm chung với Nagi.）[p]
[舜]（Lúc đó là vui nhất.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_yokusou+=1"  name="bussyoku_yokusou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yokusou3

[tb_start_text mode=1 ]
[舜]（Bây giờ mà rủ tắm chung thì cô ấy sẽ phản ứng thế nào nhỉ.）[p]
[舜]（Chắc chắn là sẽ bị xa lánh thôi... Thôi bỏ đi.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_yokusou+=1"  name="bussyoku_yokusou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawa1

[tb_start_text mode=1 ]
[舜]（Vòi hoa sen khác với nhà mình kìa.）[p]
[舜]（Tự thay à? Chà, loại tăng áp suất nước cơ đấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawa+=1"  name="bussyoku_syawa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawa2

[tb_start_text mode=1 ]
[舜]（Vòi sen áp suất mạnh chắc là sướng lắm nhỉ.）[p]
[舜]（Biết đâu Nagi cũng dùng cái này để thủ dâm...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawa+=1"  name="bussyoku_syawa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syawa3

[tb_start_text mode=1 ]
[舜]（Không biết cô ấy chỉ tắm vòi sen hay có ngâm bồn đàng hoàng không nhỉ?）[p]
[舜]（Sống một mình thường hay lười ngâm bồn mà chỉ tắm vòi sen cho nhanh...）[p]
[舜]（Nagi có ngâm bồn không nhỉ...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syawa+=1"  name="bussyoku_syawa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syanpu1

[tb_start_text mode=1 ]
[舜]（Đây là dầu gội và dầu xả Nagi đang dùng sao.）[p]
[舜]（Hồi nhỏ Nagi toàn khóc ầm lên vì sợ xà phòng rơi vào mắt nhỉ.）[p]
[舜]（Lớn lên tự nhiên biết cách gội đầu đàng hoàng, kỳ diệu thật.）[p]
[_tb_end_text]

[call  storage="sinnyu_nagi_bussyoku_ev.ks"  target="*omoide"  ]
[tb_eval  exp="f.bussyoku_syanpu+=1"  name="bussyoku_syanpu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syanpu2

[tb_start_text mode=1 ]
[舜]（A, bây giờ người ta không gọi là dầu xả nữa mà gọi là conditioner à...）[p]
[舜]（Đàn ông thì chịu thua mấy cái này thôi...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syanpu+=1"  name="bussyoku_syanpu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syanpu3

[tb_start_text mode=1 ]
[舜]（Chắc là cũng đắt tiền lắm đây~）[p]
[舜]（"Tóc uốn lượn cũng vào nếp suôn mượt" à... Không lẽ cô ấy đang bận tâm vì tóc xoăn sao?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_syanpu+=1"  name="bussyoku_syanpu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurotaoru1

[tb_start_text mode=1 ]
[舜]（Bình thường Nagi dùng cái này để tắm sao... Khăn tắm loại mềm nhỉ.）[p]
[舜]（Với mình thì có vẻ không bõ bèn gì... Mình thích loại chà xát mạnh cơ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurotaoru+=1"  name="bussyoku_hurotaoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurotaoru2

[tb_start_text mode=1 ]
[舜]（Chắc là khăn tắm dành riêng cho làn da con gái nhỉ?）[p]
[舜]（Dùng cái này thì da cũng láng mịn như Nagi sao?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurotaoru+=1"  name="bussyoku_hurotaoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*hurotaoru3

[tb_start_text mode=1 ]
[舜]（Mùi hương... là mùi thơm của sữa tắm...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_hurotaoru+=1"  name="bussyoku_hurotaoru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*zaisu1

[tb_start_text mode=1 ]
[舜]（Cô ấy luôn ngồi trên chiếc ghế này để tắm sao...）[p]
[舜]（...Bảo không tưởng tượng thì đúng là đánh đố mà.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_zaisu+=1"  name="bussyoku_zaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*zaisu2

[tb_start_text mode=1 ]
[舜]（Một chút thôi thì chắc không sao đâu nhỉ...）[p]
[_tb_end_text]

[playse  volume="80"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stopse  time="500"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/bussyoku_zaisu.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Chất lỏng đục ngầu sền sệt lan ra trên mặt ghế.[p]
[舜]（Chỉ nghĩ đến việc Nagi sẽ ngồi lên đây thôi mà mình đã thấy rạo rực rồi, mình đúng là hết thuốc chữa mà.）[p]
[舜]（......Chắc chắn là không thể mang thai được đâu, nhỉ?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_zaisu+=1"  name="bussyoku_zaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_huro=1"  name="trap_huro"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*zaisu3

[tb_start_text mode=1 ]
[舜]（Đã cất công làm rồi, hay là cứ để nguyên thế này không rửa đi nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_zaisu+=1"  name="bussyoku_zaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huku1

[tb_start_text mode=1 ]
[舜]（Hả? Đây từng là phòng của mẹ Nagi cơ mà.）[p]
[舜]（Tại sao lại có quần áo của Hayato ở đây...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huku+=1"  name="bussyoku_huku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huku2

[tb_start_text mode=1 ]
[舜]（Bực mình thật... Đúng rồi, nhét quần lót của Nagi vào túi áo hắn đi.）[p]
[舜]（Cứ việc bị coi là kẻ biến thái đi nhé.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huku+=1"  name="bussyoku_huku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_hayatohuku=1"  name="trap_hayatohuku"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*huku3

[tb_start_text mode=1 ]
[舜]（Được rồi, đã trở lại như cũ. Thế này thì nhìn qua sẽ không phát hiện ra đâu.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_huku+=1"  name="bussyoku_huku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kaban1

[tb_start_text mode=1 ]
[舜]（Tại sao lại có đồ dùng cá nhân của Hayato ở đây chứ...）[p]
[舜]（Hắn đến đây thường xuyên thế cơ à?）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kaban+=1"  name="bussyoku_kaban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kaban2

[tb_start_text mode=1 ]
[舜]（Trong túi xách còn cẩn thận chuẩn bị sẵn cả bao cao su nữa chứ. Đừng có mang thứ rác rưởi không cần thiết vào đây.）[p]
[舜]（...）[p]
[舜]（Phải rồi... Đã vậy thì để mình tận dụng triệt để xem sao.）[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_show  time="0"  storage="default/bussyoku_kon.png"  width="1280"  height="720"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（Uầy... Ra cũng khá nhiều đấy...）[p]
[舜]（Và... vứt rác vào thùng rác nào. Nếu có bao cao su đã qua sử dụng vứt trong thùng rác... chắc Nagi sẽ sốc lắm đây.）[p]
[舜]（Đến mình cũng phải công nhận đây là ý tưởng tuyệt vời nhất mà chỉ mình mới thấy hả hê.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_kaban+=1"  name="bussyoku_kaban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.trap_gomibako=1"  name="trap_gomibako"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_image_hide  time="1000"  ]
[return  ]
*kaban3

[tb_start_text mode=1 ]
[舜]（Ủa? Đây là biên lai khách sạn tình yêu sao? Cái này, là hắn đi với đứa con gái khác đúng không...）[p]
[舜]（Vậy thì... Tạm thời cứ vứt vào thùng rác cho hắn.）[p]
[舜]（Chuẩn bị tinh thần ăn chửi từ Nagi đi thằng ngu.）[p]
[_tb_end_text]

[tb_eval  exp="f.trap_hayatosibutu=1"  name="trap_hayatosibutu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.bussyoku_kaban+=1"  name="bussyoku_kaban"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako_hayato1

[tb_start_text mode=1 ]
[舜]（Rác nilon và nhựa được vứt ở đây.）[p]
[舜]（Cái này... là rác do hắn vứt đúng không...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_hayato+=1"  name="bussyoku_gomibako_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako_hayato2

[tb_start_text mode=1 ]
[舜]（Hà...... Nghĩ đến việc đây là rác do đàn ông vứt, tự dưng thấy buồn nôn quá.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_hayato+=1"  name="bussyoku_gomibako_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*gomibako_hayato3

[tb_start_text mode=1 ]
[舜]（...Thôi bỏ đi. Có lục lọi thêm cũng chẳng moi ra được thứ gì ra hồn.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_gomibako_hayato+=1"  name="bussyoku_gomibako_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sibutu1

[tb_start_text mode=1 ]
[舜]（Ủa, có thứ gì bên trong kìa. Đồ dùng học tập của nam giới với sổ tay.）[p]
[舜]（Đây là bút của Hayato sao? Dùng đồ xịn đến mức phát bực...）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sibutu+=1"  name="bussyoku_sibutu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sibutu2

[tb_start_text mode=1 ]
[舜]（Đây... là chữ của Hayato sao.）[p]
[舜]（Hắn nghĩ chỉ cần chải chuốt vẻ bề ngoài là có thể che giấu được bản chất rác rưởi bên trong sao.）[p]
[舜]（Mọi thứ về hắn đều khiến mình chướng mắt.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sibutu+=1"  name="bussyoku_sibutu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sibutu3

[tb_start_text mode=1 ]
[舜]（Mà khoan, hắn để cả đồ dùng học tập ở đây luôn à.）[p]
[舜]（Tính cắm cọc ở đây luôn hay sao. Đúng là cái đồ trơ trẽn.）[p]
[_tb_end_text]

[tb_eval  exp="f.bussyoku_sibutu+=1"  name="bussyoku_sibutu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
