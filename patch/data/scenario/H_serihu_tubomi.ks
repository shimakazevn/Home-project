
[_tb_system_call storage=system/_H_serihu_tubomi.ks]

*high

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=4"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="+="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*high2

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=7"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(15-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*low

[tb_eval  exp="f.H_hit-=1"  name="H_hit"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou-=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="-="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*hit

[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=3"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(20-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="20"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[return  ]
*supiritasu_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Không chịu đâu, đừng nhìn em mà... Xấu hổ lắm...」[p]
Tsubomi「Anh cứ im lặng mãi thế, làm em bất an đấy biết không~? Nói gì đi chứ♡」[p]
[舜]（Say bí tỉ luôn rồi...）[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Chỉ có mỗi em bị nhìn thôi thì ăn gian quá~♡ Cho em xem của anh nữa đi♡」[p]
[舜]「Em muốn nhìn bao nhiêu cũng được... Bù lại anh muốn nhìn cơ thể của Tsubomi nhiều hơn nữa.」[p]
Tsubomi「Mồ~, đừng có làm vẻ mặt nghiêm túc thế mà nói chứ♡ Ưm... haa... xấu hổ quá đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Chỉ bị nhìn thôi mà... em đã thấy rạo rực hết cả lên rồi này...♡ Ghét quá đi mất...♡」[p]
Tsubomi「Nhìn kỹ hơn nữa đi...? Cơ thể em, có đẹp không? Phải khen em đàng hoàng đấy nhé♡ Em muốn được anh khen cơ♡」[p]
Tsubomi「Ưm phu phu, nhìn mặt là biết ngay mà...♡ Anh đang hưng phấn lắm đúng không~♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*supiritasu_kiss1

[tb_start_text mode=1 ]
Tsubomi「Chụt, chu, ưm...♡ Phù, ưm... chụt chu chu...♡」[p]
Tsubomi「A! Haa...♡ Haa...♡ Haa...♡ Anh ngấu nghiến quá đấy♡ Em không thở nổi nữa rồi♡」[p]
Tsubomi「Anh say mê đến thế sao...? Vậy thì... hôn em thêm nữa cũng được đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kiss2

[tb_start_text mode=1 ]
Tsubomi「Chụt, chu chu, ưm...♡ Haa, a phu♡ Hôn sướng quá đi... Ưm ư...♡」[p]
Tsubomi「Haa, ha phu, a...♡ Khoang miệng em... ướt át nát bét hết rồi này...♡ Ưm, nữa đi, cho em thêm nữa đi♡」[p]
Tsubomi「Ưm...♡ Chụt chụt chụt♡ Chụt, rột rột rột♡ Ưm chu, chụt chụt...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kiss3

[tb_start_text mode=1 ]
Tsubomi「Chu, chu... Haa, a...♡ Chỉ hôn thôi mà... lạ quá... phần bụng dưới của em... cứ nhói lên này...♡」[p]
Tsubomi「Chắc là nó đang thèm khát đấy...♡ Đừng nói với em là chỉ thế này thôi nhé...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ư ư...♡ Phu, phù... Cảm giác vừa rồi... là sao chứ...♡」[p]
Tsubomi「Chỉ hôn thôi mà... em đã thấy sướng rơn người rồi...♡ Anh đã làm gì em thế?」[p]
Tsubomi「Cứ như... anh đã quen tay lắm rồi ấy, thật đáng ghét♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ A...♡ A...♡ Ưm... hộc... haa♡ Vú em đang bị sờ này...♡」[p]
[舜]「Tuyệt thật, mềm quá...」[p]
Tsubomi「Ưm...♡ Hộc, haa♡ Anh đang nắn bóp kiểm tra độ mềm kìa♡ Hi ư ư...♡ A a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_munemomi2

[tb_start_text mode=1 ]
Tsubomi「Ha phu, hộc...♡ A...♡ A a...♡ Ưm a...♡ Phản ứng mất rồi...♡」[p]
[舜]「Đầu vú cũng cương cứng lên rồi này... Dâm quá đi.」[p]
Tsubomi「A...♡ Đừng nói mà...♡ Bị chạm vào nên nó mới phản ứng đấy chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Không được đâu, đừng có xoa bóp nhiều thế chứ♡ Ha phu, haa♡ A, phản ứng mất rồi... hông tự động nẩy lên luôn này♡」[p]
Tsubomi「Ưm... Chỉ sờ mỗi vú thôi mà... phần dưới cũng nhói lên rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hya ư ư...♡ Hộc, a, a...♡ Vú em, sướng quá đi...♡」[p]
Tsubomi「Làm thế... phần bụng dưới của em... nhói lên luôn rồi này...♡」[p]
Tsubomi「Ư ư...♡ Cơ thể em... vẫn còn tê rần rần này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a a...♡ Đau quá... Đừng đánh vào mông em mà...♡ Hức... đau lắm đấy.」[p]
[舜]「Đang phản ứng rồi kìa.」[p]
Tsubomi「Ưm...♡ Phù, tại vì... chỗ bị đánh cứ nóng ran lên... cảm giác lạ lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_supankingu2

[tb_start_text mode=1 ]
Tsubomi「Hya ư ư...♡ A...♡ Nó in dấu lại, đỏ ửng lên mất thôi♡」[p]
Tsubomi「Hộc...♡ Hộc...♡ Hộc...♡ Lạ quá... Rõ ràng là đau... thế mà lại sướng rơn lên rồi...♡」[p]
Tsubomi「Em lại muốn bị đánh thêm nữa cơ♡ Em biến thái quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a...♡ Hộc...♡ Hộc...♡ Hộc...♡ Hộc...♡ Nữa đi, mạnh nữa đi anh♡ Sướng quá đi...♡」[p]
Tsubomi「Bị đánh mông, thành nghiện luôn rồi này♡ Ha hi, haa, a...♡ A a a...♡」[p]
Tsubomi「Chỉ bị đánh đòn thôi mà cũng ra mất... Cơ thể em trở nên biến thái mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm a a...♡ A, chỗ đó... không chịu đâu...♡ Em phát điên, mất thôi...♡」[p]
[舜]「Phản ứng dữ dội thật...」[p]
Tsubomi「A... Đau thế cơ mà♡ Em cứ tưởng là mình ra luôn rồi chứ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a a a...♡ Ngón tay đút vào rồi kìa♡ Đ-Đừng có ngoáy mạnh thế chứ... Nhẹ nhàng thôi anh♡」[p]
[舜]「Chà, ướt sũng luôn rồi này... Nhầy nhụa hết cả.」[p]
Tsubomi「A ư...♡ Đừng nói mà♡ Ha ư, a a...♡ Ngón tay, tuyệt quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_teman2

[tb_start_text mode=1 ]
Tsubomi「Ng-Ngón tay thôi mà em cũng ra mất...♡ Ô...♡ Ô ô...♡ Không được, chỗ đó...♡ Điểm yếu của em đấy♡」[p]
Tsubomi「Ưm ô ô...♡ A...♡ A...♡ A...♡ Đừng có nhắm, tập trung vào một chỗ thế chứ...♡」[p]
Tsubomi「Em phát điên lên mất thôi...♡ A...♡ A...♡ A...♡ Hức ư ư...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A a...♡ Ưm ô ô...♡ Cô bé, tê rần rần lên rồi này♡ Ngón tay chạm đến tận sâu bên trong luôn rồi♡」[p]
Tsubomi「Không được, không được không được... Ra thật đấy... Chỉ dùng ngón tay thôi mà em cũng ra mất...♡」[p]
Tsubomi「Em phát điên, mất thôi...♡ Haa, hộc, a a a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ô ô...♡ A ư ư...♡ Gì thế gì thế cái gì thế này...♡」[p]
Tsubomi「Đầu óc em, phát điên lên mất thôi...♡ Ra mất nên không được đâu...♡」[p]
Tsubomi「Ô hô ô...♡ Cô bé nát bét hết rồi em ra mất thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Kh-Không chịu đâu, chỗ đó... đừng liếm mà♡ Xấu hổ lắm...」[p]
[舜]「Trơn tuột nhầy nhụa luôn rồi.」[p]
Tsubomi「Mồ, sao anh lại nói ra chứ♡ A...♡ A a...♡ Liếm láp thế không được đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_kunni2

[tb_start_text mode=1 ]
Tsubomi「Ưm ưm ưm...♡ Th-Thế là đủ rồi mà... A, hơn thế nữa, thì... không được đâu...♡」[p]
[舜]「Hông em đang tự động nẩy lên kìa?」[p]
Tsubomi「Haa, a, a...♡ Tại vì...♡ Sướng quá đi mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Haa...♡ Haa...♡ Haa...♡ A...♡ A a, ấm nóng quá... sướng quá đi...♡」[p]
Tsubomi「A a, bị mút thế này sướng quá đi...♡ Đúng rồi, em thích thế lắm♡」[p]
Tsubomi「Ưm...♡ A...♡ Nhầy nhụa ướt át hết luôn rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ô ô...♡ Chỗ đó, không chịu đâu...♡ Hộc...♡ Hộc...♡ Ưm...♡ Chỗ đó nhạy cảm lắm cơ mà...♡」[p]
Tsubomi「A... A, a a a...♡ Ưm ô ô♡ Ô ô ô...♡ Kh-Không được liếm nữa đâu♡」[p]
Tsubomi「Sắp ra rồi, nên là... không chịu không chịu không chịu đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Haa, cách sờ... dâm đãng quá...♡ Anh muốn sờ mông em từ lâu rồi đúng không?」[p]
Tsubomi「Ưm... Bàn tay, ấm quá... cảm giác lạ lắm cơ...♡」[p]
[舜]「Hông em, uốn éo trông dâm đãng quá đấy...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_naderu2

[tb_start_text mode=1 ]
Tsubomi「Hya...♡ Đừng có vuốt ve nhiều quá mà...♡ Em lại muốn thêm nữa mất thôi.」[p]
Tsubomi「Ưm...♡ Phù... Phù...♡ Chỉ vuốt ve thôi mà... sướng quá đi...♡」[p]
Tsubomi「Phần phía trước... lại nhói lên khao khát rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A a...♡ H-Hông em nẩy lên mất...♡ Rõ ràng em không tự cử động cơ mà♡」[p]
Tsubomi「Râm ran... Cảm giác sướng rơn lan tỏa khắp toàn thân luôn này...♡」[p]
Tsubomi「Sắp bị làm gì đây... em đang mong chờ lắm cơ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_naderu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ C-Cái gì vừa rồi thế...♡ Sướng quá...♡ Em không biết gì nữa rồi...♡」[p]
Tsubomi「Chỉ bị vuốt ve mông thôi mà... trước mắt em, nổ đom đóm luôn rồi này...♡」[p]
Tsubomi「Haa... Haa... Haa... Vẫn còn giật giật này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「A...♡ Haa♡ A...♡ Haa, không chịu đâu, vào đến tận sâu bên trong rồi...♡」[p]
Tsubomi「Ch-Chật kín thế này luôn sao...? Thứ to lớn đút vào trong rồi ngoáy ngoáy kìa♡」[p]
Tsubomi「Haa...♡ Haa...♡ Đ-Đến tận gốc... đút lọt hết vào trong rồi này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「Hộc...♡ Haa♡ Haa a...♡ Hộc...♡ Ưm...♡ Đừng có đâm huỵch huỵch thế chứ♡」[p]
[舜]「Em đang ngậm chặt lấy toàn bộ luôn kìa.」[p]
Tsubomi「Ưm ư ư...♡ Tại vì...♡ Anh cứ thụt ra thụt vào tận sâu bên trong cơ mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「Hức ư ư...♡ A ư...♡ Hộc...♡ Hộc...♡ Không được, cảm giác sướng rơn trào lên từ tận sâu bên trong mất rồi♡」[p]
Tsubomi「Hỏng bét mất... c-cô bé phát điên lên mất thôi...♡ Hi ư ư...♡ Hộc...♡ Hộc...♡ Hộc...♡」[p]
Tsubomi「Chỗ đó, em thích lắm...♡ Nữa đi...♡ Nữa đi mạnh nữa đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a...♡ Chỗ đó...♡ Đâm trúng... điểm yếu rồi...♡ Haa♡ Ô...♡ Ô hô...♡」[p]
Tsubomi「Trở nên kỳ lạ, phát điên lên mất thôi...♡ Đừng nhắm vào, điểm yếu của em mà...♡」[p]
Tsubomi「Sướng quá, em ra mất thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*supiritasu_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「A a a a...♡ Sướng quá đi...♡ Đâm mãnh liệt thế này, em thích lắm cơ...♡」[p]
[舜]「Hừ... Cơ thể em, uốn cong quá rồi đấy...♡」[p]
Tsubomi「A ư ư...♡ H-Hỏng bét mất...♡ Sướng quá đi...♡ Em thích lắm...♡ Thích lắm thích lắm thích lắm cơ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku2

[tb_start_text mode=1 ]
Tsubomi「Con cu thụt ra thụt vào, em cảm nhận rõ lắm...♡ Cô bé của em đang giật giật nhói lên rồi này...♡」[p]
Tsubomi「Hi ư ư...♡ A ư ư...♡ Nữa đi, hãy làm em nát bét ra đi anh...♡ Ha hi...♡ Cứ làm theo ý anh thích đi...♡」[p]
Tsubomi「Ưm ô ô...♡ Ô ô ô...♡ Hộc...♡ Hộc...♡ Em nghiện mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku3

[tb_start_text mode=1 ]
Tsubomi「Hộc...♡ Hộc...♡ Hộc...♡ A a a, tận sâu trong bụng... nóng rực lên rồi này...♡ A ư ư...♡」[p]
Tsubomi「Sướng quá sắp ra rồi...♡ A ư ư...♡ Em thích lắm...♡ Thích lắm thích lắm thích lắm cơ...♡」[p]
Tsubomi「Làm tình, lại sướng rơn thế này sao...♡ A ư ư ư...♡ Em thích lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ô ô ô...♡ Em không biết nữa...♡ Cơ thể em, trở nên kỳ lạ mất rồi...♡」[p]
Tsubomi「Toàn đâm trúng... chỗ sướng thôi...♡ Bị nhắm tập trung vào một chỗ rồi...♡」[p]
Tsubomi「Hỏng bét... hỏng bét mất thôi...♡ A a a a...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Từ giờ... chúng ta thật sự sẽ làm tình nhỉ...」[p]
[舜]「Nếu em sợ thì không cần phải cố quá đâu.」[p]
Tsubomi「K-Không có cố...! Em muốn nhanh chóng được hòa làm một với anh... nên chỉ hơi căng thẳng chút thôi mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Thật sự ổn chứ? Anh không thấy mẹ tốt hơn sao? Vú em đâu có to được như mẹ đâu?」[p]
[舜]「Làm gì có chuyện đó chứ. Anh chỉ cần Tsubomi thôi.」[p]
Tsubomi「Vậy sao? Khc, anh đã nói thẳng ra như thế thì đành chịu vậy. Khc, em vui lắm.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「A... nhưng mà, em hơi tò mò chút... nghe bảo lần đầu sẽ đau lắm... không biết có đau thật không nhỉ...?」[p]
Tsubomi「Anh sẽ làm cho em không thấy đau chứ...? Chuyện đó... kh-khi đút vào... hãy đợi đến khi em thấy sướng đã nhé...」[p]
Tsubomi「A, em đang nói cái gì thế này... Mồ~, xấu hổ quá đi...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_kiss1

[tb_start_text mode=1 ]
Tsubomi「Chụt... Ưm...♡ Khc, hôn mất rồi... Chỉ chạm môi thôi mà cũng hạnh phúc đến thế này nhỉ.」[p]
[舜]「Chà, em nói nghe đáng yêu đấy.」[p]
Tsubomi「S-Sao anh lại cười tủm tỉm thế hả? Ghét quá... đừng nhìn em mà... Xấu hổ lắm đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss2

[tb_start_text mode=1 ]
Tsubomi「Chu, chụt chụt...♡ Ưm...♡ Chu, chu, haa, phu... Hôn sướng quá đi...」[p]
Tsubomi「Phải làm sao đây, biết được cảm giác này rồi, em chẳng muốn rời môi anh ra chút nào nữa đâu...♡」[p]
Tsubomi「Em lại muốn được anh hôn nhiều hơn nữa cơ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss3

[tb_start_text mode=1 ]
Tsubomi「Chu chu, chụt chụt, chụt rột rột rột, haa, ưm...♡」[p]
Tsubomi「Sao anh lại biết cách hôn dâm đãng thế này cơ chứ...? Ăn gian quá... Chỉ cho em với đi... chụt chụt♡」[p]
Tsubomi「Haa...♡ Haa...♡ Chẳng hiểu sao... sâu trong cơ thể em nóng ran lên rồi này.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Chu, chu... Ưm phu...♡ Haa, hộc, làm em, giật cả mình...♡」[p]
Tsubomi「Tự dưng cảm giác sướng rơn trào lên... phần bụng dưới... lại nhói lên khao khát rồi...」[p]
Tsubomi「Cảm giác vừa rồi... là em sắp ra rồi đúng không nhỉ?」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Anh không nghĩ là... vú em chán ngắt, chẳng bõ công xoa bóp đấy chứ?」[p]
[舜]「Làm gì có chuyện đó chứ... Rất đáng yêu là đằng khác.」[p]
Tsubomi「M-Mồ... anh nói thế... làm em xấu hổ chết đi được... nhưng mà, cảm ơn anh nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi2

[tb_start_text mode=1 ]
Tsubomi「A... ưm... anh say mê vú em quá rồi đấy...♡」[p]
Tsubomi「Nhìn khuôn mặt hưng phấn của anh... chết thật... làm em cũng hưng phấn lây luôn rồi...」[p]
Tsubomi「Phù... Chỗ đáng xấu hổ đó... có vẻ đang nhói lên nhức nhối rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Đừng có... sờ mỗi vú thôi thế chứ♡」[p]
[舜]「Nhưng khuôn mặt em đang tan chảy ra kìa...」[p]
Tsubomi「Tại vì... chỗ bị sờ, nóng rực lên... làm em sướng rơn người mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hya...♡ Vú em, sướng quá đi...♡ Em thích bị nắn bóp thế này lắm♡」[p]
Tsubomi「Haa, ưm... Em cứ tưởng chỉ sờ vú thôi là đã đủ sướng rơn lên rồi chứ.」[p]
Tsubomi「Được người mình thích chạm vào, lại sướng rơn thế này sao♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi ư ư...♡ Ưm...♡ A, đầu vú... không được... chỗ đó nhạy cảm lắm cơ mà♡」[p]
Tsubomi「Haa... Haa... A...♡ Nhìn anh đang liếm láp thế kia... xấu hổ quá đi...」[p]
Tsubomi「M-Mồ, không được không được... Đừng có nhìn em mà...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname2

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Hộc, haa...♡ Bị liếm phát ra tiếng thế này... xấu hổ lắm...」[p]
Tsubomi「Đầu vú lại sướng rơn thế này sao...? Trước giờ em hoàn toàn không biết luôn... Em nhớ kỹ cảm giác sướng này rồi nhé♡」[p]
Tsubomi「Anh phải chịu trách nhiệm, từ giờ phải làm cho em sướng rơn lên đấy... Không thì em không chịu nổi đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ư ư...♡ Toàn nhắm vào, đầu vú thôi... A ư...♡ A...♡ A...♡」[p]
Tsubomi「Sướng quá... bị liếm nhóp nhép thế này, là điểm yếu của em đấy...♡ A, chỗ đó... ưm ưm ưm...♡」[p]
Tsubomi「L-Liếm láp thế cũng không được đâu♡ Sướng quá đi... chỉ sờ vú thôi mà em cũng ra mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a a a...♡ Chỗ đó, không được đâu...♡ Sướng quá đi mất...♡」[p]
Tsubomi「Chỉ bị liếm đầu vú thôi mà... tận sâu trong bụng em cũng râm ran lên rồi này...」[p]
Tsubomi「Làm sao đây... em không chịu nổi nữa rồi♡ Em muốn anh sờ vào chỗ nhạy cảm hơn nữa cơ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A... kh-khoan đã... Tự dưng lại liếm chỗ đó sao...!?」[p]
Tsubomi「Không bẩn sao!? A, a a...♡ Thứ gì đó ấm nóng ướt át... đang chạm vào kìa...♡」[p]
Tsubomi「Không thể nào... Đang bị liếm thật sao...? Mồ, ghét quá, xấu hổ chết đi được...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kunni2

[tb_start_text mode=1 ]
Tsubomi「Hi a...♡ A, a...♡ Kích thích, mạnh quá... hông em tự động nẩy lên luôn rồi...」[p]
[舜]「Cong hông lên thụt ra thụt vào thế này, dâm quá đấy.」[p]
Tsubomi「Đành chịu thôi chứ biết sao... tại sướng quá cơ mà♡ A a a...♡ Chỗ đó, sướng quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ A...♡ A...♡ Đang bị liếm láp này... Hột le rồi cả lối vào nữa... bị liếm sạch sành sanh luôn rồi♡」[p]
Tsubomi「Đừng có, liếm láp như đang thưởng thức thế chứ♡ Ưm ưm ưm, cơ thể em, cứ như sắp bị nuốt chửng vậy...」[p]
Tsubomi「Ưm, phu...♡ A~, tan chảy ra mất thôi... sướng quá đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a a a...♡ Chỗ đó... anh vừa làm gì thế... em phát điên lên mất... cô bé tan chảy ra mất thôi♡」[p]
Tsubomi「A a a...♡ Mút rột rột thế này, không được đâu...♡ A, a, a... Ưm khư ư...♡」[p]
Tsubomi「Em cứ tưởng là mình ra luôn rồi chứ... Sướng quá đi mất... trước mắt em, nổ đom đóm luôn rồi này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Haa, ưm...♡ Anh thích vuốt ve chân sao? Cách sờ y hệt mấy lão già dâm dê ấy...」[p]
[舜]「Im đi. Trông em có vẻ vẫn còn dư sức chán nhỉ?」[p]
Tsubomi「Hya ư...♡ A...♡ X-Xin lỗi mà... Đừng có vuốt ve nhiều quá thế chứ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_naderu2

[tb_start_text mode=1 ]
Tsubomi「Haa, ưm... Cứ bị vuốt ve... mỗi chỗ đó thôi... làm em thấy rạo rực hết cả lên rồi này♡」[p]
Tsubomi「E-Em muốn... anh sờ vào chỗ khác cơ... hoặc là... sờ dâm đãng hơn nữa cơ...」[p]
Tsubomi「A~, xấu hổ quá đi... Bị bắt phải nói ra mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm... Lòng bàn tay anh, đang nóng rực lên kìa... Lộ rõ là anh đang hưng phấn rồi đấy nhé?」[p]
Tsubomi「Chỉ sờ mỗi đùi thôi thì chưa đã đúng không? Anh sờ vào... chỗ khác nữa cũng được mà...♡」[p]
Tsubomi「Đừng bắt con gái phải nói ra chứ... Rõ ràng là anh biết tỏng rồi cơ mà♡ Sờ lên... phía trên nữa đi... sờ vào giữa hai chân em ấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_naderu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a a a...♡ A... Chỉ bị vuốt ve chân thôi mà...♡ L-Lại sướng rơn đến thế này sao...」[p]
Tsubomi「Kh-Không chịu đâu... kỳ lạ lắm...♡ A ư...♡ Cơ thể tự động nẩy lên luôn rồi này♡」[p]
Tsubomi「Tận sâu trong cơ thể cũng nhói lên khao khát rồi... Em, phát điên lên mất thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_asiura1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A-Anh đang nghĩ gì thế, tự dưng lại hôn... vào chỗ đó chứ... Bẩn lắm... Ưm...♡」[p]
Tsubomi「Phù, phu... Lòng bàn chân, lại nhạy cảm thế này sao... Trước giờ em chưa từng để ý luôn đấy, cảm giác lạ lắm...」[p]
Tsubomi「Kya...♡ Anh liếm đúng không... Đã bảo là xấu hổ lắm nên không chịu đâu mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_asiura2

[tb_start_text mode=1 ]
Tsubomi「Ưm... A, haa♡ Thè lưỡi ra... đừng có liếm nhóp nhép thế chứ... nhột lắm cơ♡」[p]
Tsubomi「A...♡ Anh vừa cắn nhẹ vào đầu ngón chân đúng không... Haa, phu... Lần đầu tiên em bị làm thế này đấy...♡」[p]
Tsubomi「Đầu ngón tay... nhạy cảm thì đầu ngón chân cũng vậy nhỉ... Làm thế ban nãy, hình như em có cảm giác luôn rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_asiura3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ư ư...♡ Phù, phù... A... Bị liếm láp khắp bàn chân thế này... có khi em thích mất rồi...」[p]
[舜]「Xin phép được liếm láp đôi bàn chân ngọc ngà của Tsubomi-sama nhé.」[p]
Tsubomi「Có phải em bắt anh làm đâu chứ... Đừng có nói kiểu đó mà♡ Ưm a a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru=0"  name="H_nameru"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_asiura_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a...♡ A...♡ Hộc, hộc, từ lòng bàn chân... cảm giác sướng rơn chạy dọc khắp toàn thân luôn rồi này...♡」[p]
Tsubomi「Ưm...♡ Toàn thân em, vẫn còn tê rần rần đây này...♡ Haa...♡ Haa...♡」[p]
Tsubomi「Làm sao đây... trong đầu em giờ chỉ toàn nghĩ đến chuyện sướng rơn thôi này♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「Ưm... Phù, phu...♡ A...♡ B-Bên trong bụng em... chật kín luôn rồi...」[p]
Tsubomi「Cứ nghĩ đến việc... đây là cảm giác khi có thứ gì đó đút vào trong... em lại thấy vui lắm cơ...♡」[p]
Tsubomi「Haa, a, a...♡ Anh đang cử động chầm chậm để em quen dần đấy à...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「Chỗ đó...♡ Chỗ đó sướng quá đi... em thích chỗ đó...♡ Haa, a, khác hẳn với lúc em tự sướng một mình luôn♡」[p]
[舜]「Chà, em tự sướng một mình rồi sao?」[p]
Tsubomi「A... Đừng có hỏi mà... A a a...♡ Đừng có, bắt nạt em thế chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「A~... Sướng quá đi...♡ Đang hòa làm một rồi này... Ưm, em, đang làm tình thật rồi♡」[p]
Tsubomi「Ưm...♡ A...♡ A...♡ Đừng dừng lại mà...♡ Chạm đến tận sâu bên trong rồi, em vui lắm cơ...♡」[p]
Tsubomi「Hãy trút... nhiều hơn nữa đi... Em muốn đón nhận... dục vọng dâm đãng... của Shun cơ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a...♡ Gì thế, vừa rồi... tự dưng cơ thể giật nẩy lên... em không biết gì nữa luôn rồi này...♡」[p]
Tsubomi「Đâm trúng... điểm yếu nhất của em rồi... Ưm, haa, a...♡ Giật nẩy lên mất thôi♡」[p]
Tsubomi「Haa, a...♡ Nóng quá♡ Em cũng, tự động nẩy hông luôn rồi này...♡ Sướng quá đi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「Haa...♡ Haa...♡ A, mãnh liệt quá, rồi đấy...♡ Hỏng bét mất thôi...♡」[p]
[舜]「Ưm, cái gì hỏng bét cơ?」[p]
Tsubomi「Đừng bắt em phải nói ra mà... C-Cô bé...♡ Cô bé của em, hỏng bét mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Rên rỉ nghe sướng tai thật đấy... Em sướng đến thế cơ à?」[p]
Tsubomi「Ưm ưm ưm...♡ Sướng quá...♡ Sướng quá đi mất...♡」[p]
Tsubomi「Lúc nào anh cũng dạy cho em đủ thứ chuyện... nhưng không ngờ lại dạy cho em cả chuyện làm tình thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Tsubomi「Bị đâm mãnh liệt thế này♡ Em sẽ phát điên lên mất♡ Chẳng còn biết gì nữa đâu♡」[p]
Tsubomi「Tận sâu bên trong... bị đâm trúng rồi... không được... sướng quá... A a...♡ Tư thế này không được đâu...」[p]
Tsubomi「Cọ xát đúng chỗ sướng rồi... A a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hya ư ư...♡ Ô...♡ Ô ô ô...♡ Tận sâu bên trong, cứ cọ xát... sột soạt kìa♡」[p]
Tsubomi「Thế này thì, em ra mất thôi...♡ Ô, ô ô...♡ Sướng quá đi♡」[p]
Tsubomi「Siết chặt lấy con cu mất rồi... Sướng quá đi mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Mồ, sao anh cứ nhìn chằm chằm thế...? Nhìn nhiều quá rồi đấy... Xấu hổ lắm cơ...」[p]
[舜]「Anh chỉ nghĩ là dáng vẻ sau khi tan làm của em vẫn đáng yêu quá thôi...」[p]
Tsubomi「Em làm việc rồi dọn dẹp nên đổ mồ hôi hết rồi... Chắc chắn là lớp trang điểm trôi hết rồi đấy. Cấm anh nhìn ở cự ly gần!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Mặc đồ hầu gái thế này làm anh hồi hộp hơn sao? Khc, anh thích mấy kiểu này mà nhỉ♡」[p]
[舜]「Thì... đúng là anh thích. Nhưng không phải ai mặc anh cũng thích đâu.」[p]
Tsubomi「A~, lại nói mấy câu ngầu lòi rồi. Có phải vì em khen ngầu nên anh để ý không đấy?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Hôm nay em cũng đã cố gắng cả ngày rồi đấy nhé? Những lúc thế này, anh phải khen em trước tiên chứ nhỉ?」[p]
[舜]「Em cố gắng lắm, ngoan lắm. Mà nói đúng hơn thì, lúc nào em chẳng làm việc nghiêm túc.」[p]
Tsubomi「Thì đúng là vậy rồi~. Nhưng hôm nay em đã cố gắng đặc biệt hơn cơ! Chỉ nói suông thôi chưa đủ đâu, chắc em phải đòi phần thưởng thôi nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_kiss1

[tb_start_text mode=1 ]
Tsubomi「Chu...♡ Dù là đã đóng cửa rồi, nhưng làm mấy chuyện này ở quán, thực ra là không được đâu nhỉ.」[p]
Tsubomi「Nếu là em ngày xưa, chắc chắn sẽ ngoan cố bảo vệ luật lệ cho bằng được... Đều tại anh hết đấy nhé?」[p]
Tsubomi「Nhưng mà... vì em đã được anh dạy cho biết rằng thỉnh thoảng phá luật một chút cũng vui mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss2

[tb_start_text mode=1 ]
Tsubomi「Chu, chụt chụt♡ Ưm, phù, phu... Khoan đã, anh ngấu nghiến quá rồi đấy...!」[p]
[舜]「A, xin lỗi... tự dưng... tại vì nụ hôn sướng quá mà...」[p]
Tsubomi「M-Mồ... anh cứ hay làm em có hứng lên ngay lập tức thế... Ăn gian quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss3

[tb_start_text mode=1 ]
[舜]「Ưm... Anh thấy kỹ năng hôn của anh cũng giỏi hơn trước rồi đấy, em thấy sao?」[p]
Tsubomi「M-Mồ...! Hỏi thẳng mặt thế này vô duyên quá đi mất...! V-Với lại──」[p]
Tsubomi「Lúc hôn, em làm gì còn tâm trí đâu cơ chứ... sao mà em biết được... Đầu óc em cứ như sắp sôi lên ấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Chu, ưm...♡ Haa, hộc... Anh học được kiểu hôn sướng thế này từ lúc nào vậy...?」[p]
Tsubomi「Chỉ là Shun thôi mà... lại hôn vừa dịu dàng vừa dâm đãng thế này... Nhờ ơn anh mà cơ thể em rạo rực hết cả lên rồi này♡」[p]
Tsubomi「Chắc anh... phải chịu trách nhiệm thôi...♡ Anh không có quyền từ chối đâu đấy nhé?」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_paizuri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi ư... Như thế này được chưa...? Độ mạnh, hay là... cách cử động em cũng không rõ lắm...」[p]
[舜]「Hừ... Sướng lắm... Em làm giỏi lắm... Cứ sục cu như thế đi...」[p]
Tsubomi「Khc, mặt anh trông thảm hại chưa kìa♡ Cứ nghĩ đến việc chính em đã khiến anh có khuôn mặt này... lại thấy cảm giác là lạ làm sao ấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri2

[tb_start_text mode=1 ]
Tsubomi「Ưm... Haa, hộc... A...♡ Cứ như... đang trơn tuột nhầy nhụa vậy... Giữa hai bầu vú. Nóng rực lên rồi này♡」[p]
Tsubomi「A...♡ Tuyệt quá... cứ giật giật này♡ Em cảm nhận rõ là anh đang sướng rơn lên đấy...♡」[p]
Tsubomi「Ưm...♡ Haa, anh muốn em làm thêm nữa sao? Không nói em cũng biết thừa rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Haa, a, ưm...♡ Lạ, thật đấy... Rõ ràng em chỉ đang làm cho anh sướng thôi mà...」[p]
Tsubomi「Cơ thể em nóng rực lên... rạo rực hết cả rồi... Hình như em trở nên kỳ lạ mất rồi♡」[p]
Tsubomi「Nhưng mà... anh cũng đang trở nên kỳ lạ đúng không? Chỗ này, cứng ngắc hết cả lên rồi này.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi ư ư...♡ A...♡ Ưm... Con cu nóng hổi, đang cọ xát vào kìa...♡」[p]
Tsubomi「Ăn gian quá... Anh đang thích thú nhìn phản ứng của em đúng không? Đồ bạn trai xấu xa...!」[p]
Tsubomi「Em sẽ sục cu thật mạnh bạo thế này luôn...♡ Ưm...♡ Haa...♡ A...♡ A ư...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A... Haa...♡ A...♡ Cách sờ, dâm đãng quá... Cách sờ nắn mềm mại này, anh học từ đâu ra thế...」[p]
[舜]「Hả? Đâu có... Anh chỉ vừa sờ vừa quan sát phản ứng của Tsubomi thôi mà.」[p]
Tsubomi「Chà, vậy là... cách sờ này được đo ni đóng giày riêng cho em sao? Anh có thể làm đến mức đó cơ à♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi2

[tb_start_text mode=1 ]
Tsubomi「Phù... Haa, a...♡ Cách sờ cứ như đang trêu chọc đó là sao hả♡ Anh cố tình làm thế đúng không...♡」[p]
[舜]「Bị lộ rồi à... Anh chỉ tò mò xem em sẽ phản ứng thế nào thôi. Em có muốn anh sờ thêm nữa không?」[p]
Tsubomi「Rõ ràng là anh biết tỏng rồi cơ mà♡ Em muốn anh sờ thêm nữa... Hãy nắn bóp vú em theo ý anh thích đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A a...♡ Ưm...♡ Chưa chạm vào đầu vú mà... phần đầu đã tê rần rần lên rồi này♡」[p]
[舜]「Đúng thật. Đầu vú sưng phồng lên luôn rồi này?」[p]
Tsubomi「Ưm...♡ Tại vì...♡ Bị sờ dâm đãng thế này thì... đành chịu thôi chứ biết sao♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a...♡ A...♡ Ưm...♡ Đầu vú, rạo rực quá... Em không chịu nổi nữa rồi♡」[p]
Tsubomi「A...♡ A...♡ Cứ như không phải cơ thể của em vậy...♡ Rõ ràng đây là chỗ làm việc, thế mà...♡」[p]
Tsubomi「Làm mấy chuyện dâm đãng ở ngay chỗ mình hay làm việc thế này... là không được đâu đấy nhé♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munename1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A, a...♡ Ưm...♡ A...♡ A...♡ A...♡ Không được mút vú em đâu...♡」[p]
Tsubomi「Đúng là anh thích vú thật đấy... Anh có mút thế chứ mút nữa cũng chẳng ra cái gì đâu mà...」[p]
[舜]「Vậy sao? Nhưng anh có cảm giác lúc liếm ngọt ngào lắm đấy chứ.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename2

[tb_start_text mode=1 ]
Tsubomi「A ư...♡ Kh-Không chịu đâu... Sao anh vừa liếm vừa nhìn mặt em thế...? Xấu hổ lắm đừng nhìn em mà...」[p]
[舜]「Vì anh muốn xem em đang có cảm giác thế nào mà. Với lại em phải nói cho anh biết là có sướng không chứ.」[p]
Tsubomi「R-Rồi, em biết rồi♡ Em sẽ nói cho anh mà♡ A, a a...♡ Bị liếm láp thế này... sướng quá đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A... A, a a a...♡ Đầu vú... tan chảy ra mất thôi♡ Không được đâu, em sẽ trở nên kỳ lạ thật mất♡」[p]
Tsubomi「Chỉ mỗi đầu vú thôi mà... lại sướng rơn thế này sao...♡ Ưm... A, a a a...♡」[p]
[舜]「A~, phản ứng dữ dội thật... Chỉ sờ vú thôi mà hông em đã tự động nẩy lên rồi kìa.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A a a...♡ C-Cảm giác sướng rơn... giật tê rần như dòng điện ấy...」[p]
Tsubomi「Từ đầu vú... đến tận sâu trong bụng... tê dại hết cả lên... lạ lắm cơ♡ Hông em, tự động nẩy lên luôn này...♡」[p]
Tsubomi「Giữa hai chân cũng trào nước ra... nóng ran lên rồi... Cơ thể em, ngày càng trở nên dâm đãng mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm... A, a...♡ Khoan đã khoan đã! Em đang đổ mồ hôi mà... Đã bảo là không được liếm đâu...!」[p]
[舜]「Ưm... Nhưng mà ướt nhẹp hết cả rồi kìa. Bị banh chân ra thế này làm em hưng phấn lắm đúng không?」[p]
Tsubomi「Đừng nói ra mà, đồ ngốc... Ưm...♡ Bị liếm thế thì phải phản ứng lại là điều hiển nhiên mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A ư...♡ Rõ ràng là chỗ làm việc, thế mà...♡ Em lại mang cái bộ dạng đáng xấu hổ này...♡」[p]
Tsubomi「Ưm... Khư ư...♡ A a a...♡ Rõ ràng anh biết bị liếm láp khắp nơi là điểm yếu của em rồi cơ mà...♡」[p]
Tsubomi「A...♡ A...♡ Haa, a a...♡ Không chịu đâu, không chịu không chịu đâu...♡ Em phát ra mấy âm thanh kỳ lạ mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức ư ư...♡ A, a a a...♡ Chỗ đó... không được đâu... nhạy cảm lắm cơ...♡ Đừng có mút mạnh thế mà...♡」[p]
[舜]「Chà, em thích bị mút hột le nhỉ... Chỗ này, sưng phồng căng mọng lên luôn rồi kìa.」[p]
Tsubomi「A...♡ A a a...♡ Hi ư ư...♡ Đã bảo là mút rột rột thế không được đâu mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a...♡ Em cứ tưởng Shun tinh tế và dịu dàng hơn rồi chứ... tự dưng lại trở nên xấu xa thế này...♡」[p]
[舜]「Vì anh thích Tsubomi nên mới muốn làm cho em sướng rơn lên thôi mà.」[p]
Tsubomi「Ăn gian quá, tự dưng đánh úp nói mấy câu như thế...♡ Làm em lại càng sướng rơn lên mất thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hya...♡ A a...♡ Kh-Khoan đã... A...♡ A...♡ Chỗ đó... Đâm trúng điểm yếu rồi...♡」[p]
[舜]「Em thích đâm sâu à? Tsubomi thành thật thế này dễ hiểu quá đi. Cho anh xem khuôn mặt dâm đãng hơn nữa đi nào.」[p]
Tsubomi「Sao... chỉ có mỗi anh là thong thả thế chứ...♡ Ăn gian quá...♡ A...♡ A...♡ A a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman2

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ A...♡ A...♡ Bực thật đấy, chỉ có mỗi em... là bị làm tình làm tội đủ kiểu... Cả em cũng...」[p]
Tsubomi「Em cũng sẽ làm cho anh có khuôn mặt tan chảy ra luôn cho xem...♡ A, a a a a...♡ Mãnh liệt quá... hỏng bét mất thôi♡」[p]
Tsubomi「Sao anh toàn nhắm tập trung... vào điểm yếu của em thế hả? Bị lộ hết mấy chỗ sướng rồi còn đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức ư ư...♡ A... kh-không chịu đâu...♡ Bị thọc sâu vào thế này... sướng quá đi...」[p]
Tsubomi「Trong đầu cứ tê rần rần... như có dòng điện chạy qua ấy...♡ Haa, a...♡ Toàn nhắm vào chỗ đó, không được đâu...」[p]
Tsubomi「Ưm...♡ A...♡ A...♡ A a...♡ Hông tự động nẩy lên luôn này...♡ Đừng nhìn cái dáng vẻ thảm hại cứ cong hông lên của em mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a...♡ L-Lạ lắm... cảm giác sướng rơn trào dâng lên... có thứ gì đó, sắp tuôn ra rồi này...♡」[p]
[舜]「Chà chà, rõ ràng miệng bảo xấu hổ. Thế mà lại dạng hai chân cong hông thụt ra thụt vào thế này...」[p]
Tsubomi「Kh-Không chịu đâu, đừng nói mà... Dáng vẻ thế này đáng xấu hổ lắm... nhưng sướng quá nên cơ thể cứ tự động nẩy lên thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Phù, hộc, a...♡ Bên trong, chật kín hết cả rồi... Thành bên trong bị cọ xát... nát bét hết mất thôi♡」[p]
[舜]「A, chật chội quá đi... Em siết chặt thế này anh không cử động được đâu. Thả lỏng ra nào.」[p]
Tsubomi「Thế thì chịu thôi... Ưm...♡ A a...♡ Chính em cũng không biết phải làm sao nữa cơ mà...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A a...♡ Tận cùng bên trong... đ-điểm yếu... bị đâm trúng rồi...♡ Bị nghiền nát mất thôi...♡」[p]
[舜]「A! Hừ... Sao thế này, em siết chặt quá đấy...!」[p]
Tsubomi「A a a...♡ Đâm đến tận sâu bên trong... dùng phần đầu thọc mạnh thế này là không được đâu, cơ mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「A...♡ Gư ư...♡ Ưm...♡ Phù...♡ Hộc...♡ A, không chịu nổi đâu, không chịu nổi nữa đâu...♡」[p]
[舜]「Không chịu nổi sao được, em siết chặt thế này cơ mà... Lại còn phát ra giọng dâm đãng thế kia nữa chứ...!」[p]
Tsubomi「Ưm...♡ Em không chịu nổi, thật mà...♡ Haa, a, đầu óc em, trắng xóa hết cả rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức ư ư...♡ A ư ư...♡ Ô...♡ Ô ô ô...♡ Em không biết nữa...♡ Em không biết gì nữa rồi...♡」[p]
[舜]「Cơ thể uốn cong ghê thật... Có phải em nhạy cảm hơn trước rồi không? A, sướng tận óc luôn...!」[p]
Tsubomi「A a a...♡ Kh-Không được đâu...♡ Đừng hưng phấn thêm nữa mà...♡ Bên trong, giật giật dữ quá...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「Làm tình ở ngay nơi mình hay làm việc, cảm giác dâm đãng thật đấy nhỉ...」[p]
Tsubomi「Ưm a a...♡ Kh-Không chịu đâu... đừng nói mà... không được đâu...♡ Em có cảm giác như mình đang làm chuyện xấu xa vậy...」[p]
Tsubomi「A, a a a...♡ Càng làm... tận sâu trong bụng em càng nhói lên khao khát này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku2

[tb_start_text mode=1 ]
Tsubomi「Không được, mãnh liệt quá... Tận sâu bên trong, bị khuấy đảo nát bét hết rồi...♡ Hỏng bét mất thôi...♡」[p]
Tsubomi「Không chịu đâu, không chịu không chịu đâu...♡ Kể cả lúc đang làm việc... cảm giác này, em sẽ nhớ lại hết mất thôi...♡」[p]
Tsubomi「Ưm...♡ A...♡ Ưm khư ư...♡ Nếu em có hứng lên làm mấy chuyện dâm đãng, anh phải chịu trách nhiệm đấy nhé!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Hửm~? Lần tới em muốn bị làm tình ngay trong lúc làm việc sao? Tsubomi thèm khát quá nhỉ...!」[p]
Tsubomi「Khư ư...♡ Em đâu có nói thế... Đồ ngốc...♡ Lúc làm việc là phải kiếm tiền chứ...♡」[p]
Tsubomi「Haa...♡ A...♡ A...♡ Muốn làm thì... đ-đợi về nhà anh rồi hẵng làm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a a...♡ Ưm, ư ư...♡ Không được đâu...♡ Em không suy nghĩ được gì nữa rồi...♡」[p]
Tsubomi「Trong đầu em giờ chỉ còn biết đến sướng thôi...♡ Haa, a, a...♡ Ưm ư ư...♡」[p]
Tsubomi「Thế này, cứ như không phải em vậy...♡ Cơ thể, trở nên dâm đãng mất rồi, không quay lại như cũ được nữa đâu...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Này, vẫn chưa làm gì mà mặt anh đã dâm đãng thế rồi sao...? Anh đang hưng phấn lắm đúng không♡」[p]
[舜]「Đành chịu thôi chứ biết sao, tình huống thế này... hưng phấn là điều hiển nhiên mà.」[p]
Tsubomi「Khc, đúng thế nhỉ~? Cả em... cũng thấy rạo rực muốn làm chuyện dâm đãng rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Lát nữa, em sẽ bị làm những chuyện gì đây ta~? Anh muốn làm chuyện dâm đãng với em đúng không♡」[p]
[舜]「Anh cũng định thế lắm rồi... Nhưng nếu Tsubomi không thích thì anh không muốn ép buộc đâu...」[p]
Tsubomi「M-Mồ... Anh đang nói mấy câu ngầu lòi gì thế hả? Em cũng... đang mong chờ lắm cơ mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Thỉnh thoảng em cũng muốn anh ép buộc em một chút đấy biết không? Trái tim thiếu nữ phức tạp lắm đấy nhé.」[p]
Tsubomi「Đến đây đi...♡ Hôm nay lúc làm việc, em cũng cứ mãi nghĩ là muốn gặp anh đấy...」[p]
Tsubomi「Muốn gặp anh... rồi... hôn anh... muốn được âu yếm anh...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss1

[tb_start_text mode=1 ]
Tsubomi「Chu, chụt, chụt chụt, ưm...♡ Haa, khoang miệng em... nóng rực lên rồi...♡」[p]
Tsubomi「Chu, chụt chụt chụt♡ Ưm... Được anh dạy cho nụ hôn sướng rơn thế này...」[p]
Tsubomi「Giờ thì mấy nụ hôn phớt nhẹ như trẻ con không làm em thỏa mãn được nữa rồi đâu♡ Anh phải chịu trách nhiệm đấy nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss2

[tb_start_text mode=1 ]
Tsubomi「Ha phu... chụt, chu, ưm, rột rột rột...♡ A... Lưỡi, quấn lấy nhau sướng quá đi...」[p]
Tsubomi「Chu, chụt chụt chụt♡ Kh-Không chịu đâu... Chỉ hôn thôi mà... tận sâu trong cơ thể em đã tê rần rần lên rồi...♡」[p]
Tsubomi「Chắc chắn mặt em trông dị hợm lắm rồi... Đừng nhìn em nhiều quá mà...♡ Em chỉ muốn cho anh thấy khuôn mặt đáng yêu thôi!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss3

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Chụt chụt, chụt, chụt, rột rột♡ Em không rời môi anh ra được nữa rồi...♡」[p]
[舜]「Haa, hộc... Tsubomi, khuôn mặt em dâm đãng quá đi mất... Anh không dừng lại được nữa đâu...」[p]
Tsubomi「M-Mồ, anh không cần phải nói rõ ra thế đâu♡ Chụt chụt chụt♡ Em cũng... không dừng lại được nữa rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Chụt, chu, ưm, ưm...♡ Phù, phu...♡ Chỉ hôn thôi mà... trong đầu em... nóng rực lên rồi này♡」[p]
Tsubomi「Em lại thèm khát thêm nữa mất rồi♡ Trước giờ em chưa từng có cảm giác thế này bao giờ đâu.」[p]
Tsubomi「Từ lúc bị anh chạm vào... em đã biết thế nào là sướng rơn, cơ thể em ngày càng trở nên dâm đãng mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_fera1

[tb_start_text mode=1 ]
Tsubomi「Ưm, chụt... Này, có vẻ như của anh đang cứng ngắc hết cả lên rồi kìa...?」[p]
Tsubomi「Cong vút lên thế này... dâm quá đi♡ Anh đang mong chờ lắm đúng không? Chu, chụt chụt...♡」[p]
Tsubomi「Phù...♡ Haa, hộc... Mùi dâm đãng quá đi♡ Phần đầu cũng trào nước nhờn ra rồi kìa?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera2

[tb_start_text mode=1 ]
Tsubomi「Chu, chu, chụt, sột soạt sột soạt sột soạt...♡ Ưm...♡ Bự quá đi♡」[p]
Tsubomi「Khoang miệng em... chật kín luôn rồi... Sắp trật khớp hàm luôn rồi này♡ Chụt, sột soạt sột soạt sột soạt...♡」[p]
Tsubomi「Ưm...♡ Haa, mùi và vị của nó làm em choáng váng hết cả lên♡ Tận sâu trong cơ thể, nóng rực lên rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera3

[tb_start_text mode=1 ]
Tsubomi「Chụt, sột soạt...♡ Sột soạt sột soạt sột soạt...♡ Ưm... Chủ nhân có hưng phấn không ạ?」[p]
[舜]「Hừ... Thế này, tuyệt quá...! Em không làm thế này... với khách hàng khác, đúng không...?」[p]
Tsubomi「Làm gì có chuyện em làm chứ? Đây là... d-dịch vụ đặc biệt... chỉ dành riêng cho người yêu thôi đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera=0"  name="H_fera"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ư ư...♡ Ưm...♡ Ch-Chạm đến... tận sâu trong cổ họng rồi...♡ Ưm ư ư...♡ Sao lại, sướng thế này cơ chứ♡」[p]
[舜]「Ưm! Lực hút mạnh quá... A, phần đầu cũng cọ xát dữ dội vào chỗ mềm mại rồi...」[p]
Tsubomi「Ưm...♡ Phù...♡ Kh-Không chịu đâu... Chỗ đó, nóng rực lên như bị tê rần rần ấy...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi ư ư...♡ A... Bị bóp vú chặt quá rồi này♡ Ngón tay, lún sâu vào luôn rồi...♡」[p]
Tsubomi「Phù... Phù... Phù...♡ Cứ nắn bóp mỗi vú thôi... không được đâu♡」[p]
Tsubomi「Đầu vú cọ xát vào lòng bàn tay... Ưm...♡ Càng làm nó nhạy cảm hơn mất thôi♡ A, a a a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi2

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Kh-Không được đâu...♡ Vú em bị vò nát bét mất thôi...♡」[p]
Tsubomi「Bị nắn bóp dữ dội thế này, vú em tan chảy ra mất thôi...♡」[p]
Tsubomi「Hả... sao anh lại hưng phấn hơn thế? Kh-Khoan đã... A a a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Vừa vò nát vú em vừa nhìn chằm chằm vào mặt em thế chứ♡」[p]
Tsubomi「Em tự biết là mặt em đang dâm đãng lắm rồi...♡ Em không muốn cho anh thấy khuôn mặt kỳ lạ rồi bị anh ghét đâu...♡」[p]
[舜]「Dâm đãng và đáng yêu lắm. Anh lại càng thích em hơn nữa đấy...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A... A a a...♡ A ư...♡ Đầu óc em phát điên lên mất...♡ Rõ ràng chỉ sờ mỗi vú thôi mà...♡」[p]
Tsubomi「Từ tận sâu trong bụng... cảm giác sướng rơn đang trào dâng lên rồi này...♡ Em chưa từng biết đến cảm giác này bao giờ...♡」[p]
Tsubomi「Haa...♡ Haa...♡ A...♡ Hông em, cứ tự động nẩy lên... xấu hổ quá đi... A...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munename1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Kh-Không chịu đâu... Khoan đã... mút chùn chụt thế này... kích thích mạnh quá...♡ A...♡ A a a...♡」[p]
Tsubomi「Không được, không được không được đâu...♡ Không kìm được tiếng rên... A, a a a...♡ Lại sướng rơn đến thế này sao...♡」[p]
Tsubomi「Ưm...♡ Phù...♡ Đầu vú, sướng quá đi...♡ Em thích bị liếm nhóp nhép thế này lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename2

[tb_start_text mode=1 ]
[舜]「Nói cho anh biết em thích bị làm gì đi. Là hầu gái thì phải ngoan ngoãn nghe lời đúng không?」[p]
Tsubomi「Hi ư...♡ A...♡ A a...♡ Đầu vú... bị mút thật mạnh... em thích lắm...」[p]
Tsubomi「A a a...♡ Chỗ đó... chỗ đó...♡ A...♡ A a...♡ Từ tận sâu trong bụng trào lên cảm giác nóng rực rồi này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ư ư...♡ Đầu vú, hình như nhạy cảm hơn trước rồi thì phải... Có vẻ như cơ thể em đã ghi nhớ cảm giác sướng rơn này rồi♡」[p]
[舜]「Chà, vậy thì phải để em ghi nhớ thêm nhiều chuyện sướng rơn hơn nữa mới được...」[p]
Tsubomi「Hi ư, không được đâu♡ Bị làm thế... chỉ liếm vú thôi mà em cũng ra mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a...♡ Đầu vú, nhạy cảm lắm cơ mà...♡ Bị mút mạnh thế này em sẽ phát điên lên mất thôi...♡」[p]
Tsubomi「Chỉ bị mút đầu vú thôi mà...♡ Hông em, cứ nẩy lên không dừng lại được này...♡ Ghét quá đi...♡」[p]
Tsubomi「Rõ ràng trước đây em đâu có dâm đãng thế này đâu... Đều tại anh nên em mới thành ra thế này đấy nhé♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm... Khư ư...♡ Hộc, a...♡ Không được... s-sao anh lại liếm tận sâu bên trong thế?」[p]
Tsubomi「A... A a... Lưỡi anh đút vào rồi kìa♡ Ưm, khư ư...♡ Nát bét hết mất thôi...♡」[p]
Tsubomi「Tận sâu trong cơ thể... cứ như đang bị nếm thử vậy...♡ Sướng thì sướng thật đấy, nhưng mà xấu hổ lắm cơ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname2

[tb_start_text mode=1 ]
[舜]「Em phải hỏi là \"Mùi vị thế nào thưa Chủ nhân\" chứ... Cô hầu gái đáng yêu thì phải nói được câu đó chứ nhỉ?」[p]
Tsubomi「Bắt em nói mấy câu đó đúng là đồ biến thái mà... Ưm...♡ A, em biết rồi, em biết rồi mà♡」[p]
Tsubomi「Mùi vị cô bé... của Tsubomi... thế nào thưa Chủ nhân...♡ Ưm, khư ư...♡ Đừng có hưng phấn lên thế chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi ư...♡ A...♡ Lưỡi cứ thụt ra thụt vào thế, không được đâu...♡ Cảm giác sướng rơn, trào dâng lên mất rồi♡」[p]
Tsubomi「A...♡ A...♡ A a...♡ Ở ngay nơi mình hay làm việc... mà lại mang cái bộ dạng này...♡」[p]
Tsubomi「Bị liếm láp khắp chỗ đáng xấu hổ, cứ như đang bị lưỡi làm tình vậy... Không được đâu, rõ ràng là không được cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname=0"  name="H_tituname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a...♡ Em phát điên lên mất thôi...♡ Trong đầu... rối bời hết cả lên chẳng biết gì nữa rồi...♡」[p]
[舜]「Hông em nẩy dữ quá anh không liếm được này... Em đang tự động dập hông luôn rồi kìa.」[p]
Tsubomi「Kh-Không chịu đâu... đừng nói mà...♡ Tại em không kìm lại được cơ mà. Đều do anh liếm hết đấy chứ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi ư ư...♡ A a...♡ Toàn thọc sâu... vào tận bên trong cơ mà... có thứ gì đó trào ra mất rồi...♡」[p]
[舜]「Chà chà, uổng công em vừa dọn dẹp xong nhỉ? Lát nữa chúng ta cùng dọn lại là được chứ gì.」[p]
Tsubomi「Ư ư, vấn đề đâu phải là thế chứ♡ Tè dầm thế này xấu hổ chết đi được.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Không chịu đâu, nước cứ trào ra không dừng lại được này♡ Tận sâu trong bụng lẫn cô bé đều nóng rực lên... em phát điên lên mất thôi♡」[p]
[舜]「Đâu phải tè dầm, là phun nước đấy chứ... Sướng rơn lên là nó phun ra thôi... Kìa, lại trào ra nữa rồi.」[p]
Tsubomi「Hức ư...♡ A...♡ A...♡ A a a...♡ Kh-Không chịu đâu... rõ ràng em không muốn trào ra nữa cơ mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki3

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Thứ gì đó ấm nóng đang trào ra này...♡ Ưm, khư ư...♡ Không dừng lại được đâu...」[p]
Tsubomi「Nhỡ thành nghiện luôn thì phải làm sao đây... Chỉ bị sờ một chút thôi là lại phun nước ra mất♡」[p]
Tsubomi「Haa...♡ Haa♡ Cơ thể em... trở nên dâm đãng và nhạy cảm quá mức mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a a a a...♡ Ô, ô ô ô...♡ Nước vẫn, đang trào ra cơ mà...♡ Đừng có làm mãnh liệt thế chứ...♡」[p]
[舜]「Chà chà, cô bé ướt át nát bét hết rồi này... Lối vào của Tsubomi cũng hoàn toàn tan chảy mở toang ra rồi.」[p]
Tsubomi「Haa... Haa...♡ Tại vì... không nới lỏng ra thì thứ đó của anh... đâu có đút vào lọt chứ♡ Em đã chuẩn bị sẵn sàng rồi đây♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「A...♡ A a...♡ Tự dưng cử động thế là không được đâu, cơ mà...♡ Ưm ư ư...♡ Kh-Không chịu đâu, sâu quá đi...♡」[p]
[舜]「Miệng thì bảo không được, thế mà bên trong lại siết chặt giật giật liên hồi kìa.」[p]
Tsubomi「Ưm...♡ Haa, a a...♡ Tại vì... cơ thể cứ tự động... phản ứng lại cơ mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Là hầu gái thì ít nhất cũng phải nói được câu \"Em sẽ cưng chiều con cu của Chủ nhân\" chứ...!」[p]
Tsubomi「Hi ư...♡ A...♡ Đồ biến thái...♡ C-Con cu của Chủ nhân, em sẽ cưng chiều nó ạ...♡」[p]
Tsubomi「Bằng cô bé của Tsubomi... em sẽ làm cho nó tan chảy ra luôn nhé♡ Ưm...♡ A, lại bự lên nữa rồi này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
"Hà...♡ Hà...♡ Đút sâu vào trong hầu gái rồi còn say sưa lắc hông thế này... Anh đúng là biến thái mà♡"[p]
"A...♡ Ư...♡ Hà...♡ Hà...♡ Bên trong, nảy lên rồi...♡ Anh phản ứng thái quá rồi đấy♡"[p]
"Hiaa...♡ Ư... a...♡ Quả nhiên là anh hưng phấn với hầu gái đúng không? Ông chủ biến thái♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"A...♡ Ưm...♡ Á... Đừng có... cứ nhắm vào chỗ nhạy cảm... mà thúc lên thế chứ♡"[p]
"H-Hỏng mất...♡ Hỏng mất thôi...♡ Ưm...♡ Ồ...♡ Đừng có giữ chặt hông em lại chứ♡"[p]
"Hiu...♡ Cứ bị thúc nhè nhẹ thế này... em ra mất thôi...! Khoái cảm ập đến mất rồi♡"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
"A...♡ A...♡ Lắc mạnh quá...♡ Thôi mà... em nát bét ra mất♡"[p]
"[舜]「Lại phải dọn dẹp lại từ đầu rồi. Nệm chắc cũng ướt nhẹp hết cả rồi đây.」[p]
"Ưm...♡ Hà...♡ A...♡ Tại vì... [舜] làm mạnh quá mà...♡ Biết làm sao được chứ♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
"Ư...♡ Phù, hà, hà...♡ A...♡ Mặt anh, nghiêm túc quá rồi đấy...♡"[p]
"Khuôn mặt đàn ông này của anh... chỉ có mình em biết thôi đúng không? Háu...♡ A...♡ Cảm giác cũng không tệ đâu♡"[p]
"A...♡ A...♡ Từ giờ trở đi cũng chỉ được cho mình em thấy thôi đấy... Cấm nhìn người khác...♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
"A...♡ A...♡ Ưm...♡ Khuôn mặt... rối bời này của em... cũng chỉ có anh... "[p]
"Được độc chiếm thôi đấy♡ Không được nghĩ đến ai khác đâu nhé♡ Chỉ mình em thôi..."[p]
"Hứa đi... A...♡ Sao tự dưng anh lại hưng phấn thế♡ To quá... hỏng mất thôi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"Hya...♡ Ưm...♡ Ồ, ồ...♡ Hông em, nảy lên mất...♡ Ra mất thôi♡"[p]
"Sâu trong bụng... đang nóng ran lên này...♡ Hà, a, a...♡ Chuẩn bị ra rồi♡"[p]
"Đang chuẩn bị để tiếp nhận anh rồi đấy♡ Cơ thể cứ tự động phản ứng thôi♡"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_kaiwa1

[tb_start_text mode=1 ]
"Làm cơm ngon, cùng nhau ăn xong thì... em sẽ hầu hạ anh bằng những chuyện sung sướng thế này đây♡"[p]
"Sống chung rồi, sớm muộn gì cũng kết hôn nhỉ♡ Cuộc sống tân hôn thế này cũng không tệ đâu ha...♡"[p]
"[舜]「Không tệ... mà phải nói là tuyệt vời luôn ấy chứ...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa2

[tb_start_text mode=1 ]
"[舜]「Sống chung rồi cứ thế kết hôn cũng tốt. Nhưng em còn có ước mơ mà, đâu phải lúc để kết hôn đúng không?」[p]
"Tất nhiên, em sẽ cố gắng hết sức để thực hiện ước mơ. Thế nên, đó là chuyện của sau này cơ...♡"[p]
"Nhưng mà... nếu anh nói muốn có em ngay lập tức nên hãy kết hôn đi... thì em sẽ suy nghĩ lại đấy♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa3

[tb_start_text mode=1 ]
"Với lại... cứ làm chuyện dâm đãng nhiều thế này, biết đâu lại có thêm thành viên mới thì sao?"[p]
"Lúc đó, em nghĩ lui về chăm lo gia đình cũng được♡ Nếu là với anh thì chắc chắn sẽ hạnh phúc mà..."[p]
"Không phải với ai em cũng nói thế đâu nhé? Mà phải nói là... anh là người đầu tiên làm em có suy nghĩ này đấy..."[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_kiss1

[tb_start_text mode=1 ]
"Chu... Ưm...♡ Chu chu... Môi anh, ấm quá...♡ Ưm...♡ Chu chu♡"[p]
"Hôm nay em sẽ bám dai hơn mọi khi đấy nhé? Tại vì... em không muốn anh nhìn ai khác ngoài em đâu..."[p]
"Này, em biết hết đấy nhé? Rằng anh vẫn còn đang để tâm đến ai đó khác, không phải em..."[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss2

[tb_start_text mode=1 ]
"Chỉ nhìn mình em thôi được không? Nếu là em, em có thể trao cho anh tình cảm nhiều hơn cả những gì anh dành cho em đấy"[p]
"Chu...♡ Chu chu♡ Thấy chưa? Chỉ qua nụ hôn thôi anh cũng cảm nhận được tình cảm của em đúng không...?"[p]
"Hà...♡ Chu, chu chu... Bây giờ anh chưa quên được người khác cũng không sao... nhưng hãy mau để em độc chiếm anh đi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss3

[tb_start_text mode=1 ]
"Chụt, chu, chu chu...♡ Hà, hà... Ưm...♡ Chỉ hôn thôi mà cũng sướng quá...♡"[p]
"[舜]「Phù... Tsubomi hôm nay, dâm đãng quá đấy... Nguy hiểm thật...」[p]
"Thật á? Em sẽ chứng minh cho anh thấy em không chỉ biết hưởng thụ đâu♡ Em làm anh mê mẩn luôn nhé?"[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"Ưm...♡ Phù...♡ Chu chu♡ Chụt...♡ Gian xảo quá, rốt cuộc lại là em say đắm anh mất rồi..."[p]
"Hà... Mới chỉ hôn thôi mà... người đã nóng ran lên rồi♡ Rõ ràng hôm nay em định chủ động cơ mà"[p]
"Nhưng em vẫn chưa chịu thua đâu...♡ Em sẽ làm anh say đắm đến mức không còn nhìn thấy cô gái nào khác nữa cơ♡"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
"Ưm... A...♡ Hà, a...♡ Trơn tuột hết vì tinh dầu rồi đúng không? Ưm, phù♡"[p]
"Cảm giác không nắm bắt được... khó chịu lắm, đúng không...? Ưm...♡ A...♡ Tay anh cứ trượt đi nhỉ?"[p]
"Hà...♡ Hà...♡ Bộ dạng anh cố gắng sờ ngực em để tóm lấy... trông tuyệt lắm đấy...♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_munemomi2

[tb_start_text mode=1 ]
"Ưm...♡ Hà, a...♡ Thôi mà... cảm giác trơn tuột này... làm em sướng lên mất rồi...♡"[p]
"[舜]「Núm vú cũng cương cứng hết cả lên rồi này? Khác với mọi khi, chắc là nhạy cảm hơn rồi nhỉ」[p]
"A...♡ Đừng, đừng có dùng lòng bàn tay xoa xoa núm vú em thế chứ♡ A...♡ Á...♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
"Đ-Đừng mà...♡ Đừng có nắn bóp ngực em nhẹ nhàng... như trêu ngươi thế chứ...♡"[p]
"Từ ngực... truyền sâu vào trong cơ thể như có dòng điện chạy qua vậy, sướng quá đi mất... Tê dại hết cả người♡"[p]
"Hiu...♡ A... A...♡ Đừng♡ Hông em cứ tự động nảy lên... không dừng lại được nữa rồi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"A...♡ Hà, hà, a...♡ S-Sướng quá...♡ Bứt rứt quá đi♡"[p]
"Cả ngực lẫn núm vú đều đang râm ran hết cả lên rồi...♡ Muốn được anh sờ nhiều hơn nữa cơ♡"[p]
"[舜]「Hôm nay làm nũng ghê nhỉ... Đáng yêu quá đi mất. Phải chiều chuộng em thật nhiều mới được...」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
"Hya...♡ A...♡ A...♡ Liếm phát ra tiếng chùn chụt thế này tuyệt quá đi...♡"[p]
"Hà...♡ A...♡ Làm em càng ý thức được mình đang bị làm gì hơn...♡ Trong đầu giờ chỉ còn mỗi chữ sướng thôi"[p]
"Chỉ mỗi em... say đắm thế này thì ấm ức lắm♡ Anh cũng... chỉ được nghĩ đến em thôi, say đắm em đi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_tikubiname2

[tb_start_text mode=1 ]
"Hiu...♡ A...♡ A...♡ Vừa liếm láp núm vú... sao lại còn nhìn chằm chằm mặt em thế...♡"[p]
"Góc nhìn từ dưới lên, chắc chắn là xấu lắm luôn ấy♡ Mặt em đang kỳ cục lắm mà..."[p]
"[舜]「Khuôn mặt đê mê vì sung sướng này, vừa đáng yêu vừa dâm đãng lắm, nên cho anh nhìn thêm đi」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
"Ưm...♡ Sờ ngực sướng lắm...♡ Thích núm vú lắm♡ Nữa đi, liếm nhiều hơn nữa đi...♡"[p]
"[舜]「Thấy em nhõng nhẽo thế này cũng đáng yêu lắm cơ. Tuân lệnh, thưa tiểu thư...! Ưm...!」[p]
"Hya...♡ Hút chùn chụt thế này sướng quá đi mất... Hà, a, sâu trong cơ thể, đang nóng ran lên rồi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"A...♡ Mới chỉ làm ngực thôi mà... em cứ tưởng mình sắp ra luôn rồi ấy♡ Không ngờ lại sướng đến thế này♡"[p]
"Làm tình ngọt ngào tại nhà thế này... chắc là em hưng phấn lắm rồi...♡ Ướt nhẹp hết cả rồi đây này..."[p]
"Nhưng thế cũng được đúng không? Dù cơ thể em có dâm đãng thế nào... anh cũng sẽ chấp nhận em mà, nhỉ?"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
"Hehe... Được anh xoa đầu thế này... có chút bất ngờ đấy♡ Nhưng mà... em vui lắm♡"[p]
"[舜]「Ủa, nhìn anh không giống kiểu người hay xoa đầu à? Nhưng đúng là trước đây anh cũng chẳng có cơ hội chạm vào con gái...」[p]
"Mồ~, em đâu có muốn nghe mấy chuyện đó...! Em muốn nghe anh khen đáng yêu hay nói thích em cơ"[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_naderu2

[tb_start_text mode=1 ]
"Dù là chuyện đương nhiên... nhưng bàn tay to lớn của đàn ông... làm em hồi hộp quá..."[p]
"Nghĩ đến việc bàn tay này... sẽ vuốt ve những chỗ nhạy cảm... làm em nát bét ra, em lại càng..."[p]
"Hà, ưm...♡ Em trở nên dâm đãng thế này, chắc chắn là lỗi của [舜] đấy nhé...?"[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
"Thôi nào... nhột quá đi mất...♡ Nhưng mà... được anh nhìn thẳng vào mắt rồi vuốt ve thế này, em vui lắm...♡"[p]
"[舜]「Anh đang nghĩ em đáng yêu quá đấy... Thấy em hạnh phúc thế này, sao anh rời mắt đi được chứ...」[p]
"Tự dưng nói mấy câu ngầu thế làm gì chứ... Làm tim em đập thình thịch rồi đây này♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_naderu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"Hiu...♡ Hà, a...♡ Thôi mà... mới vuốt ve thôi... cơ thể đã tê rần lên rồi..."[p]
"Xấu hổ quá... Chắc là do cơ thể em đã chuyển sang chế độ dâm đãng mất rồi...♡"[p]
"Muốn lắm rồi, không chịu nổi nữa đâu♡ Em... chỉ nhìn mỗi [舜] thôi đấy nhé?"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
"A... tuyệt quá... cứng ngắc luôn rồi này...♡ Hehe, gì chứ, hóa ra anh cũng đang hưng phấn lắm đúng không♡"[p]
"[舜]「Đương nhiên rồi... Nhìn thấy bộ dạng dâm đãng này của Tsubomi, bảo không hưng phấn mới là lạ đấy...」[p]
"Vui quá... Ưm...♡ Hà, a...♡ Em sẽ chiều chuộng con cu của anh thật nhiều nhé♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata2

[tb_start_text mode=1 ]
"Hà...♡ Hà...♡ Ưm...♡ Trơn tuột vì tinh dầu rồi... trơn quá đi mất♡"[p]
"[舜]「Cái này... đâu chỉ có tinh dầu... Ư... Là từ bên trong Tsubomi trào ra đúng không?」[p]
"Hà...♡ Hà...♡ A...♡ Tinh dầu và dâm thủy hòa quyện vào nhau, ướt nhẹp hết cả rồi...♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
"A...♡ A...♡ Ưm...♡ Con cu, đang cọ vào khe dâm này♡ Anh có cảm nhận được nó nóng hổi không?"[p]
"Hya...♡ A...♡ Ư...♡ A♡ Cứng quá đi mất... Gân guốc cũng nổi hết cả lên rồi đúng không?"[p]
"Hà, ưm... Cọ xát thế này... sướng quá♡ Khe dâm cứ lật lên lật xuống, kích thích mạnh quá đi...♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"A...♡ Đừng... phần đầu con cu... đang chạm vào âm vật này♡ Cứ cọ cọ...♡"[p]
"Cảm giác như bị ép nát vậy... Thế này, sướng quá đi♡ Thích lắm♡ A...♡"[p]
"Hà...♡ Hà...♡ Á...♡ A...♡ Phần đầu của hai đứa, cứ như đang hôn nhau đùa giỡn vậy♡"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_tekoki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
"Hà...♡ Hà...♡ A... To quá đi mất...♡ Thấy anh sướng thế này em vui lắm♡"[p]
"[舜]「Cái này, nguy hiểm thật... Sướng quá đi mất... Ưm... Sao em sờ giỏi thế hả...」[p]
"A, anh đang nghĩ lỡ em làm thế này với người khác thì sao đúng không? Làm gì có chuyện đó chứ? Chỉ với anh thôi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_tekoki2

[tb_start_text mode=1 ]
"Phần khấc ở đầu, anh thích đúng không...? Em sẽ sờ chỗ này thật nhiều nhé...♡"[p]
"Hà...♡ Hà...♡ Hà...♡ Khuôn mặt sướng rơn của anh... trông dâm đãng lắm đấy♡"[p]
"Hóa ra phục vụ người khác là cảm giác thế này à♡ Hehe, cũng không tệ... Cho em thấy khuôn mặt sung sướng hơn nữa đi♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_tekoki3

[tb_start_text mode=1 ]
"Phù, phù... Ưm...♡ A, đang giật giật này... Phần đầu cũng sưng phồng lên sắp nổ tung rồi nhỉ♡"[p]
"Đang nhức nhối muốn bắn ra lắm rồi đúng không...♡ Nhưng vẫn chưa được đâu♡ Đang sục cu mà..."[p]
"Sục sục, sục sục sục... A, sướng lắm đúng không? Đang nghiến chặt răng kìa? Đáng yêu quá♡"[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki=0"  name="H_tekoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_tekoki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
"A... A...♡ Hà, hà...♡ Đến cả em... sâu trong bụng cũng thắt lại rồi này♡"[p]
"Cứ tưởng tượng thứ to lớn thế này mà đút vào trong thì sẽ thế nào... là em lại...♡"[p]
"Hà...♡ Hà...♡ Cửa mình, ướt nhẹp hết cả rồi... Đút vào trong luôn cũng được đúng không♡"[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_pisuton_yukkuri1

[tb_start_text mode=1 ]
"Hà...♡ Hà...♡ A... A...♡ Ưm...♡ Sướng quá... hông em sắp không dừng lại được nữa rồi♡"[p]
[舜]「Khỉ thật... Chết tiệt... Cái kiểu lắc hông dâm đãng này... em học được từ lúc nào thế hả. Anh sắp bị vắt kiệt rồi...!」[p]
Tsubomi「Phù...♡ Phù...♡ Em chỉ bắt chước chuyển động của anh thôi... với lại, em cũng đã tưởng tượng trong đầu rồi mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「Hà...♡ A...♡ A...♡ Nó đang giật giật bên trong em... Nó vẫn còn to lên nữa sao!? A...♡」[p]
[舜]「Là tại Tsubomi quá dâm đãng đấy chứ... Anh hưng phấn đến mức chưa từng thấy luôn đấy...!」[p]
Tsubomi「A...♡ Tuyệt quá... Anh hưng phấn vì em sao...♡ Em vui lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Anh chỉ được nhìn mỗi em thôi nhé...♡ Em cũng chỉ nhìn mỗi anh thôi...♡」[p]
Tsubomi「Phù... ưm...♡ Em đang mải mê lắc hông trên người anh này...♡ Đút con cu vào tận sâu bên trong đi──」[p]
Tsubomi「Em đang siết chặt lấy nó, nài nỉ anh bắn ra, bắn ra đi này♡ Tình cảm quá đúng không♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm...♡ Đ-Đụng trúng tận sâu bên trong rồi...♡ Hà...♡ Hà...♡ Hà...♡ A...♡」[p]
Tsubomi「Ưm...♡ Ơ...♡ Ơ...♡ C-Cơ thể em, tự nhiên... nảy lên giật giật này...♡」[p]
Tsubomi「Sướng quá... Em chỉ thở thôi cũng thấy mệt rồi... ưm...♡ A, sướng quá đi mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Con cu của anh bị em làm cho rối tinh rối mù rồi nhỉ...♡ Hà, ưm...♡」[p]
Tsubomi「Em sẽ siết chặt lấy nó, ép thật chặt... để anh có thể bắn tinh ra nhé♡」[p]
Tsubomi「Hãy rót hết vào trong em đi...♡ Anh đang ngứa ngáy muốn bắn ra lắm rồi đúng không♡ Này, này này này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Ưm...♡ Tự mình cử động lại sướng thế này sao...」[p]
[舜]「Hê, nếu em thích thì từ giờ cứ cưỡi lên trên rồi lắc hông cho anh cũng được đấy nhỉ?」[p]
Tsubomi「Hà...♡ A... Thấy anh vẫn còn dư dả thế này, bực mình thật đấy♡ Đáng lẽ anh cũng phải... trở nên rối bời hơn mới đúng chứ」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Khỉ thật... phù, phù... A, chết tiệt... sướng quá... sắp bị vắt kiệt rồi...」[p]
Tsubomi「Hà...♡ A...♡ Ưm... Anh bắt đầu tan chảy rồi đúng không♡ Cứ mê mẩn em nhiều hơn nữa đi♡」[p]
Tsubomi「A...♡ A...♡ A...♡ Hãy để đầu óc anh tràn ngập hình bóng em, đến mức không còn tâm trí để nhìn đi đâu khác nữa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Cái gì thế này... A...♡ Cảm giác như có dòng điện chạy qua người vậy...♡」[p]
Tsubomi「Ưm...♡ A, a...♡ Chỗ sướng... bị cọ vào phần đầu... em sắp không biết gì nữa rồi♡」[p]
Tsubomi「Sướng quá...! Sướng quá đi mất...♡ Hông em không dừng lại được♡ Em ra mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「Hê... Em định phục vụ anh đến mức anh không thể nhìn ai khác ngoài Tsubomi sao? Anh mong chờ lắm đấy.」[p]
Tsubomi「Anh vẫn còn tỏ vẻ thong dong được sao? Em sẽ làm anh sướng đến nhũn cả người, không biết trời trăng gì nữa luôn cho xem♡」[p]
Tsubomi「Em sẽ làm anh không thể nhìn bất kỳ cô gái nào khác nữa... chỉ nghĩ về mỗi em thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Hãy tình tứ với em như vợ chồng son đi♡ Cứ coi như chúng ta mới cưới, và em là vợ của anh vậy♡」[p]
[舜]「Nghĩa là đang ở giai đoạn mặn nồng nhất nhỉ. Mà nói đúng hơn, tiếp theo là đến màn tạo em bé chứ.」[p]
Tsubomi「Đúng vậy đó? Thế nên anh phải thấy thật sướng, rồi bắn tinh dịch nóng hổi ra mới được đấy nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Này, nếu sống chung với tiền đề kết hôn... anh có muốn làm tình mỗi ngày không? Có hứng thú... rồi cương lên không?」[p]
[舜]「Chuyện đó thì... chắc là có. Nhưng nghĩ đến ngày hôm sau thì đâu thể làm bừa được...」[p]
Tsubomi「Hả~? Con gái sẽ vui hơn nếu anh muốn làm chuyện đó đấy? Chỉ cần tình tứ với nhau thôi cũng hạnh phúc rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_2_Dkiss1

[tb_start_text mode=1 ]
Tsubomi「Chu, chụt chụt, chu, chụt...♡ Ưm...♡ Này... anh vẫn còn để ý đến cô gái nào khác ngoài em sao?」[p]
[舜]「Em nói gì thế... Làm gì có chuyện đó... Anh chỉ có mỗi Tsubomi──」[p]
Tsubomi「Nói dối. Nhìn anh là biết ngay mà... Nhưng bây giờ em là bạn gái anh đúng không? Đừng có nhìn đi đâu khác nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss2

[tb_start_text mode=1 ]
Tsubomi「Chu, chụt, chụt chụt, ưm...♡ Hãy chỉ nhìn mỗi em thôi, và đừng hưng phấn với ai khác ngoài em nhé♡」[p]
[舜]「Ch-Chuyện đó thì chưa biết được đâu... Đàn ông là sinh vật rất dễ cương lên khi bị kích thích mà.」[p]
Tsubomi「Thiệt tình...! Lúc này anh phải nói là chỉ có em thôi chứ. Trong lúc ở bên nhau, em sẽ làm anh hưng phấn mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss3

[tb_start_text mode=1 ]
Tsubomi「Chụt, chu, chụt, chu♡ Hà, a... Cuốn lưỡi vào nhau sướng thật đấy...♡ Chụt...♡」[p]
Tsubomi「Ưm...♡ Nếu sống chung... mỗi tối đều được hôn dâm đãng thế này sao...♡ Sống cùng nhau cũng hay đấy chứ.」[p]
Tsubomi「Nếu anh cương lên rồi... mình làm tiếp chuyện sau nụ hôn nhé? Chuyện gì em cũng... chiều anh hết♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Chụt, ưm...♡ Phù...♡ Phù...♡ Hôn sướng quá...♡ Ưm, em thích, thích lắm♡」[p]
Tsubomi「Chụt, chụt chụt chụt♡ Chụt...♡ Hà, em... vốn đâu có dâm đãng thế này đâu cơ chứ♡」[p]
Tsubomi「Em đang vồ vập lấy anh... Xấu hổ quá... nhưng cơ thể em nóng ran, không sao kiềm chế được hưng phấn...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Mãnh liệt quá... ưm...♡ Anh đang vò nát ngực em đấy à...?」[p]
Tsubomi「Được anh khao khát, em vui lắm...♡ Được thôi, anh cứ làm gì mình thích đi♡ Cả ngực lẫn cơ thể em, tất cả...♡」[p]
Tsubomi「A...♡ A...♡ A...♡ Phù... phù... Khuôn mặt hưng phấn của anh... em thích lắm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_munemomi2

[tb_start_text mode=1 ]
[舜]「A, mềm quá đi mất... Ngực em như sắp tan chảy ra ấy... ngón tay anh lún sâu vào luôn này...」[p]
Tsubomi「Ưm...♡ Hà, a... Anh sờ soạng như đang thưởng thức cảm giác vậy...♡ Dâm đãng quá đi mất♡」[p]
Tsubomi「Hà...♡ A...♡ A...♡ A...♡ Dưới rốn em... tê rần lên rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Phù...♡ Phù...♡ Ưm...♡ Anh thích ngực lắm đúng không? Chạm vào nhiều hơn nữa đi...♡」[p]
Tsubomi「A...♡ A...♡ Em chưa từng cho ai khác chạm vào đâu đấy...♡ Nên anh phải tận hưởng cho kỹ vào nhé?」[p]
Tsubomi「Đấy... Anh bắt đầu không thể nghĩ về ai khác ngoài em rồi đúng không♡ Không thể nhìn đi đâu khác được nữa rồi nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Ưm...♡ Rõ ràng là em định quyến rũ anh cơ mà♡ Ưm, a...♡」[p]
Tsubomi「Rốt cuộc, người thấy sướng lại là em... Không kiềm chế nổi nữa rồi...♡」[p]
Tsubomi「Hà...♡ A... Chết mất... hông em cứ tự động lắc lư... ưm...♡ Xấu hổ lắm, anh đừng nhìn mà...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Hà...♡ A, nhũ hoa của em nhạy cảm lắm đấy♡ Tự nhiên chạm vào là phạm luật nhé♡」[p]
[舜]「Đúng thật này... Nó sưng phồng lên, căng mọng rồi... dâm đãng quá đi mất...」[p]
Tsubomi「A...♡ A...♡ Đừng... dùng bụng ngón tay vuốt ve như thế... không được, không được đâu... sướng quá mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri2

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Đừng...♡ Cứ mân mê nhũ hoa miết thế... không được đâu mà...♡」[p]
Tsubomi「Phù... phù...♡ Mặt em chắc chắn đang dâm đãng lắm rồi... Em không muốn bị nhìn thấy đâu...」[p]
Tsubomi「Em chẳng còn tâm trí đâu mà làm mặt dễ thương nữa... sướng quá, sắp tan chảy ra luôn rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Cái đó, tuyệt quá... bị véo chặt lại...♡ A, hà, a...♡」[p]
[舜]「Người em cong lên hết rồi kìa... Sướng đến thế cơ à? Nếu sướng thì phải nói cho anh biết chứ.」[p]
Tsubomi「Ưm...♡ Ưm...♡ Anh biết rõ rồi cơ mà...♡ Sướng lắm... sắp phát điên rồi đây này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Sướng quá...♡ Chỉ với nhũ hoa thôi em cũng ra mất♡」[p]
Tsubomi「Hà...♡ A...♡ Cảm giác như có dòng điện chạy qua vậy♡ Cơ thể em tràn ngập khoái cảm rồi♡」[p]
Tsubomi「Phù, phù...♡ Nếu sống chung, mỗi tối em muốn anh làm cho ngực và nhũ hoa của em mềm nhũn ra cơ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Nhột quá đi... Sao anh cứ sờ chân em miết thế? Anh thấy chạm vào thích lắm à?」[p]
[舜]「Ừ, mềm mại vừa phải... thon thả... lại còn mịn màng nữa, cảm giác chạm vào tuyệt vời lắm.」[p]
Tsubomi「Chuyện đó thì... em cũng phải tập luyện rồi chăm sóc đủ kiểu mà... dù vẫn chưa ăn nhằm gì đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_naderu2

[tb_start_text mode=1 ]
[舜]「Anh thấy đây là đôi chân tuyệt vời nhất đấy... Anh hiểu đây là thành quả từ sự nỗ lực hết mình của Tsubomi mà...」[p]
Tsubomi「Th-Thiệt tình... Tự nhiên lại khen em lúc này... làm em chẳng biết phải trả lời sao nữa.」[p]
Tsubomi「Em sẽ không cho người khác chạm vào đâu... nhưng riêng anh thì cứ sờ thoải mái đi nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_naderu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Chân em... cũng hay bị khách bảo là 'để anh massage cho' hay 'cho anh sờ một chút' lắm.」[p]
Tsubomi「...Ủa? Anh ghen à? Hehe, hiếm thấy nha? Vậy à, vậy à, Shun đang ghen kìa...」[p]
Tsubomi「Hehe...♡ Đương nhiên là em vui rồi. Không sao đâu, em sẽ không cho ai khác chạm vào đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_naderu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm... Cách sờ đó là phạm luật đấy nhé...♡ Ưm... Tự nhiên lại sờ soạng dâm đãng thế chứ.」[p]
Tsubomi「Em tò mò không biết anh đã thử cách sờ này với ai ở đâu rồi đấy... Đương nhiên là em phải nghi ngờ rồi đúng không?」[p]
Tsubomi「Cho đến khi anh nói là chỉ có mình em, em sẽ không cho sờ đâu nhé? A...♡ Thôi nào, đừng có tự tiện sờ soạng nữa♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hà, ưm...♡ A...♡ To quá... Nó cong vút lên rồi kìa...♡」[p]
Tsubomi「Chỉ mới ép vào thôi mà đã thấy nặng trịch thế này rồi... Nếu thứ này đút vào trong thì sẽ ra sao đây♡」[p]
Tsubomi「Chắc nó sẽ lấp đầy... tận sâu trong bụng em mất... Chắc mọi thứ sẽ bị chèn ép mất thôi♡ Anh phải nương tay đấy nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata2

[tb_start_text mode=1 ]
Tsubomi「Hà...♡ Hà...♡ Hà...♡ Ưm...♡ Sao nào? Bị cọ xát bằng chỗ ướt nhẹp này...」[p]
[舜]「Sướng quá đi mất... Chết tiệt. Chắc anh sẽ bắn ra ngay lập tức mất thôi...」[p]
Tsubomi「Hà...♡ Hà...♡ Ưm... Em muốn thấy khuôn mặt đó của anh đấy♡ Cho em thấy vẻ mặt sung sướng hơn nữa đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Con cu của anh đang giật giật nảy lên kìa...♡ Ưm, cọ xát nhiều hơn nữa đi...♡」[p]
Tsubomi「Thế này... chắc chắn là sướng rồi♡ A...♡ A...♡ Không được, hông em tự động di chuyển mất...♡」[p]
Tsubomi「Hà...♡ Hà...♡ A...♡ Ưm, ướt át quá... cảm giác như sắp lọt hẳn vào trong rồi ấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm, a...♡ Mắc kẹt rồi... đang cọ xát vào nhau này...♡ Sướng quá♡」[p]
Tsubomi「Cảm giác nóng ran từ sâu trong bụng... đang trào lên...♡ Ưm, chết mất, em sẽ ra trước mất thôi♡」[p]
Tsubomi「Hà...♡ Hà...♡ Rõ ràng em định làm anh mê mẩn cơ mà... tức thật đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_tekoki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm... hà, a...♡ Tuyệt quá♡ Cả phần đầu lẫn phần gốc đều cứng ngắc hết rồi này♡」[p]
Tsubomi「Tuyệt thật... Nước nhờn đang trào ra này... Đây là dâm dịch đầu cu đúng không? Hehe, dễ thương quá♡」[p]
[舜]「Khỉ thật... hà, hà... Là do cách sờ của Tsubomi dâm đãng quá đấy chứ...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_tekoki2

[tb_start_text mode=1 ]
Tsubomi「Nóng ran và cứng ngắc...♡ To lên nhiều lắm rồi này. Phần đầu và phần gốc, anh thích bên nào hơn?」[p]
[舜]「Không, cả hai đều sướng nên anh không so sánh được đâu...!」[p]
Tsubomi「Phải so sánh đàng hoàng chứ... Bị sục từ giữa xuống tận gốc... với được vuốt ve phần đầu, anh thích cái nào hơn?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki+=1"  name="H_tekoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_tekoki3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Phù...♡ Phù...♡ A... Có mùi dâm đãng quá đi... Dù em chỉ mới chạm vào con cu thôi mà...」[p]
Tsubomi「Làm tận sâu trong bụng em cũng nhói lên rồi này... Cơ thể em dường như đang tự hưng phấn lên thì phải♡」[p]
Tsubomi「Nếu thứ này lọt vào trong, thì sẽ ra sao đây... A! Kh-Không, chết mất... Mình đang nói cái gì vậy nè... Xấu hổ quá」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tekoki=0"  name="H_tekoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_tekoki_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm...♡ Hà, a...♡ Cơ thể em, lạ lắm...♡ Rõ ràng chỉ mới đang sục thôi, vậy mà...♡」[p]
[舜]「Tsubomi, vẻ mặt em dâm đãng lắm đấy... Làm anh muốn làm tình với em đến mức rối tung lên ngay bây giờ...」[p]
Tsubomi「A... Lại to lên nữa rồi này...! Anh hưng phấn quá mức rồi đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Hà...♡ A...♡ Đừng nhắm mắt lại... Hãy nhìn em đi♡」[p]
Tsubomi「Này... Anh đang ra ra vào vào bên trong em đúng không♡ Phù...♡ Phù...♡ A, ưm...♡」[p]
Tsubomi「Nó trơn tuột... lọt vào tận sâu bên trong rồi♡ Hà, phần đầu... đụng trúng tận cùng bên trong rồi đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Hà, a...♡ Sống chung... rồi kết hôn, chúng ta sẽ tạo em bé thế này sao♡」[p]
Tsubomi「Nhưng mình đã đi trước một bước, đang tạo em bé luôn rồi nhỉ♡ Ưm...♡ Em sẽ siết chặt lấy con cu của anh nhé♡」[p]
Tsubomi「Nếu có em bé... anh sẽ chịu trách nhiệm đúng không? Hãy biến em... thành người mẹ dễ thương nhất thế giới nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Hà, hưng phấn quá rồi đấy♡ Nó lại to lên bên trong em nữa rồi...♡」[p]
Tsubomi「Con cu của anh đang thực sự muốn... biến em thành mẹ đúng không? Ưm, ngầu thật đấy♡」[p]
Tsubomi「Nhưng mà... vẫn chưa đủ đâu nhé♡ Anh phải cố gắng nhiều hơn nữa cơ♡ A...♡ A...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ V-Vừa rồi... tuyệt quá♡ Hà...♡ Bên trong, cứ như đang bị gõ cửa cốc cốc ấy♡」[p]
Tsubomi「Bên trong em, dường như đã mang hình dáng của [舜] mất rồi♡ Cơ thể em đã trở thành đồ chuyên dụng của anh rồi...♡」[p]
Tsubomi「Ưm... ưm...♡ Hà, hà... Em sẽ chỉ tiếp nhận con cu của [舜] thôi... Hãy bắn ra thật nhiều đi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「Hà...♡ Hà...♡ A...♡ Ưm...♡ Lúc nào anh cũng bảo mặt em dâm đãng thế mà...♡」[p]
Tsubomi「Hôm nay có vẻ như mặt anh mới là người đang tan chảy ra đấy? Phù, hà...♡ Khuôn mặt thảm hại quá đi♡」[p]
Tsubomi「Con cu của anh sướng lắm đúng không♡ Hehe, nghĩ đến việc chính em đã khiến anh làm ra vẻ mặt này, em vui lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Ưm...♡ Hông em... không dừng lại được nữa rồi♡ Chết mất... nó tự động di chuyển này♡」[p]
Tsubomi「A...♡ Cứ lắc lư thế này... ưm...♡ Cả bên trong lẫn bên ngoài... đều bị cọ xát nhiều quá, sướng quá đi mất♡」[p]
Tsubomi「Nếu nhớ cảm giác này... em sẽ sinh hư mất thôi♡ Sướng đến phát điên lên được♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Tsubomi「A...♡ Ơ...♡ Ơ...♡ Nó to lên, ở bên trong...♡ Cảm giác chèn ép kinh khủng quá♡」[p]
Tsubomi「Thế này thì anh không thể nghĩ đến cô gái nào khác được nữa đúng không? Chỉ nghĩ về mỗi em thôi...♡」[p]
Tsubomi「Em không phải kiểu người ngoan ngoãn chấp nhận làm người thay thế cho ai đó đâu nhé...! Chỉ được nhìn mỗi em thôi」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ơ...♡ Ưm...♡ Sướng quá...♡ Cô bé của em sắp phát điên rồi♡」[p]
[舜]「Anh chỉ nghĩ về Tsubomi thôi... Anh đang ngứa ngáy muốn bắn tinh vào Tsubomi lắm rồi đây... Em có cảm nhận được không?」[p]
Tsubomi「Cảm nhận được... Cảm nhận được mà♡ Hà, a...♡ Được anh chỉ nghĩ về mỗi em, em vui lắm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Nói trước nhé...! Em tuyệt đối không làm chuyện dâm đãng với khách đâu đấy!」[p]
[舜]「Nhưng em đang làm với anh đây thôi? Đã bao giờ bị ép đến mức không thể từ chối chưa?」[p]
Tsubomi「Làm gì có chuyện đó! Với anh thì... em đã lỡ làm rồi... nhưng chỉ duy nhất mình anh thôi đấy...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa2

[tb_start_text mode=1 ]
[舜]「Nếu có ông khách giàu có nào đó vứt một xấp tiền ra rồi bảo 'Muốn làm tình' thì em tính sao?」[p]
Tsubomi「Hả, xấp tiền...? Tức là rất nhiều tiền đúng không? Cái đó thì chắc em sẽ suy nghĩ một chút──」[p]
Tsubomi「Đương nhiên là em đùa rồi. Em chỉ muốn làm chuyện đó với người mình thích thôi. Không phải vấn đề tiền bạc đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Thật ra em thích kiểu làm tình tình tứ trong một bầu không khí lãng mạn cơ, biết không?」[p]
[舜]「Nhưng cảm giác tội lỗi khi làm chuyện dâm đãng ở nơi làm việc thường ngày cũng dễ sinh hư lắm đấy nhé?」[p]
Tsubomi「Thiệt tình...! Toàn nói mấy lời tùy tiện... Có chuyện gì xảy ra em không biết đâu đấy nhé...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Anh phả hơi thở vào tai em rồi kìa...♡ Ưm...♡ Nhột quá♡」[p]
Tsubomi「A...♡ A...♡ Đừng liếm nhớp nháp như thế... Em đã bảo là không được rồi mà...」[p]
Tsubomi「Dừng lại...! Em bảo dừng lại cơ mà♡ A...♡ A, a...♡ Dừng lại đi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_miminame2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Anh liếm láp nhớp nháp quá rồi đấy... không được, không được đâu mà♡ Ưm...♡」[p]
[舜]「Hê, bị liếm tai mà cũng hưng phấn à? Toàn thân Tsubomi nhạy cảm thật đấy.」[p]
Tsubomi「A...♡ Đừng nói chuyện bên tai em nữa♡ Ưm...♡ Em đâu có hưng phấn gì đâu chứ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_miminame3

[tb_start_text mode=1 ]
Tsubomi「A...♡ T-Từ từ đã... sâu trong tai... đừng liếm láp nữa...♡ A...♡ A...♡」[p]
Tsubomi「Ưm...♡ Hà...♡ Hà...♡ A... Đừng có phát ra... âm thanh chụt chụt như thế nữa♡」[p]
Tsubomi「A... Nếu anh định trêu chọc thì đến đây là đủ rồi đấy... Hơn thế này nữa là không được thật đâu mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Sâu trong tai, ra ra vào vào chụt chụt, tuyệt quá♡ Hà, a, a...♡」[p]
[舜]「Hông em đang tự động lắc lư rồi kìa. Chẳng phải cơ thể em đã bật công tắc dâm đãng rồi sao?」[p]
Tsubomi「Ưm...♡ Đồ ngốc! Là tại anh liếm láp dâm đãng quá đấy chứ... Phù, phù...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Phù, phù, phù... Em nhất định sẽ không phát ra tiếng động nào đâu... cũng không phản ứng lại đâu.」[p]
[舜]「Được bao lâu đây? Này... Em thích được vuốt ve nhũ hoa lắm đúng không?」[p]
Tsubomi「A...♡ A...♡ Thôi mà... chết mất... Đừng có chọc ghẹo nhũ hoa của em mãi thế♡ A, ưm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_tikubiijiri2

[tb_start_text mode=1 ]
Tsubomi「Ưm... ưm...♡ Ưm...♡ Phù...♡ Chết mất... Bị sờ nhũ hoa mãi ở nơi thế này...」[p]
Tsubomi「Phát ra tiếng mất thôi... ưm...♡ Phù...♡ Phù... Em, sẽ không bị cuốn theo đâu...!」[p]
Tsubomi「Hà...♡ A...♡ Ưm...♡ Không phải là em đang sướng đâu nhé... chỉ là... cơ thể phản ứng lại thôi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hà...♡ Hà...♡ Làm hơn thế này ở đây nữa... em giận thật đấy... ưm! Nhũ hoa cũng, không được đâu♡」[p]
[舜]「Em có lườm thì mặt cũng đỏ bừng hết lên rồi... Nhìn càng dâm đãng hơn đấy? Nhũ hoa sướng lắm đúng không?」[p]
Tsubomi「Có sướng gì đâu chứ♡ Em chỉ đang giận vì bị làm bất ngờ ở nơi thế này thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Mân mê nhũ hoa... không được đâu♡ A...♡ A...♡ Hông em tự động di chuyển mất...♡」[p]
Tsubomi「S-Sao thế này... rõ ràng em không tự cử động mà♡ Nó cứ tự động... giật giật này♡」[p]
Tsubomi「Ưm...♡ Không chịu đâu, đừng nhìn mà... Tư thế xấu hổ quá đi mất... Đáng lẽ không phải thế này cơ mà.」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Hà, a... Bỏ tay ra khỏi ngực em đi mà. Sao anh cứ tự tiện làm gì mình thích thế hả.」[p]
[舜]「Nếu ghét thì em cứ mạnh bạo hất ra là được mà. Tsubomi làm được đúng không. Không làm thế tức là không ghét chứ gì?」[p]
Tsubomi「Kh-Không phải... Anh lại cứ nói mấy lời trêu ghẹo thế nữa rồi! Em ghét anh...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi2

[tb_start_text mode=1 ]
[舜]「Miệng thì bảo ghét, nhưng nhũ hoa sưng phồng lên hết rồi này? Thấy không, đụng trúng lòng bàn tay anh luôn rồi.」[p]
Tsubomi「A...♡ A...♡ A...♡ Đừng dùng lòng bàn tay cọ xát như thế...♡ Nó nhạy cảm lắm...♡」[p]
Tsubomi「A...♡ Ưm... Anh cố tình nhắm vào nhũ hoa... để sờ đúng không♡ Gian xảo quá đi mất...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Ở nơi làm việc... sướng thế này là không được đâu... Em vốn không vi phạm luật lệ cơ mà♡」[p]
[舜]「Nhưng mà này, đây không phải là làm với khách, mà là làm tình mặn nồng với bạn trai cơ mà.」[p]
Tsubomi「Không phải vấn đề đó... Em đang nói là làm chuyện dâm đãng ở đây là không được cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Ưm...♡ Cách sờ của anh, dâm đãng quá...♡ Ngực em tan chảy mất thôi♡」[p]
[舜]「Tsubomi, em đang phát ra âm thanh dâm đãng lắm đấy? Miệng thì bảo không được, nhưng lại sướng lắm đúng không.」[p]
Tsubomi「Ưm...♡ Tại vì... anh cứ sờ mãi vào chỗ nhạy cảm của em mà... em sướng mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Chỗ đó thật sự không được đâu... âm vật của em nhạy cảm lắm♡ Đừng cọ xát nữa mà♡」[p]
Tsubomi「A...♡ A...♡ A...♡ H-Hông em nảy lên mất♡ Đang ở nơi làm việc mà lại bị làm chuyện dâm đãng thế này♡」[p]
[舜]「Đấy, em đang hưng phấn tột độ rồi kìa... Cô bé cũng ướt sũng rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_j_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ghê thật. Ướt ra tận ngoài khe luôn rồi này... Âm vật cũng trơn tuột hết cả rồi.」[p]
Tsubomi「A...♡ Không được... đừng cứ mân mê... chỗ đó mãi thế...♡ Em phát điên mất♡」[p]
Tsubomi「A...♡ A...♡ Ưm...♡ Nơi em làm việc hàng ngày cơ mà... làm chuyện dâm đãng là không được đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A! Phần đầu... cứ gãi gãi... không được, không được đâu♡ Em hỏng mất♡」[p]
Tsubomi「A...♡ A...♡ Cảm giác sướng tê rần chạy dọc cơ thể... tận sâu trong bụng cũng nóng ran lên rồi♡」[p]
Tsubomi「Ưm...♡ Nhỡ sau này em lại nhớ ra mình từng làm chuyện dâm đãng trong lúc làm việc thì phải làm sao đây...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Ưm...♡ A...♡ Em không kiềm chế giọng nói được nữa rồi♡」[p]
Tsubomi「Đừng có vò nát... như muốn nghiền nát nó ra thế♡ Kích thích mạnh quá... em không nghĩ được gì nữa rồi♡」[p]
Tsubomi「A...♡ A...♡ A... Không được, em ra thật mất...♡ Không chịu, không chịu đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「T-Từ từ đã...! Mông thì không được đâu... Anh đang nghĩ gì thế hả. Ở nơi thế này...」[p]
Tsubomi「Có phải anh... thực sự nghĩ em là loại con gái hay làm mấy chuyện dâm đãng không hả?」[p]
Tsubomi「Khách có gạ gẫm thì em cũng từ chối chứ sao! Nếu không phải là người mình thích thì em không làm đâu...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_anaruijiri2

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ A... Đừng có nới lỏng ra... mông... bẩn lắm đấy...♡ Đừng có chạm vào chỗ đó mà♡」[p]
[舜]「Không bẩn đâu. Dễ thương lắm... Nó đóng chặt lại, cứ giật giật liên hồi. Làm anh muốn bắt nạt quá đi.」[p]
Tsubomi「A... Đừng bắt nạt em mà♡ Chỗ đó... không phải chỗ để đút vào đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_anaruijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Kh-Không được♡ Chỗ đó... bị vuốt ve cảm giác lạ lắm...♡ Nó đang giãn ra rồi...」[p]
Tsubomi「Làm mông em tan chảy ra rồi anh định làm gì hả? Chỗ này không đút được gì vào đâu đấy nhé?」[p]
Tsubomi「Thế nên, hơn thế này là không được đâu... Ưm...♡ A...♡ A...♡ Nghe em nói đi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Rõ ràng là mông cơ mà... s-sao lại sướng thế này chứ... Cơ thể em lạ lắm sao...?」[p]
Tsubomi「A...♡ Ưm... Hà...♡ Hà...♡ Nó cứ giật giật liên hồi... Chết mất, không phải thế đâu♡」[p]
Tsubomi「A...♡ A...♡ Chỉ là sướng thôi... chứ không phải em đang chuẩn bị tiếp nhận đâu đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Ngón tay... ra ra vào vào chụt chụt thế... không được đâu♡」[p]
[舜]「Miệng thì bảo không được, mà siết chặt thế này cơ à? Mật ngọt văng tung tóe luôn rồi kìa...!」[p]
Tsubomi「A...♡ A...♡ Tại vì... anh đụng trúng chỗ nhạy cảm rồi cọ xát mà♡ Em không kiềm chế nổi đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Ưm, ưm...♡ Mãnh liệt quá... bên trong em rối tung lên hết rồi♡」[p]
[舜]「Hông em nảy lên rồi kìa. Sướng đến thế cơ à? Nếu không thành thật nói cho anh biết là anh dừng lại đấy nhé?」[p]
Tsubomi「A... Không chịu đâu... sướng lắm♡ Sướng lắm mà♡ Đã đến mức này rồi thì đừng dừng lại mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman3

[tb_start_text mode=1 ]
[舜]「Sướng lắm à? Nói anh nghe xem chỗ nào đang sướng như thế nào nào?」[p]
Tsubomi「Ưm...♡ Đồ xấu tính...♡ C-Cô bé của em... đang nhói lên sung sướng lắm rồi♡」[p]
Tsubomi「Cái đó...♡ Em thích lắm♡ Ưm...♡ Bị vuốt ve bên trong... sướng đến mức rã rời cả người luôn♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Em ra mất♡ Em ra mất thôi♡ Đang ở nơi làm việc thường ngày cơ mà♡」[p]
Tsubomi「Cô bé bị làm cho ướt nhẹp... bắt đầu chuẩn bị lên đỉnh mất rồi♡ Chết mất, em sẽ thành đứa trẻ hư mất thôi♡」[p]
Tsubomi「Hà...♡ A...♡ Sướng quá, không dừng lại được... Em bị cuốn theo mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ N-Nó lọt hẳn vào trong rồi...♡ Kh-Không được, không được đâu♡」[p]
Tsubomi「Ưm...♡ Làm tình ở nơi làm việc thế này♡ Em cũng sẽ trở nên giống mấy cô gái khác mất thôi♡」[p]
[舜]「Tsubomi nghiêm túc thật đấy...! Không sao đâu, chúng ta đâu phải là khách và nhân viên đâu mà...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm...♡ Chạm đến... tận cùng rồi... Đụng trúng chỗ nhạy cảm rồi♡」[p]
Tsubomi「Hà...♡ A...♡ A...♡ Vì chậm rãi nên... cảm giác truyền đến càng rõ ràng hơn đấy♡」[p]
Tsubomi「Sâu trong bụng... bị lấp đầy mất rồi♡ Cơ thể em sẽ nhớ kỹ cảm giác này mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「Của [舜]... to hơn mọi khi rồi kìa♡ Anh cũng... đang hưng phấn lắm đúng không♡」[p]
[舜]「Đương nhiên rồi... Hưng phấn chứ, đang làm chuyện dâm đãng ở nơi Tsubomi làm việc hàng ngày cơ mà...!」[p]
Tsubomi「Ưm...♡ Đồ biến thái♡ Lần sau tuyệt đối không làm thế này nữa đâu... Chỉ duy nhất lần này thôi đấy!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Bên trong... bị cọ xát dữ dội quá♡ A, hông em... nảy lên mất thôi♡」[p]
[舜]「Có cố lờ đi kích thích cũng vô ích thôi. Anh giữ chặt hông em rồi, sao mà trốn được.」[p]
Tsubomi「A...♡ A...♡ Đừng cứ đâm chọc... vào tận sâu bên trong mãi thế♡ Em sắp không biết gì nữa rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Ưm...♡ Ưm...♡ A...♡ Cất công dọn dẹp sạch sẽ rồi, thế mà bị làm bẩn hết rồi♡」[p]
[舜]「Lại phải dọn dẹp lại từ đầu rồi... Anh sẽ giúp mà. Thế nên đừng nghĩ ngợi linh tinh nữa, cứ tận hưởng khoái cảm đi.」[p]
Tsubomi「A...♡ A...♡ Lần sau em sẽ không làm... chuyện này nữa đâu nhé♡ Làm tình ở nơi làm việc thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Miệng thì bảo không được, mà siết chặt thế này cơ à... Quả nhiên là cơ thể em đang sung sướng lắm đúng không.」[p]
Tsubomi「Làm gì có chuyện đó♡ A...♡ Ưm...♡ Rõ ràng em đã quyết tâm là không vi phạm luật lệ rồi cơ mà♡」[p]
Tsubomi「Rõ ràng đã quyết tâm... là không làm chuyện sai trái rồi cơ mà♡ Thế mà... sao lại sướng thế này chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm, phù, phù...♡ Mãnh liệt quá... Nó cứ đập thình thịch bên trong nãy giờ đúng không... Em biết mà♡」[p]
[舜]「Chính xác...! Bé Amelia quan sát đối phương kỹ thật đấy...!」[p]
Tsubomi「Ưm...♡ Đừng gọi em bằng cái tên đó nữa...! Làm em có cảm giác như đang làm việc vậy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Chỗ không được đụng vào♡ Đụng trúng phóc luôn rồi...♡」[p]
Tsubomi「Cứ bị gõ liên tục vào chỗ đó... hỏng mất, em hỏng mất thôi♡ Không được, không được đâu♡」[p]
Tsubomi「Ơ...♡ Ơ...♡ Kh-Không chịu đâu♡ Cơ thể em, tự động di chuyển... lạ lắm rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Anh nghĩ em... là loại con gái dễ dãi sao? Người không quen biết nghĩ sao thì em cũng mặc kệ...」[p]
Tsubomi「Nhưng em không muốn bị [舜] nghĩ là loại con gái sẵn sàng làm chuyện dâm đãng để moi tiền boa của khách đâu.」[p]
Tsubomi「Em tuyệt đối sẽ không làm đâu...! Em ghét việc phá vỡ luật lệ... và em cũng chỉ làm chuyện đó với người mình thích thôi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Anh đâu có nghĩ em là loại con gái bạ ai cũng làm chuyện dâm đãng đâu. Anh chỉ hỏi xem em có bị gạ gẫm không thôi mà.」[p]
Tsubomi「Thật không~? Nếu vậy thì được... Chuyện bị gạ gẫm thì... đương nhiên là có vô số lần rồi...」[p]
Tsubomi「Tại vì có nhiều khách cứ tưởng đây là quán phục vụ chuyện dâm đãng mà đến cơ. Nhưng em toàn từ chối khéo thôi!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Đã nhận tiền thì em sẽ làm việc đàng hoàng, và em luôn cố gắng tuân thủ luật lệ mà.」[p]
Tsubomi「Tại em luôn nhìn thấy hình ảnh mẹ cố gắng hết sức để giành được sự tin tưởng của khách hàng mà. Em cũng không thể thua kém được.」[p]
Tsubomi「Thế nên... em không thích kiếm tiền dễ dãi bằng mấy chuyện dâm đãng đâu. Em sẽ không làm thế đâu nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Khoan đã... sao tự nhiên lại liếm em... a... Anh nghĩ cứ cưỡng ép là được chứ gì?」[p]
Tsubomi「Em không dễ dãi tan chảy thế đâu nhé♡ Ưm...♡ Cứ liếm tai em mãi cũng vô ích thôi♡」[p]
Tsubomi「Ở nơi làm việc em rất nghiêm túc... Em khác với mấy đứa hay vi phạm luật lệ đấy nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_miminame2

[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Phù... phù... a...♡ Đ-Đừng có liếm phát ra tiếng thế chứ... Làm ra tiếng chụt chụt là phạm luật đấy...」[p]
Tsubomi「Em chỉ nghe thấy hơi thở của [舜] và mấy âm thanh dâm đãng thôi... Chẳng còn nghe thấy gì khác nữa rồi♡」[p]
Tsubomi「A...♡ Chết mất... Trong đầu em tràn ngập mấy âm thanh dâm đãng rồi... Sâu trong cơ thể cứ ngứa ngáy khó chịu lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Lưỡi anh trơn tuột chui tọt vào tận sâu bên trong rồi...♡ Không được, rút ra đi♡ Hà, ưm...♡」[p]
Tsubomi「Thế này... cứ như bị lưỡi anh cưỡng hiếp tận sâu trong tai ấy♡ Bị thụt ra thụt vào kêu chụt chụt luôn rồi♡」[p]
Tsubomi「Nghĩ đến việc đang làm tình bằng tai... dưới rốn em... cứ nhói lên phản ứng lại này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Cảm giác râm ran... sung sướng đang trào dâng lên rồi♡」[p]
[舜]「Ây da, miệng thì bảo không được... mà mặt mũi dâm đãng hết cả rồi kìa. Tsubomi yếu đuối quá đi.」[p]
Tsubomi「Ưm...♡ Kh-Không phải... Là tại anh liếm láp tận sâu trong tai em mà♡ Nên nó mới tự động phản ứng lại thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A... Đừng có véo nhũ hoa rồi mân mê thế chứ... Anh biết chỗ đó nhạy cảm mà... ưm...♡ A, a...♡」[p]
[舜]「Thế nên anh mới nhào nặn nó đấy. Cứ nhắm thẳng vào nhũ hoa... là em sẽ sướng ngay lập tức đúng không?」[p]
Tsubomi「A...♡ Đồ xấu tính...♡ Em không dễ bị cuốn theo đâu nhé...? Bình thường em vẫn từ chối dứt khoát cơ mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_tikubitumami2

[tb_start_text mode=1 ]
Tsubomi「Phù...♡ Phù...♡ A... Cứ gãi gãi nhũ hoa thế... không được đâu... Đừng có kích thích mỗi phần đầu thế chứ♡」[p]
[舜]「Hửm~? Chẳng phải em bảo không dễ bị cuốn theo sao? Câu nói hay từ chối dứt khoát nghe cũng đáng ngờ lắm đấy.」[p]
Tsubomi「Em từ chối dứt khoát thật mà...! Là tại anh... biết điểm yếu của em nên cứ sờ vào chỗ đó suốt thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A... Ng-Ngực sướng quá... hà, ưm... Giữa hai chân... nóng ran lên rồi...」[p]
Tsubomi「Nó cứ râm ran nhức nhối... Chết mất, cơ thể em lại trở nên dâm đãng thế này sao.」[p]
Tsubomi「Làm sao đây, xấu hổ quá... Rõ ràng đã nghĩ là tuyệt đối sẽ không làm cơ mà. Đáng lẽ không phải thế này chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Nhũ hoa... đừng có véo chặt thế... Thế này thì, em phát điên mất thôi♡」[p]
Tsubomi「Hà... hà, hà...♡ Ưm...♡ Ưm... Nhìn khuôn mặt và phản ứng của em... anh đang đắc ý lắm đúng không...」[p]
Tsubomi「Tức thật... Rõ ràng miệng bảo không được... mà bị sờ vào là cơ thể lại giật giật phản ứng... Tức quá đi...」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Bị bóp chặt lấy thế này... ưm...♡ Không được, buông ra đi♡」[p]
[舜]「Này, nếu đột nhiên bị khách xoa ngực thì em tính sao? Có nói không được đàng hoàng không?」[p]
Tsubomi「Đương nhiên là nói được rồi... Em sẽ hất tay ra... ưm...♡ Rồi bảo là không được ngay♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_munemomi2

[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm...♡ A... Hình dáng ngực em thay đổi mất... Sẽ in hằn dấu tay của anh mất thôi♡」[p]
[舜]「Vậy là sẽ thành bộ ngực chuyên dụng của anh rồi... Tuyệt quá còn gì. Anh sẽ nhào nặn cho nó tan chảy ra luôn.」[p]
Tsubomi「A... Thiệt tình, đồ biến thái...♡ Ưm...♡ Ưm...♡ Đừng có sờ mỗi ngực thế chứ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Làm chuyện này ở nơi làm việc mà bị phát hiện là to chuyện lắm đấy nhé? Ưm...♡ A, anh có hiểu không thế?」[p]
[舜]「Hê, nhưng nhũ hoa dựng đứng hết cả lên rồi này? Có vẻ cơ thể em đang thèm khát lắm thì phải.」[p]
Tsubomi「A...♡ Bị sờ vào nên... nó tự động phản ứng lại thôi mà♡ Em đâu có thèm khát gì đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Chỉ mới sờ ngực thôi mà... trong đầu em... như có pháo hoa nổ tung vậy♡ Hà...♡」[p]
Tsubomi「Sao thế này... nhạy cảm và sướng hơn mọi khi nhiều♡ Hà, hà... Đúng như anh nói──」[p]
Tsubomi「Chắc là do làm chuyện dâm đãng ở nơi làm việc hàng ngày nên em mới hưng phấn thế này... Em biến thành đứa trẻ hư hỏng mất rồi...」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Kích thích, mạnh quá rồi đấy... đừng cứ sờ mãi chỗ đó... không được, không được đâu♡」[p]
[舜]「Âm vật sưng to lắm rồi này? Thấy không, cứ như con cu đang cương lên ấy.」[p]
Tsubomi「A... Đừng nói mấy lời đáng xấu hổ thế chứ♡ Ưm...♡ Đâu có to đến mức đấy đâu」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_kuriijiri2

[tb_start_text mode=1 ]
[舜]「Này, để anh sục con cu âm vật hầu gái của bé Amelia cho nhé. Sục sục sục sục.」[p]
Tsubomi「Ơ...♡ Ơ...♡ A, a...♡ A, không được, không được đâu♡ Em phát điên mất thôi♡」[p]
Tsubomi「Cảm giác này, em chưa từng biết...♡ A...♡ Hông em, tự động lắc lư này♡ Không dừng lại được, em lạ lắm rồi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ơ...♡ Cứ nghịch âm vật mãi... không được đâu♡ Hơn thế này nữa là em tè ra mất♡」[p]
[舜]「Đã làm chuyện dâm đãng ở nơi làm việc rồi, lại còn tè dầm nữa... Em đúng là cô hầu gái dâm đãng hết chỗ nói nhỉ?」[p]
Tsubomi「A...♡ Kh-Không chịu đâu♡ Bị nói thế, em lại càng để ý hơn đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ưm...♡ Cái gì thế... kích thích mạnh quá... tê rần hết cả lên rồi♡」[p]
[舜]「Anh chỉ lột da, để lộ âm vật ra thôi mà. Này, để anh sục chỗ căng mọng này cho nhé.」[p]
Tsubomi「A...♡ A...♡ A...♡ A...♡ Không được♡ Không được thật đâu♡ Em hết chịu nổi rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Làm sao em biết mấy cô gái khác đang làm chuyện dâm đãng ở phòng bên cạnh?」[p]
Tsubomi「Anh hỏi vào lúc này sao? Vì nghe thấy tiếng... nên mới bị lộ đấy. Ưm...♡ A...♡」[p]
Tsubomi「Mấy âm thanh dâm đãng cố kìm nén cứ lọt ra ngoài... nên mấy đứa khác biết ngay mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_anaruijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Nếu Tsubomi làm chuyện dâm đãng thì chắc bị lộ ngay tắp lự quá. Mới tí đã phát ra mấy âm thanh ngọt ngào dâm đãng thế này rồi cơ mà.」[p]
Tsubomi「Ưm...♡ Thế nên, em mới không làm chuyện dâm đãng ở nơi làm việc đấy chứ♡ A...♡」[p]
Tsubomi「A...♡ Kể cả bây giờ... cũng là do anh khơi mào... nên mới thành ra thế này thôi đấy nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_anaruijiri3

[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Rút ngón tay... khỏi mông em đi♡ A...♡ Bị lấp đầy mất rồi, không được đâu♡」[p]
Tsubomi「Bị ngón tay... thọc ra thụt vào thế này... mông em hỏng mất♡ Sẽ cứ mở toang ra mất thôi♡」[p]
Tsubomi「A...♡ A...♡ A... Đừng sờ soạng... như đang kiểm tra bên trong mông em thế chứ...♡ Em phát điên mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ơ...♡ Ơ...♡ Mông em... ngón tay đút vào tận sâu bên trong rồi...♡」[p]
Tsubomi「A...♡ A...♡ Trở nên ướt nhẹp rồi... em sắp sinh hư mất thôi♡ Em bắt đầu thích bị thụt ra thụt vào mông rồi này♡」[p]
Tsubomi「Không được, không được không được không được... Đang ở nơi làm việc mà... Bị ngoáy tung mông lên rồi thấy sướng là không được đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... Bắn ra mất rồi...♡ Ưm, xấu hổ quá... không dừng lại được đâu♡」[p]
[舜]「A, em phun nước nhiều thật đấy... Rốt cuộc lại sướng đến mức phun nước lênh láng ở nơi làm việc luôn rồi kìa.」[p]
Tsubomi「A...♡ T-Tại vì♡ Anh cứ kích thích mãi vào chỗ nhạy cảm, nên nó tự động bắn ra thôi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ A...♡ Cứ bị gõ liên tục vào tận sâu bên trong thế này... lại nữa rồi♡」[p]
Tsubomi「A...♡ Lại bắn ra nữa rồi♡ Không chịu đâu, nó cứ tuôn ra liên tục không dừng lại được♡」[p]
Tsubomi「Ưm...♡ Cơ thể em không nghe lời nữa rồi... Em lạ lắm♡ Cảm giác này, cứ như không phải là mình vậy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Không được đâu♡ Làm bẩn hết... trong buồng rồi♡ Rõ ràng em đã dọn dẹp sạch sẽ rồi cơ mà♡」[p]
Tsubomi「Chết mất, sướng hơn mọi khi nhiều, không thể dừng lại được♡ Sao thế này... sao lại nóng ran thế này chứ.」[p]
[舜]「Là do làm chuyện dâm đãng ở nơi làm việc nên em mới hưng phấn thế đấy... Quả nhiên Tsubomi là cô hầu gái dâm đãng mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm, ưm...♡ A... A...♡ Không được đâu, em lạ lắm rồi♡」[p]
[舜]「Dâm đãng quá, người em cong vút lên hết rồi kìa... Sướng lắm đúng không. Thật ra là em muốn làm chuyện dâm đãng chứ gì.」[p]
Tsubomi「Kh-Không phải... Là tại [舜]... sờ em mà♡ Em đâu ngờ lại sướng đến thế này...」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「Hà...♡ A... Đã làm tình... ở quán mất rồi♡ Đã tiếp nhận con cu của anh mất rồi...♡」[p]
[舜]「Khỉ thật... A, siết chặt quá... Miệng thì bảo không được, mà em hưng phấn quá mức rồi đấy.」[p]
Tsubomi「Tại vì... sướng quá nên đâu còn cách nào khác chứ...♡ [舜] cũng... to lên rồi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「A...♡ Hà♡ Hà...♡ Làm chuyện sai trái, lại càng khiến tâm trạng dâm đãng hơn nữa♡」[p]
Tsubomi「Mấy cô gái làm tình với khách... không biết có thấy sướng như em bây giờ không nhỉ...」[p]
Tsubomi「A...♡ Chắc chắn là khác hoàn toàn rồi... Làm tình với người mình thích đương nhiên là sướng hơn hẳn rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Hà, vẻ mặt anh... có vẻ như đang mải mê lắm thì phải? Vẻ mặt của một con đực...♡」[p]
Tsubomi「Anh bảo em là 'hưng phấn hơn mọi khi', nhưng bản thân anh mới là người đang hưng phấn hơn đúng không♡」[p]
Tsubomi「Ưm...♡ Con cu của anh... cũng cứng hơn mọi khi... và to hơn nữa này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ A... C-Cái gì thế này... Âm thanh hạ lưu, phát ra mất thôi♡ Thế này, không phải là em đâu♡」[p]
Tsubomi「A...♡ Ưm...♡ A...♡ Chết mất, không chịu đâu♡ Xấu hổ lắm, anh đừng nghe mà♡」[p]
Tsubomi「Mỗi lần đụng trúng bên trong, âm thanh lại tự động phát ra♡ A...♡ A...♡ Đã bảo là không chịu đâu mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Mãnh liệt quá♡ Đừng có lắc mạnh thế chứ... em hỏng mất thôi...!」[p]
Tsubomi「Hà...♡ Hà...♡ Dù biết là chuyện không được phép... nhưng cơ thể lại càng nóng ran hơn nữa♡」[p]
Tsubomi「Sướng quá... Làm chuyện dâm đãng rối tung lên... ở ngay nơi mình làm việc hàng ngày♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Tsubomi「Chết mất, cảm giác này... lỡ không thể quên được thì phải làm sao đây♡ Chắc em lại thèm khát nữa mất thôi.」[p]
[舜]「Đến lúc đó thì cứ lén lút làm tình lúc không có ai như thế này là được mà.」[p]
Tsubomi「Em, sẽ dần trở thành một đứa trẻ hư mất thôi... Biết cả những chuyện sung sướng này... Là tại anh hết đấy nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Ây da, hông Tsubomi cũng đang tự động lắc lư rồi kìa. Trông sướng chưa kìa... Hửm~? Muốn anh cọ xát cả âm vật nữa sao?」[p]
Tsubomi「A...♡ A...♡ A...♡ Làm rối tung cả bên trong lẫn bên ngoài cùng lúc, không được đâu♡」[p]
Tsubomi「A...♡ Hà...♡ Hà...♡ Ơ...♡ Em không còn sức nữa rồi... không cử động được nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ S-Sướng quá...♡ Sướng quá đi mất...♡ Hà...♡ A, cháy máy mất thôi♡」[p]
Tsubomi「Càng nghĩ... mình đang làm chuyện không được phép... lại càng hưng phấn hơn♡ Bên trong, nhói lên liên hồi──」[p]
Tsubomi「Lại càng thèm khát con cu của anh nhiều hơn nữa♡ Cơ thể em, hoàn toàn hỏng bét mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_kaiwa1

[tb_start_text mode=1 ]
[舜]「Vẻ mặt ngượng ngùng cũng được đấy... nhưng thỉnh thoảng em cũng phải mạnh bạo dâm đãng lên để khiêu khích anh chứ.」[p]
Tsubomi「Anh nói thế... cũng khó lắm... Em đã vượt quá giới hạn xấu hổ từ lâu rồi cơ mà.」[p]
Tsubomi「Em chỉ cần nói mấy lời dâm đãng để làm [舜] hưng phấn là được đúng không? Vậy thì... anh sẽ làm chuyện dâm đãng với em chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Này, hãy làm thật nhiều chuyện sung sướng đi♡ Con cu của [舜]... em muốn anh đút vào trong em...♡」[p]
Tsubomi「Tuy là đã ướt nhẹp đủ rồi... nhưng anh cứ làm cho nó mềm nhũn theo ý thích rồi đút vào tận sâu bên trong đi♡ Lắc hông thật nhiều vào♡」[p]
Tsubomi「Đến cuối cùng thì anh cứ bắn ra ở đâu cũng được♡ Bắn lên người em cũng được... mà rót đầy vào bên trong em cũng được.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa3

[tb_start_text mode=1 ]
[舜]「Em có thể nài nỉ dâm đãng hơn nữa được mà đúng không? Nếu không là anh chẳng làm gì đâu đấy?」[p]
Tsubomi「V-Vâng ạ♡ Hãy đút con cu cứng ngắc của [舜] vào cô bé của em... rồi tạo em bé đi...♡」[p]
Tsubomi「Hãy rót tinh dịch vào đến mức trào cả ra ngoài nhé♡ Toàn bộ cơ thể em đã là đồ vật của [舜] rồi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_kiss1

[tb_start_text mode=1 ]
Tsubomi「Chụt, chụt chụt♡ Hà, a... Ưm, anh cứ hôn kiểu trêu ngươi thế cơ mà♡」[p]
[舜]「Anh tưởng sẽ được thấy vẻ mặt thèm khát của em chứ. Tsubomi cũng sẽ chủ động hôn nài nỉ anh đúng không?」[p]
Tsubomi「A, vâng ạ♡ Chu, chụt chụt♡ Cho em thêm đi♡ Em muốn anh hôn thật dâm đãng cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_kiss2

[tb_start_text mode=1 ]
Tsubomi「Hà♡ Chụt chụt... chu, ưm...♡ Ưm... hà, em thích kiểu hôn như muốn nuốt chửng lấy nhau ấy♡」[p]
[舜]「Mới chỉ hôn thôi mà chân em đã cọ xát vào nhau rồi kìa? Em trở nên dâm đãng thế này từ lúc nào vậy.」[p]
Tsubomi「Ưm...♡ Chu, chụt♡ Xin l... Khi hôn nhau, tận sâu trong bụng... cứ nhói lên râm ran...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_kiss3

[tb_start_text mode=1 ]
Tsubomi「Chụt, chụt chụt♡ Hà, hà... Hôn em nữa đi... Ưm, em muốn anh cuốn lưỡi thật nhớp nháp cơ♡」[p]
[舜]「Hửm~? Em từng có nụ hôn dâm đãng thế này rồi sao? Chẳng lẽ em từng hôn ai khác ngoài anh à?」[p]
Tsubomi「Làm gì có chuyện đó... Rõ ràng lúc nào đút con cu vào xong, anh cũng hôn sâu với em cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm...♡ Phù... Phù...♡ Chỉ mới hôn thôi mà... cơ thể đã tê rần lên rồi♡ Chụt chụt chụt...」[p]
Tsubomi「Hà... chu chu chu♡ Thích hôn quá... Hôn em... hôn em nhiều hơn nữa đi♡ Xin anh đấy♡」[p]
Tsubomi「Chụt chụt chụt♡ A, môi anh mềm quá... Ưm...♡ Hà, em muốn hôn thật dâm đãng cơ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Ngực em, nằm gọn trong tay anh rồi này♡ Bị anh tùy ý nhào nặn mất rồi♡」[p]
[舜]「Hửm~? Rõ ràng em muốn anh nhào nặn thật mạnh cơ mà. Này, lời nài nỉ đâu? Em làm được đúng không?」[p]
Tsubomi「Hà...♡ Hà...♡ Ngực em, em muốn anh cứ tùy ý nhào nặn đi♡ Làm cho nó mềm nhũn và bồng bềnh ra đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi2

[tb_start_text mode=1 ]
Tsubomi「A, ưm...♡ A...♡ [舜] thích ngực lắm nhỉ♡ Nó không cần to hơn nữa sao?」[p]
[舜]「Vì là ngực của Tsubomi nên anh mới thấy dâm đãng và thích đấy chứ. Em không cần phải nghĩ ngợi lung tung đâu...!」[p]
Tsubomi「A...♡ A...♡ Xin l...♡ Xin anh hãy tận hưởng bộ ngực của em thỏa thích đi ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A~, cái cảm giác ngực nảy lên núng nính dâm đãng thật đấy. Làm anh muốn nhào nặn đến mức rối tung lên luôn.」[p]
Tsubomi「A...♡ Bị bóp chặt lấy ngực... rồi bị nhào nặn đến rối tung lên sao? Phù...♡ Phù...♡」[p]
Tsubomi「Ưm...♡ A...♡ Có để lại dấu tay trên ngực cũng được mà♡ Cứ bóp thật mạnh vào đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ơ...♡ Chỗ đó, không được...♡ Vừa mân mê nhũ hoa vừa xoa ngực, em yếu chỗ đó lắm♡」[p]
Tsubomi「A...♡ Hà...♡ Hà...♡ V-Vừa rồi... cô bé của em nhói lên sung sướng mất rồi...」[p]
Tsubomi「Rõ ràng chỉ mới bị nhào nặn ngực thôi mà... tận sâu trong bụng cũng thấy sướng lên rồi này♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ưm...♡ Nhũ hoa, bị mút chụt chụt tuyệt quá♡ Sướng quá đi mất♡」[p]
[舜]「Nhũ hoa nhạy cảm quá đấy. Chỉ mới mút một chút thôi mà hông đã lắc lư rồi kìa... Tsubomi dâm đãng thật đấy.」[p]
Tsubomi「A...♡ Tại vì♡ Khoái cảm từ nhũ hoa lan truyền đến tận cô bé luôn mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiname2

[tb_start_text mode=1 ]
Tsubomi「A...♡ Ưm...♡ A, anh đang mút ngực chụt chụt kìa... Trông đáng yêu quá đi mất.」[p]
Tsubomi「Phù... phù...♡ Cứ như em bé vậy. Uống sữa mẹ, rồi lớn lên nhé♡」[p]
Tsubomi「À mà, anh đâu phải em bé mà là ba mới đúng chứ...♡ Anh sẽ biến em thành mẹ đúng không♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Ơ...♡ Ơ...♡ Chụt chụt... âm thanh lớn quá♡ Ưm...♡ Em để ý mất thôi♡」[p]
Tsubomi「Anh có mút mạnh thế cũng không có sữa chảy ra đâu♡ Hà, a...♡ Ưm...♡ Nhưng mà──」[p]
Tsubomi「Nếu có em bé... chắc sữa ngọt ngào thơm ngon sẽ tuôn ra xối xả mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Hà...♡ Hà...♡ Cắn nhẹ nhũ hoa♡ Không được đâu♡ A...♡ Không được, không được đâu.」[p]
Tsubomi「Cô bé giật giật không dừng lại được nữa rồi♡ A... ướt át quá... mật ngọt cũng trào ra rồi này...」[p]
Tsubomi「Nó bắt đầu chuẩn bị để đút con cu vào tạo em bé rồi này♡ Cơ thể em, sẽ trở thành mẹ mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Đ-Đau quá! Á! Sẽ in hằn dấu tay mất... Ưm...♡ A...♡」[p]
[舜]「Miệng thì bảo ghét, mà vẻ mặt có vẻ đê mê lắm thì phải? Em đang hưng phấn đúng không...!」[p]
Tsubomi「A...♡ A... A...♡ Chỗ bị đánh, rõ ràng là đau mà... nó cứ râm ran nóng lên, lạ lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_supankingu2

[tb_start_text mode=1 ]
Tsubomi「Kh-Không chịu đâu... em bắt đầu thấy sướng rồi... Cô bé của em, đang nhói lên sung sướng này...」[p]
Tsubomi「Sao thế này... Rõ ràng em ghét bị đau cơ mà... Đáng lẽ phải thấy sợ chứ♡ A...♡ Thêm nữa, thêm nữa đi──」[p]
Tsubomi「Cảm giác râm ran này, em bắt đầu thèm khát nó rồi♡ A...♡ Em, biến thành kẻ biến thái mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ H-Hãy đánh... Tsubomi nhiều hơn nữa đi ạ♡ Có in hằn dấu tay đỏ chót cũng được mà♡」[p]
Tsubomi「A...♡ A...♡ A...♡ Mỗi lần bị tác động... tận sâu bên trong cơ thể, lại nóng ran lên...♡」[p]
Tsubomi「Ơ...♡ Ưm...♡ Hà...♡ Hà...♡ Khoái cảm, đang trào dâng từ tận đáy bụng...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ơ...♡ Hà...♡ A...♡ A...♡ Xin lỗi anh, ướt đẫm... đến tận đùi luôn rồi♡」[p]
Tsubomi「Cô bé, tự ý hưng phấn trước mất rồi, em xin lỗi ạ♡ Bị đánh nên em thấy sướng mất rồi♡」[p]
Tsubomi「A...♡ Hà...♡ Hà...♡ Xấu hổ quá... Cơ thể, cứ giật giật phản ứng liên tục thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ơ...♡ Ơ...♡ Ơ...♡ Bị ngoáy tung tận sâu bên trong rồi♡ Tuyệt quá♡」[p]
[舜]「Ghê thật, ướt nhẹp hết cả rồi. Nó cứ bám chặt lấy ngón tay anh này...!」[p]
Tsubomi「Ơ...♡ A...♡ Đã chuẩn bị sẵn sàng để anh đút con cu vào rồi đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A, nếu đút con cu vào trong này rồi đâm chọc điên cuồng thì chắc sướng lắm đây...!」[p]
Tsubomi「Ơ...♡ Ơ...♡ Hãy đút con cu vào đi♡ Bên trong... hãy đâm chọc thình thịch đi♡」[p]
Tsubomi「Anh [舜] cứ việc đưa hông theo ý thích đi ạ...♡ Em muốn anh khuấy đảo cô bé nhầy nhụa lên cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ Hức...♡ Ưm...♡ Ôi...♡ Em chẳng còn nghĩ được gì nữa rồi♡ Trong đầu chỉ toàn thấy sướng thôi♡」[p]
[舜]「Mặt em dâm đãng hết cả ra rồi kìa. Có biết bây giờ trông vẻ mặt mình như thế nào không hả?」[p]
Tsubomi「Không chịu đâu♡ Ôi trời♡ Cô bé sướng quá rồi... l-làm sao giữ được vẻ mặt ngoan ngoãn đáng yêu nữa chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi... ôi trời ơi...♡ Hức...♡ Chỉ mới có ngón tay thôi mà... em sắp lên đỉnh rồi này...♡ Sướng quá đi mất♡」[p]
[舜]「Thế không cần đút cu vào em cũng thỏa mãn rồi à? Khỏi cần đút vào nữa nhé?」[p]
Tsubomi「Không chịu đâu, không chịu đâu mà♡ Đút con cu vào đi anh♡ Em muốn anh dập thụt liên tục vào cơ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_anaruseme1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ư... hức♡ Mông em, đừng mà, đừng làm nó lỏng ra... đừng ngoáy vào chỗ đó mà♡」[p]
[舜]「Phải dạy cho chỗ này nhớ rằng ngoài việc bài tiết ra thì còn có thể đút vào được nữa chứ...」[p]
Tsubomi「Á, không được đâu♡ Ôi...♡ Ôi trời ơi♡ Mông em... sẽ hỏng mất thôi♡ Không được đâu mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_anaruseme2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi...♡ Ôi...♡ Đang được xoa nắn mềm ra này... á... ngón tay lọt vào mất rồi♡ Không được, không được đâu♡」[p]
[舜]「Hê~? Lúc tắm em còn kỳ cọ sạch sẽ chỗ mông cơ mà. Rõ ràng là đang mong đợi còn gì?」[p]
Tsubomi「A... hức♡ N-Nhưng mà... chỗ đó bẩn lắm... nên là...♡ Ôi...♡ Ôi trời ơi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_anaruseme3

[tb_start_text mode=1 ]
Tsubomi「Ôi...♡ Ôi...♡ Đừng banh mông em ra mà♡ Bị nhào nặn thế này... nó sẽ nhão ra mất thôi♡」[p]
Tsubomi「Ngón tay không vào được đâu♡ Chỗ đó... vẫn còn khép chặt lắm... không làm được đâu ạ♡」[p]
Tsubomi「Thay vì mông... em muốn anh nuông chiều chăm sóc cho cô bé đang tan chảy ướt đẫm này cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_anaruseme1_hit
*R2_anaruseme_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi trời ơi♡ Ôi...♡ Bằng lỗ mông mà... em sắp ra, sắp lên đỉnh mất rồi♡ Ôi...♡ Ôi...♡ Ôi...♡」[p]
Tsubomi「Ư... hức♡ Lỗ mông cứ giật giật không ngừng được...♡ Sướng kinh khủng luôn ý♡」[p]
Tsubomi「A... ưm♡ Rõ ràng là lỗ mông... vậy mà cô bé phía trước cứ ngứa ngáy râm ran không dừng được♡ Chỗ nào cũng sướng hết á♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ A...♡ Con cu hôm nay to hơn mọi khi nữa♡ Tận sâu bên trong như bị nghiền nát ra vậy♡」[p]
[舜]「Kinh thật, cái chỗ cưng cứng gồ lên này... bình thường đâu được chạm vào đâu nhỉ? Đây này!」[p]
Tsubomi「Ôi...♡ Hức... a...♡ Chỗ đó... tê rần rần lên rồi... tuyệt đối không được chạm vào đâu mà♡ Á...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「Ôi...♡ Ôi...♡ Cuối cùng cũng tới rồi♡ Em thèm cái này lắm rồi♡ Em muốn anh đâm thật nhiều vào đây cơ♡」[p]
[舜]「Bắt em nhịn nãy giờ nên bên trong nóng ran lên rồi kìa... ướt sũng nhầy nhụa luôn rồi này」[p]
Tsubomi「A... hức♡ Giống như đang nhấm nháp thưởng thức vậy... bị cọ sát bên trong sướng điên lên được♡ Thích quá đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「Hức...♡ A...♡ Ôi, ôi trời♡ Tận sâu trong bụng, như bị nghiến nát ra rồi♡ A... a...♡」[p]
Tsubomi「Vì anh mãi không chịu đút vào... nên em cứ bồn chồn thèm khát muốn có nó sớm thôi...♡」[p]
Tsubomi「Ưm...♡ Bù cho lúc nãy phải nhịn, hãy đâm thật nhiều vào đi...♡ Đút sâu tận đáy... làm em tơi bời đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A... a... a...♡ Chạm đúng chỗ nhạy cảm rồi♡ Nó đâm thụt vào... ôi...♡ Ôi trời ơi...♡」[p]
Tsubomi「Chỗ đó... chỗ đó yếu lắm mà♡ Anh cứ nhắm thẳng vào đó đâm liên tục thôi♡ Ôi trời♡ Ôi...♡ Ôi...♡」[p]
Tsubomi「A... a...♡ Sướng quá đi mất♡ Em ra mất thôi♡ Trong đầu như có pháo hoa nổ tung bép bép vậy á♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「Ôi...♡ Ôi...♡ Ôi...♡ Mãnh liệt quá... tuyệt quá đi♡ Em hỏng mất♡ Em sẽ bị anh làm hỏng mất thôi♡」[p]
[舜]「Định trốn đi đâu hả? Đã thèm thuồng thế này thì phải ngoan ngoãn mà tiếp nhận cho hết, chứ hả!」[p]
Tsubomi「Hức... a...♡ Ôi...♡ Con cu to quá♡ Chạm tới tận sâu đáy bụng em luôn rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Tsubomi「Ư... ôi...♡ Phía bên trong, bị đẩy nhô cả lên rồi kìa♡ Bị con cu đội cả bụng lên rồi này♡」[p]
[舜]「Thật luôn kìa... À, mỗi lần thúc lên là bụng lại nhấp nhô phập phồng. Dâm thật sự」[p]
Tsubomi「Ôi...♡ Ôi trời...♡ Hỏng mất thôi♡ Bên trong bụng, con cu đang tung hoành dữ dội quá mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Tsubomi「Ư...♡ Bị ép chặt vào trong rồi♡ A, kích thích mạnh quá, em không chịu nổi nữa đâu♡」[p]
Tsubomi「Ôi...♡ Đây là gieo giống sao anh? Hà...♡ Hà...♡ Cuộc ân ái chỉ để rót tinh trùng vào trong♡」[p]
Tsubomi「Tuyệt quá...♡ Em cảm nhận được con cu đang nở to dần bên trong...♡ Hà, a, kinh khủng thật đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi...♡ Sướng quá đi♡ Hông em cứ tự động lắc lư dập dềnh theo mất rồi♡」[p]
[舜]「Khốn thật, ghê quá đi mất...! Nó bóp chặt kinh khủng...! A, chết tiệt, anh sắp bắn rồi...!」[p]
Tsubomi「Hà...♡ Hà...♡ Bắn nhanh đi anh♡ Rót đầy tinh trùng vào đi♡ Em muốn anh thụ tinh tạo em bé cho em cơ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「Với độ dâm đãng của Tsubomi bây giờ thì gạ gẫm ngon lành rồi nhỉ? Anh đã dạy bao nhiêu lần rồi. Nào, mau lên...」[p]
Tsubomi「Hà...♡ Hà, ưm...♡ Cô bé của Tsubomi... nóng rực ướt đẫm lắm rồi, hãy rót đầy tinh trùng của anh [舜] vào đi ạ...♡」[p]
Tsubomi「Cứ việc đưa hông theo ý thích, giữ chặt lấy cơ thể em... rồi bắn thật nhiều dòng tinh dịch nóng hổi mới ra vào đây nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa2

[tb_start_text mode=1 ]
Tsubomi「Phù...♡ Phù...♡ Em muốn anh vừa cọ đầu khấc vào tận sâu đáy cô bé vừa xuất thật nhiều tinh trùng vào cơ♡」[p]
[舜]「Kinh thật, vừa nói vừa tự thấy nứng kìa... Mặt Tsubomi trông dâm đãng hết nấc luôn rồi đấy」[p]
Tsubomi「Tại vì... tưởng tượng cảnh bị đâm phầm phập phát ra tiếng tới tận đáy, cô bé của em lại ngứa ngáy râm ran lên mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Đã chuẩn bị sẵn sàng để đón nhận tinh trùng rồi này♡ Hưng phấn quá, có khi đến cả tử cung cũng sẵn sàng luôn rồi ý」[p]
Tsubomi「Nếu bây giờ rót vào... hạt giống em bé sẽ đâm xuyên tận đáy bụng, chạm vào trứng rồi thụ tinh mất thôi♡」[p]
Tsubomi「Em sẽ bị biến thành mẹ trẻ con mất thôi♡ Hà~♡ Hà~♡ Rõ ràng là không được... vậy mà lại dâm đãng thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_2_Dkiss1

[tb_start_text mode=1 ]
Tsubomi「Chụt...♡ Chụt... mút... chụt chụt♡ Ưm, tự bản thân em lại chủ động hôn sâu quấn lưỡi thế này cơ chứ♡」[p]
Tsubomi「Em... đã biến thành cơ thể dâm đãng mất rồi♡ Hà, hà...♡ Nếu không được làm chuyện ân ái thì──」[p]
Tsubomi「Cô bé sẽ cứ ngứa ngáy râm ran... dù có tự thủ dâm cũng chẳng thể nào thỏa mãn nổi cơ thể này nữa rồi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_Dkiss2

[tb_start_text mode=1 ]
[舜]「Chụt, mút, nào, em muốn được quấn lưỡi đúng không? Mở miệng ra thè lưỡi tới đây. Cho anh xem bộ mặt đê mê ngây dại của em đi」[p]
Tsubomi「Vâng ạ♡ A... hà♡ Chụt, mút, chụt chụt, rột rột...♡ Sướng quá đi anh ơi♡」[p]
Tsubomi「Mút, chụt, em thích hôn sâu lắm♡ A... phù♡ Rột rột rột. Em cảm ơn anh nhiều lắm ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_Dkiss3

[tb_start_text mode=1 ]
Tsubomi「A...♡ Hôn sâu ướt át hơn nữa đi anh♡ Mút, nuốt, chụt chụt chụt♡」[p]
Tsubomi「Hà, a...♡ Em thích quấn lưỡi lắm cơ♡ Chụt mút chụt chụt♡ Chụt, mút mút...♡」[p]
Tsubomi「Chỉ hôn thôi... mà cô bé cứ nhấp nhổm ngứa ngáy liên tục...♡ Chụt chụt chụt. Sướng quá đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Mút, rột rột...♡ Mút, ưm...♡ A... a...♡ Sướng quá đi... em thích lắm♡」[p]
Tsubomi「Mút, chụt chụt mút♡ Ôi...♡ Ôi trời♡ Cảm giác như cả khoang miệng bị anh nuốt chửng vậy... tuyệt quá đi♡」[p]
Tsubomi「Ưm...♡ Cứ như đang quan hệ bằng miệng vậy á♡ Chụt chụt, mút, rột rột rột♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Vừa nãy em cũng tự bóp vú đấy thôi... nhưng phải tóm chặt lấy rồi nhào nặn thật mạnh bạo vào chứ...!」[p]
Tsubomi「A... a... a...♡ Em xin lỗi...♡ A...♡ Lần này, em sẽ nắm thật chắc lấy cặp vú mà bóp ạ♡」[p]
Tsubomi「Giống như đang được anh [舜] nặn vậy... em sẽ dồn hết sức nhào nặn cho hai bầu ngực méo mó biến dạng luôn ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi2

[tb_start_text mode=1 ]
Tsubomi「A...♡ Nhìn này... ngực em bắt đầu mềm nhũn ra rồi nè♡ Bị nhào nặn tơi bời, nó mềm mịn như bánh bông lan ý♡」[p]
Tsubomi「Bóp ngực sướng quá...♡ Hãy nhào nặn nhiều hơn nữa đi anh♡ Hãy làm cho nó mềm nhũn ra trong lòng bàn tay anh [舜] đi♡」[p]
Tsubomi「Vâng ạ♡ A...♡ A...♡ Em thích ngực lắm... hãy chạm vào nhiều hơn nữa đi... bóp chặt đến mức biến dạng luôn cũng được mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Bị bóp ngực nhiều thế này, lỡ hỏng mất dáng ngực thì sao hả? Có làm người mẫu được nữa không đấy?」[p]
Tsubomi「A... hức♡ Em sẽ... chăm sóc kỹ càng nên không sao đâu mà♡ Với lại em đâu phải người mẫu khỏa thân đâu chứ♡」[p]
Tsubomi「Em không muốn anh dừng lại đâu♡ Bị tóm chặt rồi dùng lực nhào nặn tơi bời thế này... em thích lắm cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A... a... a...♡ Tuyệt quá đi♡ Em lên đỉnh bằng ngực mất thôi...♡ Sắp ra rồi...♡ Ôi, ôi trời ơi...♡」[p]
[舜]「Nhìn xem, đầu nhũ hoa cũng dựng đứng cứng ngắc lên rồi kìa... Dâm thật sự... Em cũng muốn được sờ vào đầu ti đúng không?」[p]
Tsubomi「Vâng ạ♡ A... em muốn anh chạm vào lắm♡ Hãy vân vê mơn trớn đầu nhũ hoa để nuông chiều em đi ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi...♡ Ôi...♡ Ôi...♡ Đầu ti bị vân vê kìa♡ Tuyệt quá♡ Ưm... ôi♡ Nó truyền kích thích xuống tận cô bé luôn này♡」[p]
[舜]「Dâm vãi... Lắc lư hông thế này mà không thấy bậy bạ hả? Định đi thử vai người mẫu với bộ dạng này đấy à?」[p]
Tsubomi「Ôi trời...♡ T-Tại vì... ngực sướng quá... cơ thể em cứ tự động di chuyển theo thôi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubiijiri2

[tb_start_text mode=1 ]
[舜]「Vừa bị vân vê đầu ti thế này, vừa coi như đang thử vai mà tự giới thiệu bản thân đi xem nào」[p]
Tsubomi「A... hà♡ Em là Naruse Tsubomi, 17 tuổi... v-vừa bị vân vê đầu ti... vừa... a...♡」[p]
Tsubomi「Cặp vú này... đang được anh Shun xoa nắn tơi bời đây ạ♡ Ôi...♡ Ôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ư... hức♡ Đ-Đặc điểm quyến rũ của em là... đôi gò bồng đào mềm mại và nhạy cảm vô cùng này ạ♡」[p]
[舜]「Được đấy, tiếp tục đi. Giới thiệu xem chỗ dâm đãng dưới háng em nhạy cảm thế nào nữa xem nào」[p]
Tsubomi「Hà...♡ Vâng ạ♡ Cô bé của em... mỗi lần được chạm vào ngực là lại rỉ nước nhờn ướt sũng ra ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Chỉ cần được anh Shun đút con cu vào thụt... là em sẽ sướng đến mức phát điên lên mất thôi ạ♡」[p]
Tsubomi「Ôi trời ơi♡ Tuyệt quá... đầu ti tê rần rần lên rồi♡ Em lên đỉnh mất thôi...♡」[p]
[舜]「Tốt lắm, em đậu rồi đấy. Phần thưởng là được anh cho con cu vào nhé」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t2.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Cảm ơn anh nhiều lắm ạ♡ Em muốn con cu của anh đâm nát cô bé của em cơ♡」[p]
Tsubomi「A... a... a...♡ Đút vào rồi♡ Con cu bự quá đi mất♡」[p]
Tsubomi「Hà...♡ Hà...♡ Sướng quá đi... trong bụng em đầy ắp con cu của anh rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_supankingu2

[tb_start_text mode=1 ]
Tsubomi「Đâm sâu vào nữa đi anh♡ Hãy thụ tinh cho em đi mà♡」[p]
[舜]「Đúng là con bé dâm đãng... thích bị đâm sâu thế này cơ à?」[p]
Tsubomi「Vâng ạ♡ Em thích lắm... em muốn trở thành người đàn bà của anh Shun cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi...♡ Ôi...♡ Nó chạm vào cổ tử cung rồi kìa♡ Sướng điếng cả người luôn á♡」[p]
Tsubomi「A... a...♡ Bắn vào trong đi anh♡ Rót đầy tinh dịch vào trong em đi ạ♡」[p]
[舜]「Bắn nhé... Tsubomi...! Nhận lấy toàn bộ tinh trùng của anh đi!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ư... ôi...♡ Hà...♡ Hà...♡ Để lộ bộ mặt đê mê xấu hổ thế này, em xin lỗi anh nha♡」[p]
Tsubomi「Bị vỗ vào ngực... cô bé của em đã sẵn sàng đón nhận từ lâu rồi nè♡ Mau lên... em muốn có nó ở bên trong cơ♡」[p]
Tsubomi「Vâng ạ♡ Hãy dạy dỗ cô bé của Tsubomi thật nhiều vào đi ạ♡ Đâm thụt gõ phầm phập vào tận đáy sâu nhất luôn đi ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi...♡ Ôi trời ơi♡ Tuyệt quá♡ Nước dâm phun ra... không dừng lại được rồi♡ Nó trào ra kìa♡」[p]
Tsubomi「Hức...♡ Cứ như đang tè dầm vậy á... sướng quá nên nước cứ phun trào xối xả ra thôi♡ Ôi... ôi...♡」[p]
Tsubomi「Ng-Ngón tay...♡ Thụt vào... đâm phầm phập vào đáy sâu thế này em sẽ bị nghiện mất thôi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Tuyệt thật đấy... phụt phụt liên tục mấy lần liền... bên trong bụng em sắp cạn sạch nước luôn rồi nè♡ Ôi...♡ Ôi trời ơi♡」[p]
[舜]「Không sao đâu, cô bé của em nhầy nhụa ướt sũng thế này cơ mà. Muốn phun bao nhiêu nước cứ việc phun ra...」[p]
Tsubomi「A... hức♡ Ôi...♡ Đừng dùng ngón tay ấn mạnh vào tận đáy như thế mà♡ Lại sắp phun ra nữa rồi nè♡ Ôi trời ơi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A... hức♡ Tuyệt quá đi♡ Ôi...♡ Cô bé sướng tê người luôn rồi♡」[p]
[舜]「Giọng em bắt đầu khàn đục dâm đãng hết cả ra rồi đấy. Muốn làm người mẫu mà không biết giữ hình tượng đáng yêu à?」[p]
Tsubomi「Vâng ạ♡ Hà...♡ Lúc này làm sao mà giữ kẽ được nữa chứ ạ♡ A... hức♡ Nước dâm cứ tuôn ra không ngừng được này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi... ôi trời ơi...♡ Em ra mất♡ Lên đỉnh mất thôi♡ Cô bé đang dâng trào khoái cảm khủng khiếp lắm rồi này♡」[p]
[舜]「Dâm vãi... Tsubomi, em trở nên dâm đãng quá đà rồi đấy... Thế này thì sau này làm sao làm tình kiểu bình thường được nữa hả?」[p]
Tsubomi「Không thể đâu ạ♡ Em đã nếm trải cảm giác làm tình bạo liệt thế này rồi mà♡ Em chỉ muốn bị anh làm cho tơi bời thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_anaruseme1

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t4.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「A...♡ A...♡ Chỗ đó... lỗ mông được vuốt ve mơn trớn... xấu hổ quá... nó cứ giật giật thắt lại này♡」[p]
[舜]「Nhìn kìa, nó bắt đầu hé mở mấp máy như muốn nuốt chửng ngón tay anh vào trong rồi đấy?」[p]
Tsubomi「Ôi...♡ Ôi trời♡ Được xoa nắn mềm ra rồi...♡ Phía bên trong... cũng muốn được anh vuốt ve nữa cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_anaruseme2

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「À~ nhìn này, nó banh rộng ra rồi kìa... thêm chút nữa là ngón tay lọt vào được rồi. Anh sẽ từ từ nong cho nó quen dần nhé」[p]
Tsubomi「A... hức♡ A...♡ Lỗ mông cũng sắp đút vừa con cu vào rồi này♡ Thế là cả hai lỗ đều được anh sử dụng hết rồi♡」[p]
Tsubomi「Em hạnh phúc lắm... toàn bộ cơ thể em có thể khiến anh [舜] cảm thấy sung sướng... em mong chờ lắm cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_anaruseme3

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t1.mp3"  ]
[tb_start_text mode=1 ]
Tsubomi「Vâng ạ♡ Ôi...♡ Ôi trời ơi♡ Ngón tay... vào trong rồi... nó trơn tuột lọt hẳn vào trong rồi kìa♡」[p]
[舜]「Nếu cô bé phía trước bị đâm lỏng ra, thì lần sau anh sẽ dùng lỗ mông này để kẹp chặt con cu đấy nhé」[p]
Tsubomi「Em hiểu rồi ạ♡ Em nghe lời anh hết♡ Cả cô bé lẫn lỗ mông của Tsubomi, xin anh hãy tận tình sử dụng hết đi ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_anaruseme_hit

[playse  volume="100"  time="1000"  buf="1"  storage="tubomi/voice_r_tubomi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi...♡ Ôi trời ơi♡ Bên trong lỗ mông... đang được mơn trớn kìa♡ Hức...♡」[p]
Tsubomi「Ư... hức♡ Hà, a...♡ Chỉ mới một ngón tay thôi mà đã đầy ắp rồi nè♡ Ôi, ôi trời ơi♡」[p]
[舜]「Kinh thật, nó thắt chặt ghê gớm luôn ấy... Nếu đút con cu vào được đây thì chắc sướng tê người luôn cho xem」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Tsubomi「Hức...♡ A...♡ A...♡ Tới rồi♡ Chạm vào tận sâu bên trong rồi kìa♡ Cho em thêm nữa đi anh♡」[p]
Tsubomi「Dùng đầu khấc thúc mạnh vào tận sâu bên trong đi anh...♡ Em muốn anh khuấy đảo thật nhiều cơ...♡ A... a...♡」[p]
Tsubomi「Ôi...♡ Ôi...♡ Ôi trời♡ Vì quá thèm thuồng nên em càng lúc càng trở nên dâm đãng mất rồi nè♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Tsubomi「Hà...♡ Hà...♡ Ư... hức♡ Từng đường gân guốc nổi cộm trên con cu đang cọ sát rần rật vào trong em kìa♡」[p]
Tsubomi「Cả nhiệt độ, kích thước lẫn độ cứng em đều cảm nhận rõ mồn một luôn♡ Sướng quá♡ Quan hệ trần không bao tuyệt vời quá đi♡」[p]
Tsubomi「Cứ thế này em sẽ bị nghiện mất thôi mà♡ Ôi...♡ Ư... ôi...♡ Đáy bụng em bị chèn ép căng tức cả ra rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Tsubomi「Ư... ôi...♡ Ôi trời ơi♡ Cứ rút ra đút vào chậm rãi như đang trêu ngươi thế này... tuyệt vời quá đi anh ơi♡」[p]
[舜]「Em kẹp chặt kinh khủng vậy... đang nũng nịu đòi anh bắn tinh vào trong đúng không hả?」[p]
Tsubomi「Đúng thế đấy ạ♡ Em muốn anh bắn vào trong... rót thật nhiều tinh trùng vào cho em đi mà♡ Mau lên anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi... ôi trời ơi...♡ Hà, hà... Ý định muốn gieo giống cho em của anh truyền thẳng sang em rồi này♡」[p]
Tsubomi「Ư... hức♡ Hà, hà, em đã chuẩn bị sẵn sàng hết rồi... chỉ chờ được anh rót đầy vào thôi nè♡」[p]
Tsubomi「N-Nếu là lúc này... em sẽ thực sự được anh gieo giống mất thôi♡ Toàn bộ hạt giống của anh, em sẽ đón nhận hết♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Tsubomi「Tuyệt quá đi♡ Con cu của anh... đang bung hết sức ra rồi kìa♡ Như muốn quyết tâm thụ tinh cho em bằng được vậy... cuồng bạo quá♡」[p]
Tsubomi「A...♡ Hức...♡ Ôi...♡ Cô bé của em đang mừng rỡ reo vui này♡ Đang chuẩn bị để hứng trọn dòng tinh dịch rồi nè♡」[p]
Tsubomi「Ư... hức♡ N-Nếu bây giờ bắn vào... em sẽ hứng trọn toàn bộ tinh trùng mất♡ Sẽ thụ thai mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「À~ chỉ đưa hông để thụ tinh cho em thôi mà sướng thế này cơ mà...! Cứ thế này bắn thẳng vào nơi sâu nhất nhé?」[p]
Tsubomi「Ôi...♡ A...♡ Bắn vào đi anh♡ Giữ chặt lấy hông em rồi bắn ừng ực vào tận đáy sâu nhất đi ạ♡」[p]
Tsubomi「Ưm...♡ Ôi trời ơi♡ Em muốn anh rót thẳng trực tiếp vào tận tử cung cơ mà♡ Hãy bắn thật mạnh vào nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Tsubomi「A... a...♡ Cảm giác như toàn bộ ruột gan trong bụng sắp bị kéo tuột ra ngoài vậy...♡ Con cu cứ móc sâu vào──」[p]
Tsubomi「Bên trong bị khuấy đảo nhão nhoét hết cả ra rồi này♡ Ôi...♡ Em chưa bao giờ biết cảm giác mãnh liệt đến thế này đâu♡」[p]
Tsubomi「Ôi...♡ Ôi...♡ Phải làm sao đây... cả trong đầu lẫn thể xác... như sắp nổ tung vỡ vụn ra mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_tubomi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi trời♡ Con cu đang giật giật quẫy đạp dữ dội bên trong kìa♡ Cô bé của em không kìm hãm nổi nữa rồi♡」[p]
Tsubomi「Thành bên trong bị cọ sát nát bấy... cứ thế này thì em sẽ lên đỉnh ngay mất thôi♡ Em sắp phát điên lên rồi♡」[p]
Tsubomi「Hà...♡ Hà...♡ Hà...♡ Cơ thể em càng ngày càng biến thành hình dáng dành riêng cho anh mất rồi... Hạnh phúc quá đi mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_tubomi.ks"  target="*high2"  cond=""  ]
[call  storage="H_serihu_tubomi.ks"  target="*hit"  cond=""  ]
[return  ]
