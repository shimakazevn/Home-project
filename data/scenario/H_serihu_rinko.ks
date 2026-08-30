]
[_tb_system_call storage=system/_H_serihu_rinko.ks]

*high

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=4"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="+="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*high2

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=7"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(15-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*low

[tb_eval  exp="f.H_hit-=1"  name="H_hit"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou-=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="-="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*hit

[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=3"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(20-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="20"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[return  ]
*supiritasu_kaiwa1

[tb_start_text mode=1 ]
Rinko「Chị nhìn chằm chằm làm em sao thế? Khc, em căng thẳng à?」[p]
[舜]「A, em xin lỗi... Chỗ nào của chị cũng dâm đãng quá...」[p]
Rinko「Em giỏi thật đấy... Chỉ cần bị cậu Shun nhìn thôi, tự nhiên chị cũng thấy hưng phấn theo...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_sikan_rinko+=1"  name="H_supiritasu_sikan_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kaiwa2

[tb_start_text mode=1 ]
Rinko「Bị nhìn chằm chằm thế này xấu hổ lắm... Vậy chị cũng nhìn chằm chằm cậu Shun nhé♡」[p]
Rinko「Khc, hai chị em mình nhìn nhau rồi nhỉ...♡ Mặt chị có kỳ lạ lắm không~」[p]
[舜]（Đương nhiên rồi... Chị Rinko say lắm rồi...）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_sikan_rinko+=1"  name="H_supiritasu_sikan_rinko"  cmd="+="  op="t"  val="1"  ]
[return  ]
*supiritasu_kaiwa3

[tb_start_text mode=1 ]
Rinko「Bị nhìn chằm chằm thế này xấu hổ lắm... Vậy chị cũng nhìn chằm chằm cậu Shun nhé♡」[p]
Rinko「Khc, hai chị em mình nhìn nhau rồi nhỉ...♡ Mặt chị có kỳ lạ lắm không~」[p]
[舜]（Đương nhiên rồi... Chị Rinko say lắm rồi...）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_sikan_rinko=0"  name="H_supiritasu_sikan_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*supiritasu_kiss1

[tb_start_text mode=1 ]
Rinko「Ưm... chu, chụt, chu... ưm... haa, bị hôn mãnh liệt thế này thì...」[p]
[舜]「Môi chị Rinko, căng mọng và mềm mại quá...」[p]
Rinko「Chụt, chu, chu, ưm♡ Sướng quá đi mất...♡ Haa, hafu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[tb_eval  exp="f.H_supiritasu_kiss_rinko+=1"  name="H_supiritasu_kiss_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*supiritasu_kiss2

[tb_start_text mode=1 ]
Rinko「Ưm... ưm♡ Chụt, chụt, ưm, lưỡi của cậu Shun chui vào mất rồi... ưm♡」[p]
[舜]「Phù, phù, ưm, bên trong miệng nóng quá... không dừng lại được...」[p]
Rinko「Hafu, chụt chụt chụt, chụt chụt♡ Ưm, hôn sướng quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_kiss_rinko+=1"  name="H_supiritasu_kiss_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_kiss3

[tb_start_text mode=1 ]
Rinko「Chụt, chụt chụt chụt♡ Haa, ha♡ Mãnh liệt quá... cứ như sắp bị ăn thịt vậy♡」[p]
Rinko「Haa, ha... Quấn lưỡi thế này... sướng thật đấy...♡ Ưm, chụt, chụt chụt♡」[p]
[舜]（A~, nụ hôn ướt át này tuyệt quá...）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_kiss_rinko=0"  name="H_supiritasu_kiss_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Chụt, chu... ưm♡ Ha, haa♡ Tuyệt quá... vừa nãy...」[p]
Rinko「Chỉ hôn thôi mà... quanh bụng chị đã thắt lại rồi...♡ Cơ thể chị như đang thích thú vậy...♡」[p]
[舜]（Khuôn mặt đê mê kia... dâm đãng vô cùng...）[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high3==1"  ]
[return  ]
*supiritasu_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm...♡ Em thích vú à? Không cần ngại đâu, cứ sờ nhiều vào nhé♡」[p]
[舜]（To quá... tràn cả ra khỏi tay mình rồi...!）[p]
Rinko「Ưm♡ Bị bóp trọn rồi... Em cứ nhào nặn đi nhé. Cứ làm gì tùy thích♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_munemomi_rinko+=1"  name="H_supiritasu_munemomi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_munemomi2

[tb_start_text mode=1 ]
Rinko「A♡ Aa♡ Ha... ưm, em thích vú thế à? Khc, cứ như em bé vậy nhỉ.」[p]
Rinko「Cứ sờ cho đến khi thỏa mãn đi... a♡ Haa, ưm♡ Cách sờ đó... chị thích lắm...♡」[p]
Rinko「Cậu Shun, mặt em trông đàn ông lắm đấy♡ Sờ nữa đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_munemomi_rinko+=1"  name="H_supiritasu_munemomi_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]（Aa... mềm quá...! Vừa ẩm ướt vừa mềm mại. Tay mình không muốn rời ra luôn...!）[p]
Rinko「Ưm... haa, ha♡ An...♡ Bị nhào nặn tung tóe rồi...♡ Ưm a♡」[p]
Rinko「Bị nhào nặn vú mạnh thế này... ngứa ngáy quá. Chị không kìm lại được nữa rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_munemomi_rinko=0"  name="H_supiritasu_munemomi_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aan♡ Ha... haa...♡ Chị tưởng chỉ sờ vú thôi mà đã lên đỉnh rồi chứ...♡」[p]
Rinko「Em... quen nhào nặn rồi à...? Haa♡ Haa♡ Làm chị sướng quá đi mất♡」[p]
Rinko「Sâu trong bụng... cứ như bị thắt lại vậy...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high4==1"  ]
[return  ]
*supiritasu_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... aa♡ Haa, ha♡ Chỗ đó, nhạy cảm lắm... không được đâu♡」[p]
[舜]「Thật này... càng ướt hơn rồi đấy... Dâm quá đi.」[p]
Rinko「Đừng...♡ Đừng nói mà... haa, a♡ An♡ Sướng quá đi mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tikubi_rinko+=1"  name="H_supiritasu_tikubi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_tikubiijiri2

[tb_start_text mode=1 ]
[舜]「Sướng đến mức lưng chị cong cớn lên luôn sao?」[p]
Rinko「Hia♡ Đúng vậy... sướng lắm...♡ Aaaa♡ Bị đầu lưỡi mân mê thế này, chị cũng thích♡」[p]
Rinko「Ưm♡ Haa♡ A♡ An...♡ Chỉ dùng lưỡi thôi mà đã sướng đến mức này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tikubi_rinko+=1"  name="H_supiritasu_tikubi_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưn ưưư♡ Không được, không được đâu, thêm nữa là... chị lên đỉnh mất...♡」[p]
[舜]（Lăng loàn quá đi... Chị Rinko mà cũng rên ra mấy tiếng này sao... Dâm đãng vô cùng!）[p]
Rinko「A♡ A♡ Aa♡ Ưn ưư♡ Nước nhờn nhầy nhụa quấn lấy nhau rồi♡ Aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tikubi_rinko=0"  name="H_supiritasu_tikubi_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Haa, a... Vừa nãy... tuyệt quá...♡ Đầu vú... yếu ớt mất rồi♡」[p]
Rinko「Em sờ giỏi thật đấy...♡ Đây là lần đầu tiên chị sắp lên đỉnh chỉ vì bị sờ đầu vú đấy...♡」[p]
Rinko「...Chắc bây giờ, bên dưới đã ướt sũng rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high5==1"  ]
[return  ]
*supiritasu_matazuri1

[tb_start_text mode=1 ]
Rinko「Kyan... ồ♡ Bất ngờ thật đấy, nhưng mà chắc chị nghiện mất thôi♡」[p]
Rinko「Hya... khc♡ Mặt chị đang hiện rõ vẻ muốn em làm thêm lần nữa à?」[p]
Rinko「Ưm... chỗ đó, chị muốn em quan tâm thêm chút nữa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_matazuri_rinko+=1"  name="H_supiritasu_matazuri_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_matazuri2

[tb_start_text mode=1 ]
Rinko「Kya... aha♡ Tại say nên chị thấy vui quá đi mất♡」[p]
Rinko「Hyan... ồ♡ Em thích nhìn phản ứng của chị đến thế sao?」[p]

[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_matazuri_rinko+=1"  name="H_supiritasu_matazuri_rinko"  cmd="+="  op="t"  val="1"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_matazuri3

[tb_start_text mode=1 ]
Rinko「Kyan... khc♡ Chắc chị thích cảm giác vừa nãy rồi♡」[p]
Rinko「Ưm... Thấy em vui như thế, làm chị cũng mong đợi theo mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_matazuri_rinko=0"  name="H_supiritasu_matazuri_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_matazuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưn aaaa♡ An...♡ Aaa... không được... đâm trúng điểm yếu rồi♡」[p]
Rinko「An♡ A...♡ Aaaa♡ Mới chỉ cọ xát thôi mà... chị sắp lên đỉnh mất...♡」[p]
Rinko「Sướng đến mức này... có lẽ cơ thể hai chị em mình hợp nhau đấy...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high6==1"  ]
[return  ]
*supiritasu_hutomomo1

[tb_start_text mode=1 ]
Rinko「Ưm...♡ Đừng... đừng sờ như thể đang kiểm tra cảm giác thế chứ...♡」[p]
[舜]「Vừa mềm mại vừa mịn màng. Cảm giác lúc sờ vào tuyệt lắm chị ạ...」[p]
Rinko「An♡ Haa, em khéo nịnh thật đấy... ưm... bàn tay to lớn... ấm áp quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_hutomomo_rinko+=1"  name="H_supiritasu_hutomomo_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_hutomomo2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「An... haa...♡ Cách vuốt ve của em, dâm đãng thật đấy...♡ Haa... haa...♡」[p]
Rinko「Không được, hông chị sẽ tự động di chuyển... mất...♡ A♡ Ồ... chị lại mong đợi được sờ nhiều hơn nữa mất rồi♡」[p]
[舜]（Chị Rinko, dâm đãng vô cùng...!）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_hutomomo_rinko+=1"  name="H_supiritasu_hutomomo_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_hutomomo3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Phù~♡ [r]Phù~... Tại em vuốt ve nhiều quá... nên dưới rốn chị thắt lại rồi đây này♡」[p]
Rinko「Ý nghĩa là gì... em biết đúng không...? Là chị muốn rồi đấy...♡」[p]
Rinko「Không ngờ chị lại nói ra mấy lời này... thật khó tin♡ Chắc tại đầu óc đang lâng lâng...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_hutomomo_rinko=0"  name="H_supiritasu_hutomomo_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_hutomomo_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Aaaan♡ Chỗ đó, đừng vuốt ve mà♡ Hông chị, tự động di chuyển mất...♡」[p]
[舜]「Em đâm trúng chỗ sướng rồi à?」[p]
Rinko「Haa♡ Haa♡ Em cố tình đúng không? Thiệt tình... chắc chị cứ để mặc cho em làm mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_kuriijiri1

[tb_start_text mode=1 ]
Rinko「Ưm... thế này là sao♡ Tại say nên chị thấy kỳ lạ hơn bình thường thì phải♡」[p]
Rinko「Aa... bị làm thế này, chị lại muốn thêm nữa mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tekoki_rinko+=1"  name="H_supiritasu_tekoki_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kuriijiri2

[tb_start_text mode=1 ]
Rinko「Haa... cả cơ thể cứ nóng ran lên, nhạy cảm vô cùng♡」[p]
Rinko「Ưm... bị trêu chọc thế này, dù không say chị cũng chẳng nhịn nổi đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tekoki_rinko+=1"  name="H_supiritasu_tekoki_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_kuriijiri3

[tb_start_text mode=1 ]
Rinko「Ưm... tại say rồi nên chắc chị sẽ nói ra nhiều điều xấu hổ lắm đây♡」[p]
Rinko「Này... quan tâm chị nhiều hơn đi♡ Bây giờ chị đang muốn làm nũng lắm đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_tekoki_rinko=0"  name="H_supiritasu_tekoki_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Haa, an...♡ Cậu Shun... đâm tới tận dưới rốn rồi kìa...」[p]
Rinko「Chị hòa làm một với cậu Shun mất rồi...♡ Chị vui lắm...」[p]
[舜]（A~... Bên trong chị Rinko đang uốn lượn... hông mình sắp không dừng lại được rồi...）[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri2

[tb_start_text mode=1 ]
Rinko「Ưm♡ Haa♡ Au♡ A, a♡ Hình dáng của cậu Shun... bên trong cảm nhận rõ lắm...♡」[p]
[舜]「Bên trong chị Rinko... em cũng cảm nhận được rõ lắm... a~ em sắp tan chảy rồi...」[p]
Rinko「Ưn ưư♡ A...♡ Cọ xát sột soạt bên trong... sướng vô cùng luôn...♡ Hiư♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「A...♡ Haan♡ B-Bên trong... đâm tới tận cùng rồi...♡」[p]
Rinko「Puchu...♡ Hôn vào tận sâu nhất rồi kìa...♡ Haa, a, đầu quy đầu của cậu Shun đâm trúng rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưn aaaa♡ T-Từ từ đã... chỗ đó... cọ xát... hiưư♡」[p]
Rinko「A♡ A♡ A♡ Chỗ đó không được đâu... không được mà♡」[p]
[舜]（Lăng loàn quá đi...）[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Ưn aaaa♡ Mãnh liệt quá... đừng có lắc mạnh như thế chứ♡」[p]
Rinko「Haa♡ Uaa♡ Ưm ưm♡ Aaaa♡ Không được, chị chẳng biết gì nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku2

[tb_start_text mode=1 ]
Rinko「Tuyệt quá... Bị cậu Shun ngoáy đảo hết cả lên rồi...♡」[p]
Rinko「Au...♡ A♡ A♡ An♡ Đâm tới tận cùng rồi♡ Hỏng mất thôi♡」[p]
Rinko「Aaaaa♡ Cảm giác này, là lần đầu tiên...♡ Con cu của trai trẻ, sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku3

[tb_start_text mode=1 ]
Rinko「Higuuu♡ A♡ A♡ A♡ Ưn ưư♡ Nát bét hết rồi...♡」[p]
Rinko「Lăng loàn thế này... rõ ràng là xấu hổ lắm...♡ M-Mà hông cứ tự ưỡn ẹo♡ Đừng nhìn, đừng nhìn chị mà♡」[p]
Rinko「Không được... tử cung tụt xuống mất♡ Chị làm thật đấy nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*supiritasu_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ooo♡ A, chỗ đó sướng lắm♡ Aaaa♡ Đâm trúng rồi♡」[p]
Rinko「Ha♡ Ha♡ Ha♡ Trở nên, kỳ lạ mất thôi... không được, không được đâu♡」[p]
Rinko「Sướng lắm... chỗ đó, bị cọ xát... ưn ưưưư♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_kaiwa1

[tb_start_text mode=1 ]
Rinko「Ồ... hình như chị đang căng thẳng... Rõ ràng là người dẫn dắt mà... xấu hổ quá đi.」[p]
[舜]「Em cũng đang căng thẳng lắm...」[p]
Rinko「Thật à? Khc... vậy là giống nhau rồi... Mong em giúp đỡ nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa2

[tb_start_text mode=1 ]
Rinko「Tự nhiên bị nhìn cơ thể thế này thấy kỳ lạ quá... Đừng nhìn nhiều quá. Chị xấu hổ lắm.」[p]
[舜]「Chị đẹp lắm.」[p]
Rinko「Em khéo nịnh thật đấy... Nhưng nghe em nói thế chị cũng yên tâm.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa3

[tb_start_text mode=1 ]
Rinko「Bị em nhìn với khuôn mặt nghiêm túc thế kia, chị hồi hộp lắm...」[p]
Rinko「Cảm giác như được quay lại thời học sinh vậy. Khc, người lớn mà nói mấy câu này chắc kỳ lạ lắm nhỉ...」[p]
Rinko「Được yêu với một cảm giác tươi mới thế này, chị vui lắm... Ôm chị nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_kiss1

[tb_start_text mode=1 ]
Rinko「Chu... chụt♡ Ưm... khc, chị em mình hôn nhau rồi nhỉ...」[p]
Rinko「Môi cậu Shun, mềm mại lắm... làm chị muốn được hôn nhiều hơn nữa.」[p]
Rinko「Chị đang làm nũng đòi hỏi đấy... em có nhận ra không? Khc」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kiss2

[tb_start_text mode=1 ]
Rinko「Chụt chụt, chu, ưm♡ Haa... cậu Shun, hôn giỏi thật đấy... em học ở đâu vậy?」[p]
[舜]「C-Cái này... em chỉ làm theo bản năng thôi...」[p]
Rinko「Thế à? Vậy là nụ hôn nguyên bản của cậu Shun nhỉ... tuyệt lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss3

[tb_start_text mode=1 ]
Rinko「Chu, chụt, chu, ưm. Haa, hafu... Rời môi nhau... tiếc nuối quá nhỉ...」[p]
Rinko「Chụt chụt chụt, ưm... haa, aa, chỉ hôn thôi mà... cơ thể chị đã nóng ran lên rồi♡」[p]
Rinko「Chụt chụt chụt, chụt chụt♡ Haa, ưm, cứ muốn hôn mãi thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Chụt, chu, ưn ưư♡ Chỉ là hôn thôi mà... lại sung sướng đến mức này...♡」[p]
Rinko「Phù~, phù~, phù~...♡ Ồ... sâu trong bụng... cứ như đang xao xuyến rung động vậy♡」[p]
Rinko「Mang tâm trạng dâm đãng thế này rồi... chị lại muốn nhiều hơn nữa đấy?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Haa, a, ưm...♡ Lưỡi, ấm quá... ưm, cảm giác nhầy nhụa, sướng quá...」[p]
[舜]「Chị Rinko...」[p]
Rinko「Ưm♡ Em cất tiếng...♡ Là vang vọng cả trong đầu chị...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_miminame2

[tb_start_text mode=1 ]
Rinko「Ưm...♡ Haa, a♡ Lưỡi, chui vào trong mất rồi...♡」[p]
Rinko「Haa, nhầy nhụa hết cả lên rồi... cả tai, lẫn chỗ khác nữa♡」[p]
Rinko「Ưm... phù, phu... Tại cậu Shun liếm dâm đãng quá, làm chị sướng mất rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_miminame3

[tb_start_text mode=1 ]
Rinko「A...♡ Haan...♡ Bị liếm tai dâm đãng thế này... là lần đầu tiên đấy♡」[p]
Rinko「Lần đầu tiên của chị, bị cậu Shun cướp mất rồi...♡ An, aa, cái đó, sướng quá...♡」[p]
Rinko「Phù, phù, tan chảy mất thôi...♡ Aa, chỉ nghe thấy toàn âm thanh dâm đãng thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiưưư♡ A♡ Ahaa♡ Sâu trong tai, nóng rực lên rồi...♡」[p]
Rinko「Chỉ bị liếm tai thôi mà... chị sắp lên đỉnh mất rồi...♡ Tuyệt quá...」[p]
Rinko「Cơ thể vẫn cứ như đang tê rần...♡ Sướng lắm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_munemomi1

[tb_start_text mode=1 ]
Rinko「Ưm...♡ Haa, không cần ngại đâu... em cứ sờ vú đi♡」[p]
Rinko「Cậu Shun cứ sờ theo ý thích đi... có thô bạo mạnh bạo một chút cũng không sao đâu.」[p]
Rinko「Nào... sờ nhiều hơn nữa đi...?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_munemomi2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A♡ An♡ Haa, em sờ vú giỏi thật đấy... em thích vú à?」[p]
[舜]「Vâng... mềm mại vô cùng... sướng lắm chị ạ.」[p]
Rinko「Ưm♡ Em thích chị vui lắm...♡ Hãy nhào nặn thô bạo hơn nữa đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_munemomi3

[tb_start_text mode=1 ]
Rinko「An♡ Aa♡ Bị nhào nặn tung tóe hết rồi...♡ Vú chị sướng quá♡」[p]
Rinko「Haa, ha, an♡ Em đang hưng phấn lắm à? Thở dốc thế cơ mà...」[p]
Rinko「Chị vui vì em hưng phấn với vú chị... cứ làm nó nát bét cũng được♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_munemomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Chỗ đó, sướng lắm...♡ Vừa nãy... đến cả tử cung cũng thắt lại rồi♡」[p]
Rinko「Phù♡ Phù♡ Có thể em sẽ nghĩ chị lăng loàn... nhưng chị không dừng lại được♡」[p]
Rinko「Đây là lần đầu tiên chị hưng phấn đến thế này...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Ồ... bị vuốt ve mất rồi... Mông chị đâu có nhỏ nhắn gì, xấu hổ lắm.」[p]
[舜]「Vừa mềm mại lại vừa tuyệt vời...」[p]
Rinko「Thật à...? Nghe em nói thế, chị đâm ra đắc ý đấy nhé?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_sirinade2

[tb_start_text mode=1 ]
Rinko「Ưm... phù, phu... Đôi tay dịu dàng thật đấy... có khi em có năng khiếu xoa bóp cũng nên...♡」[p]
Rinko「A... haa, tự nhiên lại vuốt ve dâm đãng thế này... em quen tay rồi à?」[p]
Rinko「A, em ngoảnh mặt đi à? Phải nhìn mỗi mình chị thôi chứ...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_sirinade3

[tb_start_text mode=1 ]
Rinko「Haa, ưm♡ An... chỉ mông thôi thì... chị không thỏa mãn nổi nữa rồi...」[p]
Rinko「Chị lại muốn... em vuốt ve cả giữa hai chân nữa cơ... Ưm, chị thật là... nói ra mấy lời xấu hổ thế này...」[p]
[舜]（Làm nũng, đáng yêu quá đi...!）[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaaa♡ Á♡ Haa♡ Haa♡ Chỗ anh vừa chạm vào, nhạy cảm lắm...♡」[p]
Rinko「Phù~... Sâu trong bụng, cứ xốn xang... hình như trào ra mất rồi♡」[p]
Rinko「Phù~... Phù~... Anh cứ kiểm tra cũng được mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A... Chỗ đó... Khoan đã. Đột nhiên liếm như vậy... xấu hổ lắm... Ưm♡」[p]
Rinko「Haa, haa, anh không cần cố liếm chỗ đó đâu... Shun-kun này...」[p]
Rinko「A♡ Aaaaa♡ Lưỡi anh, đừng cử động mãnh liệt thế chứ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kunni2

[tb_start_text mode=1 ]
Rinko「A ư♡ Giống như sắp bị Shun-kun ăn thịt mất thôi...♡」[p]
Rinko「Anh không cần phải say sưa mút như thế đâu mà... Ưm, aaaa♡」[p]
Rinko「Cứ bị liếm hạt đậu mãi... em không chịu nổi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni3

[tb_start_text mode=1 ]
Rinko「Haa, á...♡ Lưỡi anh, nóng quá...♡ Em... ra mất thôi...♡」[p]
Rinko「Bên trong, ướt nhẹp hết rồi, anh thấy không? Đang chuẩn bị sẵn sàng để đút vào rồi đấy...」[p]
Rinko「Ưm, phù♡ Phù...♡ Xin lỗi anh... hông em tự động nảy lên...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hyaaan♡ Vừa rồi, là sao vậy... Cứ ngỡ như sắp tan chảy ra...♡」[p]
Rinko「Haa♡ Tận bên trong... cảm nhận được rồi♡ Haa, hức... Em muốn, quá...♡」[p]
Rinko「Bên trong, cũng muốn được chạm vào đến quặn thắt cả lại...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Á... a... không chịu đâu... Em, với bộ dạng thế này... lại bị làm những chuyện dâm đãng...♡」[p]
Rinko「Rõ ràng là không được... nhưng sướng quá... em lại muốn anh đừng dừng lại♡」[p]
Rinko「A♡ A♡ A♡ Hãy ngoáy mạnh hơn đi... tận sâu bên trong... cho em đi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_teman2

[tb_start_text mode=1 ]
Rinko「Hiư, ưm, á, a♡ Đừng, nhìn chằm chằm như thế...」[p]
Rinko「Mặt em, trông kỳ cục lắm đúng không? Không được đâu... Em chẳng còn chút tỉnh táo nào nữa rồi...♡」[p]
Rinko「A haa♡ A♡ Em chẳng thể nghĩ được gì ngoài việc sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_teman3

[tb_start_text mode=1 ]
Rinko「A ư ư♡ Tận sâu bên trong... ngón tay anh chạm tới rồi...♡ Á, aaaa♡」[p]
Rinko「Tất cả của em... đều bị chạm vào hết rồi...♡ Ồ♡ Tuyệt quá... sướng quá đi♡」[p]
Rinko「Haa~♡ Haa~♡ Ưm, nhóp nhép hết cả rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Em trở nên kỳ lạ mất... a, aaaa♡ Không được đâu♡」[p]
Rinko「Haa♡ Haa♡ Haa♡ Em tưởng mình sắp ra mất rồi... Anh chạm trúng chỗ nhạy cảm quá...」[p]
Rinko「Sao anh lại biết hết những chỗ sướng của em vậy...?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「Ưm... aa... Cảm nhận được dương vật anh đang đập thình thịch luôn...♡」[p]
Rinko「A...♡ Tuyệt quá... anh đang thong thả, thưởng thức sao...?」[p]
Rinko「Được thôi, cứ cử động chầm chậm đi... hãy tận hưởng bên trong em nhé...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Bên trong Rinko-san... trơn tuột... chỗ nào cũng sướng cả...!」[p]
Rinko「Á♡ A♡ A♡ Dương vật anh, đang giật giật bên trong kìa...♡」[p]
Rinko「Thật mạnh mẽ quá...♡ A, bên trong em, sắp biến thành hình dạng của Shun-kun mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Ư ooo♡ Tuyệt quá...♡ Lại to lên bên trong rồi♡」[p]
Rinko「Aaaa♡ Thấy chỗ hai đứa mình nối với nhau, anh hưng phấn sao?」[p]
Rinko「Haa, á... Em cũng... sướng lắm... haa, á♡ Á♡ Bên trong, cọ xát hết cả rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ooo♡ Tuyệt quá... Cọ đúng chỗ sướng rồi... ưm♡ Aaaa♡」[p]
Rinko「Em, phát ra tiếng dâm đãng quá... ưm♡ Phù, hức♡ Anh nhấp hông... giỏi quá...」[p]
Rinko「Em tưởng mình đột nhiên ra luôn rồi...♡ Em thích thế♡ Thích lắm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*hit"  ]
[return  ]
*H1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Mãnh liệt quá... Anh say sưa nhấp hông như thế...」[p]
Rinko「Khuôn mặt tuyệt vọng của anh cũng đáng yêu quá... Được thôi, cứ đâm hết vào đi♡」[p]
Rinko「Hức♡ Haa♡ Hức♡ Cố lên cố lên...♡ Anh làm mãnh liệt hơn nữa cũng được mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku2

[tb_start_text mode=1 ]
Rinko「Ưm... tuyệt quá... Bị rung lắc dữ dội luôn...♡ A♡ Aaaa♡」[p]
Rinko「Quả nhiên Shun-kun cũng là con trai nhỉ... Lực, mạnh quá♡ Bên trong cũng... to quá♡」[p]
Rinko「Đang quậy phá bên trong em... ưm♡ Hức, haa♡ Haa♡ Đang đâm bình bịch vào tận sâu bên trong kìa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Rinko「A♡ Aaaa♡ Chỗ đó, không được đâu♡ Em nhạy cảm lắm♡」[p]
[舜]「Rinko-san, chị hết chịu nổi rồi nhỉ...」[p]
Rinko「Hức♡ Hức♡ Aaaa...♡ Đừng nói mà... Bị một chàng trai trẻ tuổi làm cho rung lắc thế này cũng không tệ đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Chỗ đó♡ Không được đâu♡ A ư, đâm trúng chỗ sướng rồi♡」[p]
Rinko「Haa♡ Không được, không được, đừng nhắm mãi vào một chỗ đó♡ Em ra mất thôi♡」[p]
Rinko「Aaaa♡ Đừng... đừng nhìn khuôn mặt hiện giờ của em... Nó trở nên... kỳ cục lắm rồi...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*hit"  ]
[return  ]
*J1_kaiwa1

[tb_start_text mode=1 ]
Rinko「Khc, Shun-kun, anh học massage từ lúc nào thế?」[p]
[舜]「Em học bằng cách nhìn Rinko-san làm việc đấy. Gọi là học lỏm đó.」[p]
Rinko「Thế thì em có thể kỳ vọng được không nhỉ? Không biết anh sẽ làm em sướng đến mức nào đây.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa2

[tb_start_text mode=1 ]
Rinko「Massage thì phải nằm sấp, nhưng nằm ngửa có được không?」[p]
[舜]「Em muốn vừa chạm vào vừa kiểm tra xem chị sẽ làm vẻ mặt như thế nào...」[p]
Rinko「Ưm, đúng nhỉ. Vừa nhìn phản ứng của khách vừa xoa bóp là tuyệt nhất mà...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa3

[tb_start_text mode=1 ]
Rinko「Sắp bắt đầu rồi sao...? Được thôi, nếu Shun-kun chạm vào đúng như anh nghĩ...」[p]
Rinko「Liệu em có sướng đến mức tan chảy ra không nhỉ...♡」[p]
Rinko「Em sẽ học hỏi bằng cách xem Shun-kun làm. Mong anh giúp đỡ nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_kiss1

[tb_start_text mode=1 ]
Rinko「Ưm... chụt, chụt♡ Phù♡ Môi, chạm nhau rồi... Đây cũng là massage sao?」[p]
[舜]「Đây là... massage môi mà...」[p]
Rinko「Khc, vậy sao♡ Thế thì xin anh hãy tiếp tục đi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kiss2

[tb_start_text mode=1 ]
Rinko「Chụt chụt, chụt♡ Chụt, ưm, chụt♡ Haa, haa, haa... mãnh liệt quá...」[p]
Rinko「Đột nhiên lại làm mãnh liệt thế... Khác một chút với cách massage của em nhỉ.」[p]
Rinko「Nhưng... có lúc mạnh lúc nhẹ cũng tốt. Sâu bên trong cơ thể, nóng lên mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss3

[tb_start_text mode=1 ]
Rinko「Chụt, chụt chụt... ưm...♡ Em cứ nghĩ massage dâm đãng thì sẽ như thế nào...」[p]
Rinko「Sướng quá♡ Cơ thể cũng ấm lên rồi...♡ Em có thể nhờ anh làm tiếp được không?」[p]
Rinko「Hôm nay em là người được Shun-kun dạy cho nên... Shun-kun là thầy giáo nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Chụt... ưm♡ Phù... phù...♡ Vừa rồi... tuyệt quá...♡」[p]
Rinko「Sâu trong bụng, vẫn còn râm ran tê dại... Cách massage của Shun-kun tuyệt thật đấy.」[p]
Rinko「Chắc em phải nhờ anh dạy thêm nhiều cách massage khác nữa thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_paizuri1

[tb_start_text mode=1 ]
[舜]「Rinko-san, hãy kẹp bằng ngực... rồi vuốt ve massage cho em đi.」[p]
Rinko「Ưm...♡ Như thế này sao? Dương vật anh, to lên nhiều quá...♡」[p]
Rinko「Phù... phù...♡ Massage dùng cơ thể thay vì dùng tay cũng mới mẻ và thú vị nhỉ...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_paizuri2

[tb_start_text mode=1 ]
Rinko「Ưm...♡ A♡ Dương vật anh, đang giật giật kìa♡ Anh có sướng không~♡」[p]
Rinko「Khc, em đang nhìn rõ xem anh làm vẻ mặt gì đấy nhé? Shun-kun, trông có vẻ sướng quá...」[p]
Rinko「Cách này là đúng rồi nhỉ♡ May quá. Em sẽ tiếp tục massage như thế này nhé~♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri3

[tb_start_text mode=1 ]
Rinko「A... Từ đầu dương vật rỉ ra chất lỏng trong suốt sền sệt rồi♡」[p]
Rinko「Thế này thì không cần dùng dầu massage nữa rồi nhỉ...♡ Ưm, phù, ưm♡」[p]
Rinko「A... Bị vú vò nát hết rồi nhỉ... Ưm, chỗ cứng cứng, cọ xát... sướng quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_paizuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hya ư♡ Ưm♡ Ngực ướt nhẹp hết rồi♡」[p]
Rinko「Cọ xát sột soạt... trúng chỗ nhạy cảm rồi♡ Ưm... aa♡」[p]
Rinko「Đang được dạy massage mà, chắc em chẳng thể nghĩ được gì nữa mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Em bắt đầu massage ngực nhé... Sẽ xoa bóp thật kỹ đấy.」[p]
Rinko「Ưm...♡ A♡ Cách tay Shun-kun di chuyển, điêu luyện quá... Có vẻ sẽ mềm ra lắm đây♡」[p]
Rinko「Ngực em đang căng cứng nên... anh hãy xoa bóp nhiều cho nó mềm ra nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi2

[tb_start_text mode=1 ]
Rinko「A... ưm♡ Chỗ đó... sướng quá... Shun-kun massage giỏi thật đấy.」[p]
[舜]「Đúng không? Nhưng ngực chị như sắp tràn ra khỏi kẽ tay rồi... Tay em không ôm trọn được đâu.」[p]
Rinko「Ưm♡ A♡ Xin lỗi vì khó massage nhé? Cứ từ từ thôi cũng được...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi3

[tb_start_text mode=1 ]
Rinko「A♡ Á...♡ Ưm... Lỡ phát ra tiếng kỳ cục rồi, xin lỗi anh nhé...♡」[p]
[舜]「Không sao đâu, chị cứ phát ra tiếng đi. Thả lỏng lực ra cũng có tác dụng thư giãn mà.」[p]
Rinko「Haa, á...♡ A♡ Shun-kun, có khi anh làm được kỹ thuật massage thật luôn đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Ưm... chỗ đó... chỗ nhạy cảm, bị tay cọ xát... ưm, a, aaaa♡」[p]
[舜]「Đầu vú, sưng tấy đứng lên hết rồi này...」[p]
Rinko「Không chịu đâu, xấu hổ quá... ưm♡ Đầu vú cũng bị massage cùng luôn rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munename1

[tb_start_text mode=1 ]
Rinko「Ưm... á♡ Lần này là massage bằng cách liếm sao? Anh xoa bóp cho em bằng nhiều cách thật đấy...♡」[p]
[舜]「Đầu vú cũng cứng ngắc rồi này? Chỗ này, có vẻ căng cứng nhỉ...」[p]
Rinko「Ưm, không phải căng cứng đâu... ưm♡ A... ưm♡ Liếm ướt át thế, không được đâu...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_munename2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Á... a...♡ Cứ bị liếm đầu vú mãi thế này... em trở nên kỳ lạ mất♡」[p]
[舜]「Nhưng hoàn toàn không mềm ra được này. Có vẻ càng lúc càng cứng hơn...」[p]
Rinko「Ưm♡ A, đó không phải là căng cứng đâu...♡ Aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename3

[tb_start_text mode=1 ]
Rinko「Hiư♡ Ưm... Ngực em, càng lúc càng nhạy cảm hơn rồi...♡ Đây cũng là tác dụng của massage sao?」[p]
Rinko「Hơn nữa... đến tận những chỗ khác cũng nhói lên... muốn được chạm vào quá♡」[p]
Rinko「Tác dụng massage của Shun-kun tuyệt thật đấy... May mà em được anh dạy cho♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_munename_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Chỗ đó, tuyệt quá... Chỉ bằng đầu vú thôi mà, em ra mất♡」[p]
Rinko「Lưỡi của Shun-kun, ướt át và ấm nóng quá... Em muốn nữa cơ...」[p]
Rinko「Aaaa♡ Mút chụt chụt thế này... giống em bé quá... ưm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A... kh-không được, bẩn lắm♡ Em đã bảo liếm là không được mà...♡」[p]
[舜]「Đâu có bẩn? Trơn tuột và nóng hổi rồi này. Không cần dùng dầu massage luôn.」[p]
Rinko「Ưm... đừng nói những lời đáng xấu hổ thế chứ...♡ A, aaaa♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kunni2

[tb_start_text mode=1 ]
Rinko「Ưm... hức, anh dùng lưỡi massage đến tận chỗ đó luôn sao...?」[p]
Rinko「Cơ thể ấm lên rồi...♡ Tác dụng tức thời của massage tuyệt thật đấy♡」[p]
[舜]「Bên trong cũng đang nóng hổi lên rồi này? Bị massage nên nóng lên rồi sao?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni3

[tb_start_text mode=1 ]
Rinko「Ưm♡ A, xin lỗi anh, hông em tự động nảy lên...♡ Hya ư♡ A♡ Á♡」[p]
Rinko「Hyan♡ Bị mút hạt đậu tuyệt quá...♡ Cảm giác sướng cứ trào dâng lên♡」[p]
Rinko「A ư♡ Shun-kun, anh học được cách massage sướng thế này từ lúc nào vậy...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Chỗ đó, không được... Đừng mút sột soạt thế chứ♡ Có thứ gì đó sắp trào ra rồi♡」[p]
Rinko「Hiư♡ A, hông không dừng lại được...♡ Bị giật giật thế này... sướng quá đi mất♡」[p]
Rinko「Em không biết massage bằng lưỡi đấy... Được Shun-kun dạy cho mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_teman1

[tb_start_text mode=1 ]
[舜]「Em cũng phải massage xoa bóp cẩn thận bên trong nữa... Em sẽ xoa bóp tận sâu bên trong nhé...♡」[p]
Rinko「Ưm♡ A♡ Haa, á♡ Ưm, chạm đến tận chỗ sâu rồi... kỳ lạ mất thôi♡」[p]
Rinko「Hiư, a, a, a♡ Đừng tìm chỗ nhạy cảm chứ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ư ư♡ Chỗ đó... không được... Đ-Đã mềm ra rồi mà... Nếu bị làm thêm nữa...」[p]
Rinko「Thực sự có thứ gì đó sắp trào ra mất...♡ Không được, không được không được không được... Dừng lại một lát đi... Không được đâu♡」[p]
Rinko「A♡ A♡ A♡ Chạm đến tận sâu bên trong rồi... Đang được xoa bóp kìa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman3

[tb_start_text mode=1 ]
Rinko「A... ưm... Hình như bên trong cơ thể bị massage làm cho nóng ran lên rồi...」[p]
Rinko「Cảm giác sướng từ sâu trong bụng trào dâng lên... sắp có thứ gì đó kỳ lạ ập đến rồi♡」[p]
Rinko「Cảm giác như em không thể tự kiềm chế được nữa... Em, sắp trở nên kỳ lạ mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aa♡ Trước mắt, chớp nháy liên tục... Thôi, không được... em trở nên kỳ lạ mất♡」[p]
[舜]「Kỳ lạ thì có sao đâu...! Chị hãy giải phóng bản thân đi...!」[p]
Rinko「A♡ A ư♡ Đâm trúng chỗ không được rồi...♡ Hỏng mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Ưm, bên trong... cọ xát... trúng rồi♡」[p]
[舜]「Chị siết chặt thế thì em massage thế nào được... Nào, thả lỏng lực ra đi.」[p]
Rinko「Dù anh có nói thế... ưm♡ Cơ thể cứ tự động... nảy lên mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Rinko「Của Shun-kun... to lên nhiều quá...♡ Chạm đến tận sâu bên trong rồi♡」[p]
Rinko「Bên trong cọ xát hết cả... bị kích thích rồi... Chẳng mấy chốc sẽ mềm ra thôi♡」[p]
[舜]「Bên trong càng lúc càng mềm và trơn tuột rồi này...! Cứ đà này nhé...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Hiư♡ A♡ A♡ Chỗ đó... bị đâm bình bịch vào sâu bên trong, không được đâu...♡」[p]
[舜]「Ưm, em làm mạnh hơn nhé? Có thể thay đổi lực được mà... Vì đây là massage mà...!」[p]
Rinko「Không... không phải ý đó đâu... ưm♡ A♡ Dương vật Shun-kun lại to lên... aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Chỗ cứng cứng sâu bên trong này, đang bị căng cứng đúng không? Em sẽ tập trung nhắm vào đó cho chị nhé.」[p]
Rinko「A♡ A, chỗ đó, không ph... hiư♡ Không phải căng cứng đâu...♡」[p]
Rinko「Chỗ đó, là chỗ không được... vì nhạy cảm lắm♡ Nếu mềm ra... em sẽ ra liên tục mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A♡ Á... mãnh liệt... ưm♡ Massage mãnh liệt thế này, lần đầu tiên...♡」[p]
[舜]「Chẳng phải Rinko-san hay nói là không chỉ bề mặt mà còn phải xoa bóp cẩn thận tận sâu bên trong sao.」[p]
Rinko「Đó là nói về massage bình thường... Còn cái này khác m... á♡ Aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku2

[tb_start_text mode=1 ]
Rinko「A♡ A ư♡ Aaaa♡ B-Bên trong... chạm tới rồi... Chỗ không được... đầu dương vật đâm trúng rồi♡」[p]
[舜]「Cửa tử cung cũng hay được massage lắm đấy...! Để bên trong trở nên mềm mại hơn...!」[p]
Rinko「Hiư♡ A♡ A♡ Mở ra mất♡ Tan chảy hết ra và tiếp nhận toàn bộ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Rinko「Ưm, kư♡ Từ sâu trong bụng... cảm giác sướng cứ sôi sùng sục trào dâng lên...♡」[p]
Rinko「Sướng quá, quặn thắt lại... sắp trở nên kỳ lạ mất♡ Shun-kun, anh biết chỗ nào sướng sao?」[p]
Rinko「Có khi anh có tài năng massage đấy... Lỡ anh giỏi hơn em thì phải làm sao...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hya ư♡ A♡ A♡ A♡ Bị đâm bình bịch tận sâu bên trong, không được đâu...♡」[p]
Rinko「Nếu biết sướng thế này rồi... em không thể quay lại như trước được nữa đâu...♡」[p]
Rinko「Em chẳng thể nghĩ được chuyện gì thừa thãi nữa...♡ A, kỹ thuật tuyệt vời nhất đấy Shun-kun♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_kaiwa1

[tb_start_text mode=1 ]
Rinko「Không biết em sẽ được massage như thế nào đây? Hồi hộp quá...」[p]
[舜]「Sẽ sướng lắm đấy. Có khi chị còn muốn thêm nữa cơ...」[p]
Rinko「Lỡ em không dừng lại được thì phải làm sao...♡ Anh có gia hạn thêm cho em không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa2

[tb_start_text mode=1 ]
Rinko「Em cứ tưởng mình đã học nhiều cách massage rồi... nhưng chắc vẫn còn cách massage em chưa biết.」[p]
Rinko「Nằm ngửa bị đè xuống... có vẻ em đã sẵn sàng để được xoa bóp rồi♡」[p]
Rinko「Anh sẽ làm em sướng thỏa thích đúng không? Shun-kun cứ làm gì anh thích nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa3

[tb_start_text mode=1 ]
[舜]「Chị nhớ xem em massage thế nào nhé?」[p]
Rinko「Em định nhớ đấy, nhưng massage dâm đãng thế này thì đối tượng chỉ có mình Shun-kun thôi đúng không?」[p]
Rinko「Em sẽ không làm cho người khác đâu... Nên nếu anh dạy theo kiểu dành riêng cho Shun-kun thì em vui lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss1

[tb_start_text mode=1 ]
Rinko「Ưm, chụt, chụt, ưm, phù♡ Haa, haa... Đây cũng là massage sao? Massage bằng môi nhỉ.」[p]
[舜]「Bên trong miệng cũng có thể massage bằng lưỡi được đấy? Chị xem, thực tế đang bị làm này, ngay bây giờ...」[p]
Rinko「Thật này... ưm, chụt chụt chụt♡ Haa♡ Tan chảy ra mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss2

[tb_start_text mode=1 ]
Rinko「Chụt chụt, sột soạt♡ Haa, haa, massage nụ hôn sướng thật đấy♡」[p]
Rinko「Em không biết đấy... Em muốn thử áp dụng vào việc trị liệu cho khách hàng luôn...♡」[p]
Rinko「Khc, đùa thôi♡ Đây là massage chỉ Shun-kun mới làm cho em thôi đúng không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss3

[tb_start_text mode=1 ]
Rinko「Chụt, chụt chụt♡ Phù, hức...♡ Massage miệng, em thích lắm...♡」[p]
Rinko「Từ giờ mỗi lần được anh massage chắc em sẽ xin anh làm cho mất♡」[p]
Rinko「Kỳ lạ thật... Dù không chạm vào, nhưng sâu trong bụng em cứ tự động quặn lên phản ứng lại...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Ưm♡ Chụt, chụt, chụt chụt♡ Haa, hức...♡ Không chịu đâu, em thật là...」[p]
Rinko「Say sưa ngấu nghiến mất rồi... Chẳng thể nghĩ được gì nữa...♡」[p]
Rinko「Chắc là tác dụng massage của Shun-kun... Trong đầu mơ màng... sướng quá đi mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_fera1

[tb_start_text mode=1 ]
[舜]「Bên trong miệng, lần này em sẽ xoa bóp bằng dương vật nhé... Chị hãy ngậm thật chặt nhé?」[p]
Rinko「Ưm♡ Chụt, chụt chụt♡ Dùng nhiều bộ phận trên cơ thể nhỉ... chụt, chụt chụt♡」[p]
Rinko「Dương vật Shun-kun, to lên nhiều quá... Bên trong miệng, sắp bị làm cho trơn tuột mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_fera2

[tb_start_text mode=1 ]
Rinko「Haa♡ Haa♡ Em cũng sẽ xoa bóp cho Shun-kun bằng miệng nhé...」[p]
Rinko「Có vẻ căng cứng lắm rồi nên... chụt chụt chụt, sột soạt♡」[p]
Rinko「Haa, ha♡ Massage mà cả hai cùng sướng thì tuyệt thật đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera3

[tb_start_text mode=1 ]
Rinko「Chụt, chụt chụt chụt... ưm♡ Chạm đến tận sâu trong miệng rồi...♡」[p]
[舜]「Em định xoa bóp cẩn thận cả lối vào cổ họng nữa... Chị thấy sao?」[p]
Rinko「Ưc... ưm♡ Không được, đâm vào sâu thì... không chỉ miệng... mà sâu trong bụng cũng phản ứng lại mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera=0"  name="H_fera"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_fera_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Hức, hức...♡ Phù... mùi đàn ông nồng nặc quá...♡」[p]
Rinko「Trong đầu... chẳng thể nghĩ được gì ngoài dương vật nữa rồi♡」[p]
Rinko「Cả trong miệng lẫn trong đầu, đều bị xoa bóp hết rồi...♡ Trở nên lỏng lẻo hết rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hya ư♡ Bị vồ lấy rồi...♡ Ngực bị xoa bóp kìa...」[p]
Rinko「Ưm, kư... Bàn tay Shun-kun, to quá... bị vò nát mất thôi.」[p]
[舜]「A, mềm quá... Em sẽ cứ thế này xoa bóp tiếp nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi2

[tb_start_text mode=1 ]
Rinko「Ưm! Haa, á, a♡ S-Sao rồi? Đã mềm ra chưa...? Ưm, a♡」[p]
[舜]「Đầu vú thì đang cứng lại rồi này. Căng cứng rồi sao nhỉ... Phải xoa bóp kỹ mới được.」[p]
Rinko「Aaaa♡ Lòng bàn tay cọ xát... kích thích mạnh quá...♡ Sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi3

[tb_start_text mode=1 ]
Rinko「Ưm, hức... Bị vò nát mất thôi...♡ Ngực, sắp tan chảy ra rồi♡」[p]
[舜]「Em chỉ đang xoa bóp chỗ căng cứng thôi nhé?」[p]
Rinko「Ưm♡ Haa, aa... Xoa bóp kỹ cho em nhé...♡ Xin anh đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... aaaa♡ Đừng có nắn đầu vú cùng với ngực chứ...♡」[p]
Rinko「Ưm♡ A ư♡ Rõ ràng chỉ bị chạm vào ngực thôi mà... cả cơ thể cứ giật giật kìa♡」[p]
Rinko「Từ chỗ bị Shun-kun chạm vào... tê rần lên như bị điện giật, sướng quá đi mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_munename1

[tb_start_text mode=1 ]
Rinko「Ưm... Bị mút chùn chụt như thế... em trở nên kỳ lạ mất♡」[p]
Rinko「Ưm♡ Haa, haa...♡ Rõ ràng chỉ bị liếm ngực thôi mà... cả cơ thể nóng ran lên♡」[p]
Rinko「Đây cũng là tác dụng của massage sao? Shun-kun, có khi anh làm chuyên gia massage thật luôn cũng được đấy...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_munename2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Em massage liếm đầu vú cho những khách hàng nữ khác cũng được sao?」[p]
Rinko「Ưm...♡ Thế thì, không được...♡ Massage dâm đãng thì em chỉ muốn anh làm cho em thôi...♡」[p]
Rinko「A... aaaa♡ Chắc chắn massage sướng thế này sẽ thành thói quen mất... Chỉ làm cho em thôi nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename+=1"  name="H_munename"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename3

[tb_start_text mode=1 ]
Rinko「Ưm, phù, phù♡ Không được, không được đâu...♡ Liếm nhiều quá... đầu vú nhũn ra mất...♡」[p]
Rinko「Đầu vú mà cứng ngắc trơn tuột thế này thì... em không thể quay lại như trước được nữa đâu♡」[p]
Rinko「Á♡ Không, đừng... hông em tự động nảy lên kìa♡ Xấu hổ lắm... đừng nhìn chằm chằm thế chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munename=0"  name="H_munename"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_munename_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiư♡ Á, mãnh liệt... Dù anh có mút thế cũng không có sữa chảy ra đâu♡」[p]
Rinko「Thiệt tình, Shun-kun...♡ Anh nghĩ massage là sẽ chảy ra sao?」[p]
Rinko「Nếu có em bé... chắc ngực lại tiết ra sữa mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hya ư♡ Lưỡi vào tận sâu bên trong rồi, không được, đừng liếm đến tận chỗ đó chứ...♡」[p]
[舜]「Nhưng bên trong đang giật giật có vẻ sung sướng lắm này? Chị xem, chị xem...」[p]
Rinko「Hya ư♡ A♡ Á♡ Đừng nói những lời trêu chọc thế chứ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_tituname2

[tb_start_text mode=1 ]
[舜]「A, tận sâu bên trong trơn tuột rồi này... Bằng chứng là đã được massage mềm ra rồi nhỉ?」[p]
Rinko「Đúng vậy...♡ Vì Shun-kun đã liếm sâu vào tận bên trong xoa bóp cho em... nên em tan chảy ra rồi♡」[p]
Rinko「Giật giật không dừng lại được...♡ Sướng quá... chẳng thể nghĩ được gì nữa...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname3

[tb_start_text mode=1 ]
Rinko「Aaaa! Ưm, lưỡi vào tận sâu bên trong rồi... Bị ra vào như thế hông em tự nảy lên mất♡」[p]
Rinko「Ưm... ưm, Shun-kun massage giỏi quá... Em bị rút hết gân cốt rồi...♡」[p]
Rinko「Shun-kun, anh không được làm massage này cho người khác đâu nhé? Quán sẽ đông khách lắm đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Ưm♡ Haa♡ Sướng quá... Em chưa từng biết cảm giác này♡」[p]
Rinko「Sống đến từng tuổi này... đây là lần đầu tiên em được massage sướng đến thế...♡」[p]
Rinko「Ưm, kư♡ Tận sâu trong cơ thể... như bị tê rần lên... tuyệt quá♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hiaa♡ A♡ A♡ Không, không chịu đâu... Cơ thể tự động... tiết ra thứ gì đó...」[p]
Rinko「Không chịu đâu... Lại đi tiểu dầm... Đến tuổi này rồi, xấu hổ quá...!」[p]
[舜]「Không phải đâu, chị đang phun nước đấy... Chị sướng đến thế em vui lắm...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki2

[tb_start_text mode=1 ]
Rinko「A ư♡ B-Bên trong... Bị vuốt ve như thế... lại ra mất♡ Aaaa♡」[p]
Rinko「Cái nắp cơ thể bị hỏng mất rồi... Cứ xịt xịt trào ra nhiều lắm...」[p]
Rinko「Là vì massage của Shun-kun sướng quá đấy...♡ Cơ thể em trở nên lỏng lẻo hết rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Aaaa♡ Không dừng lại được... Cảm giác này lần đầu tiên...♡」[p]
[舜]「Bằng chứng là chị đang thư giãn mà...! Cứ đà này xoa bóp cơ thể nhé?」[p]
Rinko「Nếu mềm ra thêm nữa... em không thể quay lại như trước được nữa đâu...♡ A, a, aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_siohuki_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A ư♡ Không được, không được không được không được♡ Lại trào ra rồi♡ Không dừng lại được mất♡」[p]
[舜]「Có sao đâu, chất thải thì cứ tống hết ra ngoài đi...! Chị xem chị xem chị xem!」[p]
Rinko「Không chịu đâuuu♡ A♡ A♡ Không dừng lại được...♡ Ra mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「Ưm... phù♡ A♡ Bị đẩy lên tận sâu bên trong rồi...♡ Trúng chỗ nhạy cảm rồi♡」[p]
[舜]「Vì phải vừa ấn mạnh vừa massage mà...」[p]
Rinko「Aaaa♡ Giỏi quá... Tìm thấy ngay chỗ em muốn, có khi anh có tài năng massage đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Rinko「Chẳng phải Shun-kun mới là người đang căng cứng sao? Chỗ này, cứng ngắc rồi này...♡」[p]
[舜]「Nếu Rinko-san siết chặt lại thì có khi sẽ mềm ra đấy... Chị massage cho em nhé?」[p]
Rinko「Ưm, tất nhiên rồi♡ Hãy sướng đi♡ Em sẽ siết chặt xoa bóp cho anh...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Phù, hức♡ A♡ Không được, của Shun-kun càng lúc càng cứng hơn rồi♡」[p]
Rinko「Hình như massage của em không làm mềm ra được♡ Chắc phải bắn ra hết cỡ thì mới mềm được♡」[p]
Rinko「Bắn đầy vào trong em đi...♡ Chỉ cần Shun-kun sướng là em vui rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「O♡ Ooo♡ Đáng lẽ em phải làm mềm dương vật cứng ngắc của Shun-kun mới đúng chứ♡」[p]
Rinko「Hình như em lại là người sướng mất rồi...♡ Xin lỗi Shun-kun nhé...♡」[p]
Rinko「Bởi vì... ưm♡ Haa, ưm... Nãy giờ toàn đâm trúng chỗ nhạy cảm thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ B-Bên trong... Chạm tới rồi... Tận sâu trong cơ thể bị nâng lên...♡」[p]
Rinko「Giống như bị tê rần lên... chẳng thể nghĩ được chuyện gì nữa rồi...♡」[p]
Rinko「Rõ ràng là định học massage của Shun-kun cơ mà...! Bị cuốn theo mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Rinko「Aa♡ Tuyệt quá... Tình dục của Shun-kun... sướng quá...♡ Em muốn nữa cơ♡」[p]
[舜]「Không phải đâu... Đâu phải tình dục, là massage mà Rinko-san♡」[p]
Rinko「Aa♡ Là massage nhỉ...♡ Bị ngoáy tận sâu bên trong, sướng quá đi mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Chỉ sướng thôi là được sao...? Toàn là em được anh làm cho thôi...♡」[p]
Rinko「O, ooo♡ Tuyệt quá... Cơ thể, mềm nhũn ra...♡ Làn sóng sung sướng đang ập đến...♡」[p]
Rinko「Sướng thế này em chưa từng biết...♡ Shun-kun... tuyệt quá...♡ Thành thói quen mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ooo♡ Không chịu đâu... Lại phát ra tiếng kỳ cục mất rồi♡ Xấu hổ quá♡」[p]
Rinko「A♡ Aa♡ Sướng quá... Chẳng thể làm được gì nữa rồi♡」[p]
[舜]「Chị không cần làm gì cả đâu...! Chỉ cần sướng là được rồi...!」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_kaiwa1

[tb_start_text mode=1 ]
Rinko「Em sẽ tắm rửa sạch sẽ cho anh, anh ngồi yên nhé? Vì anh luôn cố gắng nên đây là dịch vụ đặc biệt♡」[p]
[舜]「Em cũng muốn tắm cho Rinko-san. Rinko-san mới là người luôn cố gắng mà?」[p]
Rinko「Vậy sao...? Được Shun-kun khen em vui lắm... Thế thì em nhờ anh nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Sữa tắm, có mùi của Rinko-san này...」[p]
Rinko「Vì đó là loại em hay dùng mà... Rất tốt cho da, mùi cũng thơm lắm.」[p]
Rinko「Hôm nay Shun-kun cũng sẽ có mùi giống em nhỉ? Khc, mùi giống nhau tuyệt quá đúng không.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa3

[tb_start_text mode=1 ]
Rinko「Thiệt tình~, đừng nhìn chằm chằm thế chứ? Bị nhìn chằm chằm ở chỗ sáng thế này xấu hổ lắm...」[p]
[舜]「Em xin lỗi. Tại chị đẹp và gợi cảm quá nên... Nhưng Rinko-san cũng đang nhìn chằm chằm mà...」[p]
Rinko「A... xin lỗi anh nhé? Tại em nghĩ cơ thể Shun-kun đúng là của con trai thật... nên lỡ nhìn chằm chằm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm...♡ Kư, ưm...♡ Anh đang làm sạch tai cho em sao...? Haa, á♡」[p]
Rinko「Anh dùng lưỡi rửa cẩn thận thật đấy... Nhờ vậy mà em thấy sướng quá.」[p]
Rinko「Giỏi quá...♡ Tiếng thở của Shun-kun truyền đến tận sâu trong tai em... Cảm nhận được sự say sưa của anh luôn♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_miminame2

[tb_start_text mode=1 ]
Rinko「A ư♡ Á, haa♡ Bị liếm ướt át thế này... ngứa ngáy quá...♡」[p]
Rinko「Lưỡi của Shun-kun... nóng hổi ướt át... Em biết là nó vào tận sâu bên trong luôn...♡」[p]
Rinko「Không chịu đâu... Chỉ ở tai thôi mà đã sướng thế này rồi... Hình như em trở nên kỳ lạ mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_miminame3

[tb_start_text mode=1 ]
Rinko「Không được, sâu trong đầu tê rần lên rồi... Ưm, bị đưa ra đưa vào sột soạt thế này...♡」[p]
[舜]「Chỉ đang liếm tai thôi mà hông chị cũng tự động nảy lên sao? Rinko-san dâm đãng quá nhỉ.」[p]
Rinko「Á... đừng nói mà♡ Haa, bị nói những lời dâm đãng, em lại càng phản ứng mạnh hơn...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A ư♡ Chỉ nghe thấy tiếng liếm thôi...♡ Tiếng sột soạt dâm đãng quá...」[p]
Rinko「Đừng có lau chùi sâu trong tai kỹ thế chứ...♡ Sâu trong bụng em quặn lên rồi này...」[p]
Rinko「Trong đầu... tràn ngập những chuyện dâm đãng rồi... Rõ ràng là người lớn rồi mà... Sao lại thế này nhỉ.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sirinade1

[tb_start_text mode=1 ]
Rinko「Ưm... Cứ vuốt ve rửa mông mãi thế này xấu hổ lắm... Mông em đâu có nhỏ...」[p]
[舜]「Đâu có, đẹp lắm đấy. Hơn nữa còn gợi cảm nữa... Em muốn chạm vào mãi thôi.」[p]
Rinko「Thiệt tình... Anh khen quá lời rồi... Nhưng cảm ơn anh. Em vui lắm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_sirinade2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Haa♡ A♡ Đã sạch chưa? Nãy giờ anh cứ vuốt ve suốt thôi?」[p]
Rinko「Ưm... Anh đang lén lút vuốt ve cả khe mông em biết đấy nhé? Chỗ đó em tự rửa được mà...」[p]
Rinko「Anh không cần phải rửa nhiệt tình thế đâu? Ưm... haa, á♡ Này... anh có nghe không đấy?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirinade3

[tb_start_text mode=1 ]
[舜]「Chỉ đang rửa mông thôi mà sao hông chị nảy lên dữ vậy?」[p]
Rinko「Đó là... tại vì... anh rửa cẩn thận quá...♡ Sướng quá nên...」[p]
Rinko「Không phải mông mà... sâu trong bụng em xốn xang khó chịu lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirinade_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Bị vuốt ve rửa nhiều quá... giữa hai chân, nóng ran lên rồi...♡」[p]
Rinko「Khó khăn lắm mới được rửa cho... Nếu lỡ làm bẩn lại thì xin lỗi anh nhé♡」[p]
[舜]「Lúc đó em sẽ dùng tay và bàn chải dương vật rửa sạch tận bên trong cho chị nên cứ yên tâm nhé?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Cũng phải làm sạch ngực nữa nhỉ... A a, to quá sắp tràn ra khỏi tay em rồi.」[p]
Rinko「Ưm♡ Xin lỗi vì làm phiền anh nhé♡ Nhưng anh không cần phải rửa nhiệt tình thế đâu...」[p]
Rinko「Chỉ đang tắm thôi mà... sướng thế này thì thật là thiếu đứng đắn nhỉ... Xin lỗi anh nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi2

[tb_start_text mode=1 ]
[舜]「Rinko-san, chị làm việc nhiều đổ mồ hôi rồi đúng không? Phải rửa cho chị chứ...」[p]
Rinko「Hya ư♡ K-Không cần phải nâng ngực lên rửa mặt dưới ngực đâu... ưm... a♡」[p]
Rinko「Những chỗ đáng xấu hổ em sẽ tự rửa, nên...♡ Đủ rồi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi3

[tb_start_text mode=1 ]
[舜]「A, mềm quá... Ngực như sắp tan chảy ra nhỉ?」[p]
Rinko「Ưm, phù...♡ Chỉ là rửa thôi đúng không? Cách chạm của Shun-kun... dâm đãng quá♡」[p]
Rinko「A... Bóp sao? Thiệt tình... Cứ thế này thì đến bao giờ mới rửa xong đây?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hya ư♡ Aaaa♡ Đ-Đầu vú bị chạm vào rồi...♡ A ư, chỗ đó sướng quá♡」[p]
Rinko「Ngực bị vò nát hết rồi...♡ Phù... phù... sướng quá đâm ra mơ màng luôn rồi♡」[p]
Rinko「Không chịu đâu... Chỗ đó cũng nhói lên rồi... Cứ như cơ thể đang đòi hỏi vậy, xấu hổ quá...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... a♡ Chỗ đó, nhạy cảm lắm...♡ Nhắm tập trung vào đó thật là xấu tính mà...♡」[p]
[舜]「Nhưng hông chị đang vui vẻ nảy lên kìa? Chị xem, bình bịch này...」[p]
Rinko「A♡ Ưm♡ Tại vì... anh bóp rồi nặn mà...♡ Kích thích mạnh quá...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kuriijiri2

[tb_start_text mode=1 ]
Rinko「Hiư♡ A♡ Đừng cứ cọ hạt đậu mãi thế... Đã đủ sạch rồi mà...♡」[p]
[舜]「Dâm quá, chỉ rửa hạt đậu thôi mà... đầu ngón chân chị duỗi thẳng tắp rồi kìa?」[p]
Rinko「Kích thích mạnh quá... cảm giác sướng cứ trào dâng lên...♡ Hông, tự động nảy lên...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_kuriijiri3

[tb_start_text mode=1 ]
Rinko「Ưm... hức♡ Không, không cần phải bóp rồi chạm tập trung thế đâu...!」[p]
[舜]「Phải lột hẳn bao quy đầu ra rửa cẩn thận mới sạch được chứ? Chị xem...」[p]
Rinko「Aaaa♡ A♡ Bị lột trần ra lại càng nhạy cảm hơn...! Không được, không được đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Không được, chỉ với hạt đậu thôi em đã sướng thế này rồi...♡」[p]
Rinko「Xin lỗi anh, lớn tuổi hơn mà lại để lộ bộ dạng thảm hại thế này...♡ Nhưng sướng quá♡」[p]
Rinko「Hông cũng tự động nảy lên...♡ A, không dừng lại được...♡ Cử động dâm đãng quá♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Lần này em sẽ rửa sạch sẽ cho Shun-kun♡ Dương vật anh to lên rồi mà đúng không?」[p]
Rinko「Trước tiên phải cọ rửa dương vật cho sạch sẽ đã nhé...♡ Em sẽ dùng cô bé ướt nhẹp này nhé♡」[p]
Rinko「Kẹp chặt vào khe hở... sục, sục sục...♡ Có sạch không nhỉ?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_sumata2

[tb_start_text mode=1 ]
[舜]「A~, cách nhấp hông tuyệt quá... sướng lắm, Rinko-san...♡」[p]
Rinko「Thật sao? May quá...♡ Phải cọ cả phần rãnh quy đầu nữa...♡ Á, haa, á♡」[p]
Rinko「Đang cọ xát kìa...♡ Ưm, kư, từ đầu dương vật rỉ ra chất lỏng trong suốt sền sệt rồi này?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata3

[tb_start_text mode=1 ]
Rinko「Haa♡ Haa♡ Vừa rửa cho Shun-kun... em cũng thấy sướng lên rồi♡」[p]
Rinko「Á♡ A♡ Dương vật anh, đang giật giật kìa... Đầu dương vật cũng phồng lên rồi nhỉ♡」[p]
Rinko「Lúc nào em cũng được Shun-kun làm cho sướng rồi... nên em cũng muốn làm anh sướng♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ M-Mồ... Rõ ràng là em định làm cho Shun-kun cơ mà...♡」[p]
Rinko「Ưm... a haa♡ Dương vật của Shun-kun... cọ xát và vướng vào chỗ nhạy cảm rồi...♡」[p]
Rinko「Rốt cuộc em lại là người bị làm cho sướng♡ Không đọ lại được Shun-kun nhỉ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_teman1

[tb_start_text mode=1 ]
Rinko「A♡ Ưm♡ Sâu bên trong... nhóp nhép hết cả rồi♡ Bị rửa đến tận bên trong thế này♡」[p]
[舜]「Nhưng chị đang đẩy hông ra vì muốn được rửa sạch mà đúng không? Phải đáp ứng kỳ vọng chứ...」[p]
Rinko「Haa♡ Ưm, a♡ Shun-kun, rửa giỏi quá đi mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_teman2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Rửa mãi mà vẫn trơn tuột thế này. Đây không phải là sữa tắm đúng không?」[p]
Rinko「Thiệt tình, Shun-kun xấu tính quá...♡ Biết rồi mà còn... ưm♡ A, aaaa♡」[p]
Rinko「Càng ngoáy... càng trào ra nhiều mà♡ Ưm♡ A, aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_teman3

[tb_start_text mode=1 ]
Rinko「Hiaa♡ Á♡ A♡ Kh-Không đứng vững được nữa rồi...♡」[p]
[舜]「Không được đâu, phải trụ vững chứ... Nếu không thì không rửa đến tận bên trong được đâu?」[p]
Rinko「A ư♡ Shun-kun... giống người lớn tuổi hơn nhỉ♡ Em đang được chăm sóc này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A♡ Aaaa♡ Chỗ nhạy cảm... đâm trúng rồi♡ Ưm, kư♡」[p]
Rinko「Chân... run rẩy hết cả rồi... ưm♡ Hết sức lực rồi... không đứng nổi nữa...♡」[p]
Rinko「Rõ ràng bảo là tắm cho nhau cơ mà... Xin lỗi anh, chỉ có mình em sướng thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Ưm♡ Anh rửa đến tận sâu bên trong sao?」[p]
[舜]「Đương nhiên rồi? Phải cọ toàn bộ cơ thể thì mới gọi là tắm chứ...!」[p]
Rinko「A ư♡ A♡ A♡ Bị cọ xát như để kiểm tra cảm giác thế này... kỳ lạ mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「A, nguy rồi... Sắp bốc hỏa mất... Rinko-san có sao không? Chắc chị không còn tâm trí để ý chuyện đó đâu nhỉ...」[p]
Rinko「Ưm♡ A, aaaa♡ Không sao...♡ Nhưng... sâu trong cơ thể em cũng nóng ran lên rồi...」[p]
Rinko「Trước khi rửa xong bên trong thì đã bốc hỏa mất rồi...♡ Sắp tan chảy ra rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Không được trốn đâu nhé, Rinko-san...! Đang dùng bàn chải cọ rửa tận sâu bên trong mà...」[p]
Rinko「Hức♡ A♡ A♡ Đ-Đã đủ sạch rồi mà...♡ Aaaa♡」[p]
Rinko「Nếu cọ thêm nữa... l-lại trơn tuột ra mất, lại phải rửa lại thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A ư♡ H-Hông nhũn ra mất...♡ Haa♡ Haa♡ Haa♡ Chân run rẩy hết cả rồi♡」[p]
Rinko「Ưm... Sâu bên trong, vướng vào rồi...♡ Bên trong cơ thể, bị cạo sạch hết rồi♡」[p]
Rinko「Haa♡ A♡ M-Mới đứng thôi mà đã khó nhọc rồi... Hông nhũn ra mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「Ưm, phù♡ A♡ Đầu dương vật... chạm đến tận chỗ sâu nhất rồi...♡ Trúng rồi...♡」[p]
Rinko「Kư♡ Hiư♡ Bị rung lắc dữ dội♡ Ưm, nhóp nhép hết cả rồi♡」[p]
[舜]「Tuyệt quá, bên trong cứ trơn tuột trào ra liên tục... dâm quá...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Chị có sao không? Phải trụ vững đấy nhé? Em sẽ rửa kỹ tận sâu bên trong mà...♡」[p]
Rinko「Ưm, a♡ Em biết rồi♡ Được tắm rửa khắp cơ thể... giống như biến thành trẻ con vậy♡」[p]
Rinko「Haa♡ A♡ Á...♡ Đã là người lớn rồi mà...♡ Bị chăm sóc thế này cũng không tệ đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Cùng tắm rửa thật kỹ nhé♡ Đừng lùi hông lại đấy? Sẽ làm sạch bóng luôn mà...!」[p]
Rinko「A♡ Cả sâu bên trong lẫn lối vào... đều bị dương vật cọ xát... Ồ, ồ♡ Mãnh liệt quá...♡」[p]
Rinko「Hiư♡ A♡ A ư♡ Không trốn được... Bị cọ rửa đến tận sâu bên trong rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A ư♡ Á♡ Á♡ Chỗ nhạy cảm... không được cọ vào đâu...♡」[p]
Rinko「Hức♡ Haa, haa...♡ Mới đứng thôi mà đã khó nhọc rồi... hết sức lực mất thôi♡」[p]
Rinko「Haa...♡ Đã được cọ rửa đủ rồi...♡ Hãy làm bước hoàn thiện cuối cùng đi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_kaiwa1

[tb_start_text mode=1 ]
Rinko「Em sẽ tắm rửa cơ thể Shun-kun cẩn thận...♡ Khc, được chăm sóc anh không ghét chứ?」[p]
[舜]「Em vui lắm... Nhưng em cũng muốn chăm sóc Rinko-san nữa cơ?」[p]
Rinko「Khc, vui quá... Nãy giờ toàn là em chăm sóc người khác thôi... nên thấy mới mẻ lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa2

[tb_start_text mode=1 ]
Rinko「Anh sẽ yêu chiều em như thế nào đây? Chắc sẽ làm em sướng lắm nhỉ~?」[p]
Rinko「Khc, em kích động quá rồi sao? Ơ... Mắt Shun-kun nghiêm túc quá... Bị nhìn bằng ánh mắt đó...」[p]
Rinko「Không chịu đâu... Sắp bị làm cho rối tung lên sao. Hồi hộp quá, bụng em xốn xang hết cả lên rồi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa3

[tb_start_text mode=1 ]
Rinko「Chỉ là tắm thôi mà nhỉ... Em cứ kỳ vọng mãi, thấy xấu hổ quá...」[p]
[舜]「Vâng, em sẽ tắm từ đầu đến chân luôn nhé? Sẽ làm sạch đến tận bên trong cơ thể chị mà.」[p]
Rinko「Từ đầu đến chân, sao...♡ Những chỗ bình thường em không tự rửa được, mong anh làm sạch giúp em...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... haa, á...♡ Em thích bị liếm ướt át lắm♡ Làm sạch thêm nữa đi?」[p]
[舜]「Chị vòi vĩnh em sao... Rinko-san cũng hưng phấn rồi nhỉ... Có mùi dâm đãng quá.」[p]
Rinko「Ưm♡ Hức... a♡ Không, đừng nói mà... xấu hổ lắm...♡ Sướng quá đi mất mà.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_miminame2

[tb_start_text mode=1 ]
Rinko「Phù, ưm♡ Chạm đến tận sâu bên trong rồi... haa, á♡ Shun-kun dùng lưỡi điêu luyện thật đấy...」[p]
Rinko「Em tò mò không biết anh luyện tập ở đâu đấy... Lớn tuổi rồi mà còn ghen tuông thế này thì khó coi quá nhỉ?」[p]
[舜]「Chỉ có Rinko-san thôi mà... Vì muốn làm Rinko-san sướng nên em mới cố gắng đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A, ưm♡ Haa, á...♡ Tiếng thở gấp gáp em nghe rõ lắm... Rùng mình hết cả lên rồi♡」[p]
Rinko「Ưm... a♡ Sâu trong bụng... xốn xang khó chịu quá... Tại Shun-kun cả đấy?」[p]
Rinko「Chịu trách nhiệm đi, làm em sướng thêm nữa đi chứ... Thế này em chưa thỏa mãn đâu nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_miminame_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiư♡ A♡ Á♡ Không... Trong đầu như bị liếm láp hết cả rồi...」[p]
Rinko「Càng lúc càng nhạy cảm hơn♡ Cảm giác dâm đãng trào dâng... Đừng nói là kết thúc nhé?」[p]
Rinko「Em... tận sâu trong cơ thể đã chuẩn bị sẵn sàng rồi♡ Anh hãy rửa hết và kiểm tra nhé?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sirinade1

[tb_start_text mode=1 ]
Rinko「Ưm♡ Anh đang rửa mông cho em sao? Ưm... Đừng chạm dâm đãng thế chứ...♡」[p]
[舜]「Bởi vì cảm giác sờ sướng nhất mà... Cái mông căng tròn và cực kỳ dâm đãng đấy.」[p]
Rinko「Ưm... xấu hổ quá. Nhưng Shun-kun hưng phấn thế em vui lắm... Chạm thêm nữa đi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_sirinade2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... phù, không chịu đâu, đừng banh mông em ra... Nhìn vào giữa mông cũng đâu có gì đâu♡」[p]
[舜]「Lỗ đít của Rinko-san, đáng yêu và dâm đãng lắm đấy? Đang giật giật kìa...」[p]
Rinko「Á♡ Haa, xấu hổ quá... Chỗ đó tự mình không nhìn thấy được nên chẳng biết nó thế nào nữa.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirinade3

[tb_start_text mode=1 ]
Rinko「Sao rồi? Mông đã sạch chưa? Ưm, haa, á♡ Anh cứ rửa cẩn thận chỗ đó mãi thôi♡」[p]
[舜]「Đã sạch từ lâu rồi, nhưng cảm giác sờ sướng quá... Tiếc không muốn buông tay ra...」[p]
Rinko「Ưm♡ Thế thì lần này em phải dùng mông rửa cơ thể Shun-kun mới được...♡ Mong chờ nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirinade_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiư♡ Haa♡ Haa♡ Đừng banh mông em ra... rồi cọ xát bên trong thế chứ... á...♡ Aaaa♡」[p]
[舜]「Ủa? Cô bé trơn tuột hết rồi này... Được rửa nên hưng phấn sao?」[p]
Rinko「Tại vì... cách rửa của Shun-kun dâm đãng quá mà...♡ Ưm, haa, á♡ Xấu hổ quá...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Á... a... Anh rửa sạch cả đầu vú cho em sao? Ưm... phù♡ Khc, cẩn thận quá rồi đấy.」[p]
Rinko「Shun-kun, thích ngực đến thế giống hệt trẻ con đáng yêu quá♡ Anh muốn chạm nhiều lắm đúng không?」[p]
Rinko「Rửa sạch sẽ rồi, lát nữa anh cứ chạm và liếm thỏa thích nhé... Nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri2

[tb_start_text mode=1 ]
Rinko「Đ-Đầu vú đã đủ sạch rồi mà...♡ Đừng cọ xát tập trung thế chứ♡」[p]
[舜]「Thế thì rửa sạch cả quầng vú luôn nhé? Khó khăn lắm mới sưng tấy lên thế này mà...」[p]
Rinko「Hiư♡ Ưm♡ A♡ Aaaa♡ Rửa sột soạt thế này... khó chịu quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri3

[tb_start_text mode=1 ]
Rinko「Hiư♡ A, cứ nhắm vào đầu vú... á♡ Đừng bóp cọ xát thế chứ♡」[p]
Rinko「A♡ A♡ Ưm♡ Phù... phù... Đầu vú, nhạy cảm lắm... Đầu vú yếu lắm♡」[p]
Rinko「Cách chạm của Shun-kun, dâm đãng quá...♡ Em, càng lúc càng nhạy cảm hơn rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A♡ Aaaa♡ Chỉ bằng đầu vú thôi mà... ra mất...♡ Râm ran hết cả rồi...」[p]
Rinko「Cảm giác sướng vang vọng đến tận sâu trong bụng♡ Cảm giác sướng từ ngực lan truyền khắp cơ thể♡」[p]
[舜]「Rinko-san, chân run rẩy hết cả rồi kìa. Sướng quá rồi đúng không?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Không, không được... Lỗ đít thì... xấu hổ lắm... Đừng vuốt ve chỗ đó chứ♡ Không được, không được đâu♡」[p]
[舜]「Nhưng đang giật giật kìa? Muốn em cho ngón tay vào tận bên trong đúng không? Chị xem...」[p]
Rinko「A♡ Ưm... Không, chỗ đó, không vào được đâu...♡ Ngón tay cũng không được đâu...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_anaruijiri2

[tb_start_text mode=1 ]
Rinko「Bẩn lắm, nên... không cần chạm vào lỗ đít mãi đâu... Cảm giác kỳ lạ lắm♡」[p]
[舜]「Đâu có bẩn? Nhưng vì muốn làm sạch nên mới rửa mà, thế này là đúng rồi.」[p]
Rinko「A♡ Aaaa♡ Dù vậy thì ngón tay... cho vào bên trong là không được đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_anaruijiri3

[tb_start_text mode=1 ]
Rinko「Hiư♡ A, aaaa♡ Ngón tay, vào tận bên trong rồi... Cảm giác bị ép chặt, tuyệt quá♡」[p]
Rinko「A, đừng cử động...♡ Anh rửa đến tận bên trong lỗ đít sao? Bị Shun-kun chạm vào hết rồi♡」[p]
Rinko「Haa, á♡ Rõ ràng những chỗ đáng xấu hổ đều bị nhìn thấy hết rồi... mà lại sướng thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J2_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Đ-Đừng... Vào sâu rồi...♡ Chỗ nhạy cảm... cọ xát...♡」[p]
Rinko「Ưm, kư♡ Đ-Đã đủ sạch rồi đúng không? Hơn thế này nữa thì không được đâu...」[p]
[舜]「Thật này. Chân Rinko-san, run rẩy hết cả rồi này.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sumata1

[tb_start_text mode=1 ]
Rinko「Ưm♡ Anh rửa đến tận chỗ nhạy cảm sao? Hơn nữa không phải bằng tay mà rửa bằng dương vật sao♡」[p]
[舜]「Bàn chải dương vật đấy? Em nghĩ cách này cọ rửa sạch sẽ hơn... Chị xem...」[p]
Rinko「A... ưm♡ Thật này... Đang bị cọ xát sột soạt...♡ Haa, ưm... Sạch sẽ mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_sumata2

[tb_start_text mode=1 ]
Rinko「Haa, á, a... Dương vật của Shun-kun cũng sạch sẽ chứ? Em cũng sẽ rửa cho anh♡」[p]
[舜]「Chị không làm cho những khách hàng khác đúng không? Được nhận dịch vụ đặc biệt của Rinko-san em vui lắm...」[p]
Rinko「Thật sao? May quá... Phải làm sạch toàn bộ mới được...♡ Cọ xát cẩn thận... ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata3

[tb_start_text mode=1 ]
Rinko「Hya ư♡ Cọ xát với hạt đậu... Hông, tự động nảy lên...♡ Chẳng giống cơ thể mình nữa.」[p]
[舜]「Chị muốn em cọ rửa thêm nữa sao? Nếu vậy thì chị phải vòi vĩnh đi chứ...」[p]
Rinko「Ưm♡ Aaaa♡ Trơn tuột hết rồi... Hãy rửa, sạch sẽ hơn nữa đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Ưm♡ Chạm vào hạt đậu rồi...♡ Haa, á, aaaa♡」[p]
Rinko「Ưm, a, a...♡ Xin lỗi anh, trơn tuột hết rồi... Có khi lại bẩn thêm mất.」[p]
Rinko「Không kìm được nó cứ trào ra... Dương vật của Shun-kun cũng nhầy nhụa mất rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hiaa♡ Aaaa♡ Ra mất rồi...♡ Phun nước không dừng lại được♡」[p]
[舜]「Chị tự rửa sạch cho mình sao? Rinko-san ưa sạch sẽ nhỉ.」[p]
Rinko「Không phải thế đâu... A ư♡ A♡ A♡ Hông, nhũn ra mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_siohuki2

[tb_start_text mode=1 ]
[舜]「Tuyệt quá... Chị phun nước dữ dội quá này... Hết nước khô cong luôn mất.」[p]
Rinko「Ưm♡ A... Tại phun nước không dừng lại được mà♡ Haa, á, trong đầu mơ màng hết rồi♡」[p]
Rinko「Haa♡ Ưm♡ Bên trong cũng trơn tuột rồi... Vẫn còn trào ra nữa...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Aaaa♡ Rửa sâu hơn nữa đi...♡ Em muốn ngón tay Shun-kun ngoáy vào trong♡」[p]
[舜]「Mỗi lần đâm sâu vào là chị lại phun nước kìa...? Rinko-san, dâm quá đi mất...!」[p]
Rinko「Ưm... kư, á, a♡ Ch-Chân run rẩy... Không đứng vững được nữa rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_j_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hyaaaa♡ Ưm... Mật dâm, không dừng lại được...♡ Giống như đi tiểu dầm vậy, xấu hổ quá♡」[p]
[舜]「Rinko-san, lớn thế này rồi mà còn đi tiểu dầm thì dâm đãng quá nhỉ. Phải rửa thật kỹ mới được.」[p]
Rinko「A♡ A♡ A♡ Đ-Đây không phải là nước tiểu đâu...♡ Aaaa♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「Ưm♡ Hức, haa, á, a♡ Của Shun-kun to quá... đâm xuyên đến tận sâu bên trong rồi♡」[p]
Rinko「A ư♡ A, ồ♡ Phía bụng... đầu dương vật chạm tới rồi...♡ Ưm, kư♡」[p]
Rinko「Nếu anh cọ rửa sạch sẽ bên trong thì em phải cố gắng thôi...♡ Nào, cho em sâu hơn nữa đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Siết chặt thế này... Chị định làm sạch cả dương vật của em sao?」[p]
Rinko「Ưm♡ A, tất nhiên rồi♡ Em cũng sẽ rửa sạch dương vật của Shun-chan mà♡」[p]
Rinko「Ưm, kư, hức...♡ Từ gốc đến ngọn phải cọ thật kỹ... mới sạch được chứ nhỉ?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Ưm♡ A♡ Haa, aaaa♡ Dương vật phản ứng rồi sao? Đang giật giật dữ dội lắm kìa♡」[p]
[舜]「Kư... Nó vui vì được làm sạch đấy... Vì được đánh bóng loáng mà...」[p]
Rinko「Ưm... haa♡ Á...♡ Khc, hai đứa mình đã bảo là tắm cho nhau mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Không được, chỗ nhạy cảm, cọ xát rồi... ưm, kư... Có thứ gì đó sắp trào ra♡」[p]
[舜]「Không sao đâu, cứ ra đi... Rồi em lại rửa sạch sẽ cho chị mà...」[p]
Rinko「Ưm♡ Aaaa♡ Nếu bị làm cho nhóp nhép thêm nữa thì... em trở nên kỳ lạ mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A♡ Á, ưm...♡ Mãnh liệt... Bị rung lắc thế này... chân, lơ lửng mất, nên...♡」[p]
Rinko「Anh say sưa nhấp hông sao? Haa, á♡ Em cảm nhận được Shun-kun cũng là con trai thật đấy♡」[p]
Rinko「Anh đang rửa dương vật bên trong em đúng không? Nhân tiện thì anh cứ sướng đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Ưm! Siết chặt quá... Chị vẫn chưa rửa đủ sao? Muốn em làm mãnh liệt hơn à...!」[p]
Rinko「Không, không phải đâu♡ Aaaa♡ Ồ♡ Ồ♡ Không, phát ra tiếng kỳ cục mất♡」[p]
Rinko「Ưm, kư...♡ Hức♡ Hức♡ Chạm đến tận sâu bên trong, đầy ắp rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Tuyệt quá, chân mở toang ra rồi này... Chị muốn được rửa đến tận sâu bên trong hơn nữa đúng không.」[p]
Rinko「Ưm♡ Ồ, ồ♡ Không phải đâu...♡ Nhưng... được rửa đến tận sâu bên trong... sướng quá♡」[p]
Rinko「A♡ A♡ A♡ Haa... Làm sao đây, trong đầu mơ màng hết rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm gư♡ A♡ Tuyệt quá... Hỏng mất thôi♡ Cảm giác này, lần đầu tiên...♡」[p]
[舜]「Đang rửa bên trong mà lại sướng thế này sao...? Rinko-san dâm quá rồi đấy.」[p]
Rinko「Ưm♡ A♡ Aaaa, xin lỗi anh♡ Em lại thiếu đứng đắn thế này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_kaiwa1

[tb_start_text mode=1 ]
Rinko「Ưm... Đừng nhìn chằm chằm thế chứ? Hơn nữa nãy giờ em làm việc... nên cũng đổ mồ hôi rồi...」[p]
[舜]「Vậy sao? Mùi thơm lắm đấy? Hơn nữa giữa hai chân cũng ướt sũng rồi này.」[p]
Rinko「Ưm, không chịu đâu... Tại Shun-kun bắt em làm tư thế dâm đãng mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa2

[tb_start_text mode=1 ]
Rinko「Không chịu đâu, Shun-kun... Tư thế này, xấu hổ lắm... Đủ rồi mà đúng không?」[p]
[舜]「Không được đâu. Từ giờ em sẽ nghiên cứu cách massage mới mà. Chị giúp em nhé?」[p]
Rinko「Nếu là luyện tập massage cho Shun-kun thì bao nhiêu em cũng theo... nhưng cứ thế này thì không được đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa3

[tb_start_text mode=1 ]
[舜]「Rinko-san, hôm nay chị cũng trị liệu kín lịch nên mệt rồi đúng không? Em massage cho nhé.」[p]
Rinko「Ưm... Em rất vui vì tấm lòng của anh... nhưng bộ dạng thế này có ổn không? Đang trơn tuột vì lotion mà...」[p]
Rinko「Giao phó hết cho Shun-kun có được không...? Em đang kỳ vọng không biết là massage kiểu gì đây?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_kiss1

[tb_start_text mode=1 ]
Rinko「Chụt, chụt, ưm, phù♡ Haa, haa... Đây cũng là một phần của massage sao?」[p]
Rinko「Để thả lỏng lực cơ thể và thư giãn thì chắc là vừa vặn nhỉ...」[p]
Rinko「Nhờ vậy mà em hết sức lực rồi♡ Nhưng... bù lại bên trong cơ thể lại nóng ran lên rồi.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kiss2

[tb_start_text mode=1 ]
Rinko「Chụt, chụt... ưm♡ Chụt, chụt. Ưm, mỗi lần hôn, cơ thể lại chạm nhau...♡」[p]
Rinko「Làn da trơn tuột, cọ xát vào nhau sướng thế này cơ à... Em không biết đấy.」[p]
Rinko「Chưa từng chạm nhau thế này bao giờ. Toàn là được Shun-kun dạy cho thôi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kiss3

[tb_start_text mode=1 ]
Rinko「Chụt, chụt chụt, chụt, ưm... phù, haa... Chỉ là môi chạm nhau thôi mà... sướng quá đi mất.」[p]
Rinko「Có khi em càng lúc càng dâm đãng hơn rồi... Có đứa con lớn tướng rồi mà... Xấu hổ quá.」[p]
Rinko「Ở bên Shun-kun, dục vọng cứ lớn dần lên... Bản thân em chẳng thể làm gì được nữa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Phù, hức... chụt chụt♡ Chụt, chụt♡ Ưm, không rời môi ra được...」[p]
Rinko「Không chịu đâu... Em không biết mình lại tham lam đến thế này... Chỉ hôn thôi mà cơ thể đã giật giật rồi♡」[p]
Rinko「Bị Shun-kun làm cho dâm đãng đến mức này rồi đấy? Anh phải chịu trách nhiệm đi nhé♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_paizuri1

[tb_start_text mode=1 ]
Rinko「Ưm... To lên nhiều quá... Anh hưng phấn vì em sao? Khc, em vui lắm♡」[p]
[舜]「Đương nhiên là hưng phấn vì Rinko-san rồi. Dâm đãng thế này cơ mà...」[p]
Rinko「Khen giỏi thế? Được khen nhiều thế này, em lại muốn cảm tạ anh nhiều hơn nữa...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_paizuri2

[tb_start_text mode=1 ]
Rinko「A... Dương vật giật giật phản ứng lại rồi... Bị kẹp rồi vuốt ve sướng đến thế sao?」[p]
Rinko「Thấy Shun-kun sướng, em cũng thấy vui lây...♡」[p]
Rinko「Ưm... haa, em sẽ kẹp bằng ngực vò nát cho anh nhé... ưm, haa, hức♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_paizuri3

[tb_start_text mode=1 ]
Rinko「Ưm... haa, á... Càng lúc càng nóng hơn rồi... a, không được... Cọ vào đầu vú... ưm♡」[p]
Rinko「Rõ ràng là em định làm cho Shun-kun sướng cơ mà...」[p]
Rinko「Rốt cuộc em lại được anh Shun dùng bài massage dâm đãng làm cho sung sướng mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_paizuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiưưư♡ A, a a♡ Đầu vú cứ cọ xát sồn sột ấy...♡」[p]
Rinko「Ưm... Hà, hà... Anh dùng dương vật điêu luyện thật đấy... Vú em sướng quá đi mất♡」[p]
Rinko「Để trả ơn thì em cũng phải làm cho anh Shun sướng mới được... Em sẽ dùng vú thoa lotion để sục cu cho anh nhé.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm, hà♡ Vú em dính đầy lotion nhóp nháp hết rồi này... Anh định dùng nó để xoa bóp sao?」[p]
[舜]「Đúng vậy đấy... Phải thoa đều lotion... để trơn tru hơn mới được chứ...」[p]
Rinko「Hiư♡ A, á♡ Em tan chảy mất... Đừng lắc vú em mạnh thế chứ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi2

[tb_start_text mode=1 ]
[舜]「A, trơn quá làm vú cứ tuột khỏi tay anh này...」[p]
Rinko「Ưm♡ Hà, ưm♡ Đừng bóp mạnh thế mà...♡ Bây giờ em đang nhạy cảm lắm♡」[p]
Rinko「Hya♡ Đầu vú trơn trượt... cọ vào lòng bàn tay anh... sướng quá đi mất... Ưm♡ A a♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Á...♡ Bị nhào nặn trong tay anh Shun mất rồi...♡ Vú em bị biến dạng hết rồi này♡」[p]
Rinko「A~, em sắp tan chảy rồi...♡ Tay anh Shun vừa to vừa ấm quá...♡」[p]
Rinko「Vú em sướng quá đi mất♡ Phải làm sao đây... Cảm giác này, là lần đầu tiên... Sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A a♡ Nó cứ giật giật... phản ứng lại kìa♡ Không ngờ chỉ làm vú thôi mà cũng sướng đến thế này.」[p]
Rinko「Hà... Hà... Sâu trong bụng em cũng râm ran hết cả lên... Cơ thể cũng nóng ran rồi đây này.」[p]
Rinko「Bài massage của anh Shun hiệu quả thật đấy. Em còn muốn nhờ anh dạy lại cách làm cơ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... A a, chỗ đó không cần massage đâu mà... Anh Shun, em xấu hổ lắm.」[p]
[舜]「Nhưng chỗ này cứng lại rồi đây này? Nhìn xem, ở giữa khe dâm đang cứng ngắc lại rồi.」[p]
Rinko「Không phải đâu, hột le vốn dĩ là như thế mà... A♡ Đừng mà, đừng thoa lotion vào đó mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kuriijiri2

[tb_start_text mode=1 ]
Rinko「Ưm♡ A♡ A a♡ Đ-Được rồi đấy anh Shun...♡ Đã mềm ra đủ rồi mà...」[p]
Rinko「Cứ tiếp tục thế này... em sẽ trở nên kỳ lạ mất... sẽ phát ra những âm thanh kỳ lạ mất thôi♡」[p]
[舜]「Có sao đâu chứ, chỉ có hai chúng ta thôi nên em cứ phát ra âm thanh kỳ lạ rồi tận hưởng sự sung sướng đi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ A a a♡ Véo rồi sục như thế, đừng mà♡ Hông em nảy lên, nảy lên mất rồi♡」[p]
Rinko「A♡ A♡ A♡ Hột le của em hỏng mất... hỏng mất thôi♡」[p]
[舜]「Thứ dâm thủy nhóp nháp không phải lotion cũng trào ra rồi này. Em muốn được massage thêm nữa sao?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A a♡ Ưm kưưư♡ Chỉ làm hột le thôi cũng ra mất... Sướng quá em ra mất thôi♡」[p]
Rinko「Em không thể thư giãn nổi đâu... Những cơn sóng sung sướng cứ ập đến liên tục thế này... Em hỏng mất.」[p]
[舜]「Hông em nảy lên liên tục luôn kìa... A, dâm đãng quá... Hãy nghiện bài massage hột le này đi nhé.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_sumata1

[tb_start_text mode=1 ]
[舜]「Anh sẽ dùng dương vật để massage cả khe dâm của em nữa nhé...? Cùng làm cho nó mềm ra nào.」[p]
Rinko「Hà, a, hà...♡ Của anh Shun cứng quá rồi này... Ưm♡ A a♡ Cọ xát rồi♡」[p]
Rinko「Tư thế này... có thể nhìn rõ cả chỗ đang cọ xát sồn sột nữa♡ Em xấu hổ lắm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_sumata2

[tb_start_text mode=1 ]
Rinko「Ưm, kưư♡ A a♡ Trơn tuột luôn rồi này... Đây cũng là nhờ lotion sao?」[p]
[舜]「Có khi là mật dâm đãng chảy ra từ cơ thể em đấy? Nhìn xem, nó ướt sũng rồi này.」[p]
Rinko「Ưm... A a, đừng nói mà... Xấu hổ lắm♡ Là tại anh Shun làm em sướng đấy chứ...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_sumata3

[tb_start_text mode=1 ]
Rinko「Hà♡ Hà♡ Á♡ Trơn thế này mà... vẫn bị mắc vào khấc quy đầu mất rồi...♡」[p]
Rinko「Hiưư, a a♡ Cứ bị cọ xát mãi ở cửa vào thế này... nó mềm nhũn ra mất♡」[p]
Rinko「Em bắt đầu chuẩn bị tiếp nhận anh đây... Ưm, nhìn xem, cửa vào cũng mở sẵn ra rồi kìa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ A a♡ V-Vào mất...♡ Ưm♡ Phần đầu đang chạm vào cửa vào rồi♡」[p]
Rinko「A ưư♡ Hà♡ Hà♡ Nhờ có anh Shun... mà cô bé của em mềm nhũn ra rồi này♡」[p]
Rinko「Phù... Phù... Nó cứ giật giật không ngừng...♡ Hiệu quả massage tuyệt vời thật đấy.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A♡ A♡ A♡ Ưm, kưưư♡ Anh đang... massage tận sâu bên trong cơ thể em sao...?」[p]
Rinko「Trơn quá đi mất... Ngón tay anh vào sâu hơn mọi khi rồi...♡ Em sẽ trở nên kỳ lạ mất thôi♡」[p]
[舜]「Nó đã mềm nhũn ra đến mức không cần massage nữa rồi đây này. Nhìn xem, em đang tan chảy rồi kìa.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman2

[tb_start_text mode=1 ]
Rinko「Hà, hiư... A, a a a♡ Đừng cử động ngón tay kịch liệt như thế mà♡ Hỏng mất thôi♡」[p]
[舜]「Nhưng nó đang giật giật có vẻ sung sướng lắm đấy. Em cũng muốn được massage thật mạnh ở bên trong đúng không?」[p]
Rinko「Hiưưư♡ A a♡ Cứ bị thúc mạnh vào... Đừng mà, tận sâu trong bụng em cũng phản ứng lại mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Kư♡ Ưm♡ S-Sướng quá đi mất♡ Hà, a♡ Cơ thể em nóng ran lên rồi♡」[p]
[舜]「Ngón chân em cũng duỗi thẳng tắp ra rồi kìa? Dâm đãng quá đấy Rinko...」[p]
Rinko「Đừng... Đừng nói mấy lời đáng xấu hổ thế mà...♡ Em lại càng nóng hơn mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_teman_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ A hà♡ Chạm vào... chỗ không được rồi... Ưm ưm♡ Đ-Đừng mà♡」[p]
[舜]「Phản ứng tuyệt thật đấy? Nếu em sướng đến vậy thì anh phải làm thêm nữa mới được.」[p]
Rinko「Đừng... A a♡ Cứ bị... thúc mạnh như thế... vang vọng đến tận sâu bên trong luôn♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「Hi gưưư♡ Anh dồn cả trọng lượng cơ thể vào rồi đút ra rút vào sồn sột thế này, đừng mà...♡」[p]
Rinko「Nó trơn tuột rồi vào tận sâu bên trong mất...♡ Chạm đến nơi sâu hơn mọi khi rồi...♡」[p]
Rinko「Phần đầu... đang khuấy đảo tận sâu bên trong... Ưm, kư♡ A, đừng mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Rinko「Hi a a a♡ Bị anh giữ chặt hông rồi đút vào sâu thế này... em không thoát được mất♡ Đừng, đừng mà♡」[p]
Rinko「Cảm giác sung sướng này em cũng không thể thoát được...♡ Thế này thì, em ra ngay mất thôi...♡」[p]
Rinko「Rõ ràng em lớn tuổi hơn...♡ Lớn hơn anh Shun cơ mà♡ Xin lỗi vì em hư hỏng quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Đáng yêu lắm... Rinko ướt sũng và đang sung sướng thế này, tuyệt vời lắm.」[p]
Rinko「A a a♡ Anh nói thế... em lại càng để ý hơn đấy...♡ Ưm, kưưư♡」[p]
Rinko「A♡ A a a♡ Chạm đến... tận sâu bên trong rồi kìa♡ Của anh Shun, to quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A ưưư♡ Ơ♡ Ơ ơ ơ♡ Chỗ sâu nhất... đang bị cọ xát kịch liệt kìa♡」[p]
Rinko「Trước mắt em... đang chớp giật liên hồi rồi...♡ Bài massage của anh Shun, tuyệt vời quá mà♡」[p]
Rinko「A♡ A♡ A♡ Em không biết nữa đâu♡ Em không biết gì nữa đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A♡ A a♡ Kịch liệt quá... Ưm, kưưư♡ Anh sẽ xoa bóp đến tận sâu bên trong sao?」[p]
[舜]「Đúng vậy... Chỗ sâu bên trong này đang cứng lại đúng không? Phải làm cho nó mềm ra mới được.」[p]
Rinko「Ưm a a♡ Bị đè chặt thế này, em không thoát được đâu♡ Bị cưỡng chế làm cho sung sướng mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Hôm nay Rinko cũng đã cố gắng làm việc rất nhiều rồi... Anh phải xoa bóp ngoan ngoãn cho em mới được.」[p]
Rinko「A a♡ Đâu chỉ có mình em♡ Hôm nay anh Shun cũng đã cố gắng rất nhiều rồi mà♡」[p]
Rinko「Em cũng muốn♡ làm cho anh Shun sung sướng nữa♡ Ưm♡ A a♡ A a a♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Kư... Phù, a, siết chặt quá... A, nếu em không thả lỏng ra là anh bắn mất đấy...」[p]
Rinko「Ưm♡ A, hiưưư♡ Không được, đâu mà♡ Cơ thể em tự động phản ứng lại đấy chứ.」[p]
Rinko「Hà♡ A a♡ Cứ bắn ra đi...♡ Anh Shun cứ làm theo ý mình đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ A ư♡ A a♡ Sướng quá... Chỗ sâu nhất... đang bị cọ xát kìa♡」[p]
Rinko「Cứ đâm thình thịch... vào chỗ nhạy cảm...♡ Dương vật của anh Shun đang chạm vào đó...♡」[p]
Rinko「Cảm giác sung sướng lan tỏa... Em ra mất♡ Chỉ là massage thôi mà... em ra mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_kaiwa1

[tb_start_text mode=1 ]
Rinko「Anh định massage với tư thế này thật luôn sao? Lại còn chuẩn bị cả lotion nữa chứ...」[p]
[舜]「Anh chuẩn bị sẵn để xoa dịu sự mệt mỏi cho em đấy. Tuyệt vời không?」[p]
Rinko「Thiệt tình... Nhìn tình trạng này là biết ngay không phải massage bình thường rồi còn gì?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa2

[tb_start_text mode=1 ]
Rinko「Ưm...♡ Cả cơ thể ướt nhẹp hết rồi này... Anh Shun, anh định làm thủ thuật gì cho em đây?」[p]
[舜]「Bài massage làm em sướng đến tột đỉnh đấy? Đảm bảo là em chưa từng trải nghiệm bao giờ đâu.」[p]
Rinko「Không chịu đâu... Cơ thể em đang mong đợi rồi này...♡ Nó đang giật giật phản ứng lại, anh thấy hết rồi đúng không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa3

[tb_start_text mode=1 ]
Rinko「Em giao phó toàn bộ cơ thể này cho anh Shun đấy nhé...? Hãy thử bài massage độc quyền của anh đi♡」[p]
Rinko「Đổi lại... nếu sướng quá, có khi em sẽ lại nhờ anh làm tiếp đấy nhé.」[p]
[舜]「Tất nhiên rồi... Em cũng đừng nghĩ ngợi gì lung tung, cứ tận hưởng sự sung sướng đi nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_2_Dkiss1

[tb_start_text mode=1 ]
Rinko「Chụt, chụt chụt chụt, sột soạt♡ Ưm... Bên trong miệng cũng ướt át và ấm nóng quá...♡」[p]
Rinko「Rõ ràng là không có lotion... mà bên trong miệng cũng ướt nhẹp giống như cơ thể em rồi này♡」[p]
Rinko「Hà, ha... Em lại muốn thêm nữa rồi... Chụt, chụt chụt, chụt, sột soạt♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_Dkiss2

[tb_start_text mode=1 ]
[舜]「Ưm, Rinko mãnh liệt quá... Em trở nên cực kỳ thích hôn rồi đúng không?」[p]
Rinko「Chụt, chụt♡ Chụt, chụt, chụt, sột soạt♡ Ưm, đúng vậy đấy♡ Em thích hôn lắm.」[p]
Rinko「Nhưng vì là hôn người mình thích nên mới sướng thế này đấy? Người khác thì không được đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss+=1"  name="H_Dkiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_Dkiss3

[tb_start_text mode=1 ]
Rinko「Chụt chụt, chụt, sột soạt♡ Ưm, em muốn hôn thêm nữa... Em muốn anh quấn lấy lưỡi em cơ♡」[p]
[舜]「Rinko, dáng vẻ đòi hỏi của em dâm đãng lắm đấy... Đưa lưỡi ra đây nào...」[p]
Rinko「Ưm♡ Chụt chụt, chụt, sột soạt♡ Hà, a♡ Thêm nữa, thêm nữa đi anh...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Dkiss=0"  name="H_Dkiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm ưm♡ Chụt, chụt chụt♡ Hà, hà, em cứ tưởng chỉ hôn thôi mà cũng ra mất rồi chứ...」[p]
Rinko「Chụt, chụt chụt chụt... Nụ hôn như muốn ăn tươi nuốt sống người ta vậy... Tuyệt vời quá♡」[p]
Rinko「Nụ hôn dâm đãng thế này anh học ở đâu ra vậy, làm em sắp ghen lên rồi đây này.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_paizuri1

[tb_start_text mode=1 ]
Rinko「Ưm... Hà, a♡ Không chỉ dùng tay mà anh còn dùng cả dương vật để massage cho em nữa sao?」[p]
Rinko「A♡ A... Ướt nhẹp hết rồi này...♡ Cái này, có vẻ không chỉ là độ trơn của lotion đâu.」[p]
Rinko「Anh Shun, anh đang nhịn đấy à? Thể dịch ấm nóng của anh Shun, có vẻ trào hết ra ngoài rồi kìa♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_paizuri2

[tb_start_text mode=1 ]
Rinko「A... Ưm♡ Vừa massage cho em, anh Shun cũng đang thấy sướng đúng không?」[p]
[舜]「Bị lộ mất rồi sao... Tại vú của Rinko vừa mềm vừa mượt, sướng lắm mà.」[p]
Rinko「Em hiểu mà...♡ Ưm, nhưng nhờ massage mà cả hai cùng sướng thì cũng tốt chứ sao♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_paizuri3

[tb_start_text mode=1 ]
Rinko「Xoa bóp thêm nữa đi anh...♡ Hà, hà... Đầu vú của em, có vẻ đang cứng lại rồi...」[p]
[舜]「Thật này, nó đang cứng ngắc lại rồi đây này... Phải tập trung vào chỗ này mới được.」[p]
Rinko「Hiư♡ A♡ A a a♡ Chỗ đó, sướng quá... Hà, a a♡ Nhờ anh đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_paizuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hi gưưư♡ A a a♡ Cứ xoa bóp... mỗi đầu vú thôi...♡ Đừng mà, em ra mất♡」[p]
Rinko「Ưm, đang hôn phần đầu dương vật kìa... Cọ đi cọ lại bao nhiêu lần... chụt chụt♡」[p]
Rinko「Đừng mà, nó lại càng cứng hơn mất♡ Cứng ngắc... giống như dương vật của anh Shun vậy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... Hà, a a♡ Anh định bôi lotion đầy đến tận đầu vú luôn sao...?」[p]
Rinko「A♡ A♡ Ưm... Đừng xoa bóp mạnh thế mà... Đâu phải là nó đang căng cứng đâu♡」[p]
[舜]「Vậy sao? Nhưng nó đang cứng ngắc lại rồi nên phải xoa bóp kỹ mới được.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubiijiri2

[tb_start_text mode=1 ]
Rinko「Hiư♡ A♡ A a a♡ Đừng mà, chỗ đó nhạy cảm lắm♡ Ưm... Nó sưng phồng lên mất♡」[p]
[舜]「Vú của Rinko bóng loáng lên dâm đãng lắm đấy... Đầu vú cũng cứng ngắc lại rồi này.」[p]
Rinko「Ưm♡ Tại anh Shun massage cẩn thận quá... nên nó mới vểnh đứng lên thế này đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hà... Hà...♡ Đầu vú sướng quá đi mất...♡ Râm ran đến tận sâu bên trong cơ thể luôn...♡」[p]
Rinko「A♡ Ưm♡ Tuyệt quá...♡ Anh vừa thoa lotion vừa massage luôn sao?」[p]
Rinko「A a a♡ Chỉ gãi gãi ở phần đầu thôi... sướng quá♡ Em sẽ trở nên kỳ lạ mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm a a a♡ Thích, thích quá...♡ Ưm♡ Massage đầu vú, sướng quá đi mất...♡」[p]
[舜]「Chân em run lẩy bẩy luôn kìa? Hiệu quả đến thế cơ à? Tuyệt thật đấy.」[p]
Rinko「Hiệu quả lắm...♡ Nhờ massage... mà tận sâu trong bụng em... cứ nhức nhối mãi không thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hả... Anh định massage cả mông luôn sao? A, ưm, bị thoa lotion vào rồi...♡」[p]
[舜]「Tại nãy giờ nó cứ giật giật suốt mà? Anh tưởng em muốn được chạm vào chứ.」[p]
Rinko「Không phải đâu... Chỉ là cơ thể tự động phản ứng lại thôi mà...♡ Ưm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_anaruijiri2

[tb_start_text mode=1 ]
Rinko「Với tư thế này... xấu hổ quá... Anh Shun nhìn thấy hết rồi đúng không. Đừng nhìn nhiều quá mà...」[p]
[舜]「Mông của Rinko đáng yêu lắm. Đang khép chặt lại mà cứ giật giật mãi này.」[p]
Rinko「Ưm♡ A, đừng vuốt ve mà♡ Anh định xoa bóp rồi đút ngón tay vào trong sao? Không được đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_anaruijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Mông em mềm ra rồi này? Nhìn xem, ngón tay anh dễ dàng đút vào cửa rồi...」[p]
Rinko「Hya♡ A a♡ Đừng banh mông em ra mà...♡ Đừng... nhìn thấy tận sâu bên trong mất♡」[p]
Rinko「A♡ Bị sờ mông trong tư thế đáng xấu hổ thế này... em không còn mặt mũi nào nhìn anh Shun nữa đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R1_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Kưưư♡ A a a♡ Mông em... kỳ lạ quá... đang nóng ran lên rồi♡ Hông cứ tự động di chuyển thôi♡」[p]
[舜]「Rinko, hông em nảy lên liên tục luôn kìa? Sướng bằng mông thì cũng tốt chứ sao.」[p]
Rinko「Ưm♡ Phù, phù♡ Đã sướng quá mất rồi đây này. Là tại anh Shun đấy nhé?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_sumata1

[tb_start_text mode=1 ]
[舜]「Rinko, khe dâm của em mở toang ướt sũng ra rồi kìa... Sắp cọ xát đến tận sâu bên trong luôn rồi đấy.」[p]
Rinko「A♡ Ưm♡ Anh sẽ dùng dương vật để massage đến tận nơi sâu nhất sao♡」[p]
Rinko「Hà♡ A ư♡ A a♡ Ưm♡ Anh Shun cũng hãy tận hưởng sự sung sướng đi nhé♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_sumata2

[tb_start_text mode=1 ]
Rinko「Phù... Phù... Ưm♡ A♡ Chỗ nhóp nháp này là lotion sao? Hay là dâm dịch đầu cu của anh Shun vậy?」[p]
[舜]「Có khi là mật dâm đãng của Rinko đấy? Tất cả đang hòa quyện vào nhau rồi... Nhìn xem.」[p]
Rinko「A♡ A a a♡ Tuyệt quá... cọ xát nhóp nháp... sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_sumata3

[tb_start_text mode=1 ]
Rinko「Đừng, thế này em ra mất...♡ Đến cả cửa vào cũng ướt nhẹp nát bét hết rồi...♡」[p]
[舜]「Vẫn chưa đâu... Phải xoa bóp thêm nữa. Anh sẽ dùng dương vật cọ xát thật kỹ để massage lotion cho em nhé.」[p]
Rinko「Ưm♡ A a♡ Dừng lại một chút đi anh...♡ Em sẽ trở nên kỳ lạ mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm a a a♡ Hột le và dương vật cọ xát vào nhau... kích thích râm ran vang dội khắp người♡」[p]
Rinko「Hà♡ Hà♡ Không ngờ lại được massage sướng đến thế này...♡」[p]
Rinko「Chắc em thành khách quen bài massage của anh Shun mất thôi...♡ Tại nó sướng quá mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hiưư♡ A a♡ Hơi nóng cứ tuôn trào... không thể nào dừng lại được♡ Nhức nhối quá đi mất♡」[p]
[舜]「Phản ứng tuyệt thật đấy... Rinko hưng phấn quá rồi đấy...」[p]
Rinko「A♡ A... Anh nói thế chứ... Chỗ nhạy cảm đang bị cọ xát trực tiếp mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki2

[tb_start_text mode=1 ]
Rinko「A a a, lại trào ra mất thôi♡ Ưm hà♡ Đang cho anh Shun thấy dáng vẻ đáng xấu hổ mất rồi♡」[p]
[舜]「Phun nước không ngừng luôn nhỉ? A a, cứ như đang tiểu tiện ra quần vậy...」[p]
Rinko「Ưm kưưư♡ Đừng... Tại... kích thích mạnh quá mà♡ Em không thể nào dừng lại được...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A♡ A ưư♡ Bị dương vật cọ xát sồn sột thế này, sướng quá đi mất...♡」[p]
Rinko「Hông cứ tự động di chuyển...♡ Em sẽ trở nên kỳ lạ mất♡ Từ chỗ cọ xát lan râm ran đến tận đỉnh đầu luôn rồi♡」[p]
Rinko「A a a♡ Đừng cứ cọ mãi vào chỗ nhạy cảm thế mà... Thật sự... em không biết gì nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R1_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A a♡ Lượng lớn quá... trào ra rồi♡ Toàn bộ nước trong cơ thể em sắp trào hết ra ngoài rồi♡」[p]
Rinko「Hi gưưư♡ Ơ♡ Ơ ơ♡ Bên trong... cứ nhức nhối liên hồi không dừng lại được♡」[p]
Rinko「Phù... Ưm♡ Đợi đã♡ Nghỉ một chút đi anh♡ Cứ tiếp tục thế này em hỏng mất... hỏng mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「Rinko đang banh chân ra... nên anh có thể nhìn rõ dương vật đang đút ra rút vào này...」[p]
Rinko「Hya ưư♡ Xấu hổ quá...♡ Ưm, a a♡ Đừng, đừng nhìn mà...♡」[p]
Rinko「Ưm♡ A a, cứ từ từ đút ra rút vào như đang xác nhận cảm giác thế này... đừng mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Rinko「Phù... Phù♡ Tuyệt quá... Thứ to lớn của anh Shun... đang cọ xát nhóp nháp ở cửa vào...♡」[p]
Rinko「Vào một mạch... đến tận nơi sâu nhất luôn♡ Ơ ơ ơ♡ Lấp đầy mất rồi♡」[p]
[舜]「Rinko cũng đang nhìn cảnh đút ra rút vào mà... Em đang hưng phấn lắm đúng không...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Ưm♡ A♡ A a a♡ Của anh Shun... đang giật nảy lên kìa... Phần đầu cũng sưng phồng lên rồi♡」[p]
Rinko「Anh Shun cũng đang hưng phấn vì em nhỉ... Khuôn mặt cũng đầy nam tính dâm đãng quá đi♡」[p]
Rinko「Nhìn thấy khuôn mặt đó... đến em cũng hưng phấn theo mất...♡ Ưm, sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiưưư♡ A... B-Bên trong... Chạm vào chỗ nhạy cảm rồi♡ Ưm, kưưư♡」[p]
Rinko「Bị phần đầu dương vật đâm phập vào đè bẹp mất rồi♡ A ư♡ A, a a a♡」[p]
Rinko「Đừng... Cơn sung sướng tột độ đang ập đến...♡ Trong tư thế đáng xấu hổ này, đầu óc em trắng xóa rồi ra mất thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Rinko「A a♡ Ưm♡ Đừng dồn cả trọng lượng cơ thể vào đè bẹp em như thế mà♡」[p]
Rinko「Chạm đến tận cửa tử cung luôn rồi♡ Bị phần đầu chạm vào rồi khuấy đảo... Đừng mà♡」[p]
Rinko「Ưm♡ Gưư♡ Hà♡ Hà♡ Kịch liệt quá... em không thở nổi nữa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Rinko「Ưm ưư♡ Ơ ơ♡ Đang đâm vào... tận sâu bên trong luôn♡ Đây cũng là massage sao?」[p]
[舜]「Đúng vậy đấy... Lúc nào em cũng bận rộn công việc mệt mỏi đúng không? Anh sẽ xoa bóp thật kỹ cho em nhé...!」[p]
Rinko「A a♡ Đã mềm ra đủ rồi mà♡ Ướt sũng hết rồi... sắp trào ra mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Rinko「Hi gư♡ Ơ♡ Ơ♡ Cứ như đang bị... khoét sâu đến tận bên trong vậy♡」[p]
Rinko「A♡ Của anh Shun... đâm ngập đến tận gốc rồi♡ Ưm, kưư♡ Phần đầu chạm đến tận sâu bên trong luôn♡」[p]
Rinko「Ưm kưưư♡ Hà♡ Hà♡ Đây là bài massage bên trong cơ thể sao? Sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ơ ơ♡ Ưm kưưư♡ Bài massage này, tuyệt đối không được làm cho khách đâu đấy♡」[p]
[舜]「Anh biết rồi... Chỉ làm cho Rinko thôi. Rinko cũng chỉ được làm với mình anh thôi đấy...!」[p]
Rinko「Em biết rồi mà...♡ A a a♡ Em sẽ không làm... bài massage dâm đãng này với ai khác ngoài anh Shun đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_kaiwa1

[tb_start_text mode=1 ]
[舜]「Nhìn xem, khuôn mặt Rinko đang tràn trề kỳ vọng kìa... Dâm đãng quá đi.」[p]
Rinko「Thiệt tình... Cứ nói mấy lời hỗn xược... Anh Shun, anh lại định giở trò dâm đãng trêu chọc em đúng không?」[p]
Rinko「Không được làm quá đà đâu đấy nhé? Ở trước gương thế này... xấu hổ lắm đấy biết không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Rinko, em đã bao giờ nhìn thấy khuôn mặt của mình lúc làm tình chưa?」[p]
Rinko「Ch-Chuyện đó... làm sao mà em từng thấy được chứ? Xấu hổ lắm không dám nhìn đâu...」[p]
Rinko「Em còn chẳng có tâm trí đâu mà nghĩ xem mình đang làm bộ mặt gì nữa cơ...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa3

[tb_start_text mode=1 ]
[舜]「Hôm nay, anh sẽ cho em nhìn thấy khuôn mặt dâm đãng của mình cho đến tận phút cuối cùng nhé.」[p]
Rinko「Hôm nay anh Shun, quả nhiên là bạo dạn hơn mọi khi nhỉ... Anh muốn làm em xấu hổ sao?」[p]
Rinko「Nếu bị trêu chọc quá đà có khi em sẽ buồn đấy nhé...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hya ưư! Đột nhiên đánh thế làm em giật mình đấy... A! Đ-Đừng mà...」[p]
Rinko「Ưm! Đã bảo là đừng mà... Để lại dấu vết mất... Ưm! Anh Shun...!」[p]
[舜]「Tuyệt thật... Lúc làm tình cũng phát ra âm thanh giống thế này nhỉ? Tiếng da thịt va chạm dâm đãng cực kỳ.」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_supankingu2

[tb_start_text mode=1 ]
Rinko「A... Đau mà... Dừng lại đi...! Ưm, a, a a a!」[p]
[舜]「Ủa? Nhưng mỗi lần bị đánh hông em lại uốn éo kìa? Không phải là sướng sao?」[p]
Rinko「Làm gì có chuyện... Ưm... A a♡ A...♡ Đừng, dừng lại đi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Lúc bọn trẻ còn nhỏ, em có từng đánh mông trừng phạt chúng thế này không?」[p]
Rinko「Ưm♡ A a♡ Em chưa từng đánh bao giờ đâu...♡ Chỉ cần nói là chúng hiểu mà...!」[p]
Rinko「A, em cũng chỉ cần nói là hiểu mà... nên đừng đánh nữa đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hya ưưư♡ A... Cơ thể em, nóng ran lên rồi... Rõ ràng là đau... mà cứ râm ran...」[p]
Rinko「Sâu trong bụng em, vang dội cả lên rồi... Sao thế này... cơ thể em, trở nên kỳ lạ mất rồi...♡」[p]
Rinko「Hà♡ A, a a a♡ Đau mà lại thấy sướng... Rốt cuộc em bị làm sao thế này」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_tikubiijiri1

[tb_start_text mode=1 ]
[舜]「Rinko, mặt em giãn hết ra rồi kìa... Nhìn vào gương đi. Đầu vú sướng quá nên cả người mất hết sức lực rồi sao?」[p]
Rinko「Ưm♡ Hà, đừng... Đừng nói thế mà... Tự nhìn mặt mình xấu hổ lắm...」[p]
Rinko「A♡ Ưm... A♡ Chỉ kích thích đầu vú thôi... mà cơ thể nóng ran không dịu xuống được♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_tikubiijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A♡ A ưư♡ Ưm♡ Bị gãi gãi ở đầu vú thế này... em không chịu nổi mất♡」[p]
[舜]「Anh thì biết tòng tọc từ lâu rồi cơ? Em cũng thích được vuốt ve đầu vú đúng không?」[p]
Rinko「Ưm♡ Hà, a♡ Bị anh Shun nhìn thấu hết cả rồi...♡ Xấu hổ quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_tikubiijiri3

[tb_start_text mode=1 ]
[舜]「Nhìn đi Rinko, lúc bị gãi đầu vú em đang làm bộ mặt thế nào kìa... Tự mình kiểm chứng đi.」[p]
Rinko「Không chịu đâu... Không ngờ em lại làm bộ mặt thế này. Xấu hổ lắm anh Shun. Em không dám nhìn nữa đâu...」[p]
Rinko「Ưm... Vì có thể nhìn thấy mình đang bị sờ soạng thế nào... nên lại càng thấy dâm đãng hơn mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hya ưư ư♡ Cứ sờ mỗi đầu vú... đừng mà...♡ Tại anh sờ dâm đãng quá mà.」[p]
Rinko「Ưm♡ Hà♡ A, a ư♡ Cơ thể em, ngày càng trở nên nhạy cảm hơn rồi...」[p]
Rinko「A... Ch-Chân em... run rẩy không đứng vững nổi nữa rồi...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_munemomi1

[tb_start_text mode=1 ]
Rinko「Hà♡ A♡ A a...♡ Cứ làm vú mãi, đừng mà... Anh Shun, dừng lại đi.」[p]
[舜]「Nhưng em đang rên rỉ dâm đãng lắm đấy? Rinko, chẳng phải em đang hưng phấn vì bị làm mạnh bạo sao?」[p]
Rinko「Ưm♡ A a♡ Tại hôm nay anh Shun bạo dạn hơn mọi khi mà... Cảm giác mới mẻ quá...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_munemomi2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hà... Hà... Hà...♡ Ưm♡ Đừng có sờ soạng như đang xác nhận cảm giác thế mà...♡」[p]
[舜]「Tại cảm giác sờ sướng quá mà. Nhìn xem, ngón tay anh chìm hẳn vào bầu vú dâm đãng của Rinko luôn này...」[p]
Rinko「Ưm♡ Phù, hà... Cách anh Shun sờ, mãnh liệt hơn mọi khi... làm em sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_munemomi3

[tb_start_text mode=1 ]
[舜]「Hôm nay anh định sẽ yêu chiều Rinko thật nhiều đấy? Vui lắm đúng không.」[p]
Rinko「A♡ Yêu chiều là... bị nhào nặn vú thế này sao?」[p]
Rinko「Bắt em phô bày ra trước gương thế này... Anh Shun trêu chọc em quá... Xấu hổ đến mức không dám nhìn thẳng luôn này...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A, a a a♡ Ưm♡ Lòng bàn tay... đang cọ xát vào đầu vú...♡ Hà, a a♡」[p]
[舜]「Đầu vú vểnh đứng lên rồi kìa. Bằng chứng là em đang hưng phấn đúng không.」[p]
Rinko「Ưm♡ Ha ưư,, Đâu phải thế đâu... Ưm♡ A, cọ xát mất, đừng mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Rinko, nhắc mới nhớ em định dọn dẹp mà nhỉ? Có sao không? Làm tình ở chỗ thế này.」[p]
Rinko「A♡ Ưm♡ Tại anh Shun bắt đầu sờ soạng trước đấy chứ... Rõ ràng em định dọn dẹp cơ mà...」[p]
Rinko「A a a♡ Đừng... Khuấy đảo hột le... kích thích mạnh quá♡ Hông em, nảy lên mất thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kuriijiri2

[tb_start_text mode=1 ]
Rinko「A ưư♡ Cứ bị cọ xát mỗi hột le thế này... em ra mất♡ Ra mất thôi♡」[p]
[舜]「Hửm~? Ra đi đâu cơ? Anh không biết đâu, lên thiên đàng à?」[p]
Rinko「Hi gưưư♡ Ưm, a a♡ Anh trêu em♡ Là em sắp trở nên kỳ lạ mất thôi ấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Chỗ này cũng phải dọn dẹp cho sạch sẽ mới được... Không lẽ chỗ này, em cũng dùng cho khách đấy chứ?」[p]
Rinko「L-Làm gì có chuyện dùng chứ...♡ A, đừng... đừng vuốt ve hột le mà...♡ Chỗ đó nhạy cảm lắm...!」[p]
Rinko「Hông cứ tự động di chuyển... A♡ A♡ A♡ Đừng khuấy đảo thêm nữa mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiư♡ A, ưm♡ Bóp hột le thế này... có thứ gì đó trào ra mất... em không đứng vững nổi nữa đâu♡」[p]
[舜]「Ý em là phun nước rồi ngã gục xuống luôn à? Dâm đãng quá rồi đấy?」[p]
Rinko「Ưm♡ Hà♡ Hà♡ Là tại anh Shun... làm cơ thể em trở nên nhạy cảm thế này đấy nhé...?」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_sumata1

[tb_start_text mode=1 ]
[舜]「Rinko, ngoài anh ra, em đã từng bị cọ xát bằng dương vật thế này bao giờ chưa?」[p]
Rinko「Ưm♡ Phù, hà... Sao anh lại hỏi chuyện đó chứ... Ưm♡ Anh muốn làm em xấu hổ sao?」[p]
Rinko「Trước khi làm tình với anh Shun em đã nhịn suốt một thời gian dài rồi mà... làm gì có chuyện đó chứ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_sumata2

[tb_start_text mode=1 ]
Rinko「A... Ưm... Hà, a... Ưm, đợi đã, cứ cử động thế này là nó đâm vào trong mất...」[p]
[舜]「Ướt nhẹp thế này rồi, có khi trơn tuột đâm thẳng vào trong luôn đấy nhỉ? Rinko ướt sũng rồi này.」[p]
Rinko「A a a♡ Không phải... Đâu chỉ có mình em... Phần đầu của anh Shun cũng đang trào ra đấy thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_sumata3

[tb_start_text mode=1 ]
Rinko「Hà♡ A♡ A a a♡ Chỉ mới cọ xát thôi... mà sướng quá... em mất hết cả sức lực rồi♡」[p]
[舜]「Không được đâu, em phải đứng cho vững chứ. Không thì dương vật vểnh lên của anh sao cọ xát cho em được.」[p]
Rinko「Hiưư♡ A♡ Đ-Đừng có cọ xát... mỗi cửa vào với hột le mãi thế mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A a a♡ Hà... Hà♡ Cứ chạm mãi vào chỗ nhạy cảm... làm em cứ tưởng mình ra mất rồi...♡」[p]
Rinko「Ưm... Nhiệt độ cơ thể của anh Shun truyền sang rồi này...♡ Tuyệt quá, truyền đến cả nhịp đập luôn♡」[p]
Rinko「Sâu trong bụng em... cũng đang rộn ràng xao xuyến... Chắc là chúng ta đang phản ứng lại với nhau rồi...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Hà♡ Ưm♡ Đút ra rút vào bằng ngón tay kịch liệt quá... Thế này em ra ngay mất...♡」[p]
[舜]「Nhìn vào gương đi. Khuôn mặt Rinko đang dâm đãng cực kỳ luôn... Em không biết mình đang làm bộ mặt này đúng không?」[p]
Rinko「Ưm... Kưưư...♡ Em không biết là mình lại làm bộ mặt dâm đãng thế này đâu...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_teman2

[tb_start_text mode=1 ]
Rinko「Hà... Hà...♡ Không được♡ Không được, không được♡ A... Rõ ràng em là mẹ rồi... là người lớn rồi cơ mà...♡」[p]
Rinko「Say đắm trong nhục dục thế này... Khuôn mặt giãn ra ướt sũng thế này, không được đâu♡」[p]
[舜]「Hưng phấn với chính dáng vẻ của mình, dâm đãng quá đấy...! Rinko, hóa ra em là kẻ khổ dâm biến thái nhỉ.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ A a♡ A♡ A ư♡ Kịch liệt quá... bị khuấy đảo nát bét hết rồi♡」[p]
[舜]「Bị khuấy đảo mà em sướng quá còn gì. Sâu bên trong ướt sũng hết rồi này? Em đã sẵn sàng để đút dương vật vào rồi đúng không?」[p]
Rinko「Hà♡ A... Ưm♡ Nhờ anh Shun xoa bóp cho... mà em tan chảy mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm phư ư ư♡ A... Phần đầu... mắc vào cọ xát... A, ưm♡」[p]
Rinko「Vào đến tận... sâu bên trong rồi♡ Hà, a♡ Của anh Shun... trơn tuột đâm vào trong rồi...♡」[p]
Rinko「Hà~♡ Hà~♡ Sâu trong bụng em cứ giật giật... Có vẻ em đã chuẩn bị sẵn sàng tiếp nhận anh rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「Nhìn xem...! Mỗi lần anh giữ chặt hông rồi thúc lên là bên trong em lại giật nảy lên này...!」[p]
Rinko「Ưm♡ Kư, tại vì♡ anh Shun cứ nhắm mãi vào chỗ nhạy cảm mà thúc lên đấy chứ♡」[p]
Rinko「A a♡ Bị làm tình thô bạo thế này, cơ thể em giật mình đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Thừa nhận luôn đi? Em là kẻ khổ dâm cứ bị làm chuyện dâm đãng mạnh bạo là hưng phấn chứ gì...」[p]
Rinko「A... A a... Ưm...! Đâu có chuyện... đó đâu...♡ Đừng, đừng nói mấy lời kỳ lạ mà...♡」[p]
Rinko「Càng để ý lại càng... bên trong siết chặt nhức nhối... cơ thể em không nghe lời nữa rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Hà, a... A a♡ Đừng... sướng quá đi mất... Cảm giác này, là lần đầu tiên đấy...♡」[p]
[舜]「Khuôn mặt dâm đãng lắm đấy. Nhìn vào gương đi... Nhìn xem, dương vật sướng quá không chịu nổi đúng không.」[p]
Rinko「A ưưư♡ Đừng, xấu hổ quá... Em, không thể tin được là mình lại làm bộ mặt dâm đãng thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiư♡ A a♡ Bên trong... bị đâm thình thịch rồi♡ Ưm, đừng cứ nhắm mãi vào chỗ đó mà♡」[p]
[舜]「Phản ứng tốt hơn mọi khi nhỉ? Quả nhiên em thích bị làm mạnh bạo đúng không?」[p]
Rinko「Ưm♡ A♡ Hà, em không biết nữa...♡ Sướng đến mức này là lần đầu tiên đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「Này, hãy nhìn kỹ xem bây giờ mình đang làm bộ mặt gì đi. Cấm nhắm mắt lại đấy...!」[p]
Rinko「A ư♡ A, không chịu đâu...♡ Khuôn mặt đáng xấu hổ này... bị anh Shun nhìn thấy...♡」[p]
Rinko「Tự mình nhìn thấy cũng không muốn đâu... A♡ A♡ A♡ Nhưng mà, khuôn mặt em cứ giãn hết cả ra...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Rinko「Hiư♡ A♡ A♡ Bị lắc lư kịch liệt... Đ-Đừng... Đừng nhìn khuôn mặt kỳ lạ của em mà...」[p]
[舜]「Đáng yêu cực kỳ luôn. Anh còn muốn cho khách xem nữa cơ... để họ biết em làm bộ mặt dâm đãng thế này đấy.」[p]
Rinko「A a a♡ Chuyện đó, không được đâu...♡ Khuôn mặt thế này, làm sao mà cho khách xem được chứ...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Rinko「Ưm♡ Phù♡ A a♡ Kịch liệt quá... Hết chịu nổi rồi... Chân em không còn chút sức lực nào nữa...」[p]
Rinko「A a a♡ Giữ chặt hông rồi thúc lên thế này, dâm đãng quá đi mất♡」[p]
[舜]「Tại em thích bị làm mạnh bạo mà đúng không? Rinko... siết chặt lắm đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiưưư♡ A a♡ Sướng quá♡ Hông em rã rời mất, em ngã gục xuống mất thôi♡」[p]
Rinko「Ưm gư♡ Ưm ưưư♡ Hà, hà... Bên trong, biến thành hình dạng của anh Shun mất rồi...♡」[p]
Rinko「A♡ Không chịu đâu... Rõ ràng em lớn tuổi hơn, đáng lẽ phải đứng đắn cơ mà... Lại đi say đắm trong nhục dục thế này♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_kaiwa1

[tb_start_text mode=1 ]
Rinko「Anh định làm thật ở trước gương luôn sao? Nhìn thấy khuôn mặt kỳ lạ của em, có khi anh lại mất hứng đấy?」[p]
[舜]「Nhìn thấy khuôn mặt dâm đãng thì chắc chắn là phải hưng phấn hơn rồi chứ? Để anh chứng minh cho xem nhé?」[p]
Rinko「Thiệt tình... Anh định cố tình làm kịch liệt chứ gì? Em sẽ bị làm cho tơi tả ở đây mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Đang háo hức xem mình sẽ bị làm những gì đúng không? Rinko, hiện rõ hết lên mặt rồi kìa.」[p]
Rinko「Hả!? Đừng, thiệt tình... Anh Shun cũng đang làm bộ mặt dâm đãng cực kỳ luôn đấy? Phản chiếu trong gương kìa.」[p]
Rinko「Khuôn mặt nam tính... Anh luôn cho em xem trước khi làm tình nhỉ? Nhưng mà... có vẻ hưng phấn hơn mọi khi đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa3

[tb_start_text mode=1 ]
Rinko「Ph-Phải nhanh chóng xong việc để còn dọn dẹp nữa chứ... Vẫn còn việc đóng cửa tiệm nữa mà...」[p]
[舜]「Chỗ này có khi cũng sẽ vấy bẩn ướt nhẹp luôn đấy nhỉ? Bằng thể dịch của chúng ta ấy.」[p]
Rinko「Ưm...♡ Quả nhiên hôm nay, anh Shun trêu chọc em hơn mọi khi nhỉ... Anh định làm tình thế nào đây?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hiư♡ A♡ Lại... cố tình tạo ra tiếng động lớn chứ gì? Ưm, a a♡」[p]
[舜]「Bị lộ mất rồi sao? Anh nghĩ Rinko bị đánh phát ra tiếng động sẽ hưng phấn nên...」[p]
Rinko「Em đâu phải kiểu người bị đánh là hưng phấn đâu... Hiư♡ A♡ Đ-Đừng, hết chịu nổi rồi...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu2

[tb_start_text mode=1 ]
[舜]「Nhìn xem, quả nhiên là bị đánh nên hưng phấn kìa. Cơ thể cứ giật nảy lên phản ứng lại đây này?」[p]
Rinko「Đ-Đó là do em giật mình và thấy đau thôi... Ưm... Hà, a♡ Rõ ràng chỉ thấy đau thôi cơ mà...」[p]
Rinko「Dưới rốn... đang râm ran này... Anh [舜], có lẽ em trở nên kỳ lạ mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Hia...♡ A...♡ A...♡ Không được đâu... in hằn cả dấu tay rồi...♡ Cơ thể em sẽ ghi nhớ cảm giác này mất...♡」[p]
[舜]「Tốt mà... Nếu lại muốn nữa, anh sẽ đánh thật mạnh cho em... Em là M (khổ dâm) mà nhỉ?」[p]
Rinko「Kh-Không phải... A...♡ Ưm...♡ Cảm giác này, là lần đầu tiên... Em trở nên kỳ lạ mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hya...♡ Ưm...♡ Nóng quá... tê rần cả lên rồi... Tại sao chứ...」[p]
[舜]「Bị đánh mà lại thấy sướng, quả nhiên là em có máu M rồi đấy.」[p]
Rinko「Từ trước đến nay, em chưa từng thấy sướng vì bị đau bao giờ mà... Ưm...♡ Haa, a...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Ưm... A... A, a...♡ Đừng nhéo và vân vê đầu ngực em... không được đâu... chỗ đó nhạy cảm lắm...♡」」[p]
[舜]「Hê... Vậy thì em hãy nhìn vào gương xem mình đang bị sờ soạng thế nào đi. Nhìn này...」[p]
Rinko「A...♡ Ưm...♡ Đừng mà... sao anh lại bắt em nhìn chứ... Xấu hổ lắm...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_tikubitumami2

[tb_start_text mode=1 ]
[舜]「Bây giờ Rinko đang bị sờ soạng thế nào? Em đang làm vẻ mặt ra sao, tự nhìn rồi nói cho anh nghe xem nào.」[p]
Rinko「Bây giờ... đầu ngực đang bị nhéo và vân vê... bị mân mê mất rồi...♡ Đang bị anh [舜] sờ soạng thật dâm đãng...♡」[p]
Rinko「V-Vẻ mặt thì... đang làm một vẻ mặt thật đáng xấu hổ... Em cũng bất ngờ khi thấy mình làm vẻ mặt như thế này...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Đã bảo là đừng có tự nhiên nhéo chặt đầu ngực em mà...♡」[p]
Rinko「Ưm...♡ Haa...♡ Haa...♡ Vì cách sờ soạng của anh [舜] dâm quá... nên sâu bên trong cơ thể em đang nóng ran lên đây này...♡」[p]
Rinko「Hông em... không ngừng vặn vẹo được... Hình như chỉ mỗi đầu ngực thôi thì không đủ nữa rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Ưm... Dù anh có vân vê đầu ngực em đến thế... thì cũng không ra sữa được đâu...♡」[p]
[舜]「Vậy sao? Cặp vú to và căng tròn thế này, trông như sắp tiết ra sữa vậy.」[p]
Rinko「Ưm...♡ Haa, a...♡ Không ra được đâu...♡ Đã có em bé đâu chứ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_munemomi1

[tb_start_text mode=1 ]
Rinko「Ư... Ưm...♡ Vú em bị bóp chặt mất rồi...♡ Bị bàn tay to lớn của anh nhào nặn loạn xạ mất rồi...♡」[p]
[舜]「Sướng lắm đúng không? A, không được đâu nhé? Dù có uốn éo cơ thể thì em cũng không thoát được đâu.」[p]
Rinko「Ưm... Ư...♡ Anh [舜]... hôm nay anh thật bạo dạn... khác hẳn mọi ngày...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_munemomi2

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ A...♡ Ưm, ư...♡ Vú em bị nhào nặn loạn xạ hết cả lên rồi... Em không chịu nổi nữa...」[p]
[舜]「Nhìn dáng vẻ mình bị sờ soạng em cũng thấy hưng phấn đúng không? Trong gương phản chiếu hết cả rồi kìa?」[p]
Rinko「Ưm...♡ Haa... A...♡ Đừng nói nữa mà... Xấu hổ quá, em chỉ muốn chạy trốn thôi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_munemomi3

[tb_start_text mode=1 ]
[舜]「Vú của Rinko mềm quá đi mất. Nằm trong tay anh, hình dáng của nó cứ liên tục thay đổi này?」[p]
Rinko「Ưm...♡ Tại vì... anh [舜] bóp nắn nhiều quá... nên vú em nhũn cả ra rồi đây này.」[p]
Rinko「Chỉ có phần đầu ngực là đang cứng lại thôi. Hình như bây giờ nó đang trở nên cực kỳ nhạy cảm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ A...♡ A, anh lắc vú em luôn sao? Đ-Đã bảo là xấu hổ lắm mà...♡」[p]
Rinko「Nằm trong tay anh [舜]... bị mặc sức đùa bỡn...♡ Không được... em đang hưng phấn mất rồi...」[p]
Rinko「Vẻ mặt dâm đãng thế này, ngoài anh [舜] ra em không thể cho ai xem được đâu... Dù là khách hàng, hay là các con...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「Đừng... m-mông thì không được đâu... ở chỗ như thế này... Ưm...♡ Hơn nữa còn đang đổ mồ hôi...」[p]
[舜]「A, vẫn chưa giãn ra nhỉ. Rinko à, chỗ này mà giãn ra thì sẽ mềm lắm đúng không?」[p]
Rinko「Ưm... Chuyện đó em không biết đâu... Mông thì tự mình đâu có sờ bao giờ...」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_anaruijiri2

[tb_start_text mode=1 ]
[舜]「Anh mới chỉ sờ nhẹ ở cửa vào thôi mà mông em đã giật giật rồi sao? Sướng lắm à?」[p]
Rinko「A... Ưm...♡ Đâu phải do ý muốn của em tự cử động đâu...♡」[p]
Rinko「Haa...♡ A, ưm...♡ Đừng có cứ xoa bóp mãi một chỗ đó... Bẩn lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_anaruijiri3

[tb_start_text mode=1 ]
Rinko「Haa...♡ Haa...♡ A...♡ Đừng... ng-ngón tay... đưa vào rồi đúng không? Bị chèn ép mất rồi...」[p]
[舜]「Thấy chưa? Nó đã nhũn ra và lỏng lẻo rồi đấy... Ngậm lấy ngón tay anh dễ dàng như vậy... Dâm quá.」」[p]
Rinko「Hia...♡ A... Ưm...♡ Nếu anh ngoáy ngón tay bên trong... em sẽ mất hết sức lực mất... Đủ rồi đúng không anh?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*R2_2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Đừng làm như đang tìm kiếm điểm yếu của em chứ...♡ Chỗ đó thực sự không được đâu... A...♡」[p]
[舜]「Hự... thít chặt quá. Nếu đút con cu vào chỗ này của Rinko thì không biết sẽ thế nào đây ta~」[p]
Rinko「Ưm...♡ Tại anh nói mấy lời khiến người ta liên tưởng... nên nó mới phản ứng mạnh hơn đó...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_sumata1

[tb_start_text mode=1 ]
[舜]「Rinko à, em phải khép chặt chân lại và thít chặt lấy chứ... Nào, sục cu cho anh đi.」[p]
Rinko「Ư... Ưm...♡ Em vặn hông là được đúng không? Rõ ràng là anh [舜] cũng đang tự cử động đủ nhiều rồi mà...♡」[p]
Rinko「A...♡ Haa, a...♡ Của anh [舜] nóng quá... nó đang trở nên cực kỳ to rồi này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_sumata2

[tb_start_text mode=1 ]
[舜]「Nhờ được ngắm nhìn khuôn mặt dâm đãng của Rinko qua gương mà con cu của anh cũng cứng ngắc lên rồi đây này.」[p]
Rinko「Ưm...♡ A...♡ Haa, ưm... Bị anh nhìn thấy hết thế này xấu hổ quá...♡」[p]
Rinko「Nhưng mà, khi nghĩ đến việc mình có thể làm anh [舜] hưng phấn đến mức này... em lại thấy vui lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_sumata3

[tb_start_text mode=1 ]
[舜]「Đừng chỉ nhìn bên trên, nhìn cả bên dưới nữa đi? Bây giờ con cu của anh đang ló ra từ giữa cô bé của Rinko đúng không?」[p]
Rinko「A...♡ Ưm...♡ Phần đầu... của anh [舜]... đang lộ ra kìa...♡ Phù... phù...♡」[p]
Rinko「To và dài đến thế này cơ mà...♡ Cứ nghĩ đến việc thứ này sẽ đút vào trong người mình... là em lại thấy râm ran.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_sumata_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Ưm...♡ Nó đang cọ xát trúng chỗ không được rồi...♡ Dù chưa đút vào mà em sắp lên đỉnh mất...」[p]
[舜]「Ây da, Rinko đang làm vẻ mặt đê mê rồi kìa? Em hưng phấn quá rồi đấy.」[p]
Rinko「Haa, a, tại vì...♡ Bị anh giữ chặt eo... rồi cọ xát loạn xạ thế này mà...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t2.mp3"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Ưm... Ra mất, không dừng lại được...♡ Nước nôi trào hết cả ra ngoài rồi...♡」[p]
[舜]「Phun nước lênh láng thế này... Rinko à, em bảo là dọn dẹp mà chính em lại đang làm bẩn đấy thôi.」[p]
Rinko「Ư...♡ Ưm...♡ Tại vì... anh [舜] cứ ngoáy mạnh bạo quá... nên em mới phun ra mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_siohuki2

[tb_start_text mode=1 ]
Rinko「A...♡ A...♡ Dội đến tận sâu bên trong rồi...♡ Nhũn hết cả người ra rồi... em hết chịu nổi rồi...♡」[p]
[舜]「Em phun nước không ngừng luôn nhỉ? Ra nhiều đến mức sắp thiếu nước luôn rồi đấy?」[p]
Rinko「Ưm...♡ Haa, a...♡ Đây là lần đầu tiên em phun ra nhiều thế này...♡ Chân em run rẩy hết cả lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Đái dầm ra thế này, người lớn gì kỳ vậy? Rõ ràng là lớn tuổi hơn anh cơ mà.」[p]
Rinko「X-Xin lỗ... nhưng đây không phải là đái dầm đâu... chỉ là sướng quá nên nó mới chảy ra thôi...」[p]
Rinko「Ưm...♡ A...♡ A...♡ Nếu anh cứ húc mạnh vào sâu bên trong thì em lại phun ra mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*R2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="rinko/voice_r_rinko_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Em không biết gì nữa rồi... Vừa xấu hổ vừa sướng, trong đầu em đang rối tung hết cả lên...♡」[p]
[舜]「Thật đấy, khuôn mặt em cũng rối tung hết cả lên rồi kìa. Rinko, em dâm thật đấy...」[p]
Rinko「Hia...♡ A, ưm...♡ Đừng, đừng nhìn mà... Chắc chắn là em đang làm một vẻ mặt kinh khủng lắm...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Rinko「Ha...♡ Haa...♡ A...♡ Của anh [舜] cũng đang to hơn bình thường đó?」[p]
[舜]「Tại anh được ngắm nhìn phản ứng dâm đãng của Rinko kỹ hơn mọi ngày... nên anh mới hưng phấn đó.」[p]
Rinko「Ưm...♡ A...♡ Đừng có tự nhiên húc mạnh vào tận sâu bên trong chứ...♡ Hỏng mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Em không định nhìn khuôn mặt mình lúc đang làm tình sao? Đây là khuôn mặt lúc đang bị đút con cu vào đấy nhé?」[p]
Rinko「Đừng, mà... Anh lại nói mấy lời xấu xa rồi... Ưm...♡ Xấu hổ quá, em không còn tâm trí đâu mà làm tình nữa đâu.」[p]
[舜]「Đồ nói dối. Em đang hưng phấn hơn đúng không? Bên trong đang thít chặt lại rồi này...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Rinko「Hia...♡ A...♡ A...♡ Đừng có ngoáy loạn bên trong... như đang kiểm tra cảm giác như thế chứ...♡」[p]
Rinko「Haa, haa...♡ A...♡ Bắt gặp ánh mắt qua gương thế này... cũng xấu hổ lắm...♡」[p]
Rinko「Anh [舜], khuôn mặt anh trông đàn ông hơn mọi ngày... Sự hưng phấn của anh truyền hết sang em rồi này...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ Sâu trong bụng... đang râm ran này...♡ Không được, hơn thế này nữa thì...!」[p]
[舜]「Rên rỉ dâm đãng thế này thì làm sao mà dừng lại được chứ...! Em đang kích thích anh quá đấy.」[p]
Rinko「Em không có ý đó... A...♡ Ưm...♡ Không chịu đâu, em lại phát ra âm thanh kỳ lạ mất rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「A, nó không xìu xuống được...! Tại Rinko dâm quá mà... Từ nãy giờ em cứ mời gọi anh đúng không?」[p]
Rinko「Ưm...♡ A...♡ Tại anh [舜]... cứ nhìn em như muốn liếm láp cơ thể em... nên em mới mong chờ thôi mà...♡」[p]
Rinko「Em đâu có mời gọi đâu...♡ Ưm...♡ A...♡ Bị rung lắc dữ dội thế này cơ mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Cảm giác bị người đàn ông nhỏ tuổi hơn húc mạnh bạo thế nào? Trông em có vẻ cực kỳ hưng phấn đấy.」[p]
Rinko「Ưm...♡ A...♡ Em không biết...♡ Hôm nay anh mãnh liệt hơn mọi ngày... em không suy nghĩ được gì nữa...♡」[p]
Rinko「Nhưng mà bị nhìn thấy khuôn mặt thế này xấu hổ lắm...♡ Ưm, a...♡ Khuôn mặt em đang trở nên thật phóng đãng mà...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Nếu ghét khuôn mặt thảm hại đó, sao em không thử làm ra vẻ mặt như không có chuyện gì đi? Em làm được mà đúng không...!」[p]
Rinko「A...♡ A...♡ Kh-Không thể nào...♡ Đang sướng thế này cơ mà... làm sao có thể làm ra vẻ mặt như không có chuyện gì được chứ...」[p]
Rinko「A...♡ Ưm, ư... Tiếng bạch bạch thế này, bên trong em sắp bị nghiền nát mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_rinko.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_rinko.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A...♡ A...♡ Vào tận sâu bên trong rồi...♡ Sâu quá, sâu quá...♡ Của anh [舜] to quá...♡」[p]
[舜]「Khuôn mặt dâm đãng thế này, em đâu thể cho gia đình hay khách hàng nhìn thấy được nhỉ?」[p]
Rinko「Ưm...♡ Đừng... đừng nói nữa... A...♡ Em lại càng phản ứng mạnh hơn mất...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_rinko.ks"  target="*high2"  cond=""  ]
[return  