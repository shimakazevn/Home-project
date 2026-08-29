]
[_tb_system_call storage=system/_H_suimin_serihu.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「Bắn ra rồi…! Nagi…!」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="80"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H01_2.png"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「Phù, phù, phù… Thân thể Nagi… ướt sũng dính đầy tinh dịch của mình rồi kìa… A, dâm đãng thật sự…」[p]
Nagi「Ưm… hức…」[p]
[舜]（Chết tiệt… Tỉnh dậy rồi sao? À không… Có vẻ vẫn ổn… May quá）[p]
[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*syasei"  ]
[return  ]
*syasei_kokan

[cm  ]
[tb_start_text mode=1 ]
[舜]「Bắn ra rồi…! Nagi…! Khốn thật!」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="80"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H01_1.png"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（Oa, vì nhịn lâu ngày nên bắn ra nhiều kinh khủng……）[p]
[舜]（A, chảy dọc theo khe rãnh, cả hột le lẫn âm đạo… đều nhầy nhụa tinh dịch rồi……）[p]
[_tb_end_text]

[jump  storage="EV_item_suimin.ks"  target="*syasei"  ]
*sikan1

[tb_start_text mode=1 ]
[舜]（Hoàn toàn khác hẳn với hồi còn nhỏ… Đã trưởng thành thành một cơ thể gợi cảm thế này rồi… A~, chỗ nào trông cũng mềm mại hết…）[p]
Nagi「Khò… khò… khò…」[p]
[舜]「Chẳng có dấu hiệu gì là sắp tỉnh dậy cả…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_sikan+=1"  name="H_suimin_sikan"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sikan2

[tb_start_text mode=1 ]
[舜]（Thân thể này Hayato đã làm đủ trò rồi sao… A~, nghĩ tới lại thấy bực mình…）[p]
[舜]（Mình cũng sẽ sờ nắn cặp ngực này thỏa thích. A, đầu ti cũng bắt đầu cương lên rồi… Lát nữa phải vuốt ve mơn trớn thật kỹ mới được）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_sikan+=1"  name="H_suimin_sikan"  cmd="+="  op="t"  val="1"  ]
[return  ]
*sikan3

[tb_start_text mode=1 ]
Nagi「Ưm… phù…」[p]
[舜]（Hết cả hồn… Cứ tưởng tỉnh dậy rồi chứ… Ổn rồi, vẫn còn đang ngủ say… Phải nhìn cho thật kỹ mới được）[p]
[舜]（Quần lót thít chặt vào, làm lộ rõ mồn một khe rãnh… Hê, chỗ này trông khá là múp míp đấy chứ）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_sikan=0"  name="H_suimin_sikan"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*syojyomaku1

[tb_start_text mode=1 ]
[舜]（Giờ thì… bên trong quần lót trông thế nào nhỉ…? Ưm, …Khe rãnh khép khít rịt lại kìa）[p]
[舜]（Dùng ngón tay vạch ra để chiêm ngưỡng nào…… Kìa? Tận sâu bên trong… là màng trinh sao…? ……Không, làm sao có chuyện đó được）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_syojyomaku+=1"  name="H_suimin_syojyomaku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*syojyomaku2

[tb_start_text mode=1 ]
[舜]（Bên trong cũng là một màu hồng hào tuyệt đẹp. …Hột le cũng nở nang chúm chím… Đẹp thật đấy）[p]
[舜]（Bất ngờ bị vạch ra nên cơ thể giật mình chăng? Cứ co giật khẽ khàng thế này trông đáng yêu ghê…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_syojyomaku+=1"  name="H_suimin_syojyomaku"  cmd="+="  op="t"  val="1"  ]
[return  ]
*syojyomaku3

[tb_start_text mode=1 ]
[舜]（Phải quan sát thật kỹ tận sâu bên trong mới được… Bên trong trông chật hẹp quá… Chắc nhét một ngón tay vào thôi cũng chật ních rồi）[p]
[舜]（Nong cho quen thôi chắc cũng vất vả lắm đây… Nhưng độ khít khao chắc chắn sẽ tuyệt vời lắm cho xem……）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_syojyomaku=0"  name="H_suimin_syojyomaku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*kiss1

[tb_start_text mode=1 ]
[舜]「Nagi…… Chụt…。 Đôi môi mềm mại quá…」[p]
[舜]「Hà… Môi em ấy lại mềm đến mức này sao… Cứ đà này mình không dừng lại được mất」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_kiss+=1"  name="H_suimin_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*kiss2

[tb_start_text mode=1 ]
[舜]「Nagi, một lần nữa nhé…。 Chụt mút…… Chụt…… Ưm, phù」[p]
Nagi「Ưm, phù… Ưm」[p]
[舜]「A, khó thở lắm đúng không… Anh xin lỗi nhé. Hì hì, thế này mà vẫn chưa tỉnh sao…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_kiss+=1"  name="H_suimin_kiss"  cmd="+="  op="t"  val="1"  ]
[return  ]
*kiss3

[tb_start_text mode=1 ]
[舜]「Cho anh luồn lưỡi vào trong miệng nhé. Cùng hôn sâu quấn lưỡi nào… Chụt, mút… Chụt……」[p]
Nagi「Ưm, phù… Ưm…」[p]
[舜]（A, lưỡi của Nagi nóng hổi ướt át quá… Lại còn rên rỉ giọng điệu dâm đãng thế này nữa… Chịu không nổi mất…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_kiss=0"  name="H_suimin_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*muneijiri1

[tb_start_text mode=1 ]
[舜]「Ngực em… Oa, mềm mại như bông… Mềm quá… A~, cảm giác sờ vào thích thật đấy…」[p]
[舜]（Kinh thật, chỉ cần dùng chút lực là mềm đến mức biến dạng luôn rồi）[p]
[舜]（Hồi nhỏ thì gầy gò và bé tí teo. Không ngờ lại lớn thành cặp ngực gợi tình đến nhường này…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_muneijiri+=1"  name="H_suimin_muneijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*muneijiri2

[tb_start_text mode=1 ]
[舜]（Vừa tóm chặt lấy vừa nhào nặn thế này, sướng thật… Trông chẳng khác nào đang cưỡng bức người ta cả）[p]
Nagi「Ưm… Ư… hà…」[p]
[舜]「Hử… Đang ngủ mà cũng thấy sướng sao? Nagi dâm đãng thật đấy nhé…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_muneijiri+=1"  name="H_suimin_muneijiri"  cmd="+="  op="t"  val="1"  ]
[return  ]
*muneijiri3

[tb_start_text mode=1 ]
[舜]（Đầu ti cũng cương cứng lên rồi. Nếu vân vê thì sẽ thế nào nhỉ?）[p]
Nagi「A… Hà… A, a…」[p]
[舜]（Ngủ say mà vẫn cảm nhận được khoái cảm cơ à… Nagi, thực ra em cũng dâm ngầm lắm đấy chứ…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_muneijiri=0"  name="H_suimin_muneijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*mataijiri1

[tb_start_text mode=1 ]
[舜]（Khe rãnh phía dưới thế nào rồi nhỉ…… Nóng ran… Ơ, hình như có gì đó nhờn nhờn ươn ướt. Ra nước rồi sao?）[p]
Nagi「Khò…… Khò……」[p]
[舜]（…Hê, dù đang ngủ nhưng cơ thể vẫn tự động phản ứng lại cơ đấy. Chẳng khác gì cơ thể đàn ông cả）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_mataijiri+=1"  name="H_suimin_mataijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*mataijiri2

[tb_start_text mode=1 ]
[舜]（Hột le cũng nở to lên rồi…… Nagi, chỗ này làm em sướng lắm đúng không?）[p]
Nagi「Ưm…♡ Ưm……♡ Phù, ưm…」[p]
[舜]（Cơ thể em ấy khẽ giật giật, hơi thở dồn dập hẳn lên. Đang mơ thấy giấc mơ ướt át nào chăng…）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_mataijiri+=1"  name="H_suimin_mataijiri"  cmd="+="  op="t"  val="1"  ]
[return  ]
*mataijiri3

[tb_start_text mode=1 ]
[舜]（Khe rãnh đã ướt sũng nhầy nhụa rồi…。 Bị khuấy đảo ướt át đến thế này mà vẫn không tỉnh dậy cơ đấy…）[p]
Nagi「Ưm♡ Hà…♡ Hà…♡」[p]
[舜]（Cơ thể em ấy đã bước vào trạng thái động dục rồi… Nagi, anh thèm đút vào trong em lắm rồi đấy……）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_mataijiri=0"  name="H_suimin_mataijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*matazuri1

[tb_start_text mode=1 ]
[舜]「Ư, …Oa! Sướng quá… Chỉ mới áp sát vào khe rãnh cọ qua cọ lại thôi mà đã sướng đến mức này rồi sao…」[p]
[舜]「A~, hông mình cứ tự động đưa đẩy… Hà, a, khe rãnh của Nagi cũng đang co bóp giật giật kìa」[p]
Nagi「Khò… Khò…… Ưm」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_matazuri+=1"  name="H_suimin_matazuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*matazuri2

[tb_start_text mode=1 ]
[舜]「Sắp ra rồi…! Nagi…! Bắn vào nhé…!」[p]
Nagi「Ưm… A…♡」[p]
[舜]（Bắn hết sạch lên người em ấy rồi… Trông gợi cảm không chịu nổi）[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_matazuri+=1"  name="H_suimin_matazuri"  cmd="+="  op="t"  val="1"  ]
[return  ]
*matazuri3

[tb_start_text mode=1 ]
[舜]（Lần sau, mình nhất định sẽ đút thẳng vào tận sâu bên trong…）[p]
Nagi「Ư… ưm……」[p]
[舜]「Ngủ ngon nhé, Nagi…」[p]
[_tb_end_text]

[tb_eval  exp="f.H_suimin_matazuri=0"  name="H_suimin_matazuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  