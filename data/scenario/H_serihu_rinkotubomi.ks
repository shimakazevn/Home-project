[_tb_system_call storage=system/_H_serihu_rinkotubomi.ks]

*3P_kaiwa1

[tb_start_text mode=1 ]
Rinko「Mẹ cũng muốn Tsubomi được hạnh phúc... nhưng mẹ cũng không thể từ bỏ anh [舜] được. Xin lỗi con nhé?」[p]
Tsubomi「Nếu vậy thì, ngay tại đây cứ để anh [舜] chọn xem ai tốt hơn là được chứ gì?」[p]
Rinko「Thế cũng được... Nếu anh [舜] chọn Tsubomi, thì có lẽ mẹ cũng sẽ từ bỏ được.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kaiwa2

[tb_start_text mode=1 ]
[舜]「Anh định sẽ không chọn ai cả, mà sẽ ở bên cả hai người và trở thành một gia đình cơ.」[p]
Tsubomi「Ch-Chuyện đó chắc chắn là không được rồi! Hẹn hò với cả hai người là chuyện không thể nào!」[p]
Rinko「Vậy sao? Nếu anh [舜] chọn như thế, thì mẹ cũng không bận tâm đâu...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kaiwa3

[tb_start_text mode=1 ]
Tsubomi「Cơ thể của ai hợp với anh hơn và làm tình sướng hơn, anh cứ thử thực tế rồi quyết định đi...」[p]
Rinko「Nếu là độ sướng khi làm tình, thì có lẽ mẹ sẽ không thua đâu? Mẹ sẽ làm cho anh [舜] thỏa mãn.」[p]
Tsubomi「Mẹ có vẻ tự tin quá nhỉ... nhưng da của con trẻ trung và căng mịn hơn... Hơn nữa chỗ đó cũng thít chặt hơn mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*3P_kiss_tubomi1

[tb_start_text mode=1 ]
Tsubomi「Ưư♡ Chụt chụt, chụt, chụt♡ Hà, thấy chưa? Nụ hôn của em sướng hơn đúng không?」[舜]「Ưm~, phải hôn thêm nữa thì anh mới biết được. Tsubomi cũng phải hôn anh đi chứ.」[p]
Tsubomi「Chụt, chụt chụt... Anh cố tình nói thế đúng không. Chụt, chụt chụt... sột soạt♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kiss_tubomi2

[tb_start_text mode=1 ]
Tsubomi「Chụt chụt chụt♡ Hà~♡ Hà~♡ A, em lại thấy sướng hơn mất rồi.」[p]
Tsubomi「Rõ ràng là em định làm cho anh Shun sướng cơ mà... Ưm, chụt, chụt chụt♡ Chụt♡」[p]
Tsubomi「Em sẽ cho anh thấy... là em cũng biết hôn giỏi lắm đấy nhé... Chụt chụt chụt♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_kiss_tubomi3

[tb_start_text mode=1 ]
Tsubomi「Chụt, ưm, chụt chụt♡ Hà, ha♡ Hãy cho mẹ xem... cảnh chúng ta đang hôn nhau đi♡」[p]
Tsubomi「Phải cho mẹ biết là... lúc nào chúng ta cũng hôn nhau dâm đãng thế này chứ...♡」[p]
Tsubomi「Chụt chụt chụt♡ Phù, phù... Hà♡ Nhìn xem, anh cũng đang làm bộ mặt dâm đãng rồi kìa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_kiss_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Chụt chụt chụt♡ Ưm phưưư♡ Ưm♡ Rõ ràng chỉ là hôn thôi mà♡ Tê rần cả lên...」[p]
Tsubomi「Cảm giác sung sướng, đang lan tỏa khắp toàn thân...♡ Hà, sâu bên trong cơ thể em nóng ran lên rồi♡」[p]
Tsubomi「Ha, em muốn chiếm trọn lấy anh thế này cơ...♡ Em muốn hai chúng ta cứ hôn nhau mãi thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_kiss_rinko1

[tb_start_text mode=1 ]
Rinko「Chụt♡ Chụt, chụt, khc... Hôm nay anh Shun hôn dịu dàng quá nhỉ.」[p]
Rinko「Không lẽ, bị Tsubomi nhìn thấy nên anh hưng phấn sao? Hay là thấy hơi ngại ngùng rồi...?」[p]
Rinko「Bảo anh đừng để ý thì chắc cũng khó... nhưng cứ tận hưởng là được mà?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_kiss_rinko2

[tb_start_text mode=1 ]
Rinko「Chụt, chụt, chụt, chụt♡ Hà, phù♡ So với Tsubomi thì thế nào? Quả nhiên là khác biệt nhỉ?」[p]
Rinko「Về độ căng mịn của làn da thì có lẽ mẹ không bằng con bé được... nhưng về độ mềm mại và cách hôn thì mẹ tự tin lắm.」[p]
Rinko「Chụt chụt♡ Mẹ muốn làm cho anh Shun sướng cơ♡ Mình hôn nhau thật nhiều nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_kiss_rinko3

[tb_start_text mode=1 ]
Rinko「Ưm, chụt, chụt, chụt... Phù, phù... Mẹ thích hôn anh Shun lắm...♡」[p]
[舜]「Anh cũng thích hôn Rinko lắm... Anh cũng thích cả cái dáng vẻ cố gắng hết sức để làm anh thỏa mãn của em nữa.」[p]
Rinko「Bình thường mẹ vẫn luôn học cách làm anh Shun sung sướng mà♡ Mẹ sẽ không thua Tsubomi đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_kiss_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Chụt chụt♡ Ưm♡ Phù♡ Hà, hà... Chết thật... Chỉ hôn thôi mà nhức nhối quá đi mất...」[p]
[舜]「Em phải nói rõ xem chỗ nào nhức nhối thế nào chứ. Rinko thì chắc chắn là nói được đúng không?」[p]
Rinko「Thiệt tình...♡ Anh cứ nói lời trêu chọc mãi thôi♡ Cô bé của mẹ nóng ran và rạo rực hết cả lên rồi này♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_naderu1

[tb_start_text mode=1 ]
Tsubomi「A♡ Hà, ưm...♡ Vuốt ve mông cùng lúc... anh đang xác nhận sự khác biệt của cảm giác sao? A♡ Hà♡」[p]
Rinko「Mông của mẹ hơi to... nên xấu hổ lắm♡ Da cũng mềm nhão ra rồi... Có kỳ lạ không anh?」[p]
[舜]「Không đâu, dâm đãng cực kỳ luôn... Cảm giác mềm mại đến mức ngón tay chìm hẳn vào, không chịu nổi luôn...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_naderu2

[tb_start_text mode=1 ]
Tsubomi「Đừng có nhìn mỗi mẹ thế chứ, nhìn cả em nữa đi♡ Nhìn xem, mông em căng tròn luôn này♡」[p]
[舜]「Ưm... Cái mông nhỏ nhắn siết chặt lại cũng tuyệt lắm... Anh muốn giữ chặt lấy mông rồi đút dương vật vào quá...」[p]
Rinko「Anh chỉ hưng phấn với mỗi Tsubomi thôi... mẹ ghen đấy nhé♡ Anh dùng mông mẹ để sục cũng được mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_naderu3

[tb_start_text mode=1 ]
[舜]「Cảm giác và kích thước đều khác nhau... mông của ai cũng tuyệt vời cả. Anh có thể nhào nặn mãi không chán luôn...」[p]
Tsubomi「Cả hai đều tốt là không được đâu nhé♡ Anh phải quyết định xem mình thích mông của ai hơn thì em mới chịu♡」[p]
Rinko「Anh không cần phải khách sáo đâu nhé♡ Cứ sờ soạng, liếm láp, dùng tùy ý rồi quyết định xem anh thích ai hơn đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_naderu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A♡ A a a♡ Bị bóp chặt lấy rồi♡ Ưm, không chịu đâu, giữa hai chân mẹ nóng ran lên rồi♡」[p]
Tsubomi「A hà, ưm♡ Sướng quá... vuốt ve thêm nữa đi anh♡ Không chỉ mỗi mông mà cả chỗ khác nữa...♡」[p]
[舜]「Cách vòi vĩnh của hai người giống hệt nhau nhỉ. Lát nữa anh sẽ vuốt ve kỹ cả chỗ khác nữa nhé.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_sumata1

[tb_start_text mode=1 ]
Tsubomi「A♡ Ưm♡ Nóng quá... Cứng ngắc lại rồi này♡ Đang cọ xát ở giữa khe dâm kìa♡」[p]
Rinko「Phù... Phù♡ Anh Shun cũng đang thấy sướng đúng không? Anh cứ tùy ý di chuyển hông đi nhé♡」[p]
Rinko「A a a♡ Ưm, nó giật giật phản ứng lại rồi kìa? Dương vật sướng quá rồi đúng không♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_sumata2

[tb_start_text mode=1 ]
[舜]「A, sướng cực kỳ luôn...! Cảm giác bên trong cô bé, khác biệt hoàn toàn nhỉ...」[p]
Tsubomi「A♡ Của ai sướng hơn hả anh? Hà♡ Nhìn xem... mỗi lần cọ xát nó lại giật giật kìa?」[p]
Rinko「Hà, a♡ Anh vẫn chưa chọn được đúng không? Cứ thong thả thưởng thức rồi quyết định cũng được mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_sumata3

[tb_start_text mode=1 ]
Tsubomi「Ơ♡ Ơ ơ♡ Cọ xát... mép thịt cũng bị lật tung lên hết rồi♡ Dương vật của anh Shun tuyệt quá đi♡」[p]
Rinko「Hà♡ A♡ Tuyệt quá... ướt sũng mềm nhũn ra hết rồi này...♡ Mẹ sắp tan chảy mất thôi♡」[p]
Tsubomi「Hiưư♡ A... Cứ thế trơn tuột đâm vào trong luôn thì tốt biết mấy♡ Em muốn anh đâm ngập đến tận sâu bên trong cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hi a♡ A♡ Cửa vào... đang bị cọ xát kìa♡ Anh Shun... sắp trơn tuột đâm vào trong mất...♡」[p]
Tsubomi「A a a♡ Mẹ ăn gian quá đi♡ Anh cũng phải áp sát vào rồi cọ xát cho em nữa chứ♡」[p]
Rinko「Ưm♡ Hà, anh cứ... lắc hông kịch liệt hơn nữa rồi bắn ra giữa hai mẹ con cũng được mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_teman1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Ngón tay thô ráp... ch-chạm đến tận sâu bên trong rồi... Anh Shun giỏi quá đi♡」[p]
Tsubomi「A♡ Kư... Bên trong, đừng vuốt ve nhẹ nhàng thế mà♡ Em ra ngay mất thôi♡」[p]
Rinko「Hà♡ Tsubomi... vẫn còn nhạy cảm với kích thích lắm nhỉ...♡ A, làm bộ mặt sung sướng thế kia cơ mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_teman2

[tb_start_text mode=1 ]
[舜]「Tuyệt thật... Quả nhiên cảm giác bên trong khác biệt hoàn toàn... Thử so sánh mới thấy rõ ràng được...」[p]
Tsubomi「Ưm♡ Của em thì thế nào? Hà♡ A, đang siết chặt nhức nhối lắm đúng không♡」[p]
Rinko「Của mẹ thì... đang nóng ran và ướt sũng rồi đúng không? Mẹ sẽ bao bọc lấy anh Shun nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_teman3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Hà, a♡ Nhờ có anh Shun, mà nó ướt sũng rồi mở toang ra mất rồi...♡」[p]
Tsubomi「Cả em nữa...♡ Em cũng đã sẵn sàng để đút dương vật vào rồi cơ mà♡ Em muốn anh đút vào em trước cơ♡」[p]
Tsubomi「A♡ Hà, a♡ Rồi em sẽ bắt anh phải nói là cô bé của em sướng hơn cho xem♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hi a a a♡ Đừng... Chỗ đó, nhạy cảm lắm mà♡ Tại sao cùng lúc làm hai người... mà anh vẫn biết được chỗ nhạy cảm chứ.」[p]
Rinko「Hà♡ A a a♡ Mẹ cũng, bị chạm trúng chỗ sướng rồi này♡ Anh Shun, tuyệt quá đi♡」[p]
[舜]「Chỗ mà hai người muốn được sờ, anh biết hết cả rồi... nên anh có thể khuấy đảo nát bét hết cho xem.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_anaruseme1

[tb_start_text mode=1 ]
Tsubomi「A♡ A♡ Anh cứ tùy ý làm gì mông em cũng được♡ Này, của em tốt hơn đúng không?」[p]
Rinko「Phù♡ Đâu có chuyện đó chứ♡ Anh Shun, của mẹ mềm ra nhanh hơn nên anh thích hơn đúng không?」[p]
Rinko「Khc... Mẹ lại đi so đo thật sự với Tsubomi mất rồi♡ Tại mẹ muốn làm anh Shun sung sướng mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_anaruseme2

[tb_start_text mode=1 ]
[舜]「Tuyệt thật, lỗ hậu môn, bắt đầu giật giật rồi này... Cứ tiếp tục xoa bóp thế này thì ngón tay dễ dàng đút vào mất thôi.」[p]
Rinko「Kưưư♡ Ưm♡ Hà♡ Mềm nhũn giãn ra rồi đúng không? Mẹ đang chuẩn bị để tiếp nhận anh đấy.」[p]
Tsubomi「Mông em... siết chặt lắ~m đấy nhé♡ Ngón tay hay dương vật, anh thích đút cái gì vào cũng được hết♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_anaruseme3

[tb_start_text mode=1 ]
Rinko「A a a♡ Chết thật... Rõ ràng là mông thì đáng xấu hổ lắm cơ mà...♡ Lại thấy sướng mất rồi♡」[p]
Rinko「Tại cách sờ của anh Shun điêu luyện quá mà♡ Vuốt ve thật nhiều, làm cho nó mềm ra nữa đi anh♡」[p]
Tsubomi「Đừng có chỉ tập trung mỗi vào mẹ thế chứ♡ Sờ mông em nhiều vào nữa đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_anaruseme_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ơ ơ ơ ơ♡ Mông em... ướt sũng ra mất♡ Sướng quá đi♡ Hà♡ Hà♡ A♡」[p]
Rinko「Mẹ cũng thế♡ A a♡ Ưm♡ Anh Shun, dù phải làm với hai người cùng lúc mà vẫn làm cho sướng được nhỉ.」[p]
Tsubomi「Cả em nữa... Em cũng sẽ làm cho anh Shun sướng cơ mà♡ A♡ Em không chỉ biết nhận không đâu nhé♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_pisuton_yukkuri_rinko1

[tb_start_text mode=1 ]
Rinko「Hà♡ A♡ Cảm giác, kỳ lạ quá... Vừa bị Tsubomi nhìn vừa làm tình thế này...」[p]
Rinko「A♡ A♡ Chuyện thế này... Từ trước đến giờ mẹ chưa từng nghĩ tới và tuyệt đối không thể xảy ra cơ mà♡」[p]
Tsubomi「Cả em cũng vậy... Hẹn hò cùng một người với mẹ... rồi lại cùng nhau làm tình thế này, em chưa từng nghĩ tới luôn đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_rin+=1"  name="H_supiritasu_pisuton_yukkuri_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_rinko2

[tb_start_text mode=1 ]
Rinko「Hiưư♡ A♡ Anh Shun, hôm nay anh trêu chọc quá nhỉ♡ Cứ như đang trêu ngươi... chỉ đâm ở chỗ nông thôi♡」[p]
[舜]「Anh đang cho Tsubomi xem đấy... xem Rinko sẽ sướng và rối bời thế nào...!」[p]
Rinko「Chuyện đó, xấu hổ lắm...♡ A, a a♡ Khuôn mặt mẹ bây giờ đâu phải là của một người mẹ nữa, mà là của một người phụ nữ mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_rin+=1"  name="H_supiritasu_pisuton_yukkuri_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_rinko3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Kưưư♡ Đ-Đột nhiên... bị thúc mạnh... vào tận nơi sâu nhất... mẹ sẽ trở nên kỳ lạ mất thôi♡」[p]
Tsubomi「Mẹ, làm tình thế này sao... Dâm đãng quá đi...♡ Tức thật nhưng mà... có khi còn dâm đãng hơn cả em nữa.」[p]
[舜]「Đúng vậy đấy... Rinko mà cứ bị nhắm vào sâu bên trong, là sẽ ngày càng rối bời và làm bộ mặt dâm đãng ra đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_rin=0"  name="H_supiritasu_pisuton_yukkuri_rin"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A♡ A a a♡ Chỗ đó, sướng quá... Anh Shun, mẹ thích lắm♡」[p]
[舜]「A~, dâm đãng quá. Vú lắc lư rung bần bật còn hông thì nảy lên liên tục. Bị con gái nhìn thấy mà vẫn không sao à?」[p]
Rinko「A a♡ Chuyện đó không được đâu♡ Xin lỗi, xin lỗi con nhé Tsubomi♡ Để con phải thấy dáng vẻ đáng xấu hổ này.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*3P_pisuton_hagesiku_rinko1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ Hi ư♡ Dương vật của anh Shun, chạm đến tận nơi sâu nhất rồi...!」[p]
[舜]「Phải dùng phần đầu khuấy đảo thật kỹ chỗ sướng mới được... Phải cho Tsubomi thấy khuôn mặt sung sướng của em chứ...!」[p]
Rinko「A a a♡ Rõ ràng là xấu hổ lắm... thế mà sâu trong bụng lại càng phản ứng mạnh và sướng hơn mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_rin+=1"  name="H_supiritasu_pisuton_hagesiku_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_rinko2

[tb_start_text mode=1 ]
Rinko「Ưm, kưưư♡ Hà♡ Hà♡ H-Hông cứ tự động di chuyển... không dừng lại được mất♡」[p]
Tsubomi「Hai người làm tình thật luôn rồi kìa... Ăn gian, ăn gian quá đi...! Đừng quên là em cũng đang ở đây đấy nhé?」[p]
Rinko「Không sao đâu... Mẹ cũng đang cảm nhận được Tsubomi mà♡ Tsubomi cũng cùng sướng nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_rin+=1"  name="H_supiritasu_pisuton_hagesiku_rin"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_rinko3

[tb_start_text mode=1 ]
[舜]「A, tuyệt quá, hưng phấn quá đi...! Dương vật cứng ngắc không xìu xuống được nữa rồi...!」[p]
Rinko「Hi gư♡ Ơ♡ Ơ♡ Ơ ơ♡ Kịch liệt quá, hỏng mất thôi♡ Tuyệt quá đi...♡」[p]
Rinko「Mẹ đang làm cho anh Shun hưng phấn rồi này♡ A a, hạnh phúc quá♡ Cho mẹ thêm nữa đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_rin=0"  name="H_supiritasu_pisuton_hagesiku_rin"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ơ♡ A ưư♡ Cơ thể tự động di chuyển mất rồi♡ A a a♡ Anh Shun, sướng quá đi mất♡」[p]
[舜]「Dâm đãng quá. Trở thành giống cái hoàn toàn rồi nhỉ. Nào, em muốn dương vật thêm nữa đúng không?」[p]
Rinko「Tại vì sướng quá mà♡ Cho mẹ đi♡ Thúc lên tận sâu bên trong đi anh♡ Bắn hết tất cả vào trong cũng được đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*3P_2_kaiwa1

[tb_start_text mode=1 ]
Tsubomi「Anh biết thừa là làm tình với em sướng hơn cơ mà♡ Cơ thể chúng ta cũng hòa hợp hơn đúng không?」[p]
Rinko「Khc, lúc làm với mẹ anh Shun cũng có vẻ sướng lắm đấy? Đầu óc anh trống rỗng hết cả rồi kìa?」[p]
Tsubomi「Này, em và mẹ, anh thích ai hơn... làm tình với ai sướng hơn, anh hãy quyết định đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_kaiwa2

[tb_start_text mode=1 ]
Rinko「Anh Shun, đến đây...♡ Hãy cho Tsubomi thấy dáng vẻ say đắm như mọi khi của anh đi nào♡」[p]
Tsubomi「Với em, anh cũng lắc hông đến mức không biết trời trăng gì nữa cơ mà!? Hãy cho mẹ biết đi chứ!」[p]
[舜]「Làm theo thứ tự, cứ đợi đi. Không ngoan là anh không đút cu vào cho đâu đấy nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_kaiwa3

[tb_start_text mode=1 ]
Rinko「Khc... Cứ như đang được anh Shun huấn luyện ấy, làm em hưng phấn quá đi♡ Hôm nay anh sẽ làm gì em đây?」[p]
Tsubomi「Với em nữa... Hãy cứ trêu chọc em thật nhiều như mọi khi, rồi đút con cu đang cong vút lên vì nứng vào đi anh♡」[p]
Rinko「Chà, anh Shun... Anh trút hết dục vọng lên Tsubomi mà chẳng nể nang gì nhỉ. Làm em có chút ghen tị rồi đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*3P_2_Dkiss_tubomi1

[tb_start_text mode=1 ]
Tsubomi「Chụt, chu, chụt, rột rột...♡ Ưm, haa, em thích những nụ hôn như muốn nuốt chửng lấy nhau thế này lắm♡」[p]
Tsubomi「Góc này không được đâu... Phải hôn và quấn lấy lưỡi nhau đàng hoàng... sao cho mẹ nhìn thấy rõ cơ♡」[p]
Tsubomi「Chu, chụt, rột rột...♡ Haa, a phu, để mẹ thấy chúng ta đang trao nhau nụ hôn ướt át đến nhường nào chứ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_Dkiss_tubomi2

[tb_start_text mode=1 ]
[舜]「Nào, thè lưỡi ra... Em muốn hôn kiểu dâm đãng đúng không? Phải làm khuôn mặt phê pha rồi nài nỉ anh hôn lưỡi chứ.」[p]
Tsubomi「Vâng ạ♡ Hôn lưỡi em đi♡ Xin anh đấy♡ Chụt chụt, thế này sướng quá♡ Rột rột...♡」[p]
Tsubomi「A haa♡ Rero, chụt, chu♡ Quấn lấy chiếc lưỡi ấm nóng, ướt át của anh... em thích lắm cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_2_Dkiss_tubomi3

[tb_start_text mode=1 ]
Tsubomi「Chụt, chụt chụt♡ Rột rột rột...♡ Haa, a haa♡ Khoang miệng em, như sắp tan chảy ra rồi...♡」[p]
[舜]「Bị mẹ Rinko nhìn thấy lại càng hưng phấn hơn, Tsubomi đúng là đồ biến thái mà...」[p]
Tsubomi「Nhưng mà... trao nhau nụ hôn dâm đãng và sướng thế này... thì cơ thể em rạo rực lên là điều hiển nhiên mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*3P_2_Dkiss_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm ô ô...♡ Chụt chụt rột rột...♡ Chỉ hôn thôi mà cô bé của em đã run lên phản ứng lại rồi này...♡」[p]
Tsubomi「Chụt, ưm...♡ Ưm, làm tình bằng miệng... em được trải nghiệm trước rồi nhé♡ Sướng quá đi mất...♡」[p]
Tsubomi「Vâng ạ...♡ Chụt chụt chụt♡ Chụt, rột rột rột... Anh cứ nuốt chửng lấy em đi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_Dkiss_rinko1

[tb_start_text mode=1 ]
Rinko「Ưm...♡ Chụt, chụt, chụt chụt♡ Phù...♡ A, anh ngấu nghiến em thế sao...?」[p]
Rinko「Chụt, chụt chụt, lưỡi anh... tiến vào rồi... Ưm...♡ Ha phu, em gần như chẳng thở nổi nữa rồi...♡」[p]
Rinko「Được anh khao khát, em vui lắm...♡ Em cũng muốn đáp lại anh cơ♡ Chụt chụt, chụt, rột rột...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_Dkiss_rinko2

[tb_start_text mode=1 ]
Rinko「Chu, chụt chụt♡ Rột rột rột♡ A haa... Lưỡi em như sắp tan chảy ra luôn rồi♡ Chụt, chu♡」[p]
Rinko「Khoang miệng của anh Shun, đang nóng rực lên rồi... Liệu con cu của anh có đang nóng rực lên giống vậy không nhỉ?」[p]
Rinko「Phù...♡ Phù...♡ Anh hưng phấn rồi sao? Anh cứ trút hết mọi dục vọng lên em đi nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_2_Dkiss_rinko3

[tb_start_text mode=1 ]
Rinko「Rột rột, chụt, chụt♡ Ưm, anh Shun, vẻ mặt anh trở nên nghiêm túc rồi kìa♡ Phù, ưm...♡」[p]
Rinko「Khuôn mặt của một người đàn ông... Khuôn mặt đó, em thích lắm cơ♡ A... sâu trong bụng em nhói lên thèm khát rồi này♡」[p]
Rinko「Chu, chụt chụt, rột rột♡ Vì anh đã cho em hiểu được rằng đến tận sâu trong tâm can, em vẫn là một người phụ nữ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*3P_2_Dkiss_rinko_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm phu...♡ Chụt, chụt rột rột rột...♡ A, em ướt đẫm mất rồi...♡」[p]
Rinko「Bây giờ... giữa hai chân em... nước đang trào ra ướt nhẹp rồi này...♡ Chỉ hôn thôi mà em đã sướng thế này rồi cơ mà♡」[p]
[舜]「Con cu của anh cũng nhức nhối rồi đây. Chỉ muốn đút sâu vào trong rồi dập hông ngay lập tức thôi...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_supankingu1

[tb_start_text mode=1 ]
Tsubomi「Hi a...♡ A...♡ Chỗ mông bị đánh đang tê rần lên rồi này♡ Nó đỏ ửng lên mất thôi♡」[p]
Rinko「Anh chỉ đánh mạnh tay với mỗi Tsubomi thôi sao? Anh ăn gian quá đấy anh Shun♡ Hãy đánh em thật mạnh vào đi anh♡」[p]
[舜]「Nài nỉ đòi bị đánh đòn cơ đấy... Đúng là cặp mẹ con dâm đãng mà...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_2_supankingu2

[tb_start_text mode=1 ]
[舜]「Này! Anh sẽ đánh đến mức in hằn cả dấu tay lên luôn...! Để xem hai người có nói được câu cảm ơn không nhé...!」[p]
Rinko「A...♡ Cảm ơn anh ạ...♡ Haa, a...♡ Được anh làm cho sung sướng thế này em vui lắm cơ♡」[p]
Tsubomi「Hức ư ư...♡ Cảm ơn, anh ạ...♡ Cô bé của em lại rạo rực lên mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_2_supankingu3

[tb_start_text mode=1 ]
[舜]「A, âm thanh nghe đã thật. Nhưng mà hình như tiếng kêu có chút khác biệt thì phải...! Không biết âm thanh của ai nghe hay hơn nhỉ?」[p]
Tsubomi「Là của em, đúng không...♡ Nghe tiếng \"Bốp\" rõ to cơ mà♡ Haa, ưm...♡ Anh hãy chọn em đi♡」[p]
Rinko「Của em cũng... A...♡ Phát ra âm thanh dâm đãng lắm đúng không, anh Shun♡ Đến cả giọng nói dâm đãng cũng phát ra luôn rồi này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*3P_2_supankingu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a...♡ Đáng lẽ phải đau chứ... thế mà độ rung sướng rơn này lại truyền đến tận sâu trong bụng em cơ...♡」[p]
Rinko「Haa...♡ Haa...♡ A... Em cũng đang sướng rơn người lên rồi này...♡」[p]
[舜]「Cả hai người, làm cô bé ướt đẫm quá rồi đấy. Chỉ bị đánh đòn vào mông thôi mà đã hưng phấn thế này, đúng là biến thái mà...!」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_sumata1

[tb_start_text mode=1 ]
Tsubomi「Hi ư...♡ Haa...♡ A...♡ Shun, của anh bự chà bá luôn rồi kìa♡ A... đang cọ xát vào rồi này♡」[p]
Rinko「Ưm...♡ Khc, đường hầm khe thịt của hai mẹ con em thế nào? Anh có thích cảm giác ướt át nhầy nhụa này không?」[p]
[舜]「A, tuyệt vời lắm. Ưm... chỉ cọ xát vào khe thịt thôi mà... từ gốc đến ngọn đều sướng tê người luôn.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_sumata2

[tb_start_text mode=1 ]
Rinko「A...♡ Haa, a...♡ Anh Shun, phần đầu cũng sưng vù lên rồi này... bự quá đi♡」[p]
Tsubomi「A...♡ A a...♡ Hột le bị ép chặt quá...♡ Khư ư...♡ Thế này thì, em ra mất thôi♡」[p]
Rinko「Ưm...♡ Em vẫn chưa sao đâu... Anh cứ cọ xát thật nhiều vào bên em cũng được nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_2_sumata3

[tb_start_text mode=1 ]
Rinko「A...♡ Con cu của anh Shun, cứ giật giật đập thình thịch liên hồi kìa♡ Anh đến giới hạn rồi sao?」[p]
Tsubomi「Haa...♡ A...♡ Cảm giác cọ xát, truyền trực tiếp đến cô bé luôn rồi này♡ Sướng quá đi mất...♡」[p]
[舜]「Hừ... Ưm...♡ Giờ mà bắn ở đây, chắc cả hai người sẽ ngập ngụa trong tinh trùng của anh mất thôi...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*3P_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A a a...♡ Phần đầu, đang vướng vào cọ xát kìa...♡ Không được đâu...♡ Sướng quá đi mất...♡」[p]
[舜]「Hừ... Hông cứ giật giật thế này... càng cọ xát mạnh hơn... A! Chết tiệt, anh sắp bắn thật rồi...」[p]
Rinko「A a...♡ Cả ba người chúng ta cùng sướng rơn lên rồi này♡ Haa...♡ A...♡ Hạnh phúc quá đi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_teman1

[tb_start_text mode=1 ]
Tsubomi「Ô ô ô...♡ Sướng quá...♡ Phun nước, không dừng lại được...♡ Ô ô...♡ Toàn nhắm vào điểm yếu thôi...♡」[p]
Rinko「Haa, a...♡ Anh Shun... sao anh lại rành mấy chỗ sướng rơn thế này vậy chứ♡」[p]
[舜]「Phun nước lênh láng luôn rồi này... Chạm vào đâu để sướng, anh đã ghi nhớ từ lâu rồi.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*3P_2_teman2

[tb_start_text mode=1 ]
[舜]「Muốn đút vào sâu hơn nữa sao? Vậy thì, hãy cong hông lên, rồi nài nỉ anh bằng giọng dâm đãng đi nào.」[p]
Rinko「Vậy thì, em trước nhé...♡ A...♡ Em muốn được ngón tay của anh Shun thụt ra thụt vào thật mạnh cơ...♡」[p]
Tsubomi「Cả em nữa...♡ Hãy làm cô bé của em nát bét dữ dội hơn cả mẹ đi anh♡ Hãy nới lỏng đến mức tan chảy ra luôn đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_2_teman3

[tb_start_text mode=1 ]
Tsubomi「Ưm ô ô...♡ Thọc sâu vào sướng quá đi...♡ Đúng rồi, chỗ đó...♡ Sắp ra, em ra mất thôi...♡」[p]
Rinko「A a a...♡ Khuôn mặt em, trở nên dâm đãng mất rồi...♡ Không, đừng nhìn em chằm chằm thế mà...♡ Ô ô ô...♡」[p]
[舜]「Chết tiệt, nước cứ phun ra không ngừng kìa... Độ nhạy cảm với mức độ dễ phun nước của hai người giống hệt nhau luôn...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*3P_2_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ô ô ô...♡ Ưm...♡ Dâm thủy... phun ra thành tia... lênh láng luôn rồi này♡ Sướng quá đi mất♡」[p]
Tsubomi「A...♡ Giờ thì bên trong mở toang ra hết cỡ rồi này♡ Đã chuẩn bị sẵn sàng để đút cu vào rồi đó anh♡」[p]
Rinko「Bên trong em cũng... đã chuẩn bị tươm tất rồi đây...♡ Haa...♡ A a...♡ Hãy nếm thử cô bé ướt át ấm nóng này đi anh♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_2_anaruseme1

[tb_start_text mode=1 ]
Tsubomi「Haa...♡ Haa...♡ Anh đã quyết định xem thích cái mông nào hơn chưa? Hãy chọn cái nào dâm đãng hơn đi anh♡」[p]
[舜]「Cái mông căng tròn của Tsubomi, hay cái mông mềm mại sờ sướng tay của Rinko, cả hai đều tuyệt vời không thể tả.」[p]
Rinko「Khc, anh không chọn được sao? Tham lam quá đi♡ Vậy thì đành phải thưởng thức cả hai cùng lúc thôi nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_2_anaruseme2

[tb_start_text mode=1 ]
Rinko「Ưm...♡ Haa, a...♡ Không cần vội đâu... Em và Tsubomi sẽ không biến mất đâu, nên không sao đâu anh♡」[p]
Rinko「Ưm...♡ Mãnh liệt quá...♡ Đừng cố mở toang lỗ đít như muốn ngấu nghiến em thế chứ♡ A...♡ A a a...♡」[p]
Tsubomi「Haa...♡ A...♡ Mở toang ra mất rồi...♡ Cứ giật giật thế này... ngón tay, sắp đút lọt vào luôn rồi kìa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme+=1"  name="H_anaruseme"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_2_anaruseme3

[tb_start_text mode=1 ]
Tsubomi「A...♡ A a a...♡ Ngón tay, đút vào rồi...♡ Ưm, khư ư...♡ Lỗ đít, bị banh ra mất rồi...♡」[p]
Rinko「Haa...♡ A...♡ L-Lớp niêm mạc bình thường chẳng cho ai xem... giờ lại bị banh ra nhìn thấy hết rồi...♡」[p]
[舜]「Cả hai người, đều có cái hậu môn màu hồng đáng yêu quá nhỉ. Cứ giật giật nhức nhối thèm khát rồi đúng không.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruseme=0"  name="H_anaruseme"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*3P_2_anaruseme_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ A a a...♡ Ng-Ngón tay... trơn tuột... cứ thụt ra thụt vào... sướng quá đi...♡」[p]
Tsubomi「Khư ư...♡ Hộc...♡ Hộc...♡ Chỉ thở thôi mà... cũng khó khăn quá...♡ Lỗ đít đang bị làm tình này...♡」[p]
Tsubomi「Ô...♡ Ô ô ô...♡ Em ra bằng lỗ đít mất... Sướng quá thành nghiện luôn rồi này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*3P_pisuton_yukkuri_tubomi1

[tb_start_text mode=1 ]
Tsubomi「A...♡ Haa, a...♡ Vào đến tận sâu bên trong rồi... Ưm...♡ Bị đẩy ngược lên trên luôn rồi...♡」[p]
[舜]「A, siết chặt quá đi...♡ Khuôn mặt dâm đãng quá đấy, em đã mong chờ khoảnh khắc này từ lâu rồi đúng không?」[p]
Rinko「Nhìn khuôn mặt sướng rơn của hai người, làm em ghen tị quá đi... Cho em tham gia cùng với nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_tubo+=1"  name="H_supiritasu_pisuton_yukkuri_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_tubomi2

[tb_start_text mode=1 ]
Rinko「Phù...♡ Phù...♡ Anh Shun, khi làm tình với Tsubomi khuôn mặt anh lại ngây thơ đến thế này sao♡」[p]
[舜]「Tsubomi hễ bị bắt nạt là lại hưng phấn mà... Lần này chắc anh cũng phải bắt nạt Rinko thật nhiều mới được.」[p]
Tsubomi「A...♡ Kh-Không chịu đâu...♡ Không được...♡ Chỉ có em mới được anh bắt nạt và cưng chiều thôi cơ mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_tubo+=1"  name="H_supiritasu_pisuton_yukkuri_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_tubomi3

[tb_start_text mode=1 ]
Tsubomi「Ô...♡ Ô ô ô...♡ Bên trong...♡ Hãy đâm thật nhiều vào đi anh♡ Em thèm con cu của Shun lắm rồi...♡」[p]
Rinko「Anh Shun đã dạy dỗ con bé dâm đãng đến mức này sao? Chắc hai người đã lén lút làm tình rất nhiều sau lưng em nhỉ.」[p]
[舜]「Rinko đang ghen đấy à? Nhưng mà anh cũng làm tình dâm đãng với Rinko nhiều không kém cơ mà.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri_tubo=0"  name="H_supiritasu_pisuton_yukkuri_tubo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_yukkuri_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức ư ư...♡ T-Tuyệt quá... Không thở, nổi nữa rồi...♡ Tận sâu bên trong bị chèn ép chặt cứng luôn...♡ Ô ô ô...♡」[p]
Rinko「Haa...♡ Haa...♡ A, nghe tiếng rên rỉ sướng rơn của con bé... làm em cũng hưng phấn lây rồi này♡」[p]
Tsubomi「Ưm ô ô...♡ Bên trong, hỏng bét mất thôi...♡ Không được không được không được...♡ Em phát điên lên mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*3P_pisuton_hagesiku_tubomi1

[tb_start_text mode=1 ]
Tsubomi「Ô...♡ Ô...♡ Ô...♡ Mãnh liệt quá... Phát ra mấy âm thanh khó nghe mất rồi...♡ Chắc mặt em giờ trông dị hợm lắm...♡」[p]
Rinko「Không sao đâu, đừng che giấu. Khuôn mặt dâm đãng khi không còn giữ được bình tĩnh mới là đáng yêu nhất đúng không? Nhỉ, anh Shun?」[p]
[舜]「Đúng vậy... càng nhìn khuôn mặt dâm đãng đó anh lại càng hưng phấn muốn bắt nạt thêm đấy...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_tubo+=1"  name="H_supiritasu_pisuton_hagesiku_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_tubomi2

[tb_start_text mode=1 ]
Tsubomi「Hi a...♡ Không cử động nổi nữa rồi...♡ Không né được kích thích này...♡ Cảm giác sướng rơn truyền trực tiếp đến luôn này...♡」[p]
Rinko「Haa...♡ Haa...♡ Con cu to bự của anh Shun, cứ thụt ra thụt vào em đều nhìn thấy hết rồi này♡」[p]
Tsubomi「A... Mẹ nói thế làm em ra mất thôi...♡ Cô bé của em đang giật giật nhói lên rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_tubo+=1"  name="H_supiritasu_pisuton_hagesiku_tubo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_tubomi3

[tb_start_text mode=1 ]
[舜]「Tsubomi. Cảnh làm tình này, phải để Rinko nhìn thấy rõ ràng chứ. Hãy bảo Rinko nhìn đi nào!」[p]
Tsubomi「Hi ư ư...♡ A, xấu hổ quá... H-Hãy nhìn đi...♡ Cảnh con đang làm tình với Shun... mẹ hãy nhìn cho thật kỹ vào nhé...♡」[p]
Rinko「Mẹ đang nhìn đây... Trông sướng rơn thế kia, làm mẹ nãy giờ cũng rạo rực hết cả người rồi đây này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku_tubo=0"  name="H_supiritasu_pisuton_hagesiku_tubo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*3P_pisuton_hagesiku_tubomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ô...♡ Ô hô ô...♡ Sướng quá đi...♡ Em không biết, không biết gì nữa rồi...♡」[p]
[舜]「Hừ...! Em uốn cong người quá rồi đấy...! A a, đừng siết chặt thế chứ... Khư ư...」[p]
Tsubomi「Anh nói thế cũng vô ích thôi... Cảm giác sướng rơn không dừng lại được này...♡ Ô...♡ Ô...♡ Ô ô ô...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return ]
