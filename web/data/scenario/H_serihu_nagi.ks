
[_tb_system_call storage=system/_H_serihu_nagi.ks]

*high

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=4"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="+="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*high2

[tb_eval  exp="f.H_hit+=1"  name="H_hit"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=7"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(15-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*low

[tb_eval  exp="f.H_hit-=1"  name="H_hit"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou-=Math.floor(Math.random()*(7-3+1)+3)"  name="H_zettyou"  cmd="-="  op="r"  val="3"  val_2="7"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*hit

[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=3"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou+=Math.floor(Math.random()*(20-10+1)+10)"  name="H_zettyou"  cmd="+="  op="r"  val="10"  val_2="20"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[return  ]
*H1_kaiwa1

[tb_start_text mode=1 ]
[舜]「Đẹp quá.」[p]
Nagi「Thôi mà... xấu hổ lắm anh đừng nói thế chứ... em cũng chưa quen bị nhìn nhiều thế này...」[p]
Nagi「Em khỏa thân, trông có kỳ cục không...? Anh đừng cười nhé...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa2

[tb_start_text mode=1 ]
Nagi「Có thể hòa làm một với anh Shun thế này... em vẫn chưa dám tin...」[p]
Nagi「Em chẳng gợi cảm chút nào... anh đừng thất vọng nhé...?」[p]
Nagi「Có khi... em sẽ làm vẻ mặt kỳ lạ mất... xấu hổ quá.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kaiwa3

[tb_start_text mode=1 ]
Nagi「Ủa? Anh đang căng thẳng sao? Gì chứ, hóa ra không chỉ có mình em là hồi hộp bồn chồn.」[p]
[舜]「Đương nhiên, là thế rồi...」[p]
Nagi「Gì chứ... em yên tâm rồi... Hai đứa mình, hãy cùng sướng thật nhiều nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*H1_kiss1

[tb_start_text mode=1 ]
Nagi「Chu... ưm... môi anh, mềm thật đấy...」[p]
[舜]「Đó là câu của anh mới đúng chứ.」[p]
Nagi「A, đúng rồi nhỉ... khc, em lỡ thốt ra những gì mình nghĩ mất rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*H1_kiss2

[tb_start_text mode=1 ]
Nagi「Chupu, chu, chụt chu... ưm♡ Chỉ mới hôn thôi mà cứ như đã thấy sướng rồi ấy...」[p]
Nagi「Chỉ là chạm môi vào nhau thôi... vậy mà lại cảm thấy hạnh phúc đến thế này...」[p]
Nagi「Em hoàn toàn không biết luôn. Cảm ơn anh đã dạy em nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss3

[tb_start_text mode=1 ]
Nagi「Chụt, chụt, chụt... Ưm...♡ Phù... A... Chỉ hôn thôi mà cơ thể em đã rạo rực hết cả lên rồi...♡」[p]
Nagi「Có hư hỏng quá... không nhỉ? Nhưng mà... chỉ hôn thôi thì em thấy chưa đủ đâu♡」[p]
Nagi「Em muốn anh chạm vào nhiều hơn nữa♡ Hãy hôn em thật nhiều vào♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*H1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Chụt, chụt... Ưm...♡ Hà, hà♡ Tuyệt quá... ban nãy...」[p]
Rinko「Chỉ hôn thôi mà... quanh bụng em đã quặn lên rồi...♡ Cơ thể em như đang vui sướng vậy...♡」[p]
[舜]（Khuôn mặt đờ đẫn... nhìn dâm quá đi mất...）[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... A...♡ Xấu hổ quá...♡ Em, em... ngực đâu có to đến thế...」[p]
[舜]「Mềm mại lắm, cảm giác sờ vào tuyệt vời luôn.」[p]
Nagi「May quá...♡ Nghe anh Shun nói vậy em cũng yên tâm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi2

[tb_start_text mode=1 ]
Nagi「Ưm...♡ Hà, a... Bàn tay anh, dịu dàng quá... sướng lắm♡」[p]
Nagi「Làm em muốn anh chạm vào nhiều hơn nữa...♡ Em, trở nên dâm đãng mất rồi...♡」[p]
Nagi「Đừng ghét em nhé? Chỉ là em muốn anh Shun chạm vào thôi mà...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... A...♡ Làm sao đây, cơ thể em nóng ran hết cả lên rồi...♡」[p]
Nagi「Hình như em thích bị sờ ngực mất rồi...♡ Ưm♡ Hà, a...♡」[p]
Nagi「Em lỡ phát ra, giọng kỳ lạ mất rồi♡ Xấu hổ quá...♡ Ưm♡ A, a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*H1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ G-Gì vậy...? Sướng quá... cơ thể em tự động phản ứng lại luôn...♡」[p]
Nagi「A♡ Chỗ đó...♡ Đừng... em trở nên kỳ lạ mất, thôi♡」[p]
Nagi「Hông em, tự động uốn éo luôn rồi♡ Ưm♡ Kỳ lạ quá...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A... Ưm... A..., anh liếm ngực em sao...? Liếm chỗ đó đâu có ngon lành gì, đâu...」[p]
Nagi「Ưm♡ Phù♡ Ưm...♡ Hà, lưỡi anh Shun ấm quá...♡」[p]
Nagi「C-Cảm giác kỳ lạ, quá...♡ Không được đâu... anh mau rời môi ra đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname2

[tb_start_text mode=1 ]
Nagi「Phù♡ Ưm♡ Chỉ bị liếm nhũ hoa thôi mà... toàn thân em đã tê râm ran rồi...♡」[p]
Nagi「A♡ A♡ A♡ Phù~♡ Ưm, không chịu đâu, đừng có nhìn mặt em mà♡」[p]
Nagi「Chắc chắn mặt em đang kỳ lạ lắm... Đã bảo là xấu hổ lắm mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Phù♡ Hà, a...♡ Anh đang mút ngực em say sưa đấy à...?」[p]
Nagi「Anh Shun, cứ như em bé ấy... Ưm♡ Hà♡ Hà♡ A...♡ Ưm♡」[p]
Nagi「Đừng mút mạnh thế chứ♡ A♡ Hông em tự động di chuyển mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*H1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ A♡ Chỉ với nhũ hoa thôi mà... em cứ tưởng mình sắp phát điên luôn rồi...♡」[p]
Nagi「Phù♡ Phù♡ Phù♡ Sao tự dưng... dưới bụng em lại nóng ran lên thế này...」[p]
Nagi「Cơ thể em, rốt cuộc bị làm sao vậy nè♡ Cảm giác khó chịu bứt rứt lắm...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kuriijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ch-Chỗ đó... anh không được sờ... Rõ ràng là chỗ đáng xấu hổ, mà...」[p]
[舜]「Đang nóng hổi luôn này.」[p]
Nagi「Hả, nh-nhưng mà... Tận sâu bên trong... cứ như bị tê dại đi... kỳ lạ lắm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kuriijiri2

[tb_start_text mode=1 ]
Nagi「A...♡ Chỗ đó... nhạy cảm lắm♡ Ưm♡ B-Bị vuốt ve... em sẽ trở nên kỳ lạ mất♡」[p]
Nagi「A♡ A♡ A♡ Á... Hông em, tự động nảy lên... A...♡」[p]
Nagi「Phù~♡ Phù~♡ [r]Làm sao đây... sướng quá đi mất, rõ ràng là không được làm chuyện này mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri+=1"  name="H_kuriijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kuriijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Âm vật, đang sưng to lắm... căng phồng lên rồi này...」[p]
Nagi「Hà...♡ A, á♡ Bị anh nắn bóp sần sật... tuyệt quá♡」[p]
Nagi「Làm thế... sướng lắm... A♡ A♡ A♡ A... Vang vọng tận sâu bên trong luôn rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kuriijiri=0"  name="H_kuriijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*H1_kuriijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Á♡ Chỗ đó, em yếu lắm...♡ A♡ A♡ A♡」[p]
Nagi「Ưm, phù...♡ Cái đó, tuyệt quá♡ Vuốt ve âm vật... sướng quá đi mất♡」[p]
Nagi「E-Em sắp lên đỉnh mất thôi...♡ Không ngờ lại sướng đến thế này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á, không chịu đâu... Chỗ bẩn thỉu như thế... đừng có liếm...! Mau rời môi ra đi... em xin anh...!」[p]
[舜]「Không bẩn đâu... Đang ướt sũng và nóng hổi đây này...」[p]
Nagi「Kh-Không được... Ưm... A, a...♡ Đã bảo là không được mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni2

[tb_start_text mode=1 ]
Nagi「Ư...♡ Ưm... Anh Shun, rời môi ra đi... Xấu hổ lắm... tự dưng lại đi liếm chỗ đó...」[p]
Nagi「Không được, đâu... Rõ ràng là không được mà... Ưm... Sâu trong bụng, cứ như tê râm ran vậy...♡」[p]
Nagi「Hà♡ Hà♡ Hà♡ A...♡ Sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Em muốn anh làm thêm nữa không...?」[p]
Nagi「Không chịu đâu... Xấu hổ lắm... nh-nhưng mà... em muốn anh làm thêm nữa cơ...♡ Sướng lắm...」[p]
Nagi「Lưỡi anh ướt át và ấm nóng... Ưm♡ Hông em, tự động di chuyển mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*H1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ư...♡ Chỗ đó, chỗ đó không được đâu♡ Bị liếm là em lên đỉnh mất♡」[p]
Nagi「Hà♡ Hà♡ Hông em nảy lên mất♡ Đừng có cho lưỡi vào trong mà...♡ Ư...♡」[p]
Nagi「Sướng quá... trước mắt em, cứ chớp nháy liên tục...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... nhột quá... cảm giác lưỡi ướt át chạm vào... không được đâu. Đừng có, liếm láp khắp nơi như thế」[p]
[舜]「Nhưng hình như mặt em đang giãn ra hết rồi kìa?」[p]
Nagi「...Làm gì có chuyện đó, chứ. Hà, a, em giật bắn mình rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_miminame2

[tb_start_text mode=1 ]
Nagi「Ưm... phù, phù...♡ Hà, em chỉ nghe thấy hơi thở và giọng nói của anh Shun thôi...」[p]
Nagi「Vang vọng... trong đầu em... Ưm♡ Trong đầu em chỉ ngập tràn hình bóng anh Shun thôi...♡」[p]
Nagi「Ưm♡ Ư...♡ Chẳng thể nghĩ được gì khác ngoài cảm giác sung sướng này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_miminame3

[tb_start_text mode=1 ]
Nagi「Lưỡi anh, đang tiến vào tận sâu bên trong...♡ Bị liếm láp thế này... hình như em thích mất rồi♡」[p]
[舜]「Phù~... Chỉ bị liếm thôi mà em đã hưng phấn thế này rồi à?」[p]
Nagi「Hà♡ Hà♡ [r]Ưm... có vẻ là vậy... Dái tai hay bên trong tai... tất cả đều bị anh Shun chiếm đoạt mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*H1_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Cái đó, tuyệt quá... A, a...♡」[p]
Nagi「Hà, hà... Chỉ bị liếm tai thôi mà... em đã thấy sướng thế này rồi...」[p]
Nagi「Bị anh đưa lưỡi ra vào trong tai, dâm quá đi mất... hình như em hưng phấn mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*H1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Ưm... hà hà... Bên trong lấp đầy rồi... em cảm nhận được anh đang di chuyển trong bụng em... Cảm giác kỳ lạ quá...」[p]
[舜]「Em có đau không...?」[p]
Nagi「Đ-Đừng lo... tuy hơi khó thở một chút... nhưng em vui lắm vì anh Shun đang ở bên trong em...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「Ưm... phù... phù... Hà, hà, anh đang di chuyển bên trong, em cảm nhận được hết đấy...」[p]
Nagi「Ư... Ưm, a... A...♡ Sao thế này... tự dưng em thấy sướng quá... Ưm♡」[p]
Nagi「Làm sao đây... cảm giác sung sướng này, em chưa từng biết đến...♡ Từ sâu trong bụng, cảm giác sướng rơn lan tỏa ra khắp người em♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「Ư...♡ Ưm♡ Phù, phù...♡ Chạm vào, tận sâu bên trong rồi♡」[p]
Nagi「Phập, phập... Chạm đến tận cùng bên trong rồi... em biết nó đang chạm vào mà♡」[p]
Nagi「Ưm♡ Hà, hà... Toàn thân em, nhũn ra hết rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*H1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ch-Chỗ đó♡ Sướng quá...♡ Dương vật anh, đang gõ cốc cốc vào chỗ sướng của em♡」[p]
Nagi「Em chẳng thể nghĩ được gì khác nữa đâu♡ Chỉ có thể nghĩ đến... cảm giác sung sướng này thôi♡」[p]
Nagi「A...♡ Thích quá♡ Thích quá♡ Thích lắm♡ Làm, thêm nữa đi anh♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*H1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Hà♡ Hà♡ Hà♡ Mãnh liệt quá...♡ A, em bị rung lắc dữ dội quá♡」[p]
Nagi「Anh Shun... anh đang hưng phấn sao? Khuôn mặt... nhìn dâm quá đi... Bị anh nhìn với khuôn mặt đó... cả em cũng...♡」[p]
Nagi「Ưm♡ Hà, cơ thể em, tự động phản ứng lại luôn rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「A♡ A♡ Có phải mỗi em là sướng thôi không? Anh Shun cũng phải, sướng cùng em nhé♡」[p]
[舜]「Không sao đâu, anh cũng đang sướng lắm...」[p]
Nagi「May quá...♡ A...♡ Hãy dùng cơ thể em, để cảm thấy thật sướng nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「A...♡ Chạm đến, tận sâu bên trong rồi♡ Toàn bộ của anh Shun... đã tiến vào trong em...♡」[p]
Nagi「Sướng quá...♡ Biết được cảm giác sung sướng này rồi... em không thể quay lại như trước được nữa đâu♡」[p]
Nagi「Ngày nào em cũng muốn bị anh Shun lắc lư mãnh liệt thế này mất thôi...[r]Em sẽ ngày càng dâm đãng hơn mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*H1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Chỗ đó, không được đâu...♡ Ưm♡ Đầu óc em, trắng xóa hết cả rồi♡」[p]
Nagi「Ưm♡ Thật tình... em không thể quay lại khoảng thời gian chưa biết đến cảm giác sung sướng này được nữa đâu...♡」[p]
Nagi「Hà♡ Hà♡ Hà♡ Đừng có nhắm tập trung vào, chỗ yếu của em mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_kaiwa1

[tb_start_text mode=1 ]
Nagi「Mặc bộ đồ này ở nhà, cảm giác kỳ lạ thật đấy... Cứ như đang trong giờ làm việc vậy」[p]
Nagi「Sao nào? Anh Shun có ảo giác như em đang làm việc không?」[p]
Nagi「Vâng~, xin anh hãy giữ gìn sức khỏe nhé~... Đùa thôi♡ Hehe, sao nào?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa2

[tb_start_text mode=1 ]
Nagi「Đồ y tá, anh thấy sao? Em cứ nghĩ không biết anh Shun có vui không cơ」[p]
[舜]「Tuyệt vời lắm... anh thấy hưng phấn hơn mọi khi nhiều...」[p]
Nagi「Mặt anh, nghiêm túc quá đấy? Hehe, dâm ghê. Sao đồ y tá lại tuyệt vậy chứ?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kaiwa3

[tb_start_text mode=1 ]
Nagi「Anh Shun, xin anh hãy đợi ở phòng chờ nhé~, bác sĩ sẽ khám cho anh ngay thôi♡」[p]
Nagi「Hehe... Cái này gọi là cosplay khi làm tình đúng không nhỉ? Thấy xấu hổ quá♡」[p]
Nagi「Nhưng mà... hình như em cũng bắt đầu hồi hộp rồi. Cứ nghĩ mình đang làm chuyện xấu là em lại thấy hưng phấn」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_kiss1

[tb_start_text mode=1 ]
Nagi「Chụt, chụt, chụt, ưm...♡ Hà, hà... Môi anh, nóng hơn mọi khi thì phải?」[p]
Nagi「Anh đang hưng phấn sao? Hehe, vì em đang mặc đồ y tá à...? Anh Shun, dâm quá đi...♡」[p]
Nagi「Chụt, chụt, chụt... Hà, phù~... Ưm, chỉ hôn thôi mà cũng có thể sướng đến thế này...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_kiss2

[tb_start_text mode=1 ]
Nagi「Chụt, chụt, chụt... Phù♡ Liếm, liếm, chụt, chụt... Hương vị của anh Shun...」[p]
Nagi「Hà, a, em thích hôn lắm... Không muốn rời môi đâu...♡ Chụt, chụt, chụt, sột soạt」[p]
Nagi「Hà, phù~... Trong miệng, nóng ran hết cả lên rồi... Ướt át quá nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss3

[tb_start_text mode=1 ]
Nagi「Ưm, em thè lưỡi ra là được đúng không? Liếm, liếm, chụt, chụt, chụt, chụt♡」[p]
Nagi「Hà, hà... Lưỡi, quấn lấy nhau... dâm quá đi mất... Chúng ta đang hôn kiểu người lớn này...」[p]
Nagi「Hoàn toàn khác hẳn với nụ hôn trêu đùa hồi nhỏ nhỉ... Chụt, chụt, chụt, sột soạt♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Chụt, chụt, ưm♡ A... Hôn sướng quá... em bay bổng luôn rồi...♡」[p]
Nagi「Em muốn hôn nữa... Quấn lấy lưỡi nhau... em muốn có một nụ hôn thật dâm đãng cơ...♡」[p]
Nagi「Chụt, chụt chụt chụt♡ Ưm♡ A♡ Cứ như chúng ta đang làm tình bằng miệng vậy...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á♡ Ngực em, bị anh nắn bóp hết cả rồi...♡ Bàn tay anh Shun, to quá♡」[p]
Nagi「Ngực em, bị bao trọn mất rồi...♡ Biến nó thành của anh Shun đi...♡」[p]
Nagi「Ưm... phù... sướng quá♡ Em rất thích... bị vò xé thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_munemomi2

[tb_start_text mode=1 ]
Nagi「A...♡ Từ chỗ bị chạm vào... dòng điện chạy dọc khắp cơ thể em...♡」[p]
Nagi「Sướng lắm... Bị anh bóp chặt rồi vò nắn ngực thế này, em thích lắm♡ Thích lắm♡」[p]
Nagi「Anh cứ vò xé mạnh bạo hơn nữa đi♡ Bị làm thô bạo, tim em đập thình thịch luôn...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Nhìn Nagi lúc làm việc, anh đã hưng phấn lắm rồi... Anh đã muốn vò nắn ngực em thế này...!」[p]
Nagi「Ưm♡ Hà, a♡ Không sao đâu, anh Shun cứ làm gì anh thích đi♡」[p]
Nagi「A, a...♡ Tưởng tượng cảnh bị sờ ngực lúc đang làm việc... làm em hưng phấn hơn hẳn♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Hà, a... Vừa xoa bóp vừa lắc lư thế này... sướng quá đi...♡」[p]
Nagi「Chỉ với ngực thôi... mà em đã ướt sũng hết cả rồi...♡」[p]
Nagi「Thật tình... bên dưới cũng tan chảy mất rồi... Hình như em đã sẵn sàng để anh đút vào rồi đấy」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á...♡ Nhũ hoa, yếu lắm...♡ Nhũ hoa và xung quanh căng phồng hết lên rồi này♡」[p]
Nagi「Để anh Shun dễ liếm hơn... nó đã cương cứng lên rồi đấy...」[p]
Nagi「Hãy liếm nhiều hơn nữa đi...♡ Dù không có sữa chảy ra... nhưng em muốn anh nếm thử♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_tikubiname2

[tb_start_text mode=1 ]
Nagi「A...♡ Bị mút chụt chụt thế này, em thích lắm♡ Khác hẳn với tự mình sờ...♡」[p]
[舜]「Em đã tự sờ nhũ hoa để thủ dâm à?」[p]
Nagi「Ưm... đúng, vậy đó♡ Vừa tưởng tượng ra cảnh làm chuyện đồi bại... em vừa tự vê nhũ hoa của mình♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Trong miệng anh Shun, ấm quá... Ưm♡ Cắn nhẹ thế này, sướng lắm♡ Làm thêm nữa...」[p]
[舜]「Em thử nói kiểu y tá xem nào」[p]
Nagi「Hả? Khó quá đi... Đ-Đến giờ bú sữa rồi...♡ Xin hãy bú thật nhiều nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Nhũ hoa, sướng quá♡ Bị liếm láp hay mút mát em đều thích hết♡」[p]
Nagi「Hà~♡ Hà~♡ Hãy mút nhiều hơn nữa đi...♡ Anh cứ tự nhiên làm gì anh thích nhé」[p]
Nagi「Ngực hay cơ thể em, anh muốn làm gì cũng được hết」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_kunni1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm, liếm chỗ đó đâu có ngon lành gì đâu...」[p]
Nagi「Xung quanh cửa mình... bị liếm lướt qua cảm giác kỳ lạ, lắm...」[p]
Nagi「Tất cả, đều bị nếm thử mất rồi... Hương vị của em, đang bị kiểm tra này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni2

[tb_start_text mode=1 ]
Nagi「L-Lưỡi...... nóng hổi và ướt át... làm em trở nên kỳ lạ mất...!」[p]
Nagi「Hà, ưm... Tất cả của em đều bị nếm thử mất rồi...♡ Không ngờ anh Shun lại có cách dùng lưỡi dâm đãng thế này...」[p]
Nagi「Tại bộ đồ y tá này... nên anh mới hưng phấn sao? Mãnh liệt hơn mọi khi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Không... ngậm lấy âm vật rồi mút mát, không được đâu... Thế thì, kích thích mạnh quá♡」[p]
Nagi「Ư...♡ Hông em tự động di chuyển... Không, không dừng lại được♡ Hà, a, đừng mút chặt thế mà♡」[p]
Nagi「Ưm♡ Ưm♡ A...♡ B-Bên trong... vang vọng đến quặn thắt...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Á...♡ A, mút như thế, không được đâu♡ Không được, không được đâu♡ Âm vật, trở nên kỳ lạ mất♡」[p]
Nagi「Ưm♡ Ôi♡ Bị khuấy đảo nhóp nhép hết cả lên rồi... C-Cô bé tan chảy mất thôi♡」[p]
Nagi「A♡ A...♡ Sắp phát điên mất... Hông em, tự động di chuyển luôn rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J1_naderu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A... Cách chạm, dịu dàng quá... Bị vuốt ve bằng đôi tay đó... không được đâu... râm ran hết cả lên...♡」[p]
Nagi「Chỉ đùi thôi thì em sẽ thấy chưa đủ đâu đấy? Em sẽ vòi vĩnh anh đấy nhé...」[p]
[舜]「Anh đang mong chờ được nghe những lời vòi vĩnh dâm đãng của em đây」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_naderu2

[tb_start_text mode=1 ]
Nagi「Ưm... Hà, ưm...♡ Em lỡ phát ra, giọng đáng xấu hổ mất rồi♡ Rõ ràng chỉ là đang vuốt ve thôi mà...」[p]
Nagi「Anh Shun, vuốt ve em thêm đi... Em muốn anh chạm vào em thật nhiều」[p]
Nagi「A♡ Vòi vĩnh thế này đúng là xấu hổ thật đấy... Nhưng mà, em hưng phấn mất rồi」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_naderu3

[tb_start_text mode=1 ]
Nagi「Ưm♡ Hà, a♡ Anh... đã từng tưởng tượng cảnh muốn chạm vào chân em lúc đang làm việc thế này sao?」[p]
[舜]「Có chứ, tưởng tượng rất nhiều là đằng khác...」[p]
Nagi「Vậy là, thành hiện thực rồi nhé...♡ Anh muốn làm gì cô y tá này cũng được hết đấy?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_naderu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ưm♡ Chỗ yếu... bị vuốt ve mất rồi...♡」[p]
Nagi「Mặc bộ đồ này, cảm giác cứ như đang bị sờ soạng thật trong giờ làm việc vậy... Hình như làm em hưng phấn hơn hẳn」[p]
Nagi「Giữa hai chân... nóng hổi, bứt rứt và khó chịu lắm...♡ Chắc chắn bây giờ, nó đang ướt sũng rồi」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J1_asiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A... Kh-Không được đâu anh Shun, liếm lòng bàn chân thì... bẩn lắm...」[p]
Nagi「Ưm♡ Phù♡ Phù...♡ Là y tá... thì không được làm những chuyện mất vệ sinh thế này... A...♡」[p]
Nagi「Th-Thật tình... Nghe em nói đi chứ. Ưm, phù, bị liếm say sưa thế này em...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_asiname2

[tb_start_text mode=1 ]
Nagi「Hà~♡ Hà~... Nhìn anh Shun liếm chân em... làm em ngứa ngáy hết cả lên♡」[p]
Nagi「Ưm♡ Hà, ưm... Sao anh Shun lại biết chỗ yếu của em vậy?」[p]
[舜]「Chắc là do anh quan sát em rất kỹ chăng...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_asiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A, ưm♡ Đầu ngón chân... liếm chỗ đó không được đâu... Ưm, phù♡ Nhạy cảm lắm...」[p]
Nagi「C-Cơ thể em... nóng ran... cứ như bị tê dại đi vậy...」[p]
Nagi「Th... Chân em đổ mồ hôi mất rồi... đừng liếm nữa... Bẩn lắm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru=0"  name="H_nameru"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_asiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm...♡ Không ngờ lòng bàn chân lại nhạy cảm đến thế... Em cứ tưởng bị liếm là lên đỉnh luôn rồi...」[p]
Nagi「Sâu trong bụng, vang vọng... Cảm giác kỳ lạ quá...」[p]
Nagi「Hà, hà... Cảm thấy sướng chỉ bằng chân thế này, đừng nghĩ em là đứa dâm đãng nhé?」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「A♡ A♡ A♡ To hơn... mọi khi rồi... Chạm đến tận sâu bên trong luôn♡」[p]
[舜]「Biết làm sao được, tại Nagi dâm quá mà...」[p]
Nagi「Thật sao? Thấy anh hưng phấn em vui lắm...♡ Hãy... say mê em hơn nữa đi? Em muốn anh nhấp hông thật mạnh」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「Hà, a♡ A...♡ Không chỉ kích thước... mà hình dáng em cũng cảm nhận rõ mồn một...♡」[p]
Nagi「Ưm, sột soạt... Bị khuấy đảo tận bên trong, em cảm nhận được hết...♡ Ưm♡」[p]
Nagi「A, a...♡ Sâu quá... Chạm đến tận cùng bên trong rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「A...♡ Cách anh dùng hông, em thích lắm...♡ Chỗ nông, bị đẩy lên nhóp nhép, sướng lắm...♡」[p]
Nagi「Chậm rãi... chạm đến tận sâu trong cơ thể em♡ Bên trong em, đang bị anh kiểm tra hết rồi...♡」[p]
Nagi「Ưm, phù, hà...♡ Đang đập, thình thịch luôn♡ Anh đang vui sướng... truyền hết sang em rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Hà, a♡ Chạm rồi... chạm đến tận sâu bên trong... rồi♡」[p]
Nagi「Bên trong... dương vật anh đang giật giật kìa♡ Hà, ưm♡ Cứ cọ xát vào chỗ yếu của em mãi thôi♡」[p]
Nagi「Ôi♡ Ưm, phù, phù~♡ Hình dáng của nó, cũng truyền hết sang em luôn♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Anh Shun mà... nhấp hông mãnh liệt thế này... A... Làm em nhận ra anh đúng là một người đàn ông thực thụ♡」[p]
Nagi「Thấy anh hưng phấn vì em, em vui lắm...♡ Cứ trút hết... mọi thứ vào em đi... Tới đi anh♡」[p]
Nagi「Bây giờ em là y tá mà... Em đã sẵn sàng đón nhận toàn bộ dục vọng của anh Shun rồi đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「A♡ A♡ A♡ Nóng dần lên rồi♡ To lên rồi kìa♡」[p]
Nagi「Nóng quá... Lan tỏa khắp cơ thể em... Tất cả, đều đang tê râm ran...♡ A♡ A♡」[p]
Nagi「Mãnh liệt quá... T-Tới tận sâu bên trong rồi♡ Sâu quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「Dần dần, mãnh liệt hơn... Bị rung lắc dữ dội quá♡ Dương vật cũng to lên...」[p]
Nagi「Tận cùng bên trong, đang bị đâm phập phập♡ A♡ Sướng quá, sướng quá đi mất♡」[p]
Nagi「Hà♡ Hà♡ Bị anh Shun đâm xuyên qua rồi♡ Em sắp vỡ vụn ra mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ C-Cảm giác sướng thế này, em chưa từng biết đến♡ A♡」[p]
Nagi「L-Lại to lên nữa rồi♡ A...♡ Cô bé đã chật cứng rồi mà♡」[p]
Nagi「Hơn thế này nữa thì... không vào được đâu♡ A♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_kaiwa1

[tb_start_text mode=1 ]
Nagi「Ưm, mình thử đóng vai y tá và bệnh nhân xem sao nhé? Hehe, tình trạng sức khỏe của anh thế nào rồi ạ~?」[p]
Nagi「Không hiểu sao... có vẻ sẽ có tâm trạng làm tình hơn mọi khi nhỉ. A, hay đóng vai bác sĩ thì tốt hơn?」[p]
Nagi「Vậy tiếp theo... chúng ta thử đóng vai bác sĩ và y tá nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa2

[tb_start_text mode=1 ]
Nagi「Bác sĩ... hình như cơ thể em không được khỏe cho lắm♡ Trước khi khám, bác sĩ kê thuốc cho em được không ạ?」[p]
Nagi「Dưới bụng em cứ quặn lên... Rạo rực mãi không thôi ạ♡」[p]
Nagi「Bác sĩ dùng mũi tiêm của mình để xoa dịu nó cũng được đấy ạ?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Hehe, anh Shun, anh hưng phấn rồi à? Mặt anh nhìn dâm quá đi...」[p]
Nagi「Em cũng vậy thôi... Hình như em hưng phấn quá mất rồi... Ngay bây giờ, hãy đè em ra...」[p]
Nagi「Hãy tiêm cho em một mũi thật to và nóng hổi đi, đùa thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss1

[tb_start_text mode=1 ]
Nagi「Chụt, chụt, chụt, sột soạt♡ Ưm, ưm... Hà, mãnh liệt quá... chụt chụt」[p]
Nagi「Mình lỡ có một nụ hôn dâm đãng đến mức quên cả thở mất rồi...♡」[p]
Nagi「Làm thêm đi...? Em muốn có một nụ hôn như thể bị anh Shun ăn tươi nuốt sống vậy...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J1_2_Dkiss2

[tb_start_text mode=1 ]
Nagi「Sột soạt, chụt, chụt, ưm, phù♡ Lưỡi, quấn lấy nhau... Ưm, chụt chụt」[p]
Nagi「Hà, hà, em cũng... có thể hôn dâm đãng lắm rồi đấy nhé?」[p]
Nagi「Vì muốn làm anh Shun vui sướng... nên em đã nghĩ ra rất nhiều cách hôn đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss3

[tb_start_text mode=1 ]
Nagi「Chụt, chụt, chụt, sột soạt, chụt, chụt♡ Hà, a... Thích hôn quá♡」[p]
Nagi「Chỉ hôn thôi mà... cơ thể em đã bắt đầu chuẩn bị rồi...♡ Chuẩn bị hòa làm một với anh Shun...」[p]
Nagi「Cứ tiếp tục mong đợi thế này được không? Em đang rạo rực muốn được anh chạm vào... muốn được anh đút vào đây này」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Chụt, chụt, chụt, chụt, ưm!! Phù, phù, phù...♡」[p]
Nagi「V-Vừa rồi là gì vậy... Cứ như có dòng điện chạy qua người em vậy... Em giật bắn mình luôn...♡」[p]
Nagi「Em biết thế nào là nụ hôn sung sướng rồi... Chắc không thể quay lại những nụ hôn trẻ con được nữa đâu...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_paizuri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Em sẽ kẹp vào ngực... rồi sục cho anh... Em thích phục vụ anh lắm...♡」[p]
Nagi「Kẹp thật chặt... rồi sục sục, sục sục...♡ Ưm, dương vật anh đang giật giật kìa♡」[p]
Nagi「Anh thấy sướng em vui lắm... Cảm nhận nhiều hơn nữa đi? Em sẽ sục cả phần eo cho anh nữa」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_paizuri2

[tb_start_text mode=1 ]
Nagi「Hà, hà... Khuôn mặt mất bình tĩnh của anh Shun, đáng yêu quá...♡ Dương vật cũng to lên rồi...♡」[p]
Nagi「Bị em sục, anh đang cảm thấy sướng đúng không...♡ Làm anh Shun vui sướng em hạnh phúc lắm♡」[p]
Nagi「A, từ phần đầu... nước nhờn rỉ ra rồi kìa♡ Giữa hai bầu ngực ướt sũng rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri+=1"  name="H_paizuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_paizuri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ư... Ưm! Sướng quá...」[p]
Nagi「Hà, a♡ Vừa rồi, nó nảy lên dữ dội lắm đấy...♡ Bắn ra cũng được mà?」[p]
Nagi「Hãy bắn tinh trùng của anh Shun lên ngực em đi? Làm nó ướt nhẹp đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_paizuri=0"  name="H_paizuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_paizuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Em... vừa dùng ngực sục dương vật cho anh... vừa tự sướng luôn mất rồi♡」[p]
Nagi「Cô bé, đang quặn thắt lại...♡ Hà, ưm, nó đang phản ứng với mùi đàn ông của anh Shun đấy♡」[p]
Nagi「Chỉ nghĩ đến việc sắp bị cưỡng hiếp mãnh liệt thế này... là em đã rùng mình rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_fera1

[tb_start_text mode=1 ]
Nagi「Hà, chụt, chụt chụt chụt♡ Sướng không? Tuyệt quá, to thế này không ngậm vừa miệng em đâu...」[p]
Nagi「Đáng yêu quá, nó đang giật giật này... Cảm nhận được anh đang sướng em vui lắm♡ Hà, nóng hổi rồi này」[p]
Nagi「Làm em muốn mút cho anh nhiều hơn nữa... Liếm, chụt, chụt, chụt♡ Chụt chụt chụt♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_fera2

[tb_start_text mode=1 ]
Nagi「Từ phần đầu... chất lỏng trong suốt rỉ ra rồi... Đây là nước nhờn sao? Cho em... liếm cả cái này nữa nhé♡」[p]
Nagi「Liếm♡ Liếm liếm liếm♡ Hà, a... Có hương vị của anh Shun♡ Em muốn liếm nữa...♡」[p]
Nagi「Chụt, sột soạt♡ Ưm, phù, phù~...♡ Ưm, nó nảy lên giật giật rồi kìa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera+=1"  name="H_fera"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_fera3

[tb_start_text mode=1 ]
Nagi「Chụt, chụt chụt chụt♡ Miệng em, lấp đầy mất rồi...♡ Phù, hà, không thở được♡」[p]
Nagi「Ngon quá... Em thích ngậm dương vật của anh Shun rồi mút mát lắm...♡ Ngon tuyệt vời luôn♡」[p]
Nagi「Bằng dương vật này... em muốn anh khuấy đảo bên trong em...♡ Chụt, chụt chụt, chụt♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_fera=0"  name="H_fera"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J1_2_fera_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Chụt, chụt... Chỉ mút thôi mà em sắp lên đỉnh mất rồi...♡」[p]
Nagi「Phù~♡ Tại vì tưởng tượng cảnh dương vật vạm vỡ thế này... tiến vào trong... Ưm♡」[p]
Nagi「Chụt chụt chụt chụt♡ Ưm, cơ thể em rạo rực hết cả lên rồi...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hả, không chịu đâu... Đừng liếm chỗ đó mà... A! Lưỡi anh, tiến vào rồi... A...♡」[p]
Nagi「Kh-Không được, không được đâu! Đừng có đưa lưỡi ra vào mà...!」[p]
Nagi「Bị liếm đến tận... bên trong luôn sao? Toàn bộ cơ thể em, bị anh kiểm tra hết mất rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_tituname2

[tb_start_text mode=1 ]
Nagi「Ưm♡ Hà♡ Hà♡ Tuyệt quá... T-Tới tận sâu bên trong ướt nhẹp luôn rồi...♡」[p]
[舜]「A~... Bên trong nóng hổi và ướt sũng...」[p]
Nagi「Ư...♡ T-Tại vì... anh Shun liếm láp tận sâu bên trong mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru+=1"  name="H_nameru"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_tituname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ A♡ A♡ Bị đưa ra đưa vào mất rồi♡ Cảm giác này em chưa từng biết đến...♡」[p]
Nagi「Dùng lưỡi nhấp, tuyệt quá... Cứ như đang làm tình với miệng của anh Shun vậy...」[p]
Nagi「Hà, ưm... Bên trong, giật giật liên hồi rồi này...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_nameru=0"  name="H_nameru"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low4==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high4==1"  ]
[return  ]
*J1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Hà... hà... hà... Hông em tự động nảy lên mất rồi...」[p]
Nagi「Ư...♡ Sướng quá... hông em né đi mất rồi... Tại anh chạm đúng vào chỗ sướng mà...」[p]
Nagi「Giật giật mãi không thôi...♡ Bên trong, cứ rạo rực suốt thôi」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ngón tay, chạm đến tận bên trong rồi... Em sắp bị anh Shun khuấy đảo nhóp nhép sao?」[p]
Nagi「Phù~... Trước khi tiêm thì phải làm cho quen đã nhỉ?」[p]
Nagi「Chỗ này... hãy làm cho nó mềm nhũn ra đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_teman2

[tb_start_text mode=1 ]
Nagi「A♡ A♡ Kh-Không được... Chỗ anh đang ấn vào... em yếu lắm...♡」[p]
Nagi「A...♡ Bị khuấy đảo từ từ mất rồi...♡ Đừng tìm chỗ yếu của em mà...」[p]
Nagi「Nếu sướng hơn nữa... em sợ không biết mình sẽ ra sao mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「B-Bên trong♡ Chỗ đó, không được đâu...♡ Bị đẩy lên thế này... không được, không được đâu...♡」[p]
Nagi「Sắp phát điên mất... Cơ thể em, không nghe lời nữa rồi♡」[p]
Nagi「A♡ Ôi♡ Ôi♡ Thật sự♡ Không được đâu mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J1_2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Ôi♡ Ngón tay anh Shun... chạm vào... Ôi...♡ Chỗ đó♡ Kỳ lạ quá♡」[p]
Nagi「Ngón tay to và cứng...... chạm đến tận bên trong... cọ xát mất rồi...♡ A...♡」[p]
Nagi「Ưm...♡ Chỗ ban nãy... kỳ lạ quá...♡ Sướng lắm♡ Em lỡ phát ra, giọng kỳ lạ mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_matazuri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Cái này... có khi còn xấu hổ hơn cả đút vào nữa...♡ Ưm, a...♡ Chỗ yếu, bị cọ xát rồi♡」[p]
Nagi「Ưm...♡ Bị đè xuống, rồi làm cho ướt sũng... Cứ như đang bị bệnh nhân cưỡng hiếp vậy♡」[p]
Nagi「Dám cọ xát dương vật vào y tá thế này... Đúng là một bệnh nhân hư hỏng, nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_matazuri+=1"  name="H_matazuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_matazuri2

[tb_start_text mode=1 ]
Nagi「Hà~♡ Dương vật anh đã đến giới hạn đến mức phải đè y tá ra cọ xát rồi sao?」[p]
Nagi「Ưm, phù♡ A♡ Được thôi ạ♡ Hãy cọ xát thật nhiều... cho sảng khoái nhé♡」[p]
Nagi「Chăm sóc dương vật cũng là một công việc quan trọng mà♡ Xin hãy tận hưởng cảm giác sung sướng đi ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_matazuri+=1"  name="H_matazuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_matazuri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... A♡ A...♡ Á... Cọ xát... vào khe hở...♡ A♡ A...♡」[p]
Nagi「Phù~♡ Phù~♡ Rõ ràng em định chăm sóc cho anh... thế mà em lại là người sướng hơn mất rồi♡」[p]
Nagi「A...♡ Đừng có nhắm tập trung vào âm vật của em mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_matazuri=0"  name="H_matazuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low6==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high6==1"  ]
[return  ]
*J1_2_matazuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ưm♡ Dương vật và âm vật, cọ xát vào nhau... sướng quá đi mất♡」[p]
Nagi「Hà♡ Hà♡ Hà♡ Cô bé... sướng quá♡ Đang bị cọ xát liên tục này♡」[p]
Nagi「Em không chịu nổi nữa... sắp lên đỉnh mất...♡ A♡ Hai phần đầu, đang chạm vào nhau...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「Tuyệt quá, bên trong thắt chặt lắm luôn...」[p]
Nagi「Tại vì♡ Dương vật của anh Shun sướng lắm mà... Cả khoảnh khắc trơn tuột tiến vào nữa♡」[p]
Nagi「A...♡ Cả lúc trơn trượt rút ra nữa♡ Tất cả, đều sướng lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「A..., bên trong Nagi, sướng quá...♡」[p]
Nagi「Hà, a♡ A, thấy anh vui sướng em hạnh phúc lắm♡ Anh cứ làm thêm đi, anh Shun cứ làm gì anh thích nhé♡」[p]
Nagi「Cứ biến em... thành món đồ chơi để làm dương vật anh sung sướng cũng được mà♡ Nhấp hông đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「A... Hãy cho em vào sâu hơn nữa đi...♡ Cô bé đang cô đơn lắm...♡ Hãy dùng dương vật hôn lên cửa tử cung của em đi♡」[p]
Nagi「A...♡ Chạm rồi... Đang bị dương vật đè bẹp mất rồi♡」[p]
Nagi「Bên trong em... ngập tràn anh Shun... trở nên nhóp nhép hết cả rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ư...♡ A♡ Bên trong, phập phập... chạm vào rồi♡ A...♡」[p]
Nagi「T-Tới tận sâu bên trong rồi... Hà, a...♡ Dương vật anh, làm em nghiện mất thôi♡ Sướng quá♡」[p]
Nagi「Ôi♡ Ôi ôi ôi♡ To quá♡ Cô bé, sắp hỏng mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「A♡ A♡ Mãnh liệt quá...♡ Sắp hỏng mất...♡ Anh Shun, anh nghiêm túc rồi sao?」[p]
Nagi「Khuôn mặt... nhìn dâm quá đi... Khuôn mặt của một người đàn ông thực thụ đây mà♡ Hà, em thích, khuôn mặt đó lắm♡」[p]
Nagi「Không sao đâu... hãy thèm khát em hơn nữa đi... Em muốn bị anh Shun làm cho tơi tả cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「Ư...♡ A♡ A♡ Bị đẩy lên mãnh liệt thế này, em thích lắm♡ Bị đâm phập phập đến tận sâu bên trong♡」[p]
Nagi「A...♡ Không thể trốn thoát khỏi cảm giác sung sướng này được♡ Chẳng có lúc nào để nghỉ ngơi cả♡」[p]
Nagi「Thích quá♡ Thích quá♡ Thích lắm♡ Bị đâm phập phập vào cô bé thế này, em thích lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「Hà, a, a...♡ Tới nữa đi anh♡ Đẩy lên tận sâu bên trong đi♡」[p]
Nagi「Đến mức đè bẹp cả tử cung luôn cũng được♡ Em muốn anh đút dương vật ngập tận sâu bên trong cơ♡」[p]
Nagi「A♡ A...♡ Sướng quá♡ Em yêu anh lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Cô bé... sướng quá♡ Cửa tử cung, đang bị hôn này...♡」[p]
Nagi「Ôi ôi ôi♡ Hông em tự động di chuyển, theo nhịp điệu của anh mất rồi... nhấp nhô liên tục♡」[p]
Nagi「Sướng quá... em không dừng lại được nữa... A..., xin lỗi vì em dâm đãng quá」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_kaiwa1

[tb_start_text mode=1 ]
Nagi「Ướt sũng hết cả rồi nhỉ... Phải cẩn thận kẻo trượt ngã mất」[p]
Nagi「Không biết chúng ta có thể chơi trò gì thú vị với cái này đây, mong chờ quá...♡」[p]
[舜]「Trò chơi vô cùng sung sướng mà trẻ con không thể chơi được đâu... Em biết thừa rồi còn gì」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Cơ thể em, bóng loáng nhờ dầu bôi trơn nhìn dâm quá đi」[p]
Nagi「Thật tình, đã bảo là xấu hổ lắm mà. Đừng có nhìn chằm chằm thế...」[p]
Nagi「Cơ thể anh Shun cũng ướt sũng rồi còn gì? Cả hai chúng ta đều trơn tuột nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Cảm giác, cứ như thoa đầy sữa tắm vậy...」[p]
Nagi「Hồi nhỏ, em từng nghĩ ước gì được tắm rồi làm người trơn tuột để chơi đùa nhỉ」[p]
Nagi「Hehe, không ngờ ước mơ lại thành hiện thực ở nơi thế này. Kỳ diệu thật đấy」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_kiss1

[tb_start_text mode=1 ]
Nagi「Chụt, ưm, phù... Hehe, nụ hôn vẫn như mọi khi nhỉ?」[p]
[舜]「Đến cả môi cũng trơn tuột thì rắc rối lắm」[p]
Nagi「Hehe, cũng đúng ha...♡ Chụt, chụt chụt... Ưm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_kiss2

[tb_start_text mode=1 ]
Nagi「Ưm... chụt chụt, chụt chụt... Ưm, cơ thể chạm vào nhau trơn tuột...」[p]
Nagi「Chỉ chạm vào nhau thôi... cũng sướng rồi♡ Cảm giác này lần đầu em mới biết...♡」[p]
Nagi「Chụt, chụt, ưm... Anh Shun cũng đang cảm thấy sướng đúng không♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss3

[tb_start_text mode=1 ]
Nagi「Chụt, chụt... Ưm♡ Chỉ hôn thôi mà... khuôn mặt anh Shun nhìn dâm quá đi♡」[p]
[舜]「Nagi cũng vậy mà...」[p]
Nagi「Hả, c-cả em cũng thế sao...? Tại vì... cảm giác trơn tuột này... làm em thấy kỳ lạ quá...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Phù, phù... Môi... hình như trở nên cực kỳ nhạy cảm rồi...♡」[p]
Nagi「Chỉ chạm vào thôi... mà em đã giật bắn mình rồi...♡ Phù... Ưm, chụt, chụt chụt♡」[p]
Nagi「Ưm... Đầu óc em... mơ màng hết cả rồi... Ưm♡ Chụt chụt chụt♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sirikoki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Có thứ gì đó cứng cứng, chạm vào mông em này...♡ Ưm... Anh Shun, anh đang hưng phấn lắm sao?」[p]
Nagi「Tại vì... Ưm, nó đang cọ xát... nóng hổi luôn này♡」[p]
Nagi「Hà, hà... Ưm, ưm... Dương vật của anh Shun, đang giật giật kìa...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirikoki2

[tb_start_text mode=1 ]
Nagi「Ưm... Hà, hà, vì trơn tuột, sao...? Cọ xát... nhiều hơn bình thường rồi♡」[p]
Nagi「Anh Shun... hơi thở, gấp gáp rồi kìa♡ Ưm♡ Ưm♡ Hà, a...♡」[p]
Nagi「A... Em cũng... thấy sâu trong bụng, bắt đầu rạo rực rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirikoki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Phù... Ưm, ư... Đến cả mông cũng ướt sũng rồi này...♡」[p]
Nagi「Cái này... là dầu bôi trơn sao? Nóng hổi luôn này♡ Của anh Shun, rỉ ra à?」[p]
Nagi「Dầu bôi trơn và chất lỏng dâm đãng của anh Shun, hòa quyện vào nhau mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki=0"  name="H_sirikoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_sirikoki_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ư...♡ A♡ Chỗ đó, em yếu lắm mà...♡ Hà, hà, ưm♡」[p]
Nagi「Không chỉ anh Shun... mà cả em cũng thấy sướng lên rồi...♡」[p]
Nagi「Ưm♡ Trơn tuột... Hà, hà...♡ Bị cọ xát thế này, hình như em thích lắm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Phù... A♡ Trơn quá nên không sờ ngực được nhỉ?」[p]
Nagi「Hà, a, hà, ưm♡ Hehe, trượt khỏi tay anh Shun mất thôi?」[p]
Nagi「Anh thử bắt lấy xem nào? Nhìn này... nó đang nảy lên rung rinh kìa...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi2

[tb_start_text mode=1 ]
Nagi「A... Ưm...♡ Ư... Tại dầu bôi trơn... nên hình như nó nhạy cảm hơn mọi khi...♡」[p]
[舜]「Tay anh, trơn quá... A~ cảm giác sờ vào dâm thật...」[p]
Nagi「Ưm♡ A... A...♡ Chạm vào như vuốt ve thế này, em thích lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ưm... Tay anh bị trượt sao? Ưm, phù, cọ xát rồi...♡」[p]
[舜]「Nagi, khuôn mặt em nhìn dâm quá đi」[p]
Nagi「Kh-Không chịu đâu... Xấu hổ lắm... Ưm, tại vì sướng quá mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Á♡ A♡ A♡ C-Cái đó... ngực em, sướng lắm...♡」[p]
Nagi「Ưm♡ Trơn tuột... Chạm trúng, chỗ nhạy cảm mất rồi♡」[p]
Nagi「Không chịu đâu, đừng dừng lại mà♡ Ưm, em muốn... anh chạm vào nhiều hơn nữa...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hà, hà... A... Kh-Không được cứ vuốt ve mỗi mông thế đâu」[p]
Nagi「Anh Shun, cứ vuốt ve mỗi mông em anh thấy vui lắm sao...?」[p]
Nagi「A... Dương vật của anh Shun, to lên rồi kìa... Anh đang tận hưởng lắm nhỉ?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sirinade2

[tb_start_text mode=1 ]
Nagi「Á, ưm... Dầu bôi trơn... chảy vào tận khe mông luôn rồi...♡」[p]
Nagi「Không được...! Đột nhiên sờ vào khe mông thế này, không chịu đâu♡」[p]
Nagi「A... Ưm... B-Banh mông ra thế này... thì nhìn thấy tận bên trong mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Vuốt ve... như thể đang kiểm tra hình dáng thế này... xấu hổ lắm♡」[p]
Nagi「Cả độ mềm mại lẫn hình dáng... đều bị anh kiểm tra hết rồi sao...?」[p]
Nagi「Ưm... trơn tuột... Bị bàn tay anh Shun chạm vào, em thích lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ A... Dù không hiểu sao, nhưng chỗ đó sướng lắm♡」[p]
Nagi「Hà, hà... Hông em, tự động nảy lên mất rồi...♡」[p]
Nagi「Hehe, hồi nhỏ thì đâu có thế này đâu nhỉ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_hutomomo1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hà, hà, a... Đến cả đùi cũng ướt sũng hết rồi...」[p]
[舜]「Giữa hai chân cũng đẫm dầu bôi trơn rồi... Dâm quá đi...」[p]
Nagi「A... A...♡ Là do anh Shun thoa khắp người em đấy chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_hutomomo2

[tb_start_text mode=1 ]
Nagi「Ưm... Hà, hà...♡ Anh có nghĩ chân em to không? Xấu hổ quá đi」[p]
[舜]「Làm gì có chuyện đó... Thon thả và mềm mại lắm... Cảm giác sờ vào tuyệt vời luôn」[p]
Nagi「Rõ ràng là xấu hổ lắm... nhưng được anh khen... hình như em thấy rất vui...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu+=1"  name="H_naderu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_hutomomo3

[tb_start_text mode=1 ]
Nagi「A...♡ Hà, a, chỗ đó, là gốc đùi mà... Cứ vuốt ve mỗi chỗ đó là không được đâu...♡」[p]
[舜]「Sự trơn tuột này không phải là dầu bôi trơn, mà là dâm thủy của Nagi đúng không?」[p]
Nagi「Không, không phải đâu... Dù có ướt đến mấy thì cũng không chảy xuống tận đùi thế này được đâu」[p]
[_tb_end_text]

[tb_eval  exp="f.H_naderu=0"  name="H_naderu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_hutomomo_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ư...♡ Tại sao, chỉ là chân thôi mà...♡ Lại sướng đến thế này chứ♡」[p]
Nagi「Hà... hà... Ngứa ngáy hết cả lên rồi」[p]
Nagi「Không chỉ chân... mà hình như em muốn anh chạm vào những chỗ nhạy cảm hơn nữa...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ưm... Ngón tay anh Shun... cứ đưa ra đưa vào...」[p]
Nagi「Đến tận bên trong cơ thể... cũng bị vuốt ve...♡ Hà, a, ưm♡」[p]
Nagi「Làm cho nhóp nhép như thế... Cảm giác sung sướng sẽ trào dâng mất, thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_teman2

[tb_start_text mode=1 ]
[舜]「Nhóp nhép hết rồi... Cho bao nhiêu ngón tay vào cũng được luôn」[p]
Nagi「A... A...♡ Không được, không được đâu♡ Đừng làm, mãnh liệt thế mà♡」[p]
Nagi「Ưm, ư...♡ Tr-Trơn tuột nên vào tận sâu bên trong luôn rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Kh-Không được... Cứ tiếp tục sướng thế này mãi... em sẽ phát điên mất thôi♡」[p]
Nagi「A♡ A♡ A♡ Chỗ sâu... chạm trúng rồi♡ Chỗ đó, không được, không được đâu♡」[p]
Nagi「Ư...♡ A, đừng có làm tiếng chụt chụt thế mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Chỗ đó...♡ Em yếu lắm, mà♡」[p]
[舜]「Anh chẳng hiểu sao nó lại ướt sũng thế này nữa...」[p]
Nagi「X-Xấu hổ quá... Không chịu đâu, đừng nói nữa mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「Ưm, ư... Phù, trơn trượt hơn mọi khi thì phải?」[p]
Nagi「Hà, a... Hà♡ Trơn tuột... cọ xát dữ dội quá...♡」[p]
Nagi「Chỗ yếu... cũng bị chạm trúng nhiều hơn mọi khi... Ưm! Sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「A♡ A♡ T-Tới tận sâu bên trong... rồi... Ưm♡ Cảm giác như có thể chạm đến bất cứ đâu vậy♡」[p]
[舜]「Ư... Ưm, trơn quá đi... Hà, a... Phần đầu, đang chạm đến tận cùng bên trong rồi...」[p]
Nagi「A...♡ Phù... Ưm... Chỗ đó... sướng lắm... E-Em muốn nhiều hơn nữa...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「Phù, ưm... Hà, hà... Vận động nhiều quá... đói bụng mất rồi nhỉ... Ưm♡」[p]
Nagi「Cơm cũng... nấu xong rồi...♡ Tắm xong mình cùng ăn cơm nhé...♡」[p]
Nagi「Ưm♡ Phù, phù... V-Vẫn chưa... chơi đủ, đúng không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A... A...♡ Ưm♡ Ch-Chỗ sâu... bị cọ xát... Ưm♡」[p]
Nagi「A... Ư... Không cử động được nữa rồi...♡ Sướng quá đi mất...♡」[p]
Nagi「Em... chẳng hiểu gì nữa... Không biết gì nữa đâu...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「A...♡ Hà...♡ A, bị rung lắc dữ dội quá♡」[p]
Nagi「Hà, ưm... Dương vật của anh Shun... chạm đến tận sâu bên trong rồi♡」[p]
Nagi「Ướt sũng hơn mọi khi... nóng hổi luôn rồi...♡ Sâu trong bụng, cũng nóng ran này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Trò chơi này, em thích chứ?」[p]
Nagi「Ưm♡ A... Thích lắm... Tại sướng quá mà... Hà, hà... Em không thể dừng lại được nữa đâu♡」[p]
Nagi「Lần sau mình lại chơi trò này nữa nhé...? Em muốn... được sướng thế này nữa cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「A~...♡ Bị khuấy đảo nhóp nhép hết cả lên rồi...♡」[p]
Nagi「Dương vật của anh Shun, to hơn mọi khi rồi này♡ Chạm đến tận sâu bên trong luôn♡」[p]
Nagi「Hà, hà... Rõ ràng chỉ là chơi đùa thôi mà... anh lại nghiêm túc mất rồi nhỉ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Ư... Ưm♡ B-Bên trong... đâm phập một cái... chạm trúng rồi♡」[p]
Nagi「Sướng quá... Toàn thân em, nhạy cảm hết cả lên rồi...♡」[p]
Nagi「A, làm sao đây... em sắp lên đỉnh mất thôi...♡ Sắp phát điên, mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_kaiwa1

[tb_start_text mode=1 ]
Nagi「Hồi nhỏ, em cũng từng tắm chung với anh Shun rồi nhỉ♡」[p]
Nagi「Lúc đó, mình cũng từng chơi đùa với sữa tắm đúng không♡ Vui lắm nhỉ♡」[p]
Nagi「Lớn lên rồi lại được chơi đùa bằng thứ trơn tuột khác thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa2

[tb_start_text mode=1 ]
Nagi「Anh Shun, anh định chơi trò gì với chai dầu bôi trơn này vậy?」[p]
Nagi「Phù... Phù...♡ Nếu là em... em sẽ cọ xát cơ thể vào nhau... Cứ để nguyên trơn tuột thế này mà cọ xát vào những chỗ nhạy cảm──」[p]
Nagi「Chắc là sẽ lên đỉnh hết lần này đến lần khác luôn đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Ưm... Chỉ chạm vào thôi, mà đã thấy sướng rồi này♡ Mình sẽ chơi trò gì đây?」[p]
Nagi「Chỉ tưởng tượng thôi... mà em đã rùng mình rồi. Dương vật của anh Shun cũng to lên lắm rồi này♡」[p]
Nagi「Mình cùng chơi thật nhiều nhé... Cùng nhau sung sướng nào♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J2_2_Dkiss1

[tb_start_text mode=1 ]
Nagi「Chụt, chụt chụt, chụt♡ Ưm... Anh Shun, mãnh liệt quá... chụt, chụt chụt♡」[p]
Nagi「Ưm♡ Hà, a, nụ hôn quấn lấy lưỡi nhau, em thích lắm♡ Chụt♡ Chụt, sột soạt♡」[p]
Nagi「Chụt chụt, chụt chụt♡ Ưm♡ Em không thở được mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J2_2_Dkiss2

[tb_start_text mode=1 ]
Nagi「Phù, hà, hà♡ Lưỡi của anh Shun, tiến vào tận sâu bên trong... Ưm, chụt, sột soạt♡」[p]
Nagi「Ưm... Cả cơ thể lẫn trong miệng, đều ướt sũng hết rồi...♡ Ưm, sướng quá đi♡」[p]
Nagi「Chụt, chụt, chụt chụt♡ Nụ hôn thế này, em chưa từng biết đến...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss3

[tb_start_text mode=1 ]
Nagi「Chụt chụt, chụt chụt, sột soạt...♡ Chỉ hôn thôi mà... em đã thấy sướng thế này rồi♡」[p]
Nagi「Ưm, phù... chụt, chụt, ưm... Trong miệng, nhóp nhép ướt át quá...♡」[p]
Nagi「Ưm♡ Phù... Lưỡi cũng, trơn tuột luôn này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_Dkiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm, ưm♡ Chụt chụt, chụt chụt, ưm♡」[p]
[舜]「Cơ thể em giật giật dữ dội quá... Nagi, em đang hưng phấn à...?」[p]
Nagi「Tại vì... sướng quá mà...♡ Em chẳng thể nghĩ được gì khác nữa đâu...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sirikoki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ A♡ Ưm, cái này, em thích lắm♡ Anh Shun... dương vật anh cứng ngắc rồi kìa♡」[p]
Nagi「Anh thích bị cọ xát bằng mông nhỉ...♡ Khuôn mặt anh, trông có vẻ sướng lắm...♡」[p]
Nagi「Em cũng sướng lắm...♡ Hông tự động di chuyển mất rồi♡ Sướng quá... A~ trò này, em thích lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirikoki2

[tb_start_text mode=1 ]
Nagi「Anh Shun, hông anh nhấp nhô liên tục rồi kìa♡ Nhìn này... mỗi lần dương vật cọ xát lại giật giật♡」[p]
Nagi「A, đáng yêu quá...♡ Được thôi, anh cứ nhấp hông thật nhiều vào♡ Ưm♡ Cọ xát vào mông em đi♡」[p]
Nagi「Hà, hà♡ Rõ ràng bảo là chơi đùa... thế mà hơi thở anh gấp gáp thế này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirikoki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Anh nảy hông lên sao? Cọ xát mạnh thế này♡ Đã bảo là không được mà♡」[p]
Nagi「Hà, a, a♡ Với đà trơn tuột này thì nó sẽ tiến vào trong mất...♡ Ưm, a...♡」[p]
Nagi「B-Bây giờ... mà đút vào trong... em sẽ lên đỉnh ngay lập tức mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_sirikoki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ư...♡ A, ưm♡ B-Bên trong chưa đút vào mà♡ Đã thấy sướng thế này rồi♡」[p]
Nagi「A... Mỗi lần cọ xát vào mông... em lại giật bắn mình run rẩy...♡」[p]
Nagi「Hà... hà♡ Em cũng vậy♡ Dâm thủy, trào ra ướt sũng hết rồi này♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á♡ A♡ Ngực em bị anh bóp chặt mất rồi♡」[p]
Nagi「Rõ ràng trơn tuột thế này, mà anh có vẻ quyết tâm không để em thoát nhỉ♡ Ưm♡ A♡ Bị vò nắn hết cả rồi♡」[p]
Nagi「A♡ A♡ Ngực em, tràn ra khỏi bàn tay anh Shun mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_munemomi2

[tb_start_text mode=1 ]
Nagi「Ưm♡ A... Anh thích ngực trơn tuột thế này sao...? Anh đang say sưa vò nắn lắm đấy♡」[p]
Nagi「Hehe, rõ ràng anh bảo đây là trò chơi mà trẻ con không thể chơi được... thế mà anh lại giống như một em bé vậy♡」[p]
Nagi「Hà...♡ A... Nhưng mà, trò chơi dâm đãng thế này thì trẻ con hay em bé cũng không thể chơi được nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A~, ngực em trượt khỏi tay anh mất rồi... Nhìn này, trơn tuột luôn...」[p]
Nagi「A♡ A♡ Anh Shun, chắc chắn là anh cố tình làm vậy, đúng không...♡ Ưm♡」[p]
Nagi「Bị anh dùng hết sức vò nắn thế này... ngực em ướt sũng hết cả lên rồi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Á...♡ A... Cái đó, em thích lắm♡ Ưm♡ Chỉ là sờ ngực thôi, mà sao lại sướng thế này♡」[p]
Nagi「Sâu trong bụng quặn thắt lại... làm em muốn anh đút vào mất thôi...」[p]
Nagi「Rõ ràng không bị chạm vào... mà chỗ đó cũng ướt sũng luôn rồi♡ Trào ra hết rồi này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J2_2_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hà~♡ Hà~♡ A♡ Anh Shun, cách chạm của anh dâm quá đi...♡」[p]
Nagi「Dương vật cũng to lên rồi nhỉ...♡ Thấy anh hưng phấn vì em, em vui lắm♡」[p]
Nagi「Hãy sờ mông em nhiều hơn nữa đi...♡ Nếu hưng phấn nhiều rồi... anh sẽ đút vào tận sâu bên trong cho em đúng không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sirinade2

[tb_start_text mode=1 ]
[舜]「Nagi, mông em đang tự động di chuyển kìa? Nhấp nhô liên tục, nhìn dâm quá đi...」[p]
Nagi「Hà♡ Bị vuốt ve mông trơn tuột thế này... sướng quá đi...♡」[p]
Nagi「Nó tự động di chuyển đấy... Em thích bị bàn tay to lớn của anh Shun bóp chặt lấy mông thế này lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Hà, a, chỉ vuốt ve thôi thì không đủ đâu... Em muốn anh vò xé nhiều hơn nữa cơ♡」[p]
[舜]「Nagi, em ngày càng dâm đãng hơn rồi đấy?」[p]
Nagi「Là do anh Shun làm em trở nên dâm đãng đấy chứ♡ Hãy chạm vào em nhiều hơn nữa đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Hà♡ A...♡ Giật giật... cứ như có dòng điện chạy qua vậy...♡」[p]
Nagi「Kỳ lạ quá... rõ ràng chỗ bị chạm vào là mông... thế mà bên trong... lại quặn thắt rạo rực♡」[p]
Nagi「Cứ như nó đang ra hiệu muốn anh chạm vào sâu hơn nữa vậy♡ Nó đang vòi vĩnh anh đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ư...♡ A♡ Cọ xát nhũ hoa thế này♡ Đã bảo là không được mà♡」[p]
Nagi「A♡ A♡ A... Trơn tuột cọ xát vào nhau rồi...♡ Hà, chỗ đó, em nhạy cảm lắm mà♡」[p]
Nagi「Phù... Phù... Ưm, làm sao đây, em nghiện cảm giác này mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_tikubiijiri2

[tb_start_text mode=1 ]
Nagi「A...♡ Ưm, ư...♡ Cứ trêu chọc mỗi nhũ hoa thế này là không được đâu♡」[p]
[舜]「Đến cả quầng vú cũng căng phồng lên rồi này」[p]
Nagi「Ưm♡ Hà, hà... Tại sướng quá... nên nó tự phản ứng vì muốn anh chạm vào nhiều hơn đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_tikubiijiri3

[tb_start_text mode=1 ]
Nagi「A...♡ Hà, a... Cảm giác trơn tuột này... em thích lắm...♡」[p]
Nagi「Ư... A...♡ Gãi nhẹ nhũ hoa em cũng thích nữa...♡ A...♡」[p]
Nagi「Ưm♡ Hà, a... Không chịu đâu, em chẳng thể nghĩ được gì khác ngoài cảm giác sung sướng này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Tuyệt quá♡ Chỉ với nhũ hoa thôi, mà em sắp lên đỉnh mất rồi...♡」[p]
Nagi「Cảm giác sướng thế này em chưa từng biết đến...♡ Từ sâu trong bụng... cảm giác nóng ran trào dâng lên♡」[p]
Nagi「Ưm...♡ Em cứ muốn... nhiều hơn, nhiều hơn nữa cơ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ư...♡ A...♡ B-Bên trong... chỗ đó, không được, có thứ gì đó sắp ra rồi... Ra mất, ra mất thôi♡」[p]
[舜]「Bắn mạnh thật đấy. Phun nước dâm quá đi...」[p]
Nagi「A... A...♡ Không dừng lại được... Ưm, ra nhiều quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Trơn tuột thế này, tuyệt quá...♡ A, lại ra nữa rồi... Không được, không được đâu♡」[p]
Nagi「Á...♡ Ưm♡ Hà...♡ Không, đừng có nhìn mà...♡」[p]
Nagi「Thế này, cứ như tè dầm vậy... Xấu hổ lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm, ư...♡ Không dừng lại được... phun nước mất thôi... A, a...♡」[p]
[舜]「Tuyệt quá... Với đà này thì dầu bôi trơn chảy đi hết mất」[p]
Nagi「Không, chịu đâu... Sắp phát điên, mất rồi♡ Em không biết gì nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Á...♡ A, hà, ưm♡ N-Nước chảy ra hết làm em khô khốc luôn rồi♡」[p]
Nagi「Rõ ràng không phải là đi tiểu, mà... xấu hổ quá♡ A♡ A...♡」[p]
Nagi「Không ngờ, lại phun nước nhiều đến thế này...♡ Tại bị anh Shun chạm vào, đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Ưm♡ Hà♡ Hà♡ A...♡ Lâu lắm rồi mình mới tắm chung lâu thế này nhỉ, kể từ hồi nhỏ đó♡」[p]
Nagi「Lúc đó... mình cũng chơi đùa rất nhiều...♡ Hôm nay chúng ta cũng chơi thật nhiều trò nhỉ♡」[p]
Nagi「Hà~...♡ Hà~...♡ Sướng quá... không thể dừng lại được nữa rồi... Ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「Chỉ cần cử động hông thôi... mà đã phát ra âm thanh nhóp nhép dâm đãng thế này rồi...♡ A, sướng quá đi♡」[p]
Nagi「Đúng là trò chơi mà trẻ con không thể chơi được nhỉ...♡ Nếu em lại muốn chơi nữa... anh sẽ chiều em chứ?」[p]
[舜]「Tất nhiên rồi... Anh sẽ chiều em chơi trò này bao nhiêu cũng được...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Em có sao không? Có bị chóng mặt không? Nagi, em đổ mồ hôi đầm đìa rồi kìa」[p]
Nagi「Tại vì... sướng quá mà...♡ Hông em, tự động nảy lên luôn rồi...♡」[p]
Nagi「A... Của anh Shun, cũng nóng hổi và trơn tuột rồi này...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ A...♡ Đừng có đẩy lên... mỗi chỗ đó mà...♡ Em sẽ trở nên nhóp nhép hết mất thôi♡」[p]
[舜]「Chỉ cần tắm vòi sen xả sạch hết là được mà」[p]
Nagi「Ưm...♡ Hà, toàn thân ướt sũng trơn tuột thế này... Rửa sạch vất vả lắm đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Hà...♡ Hà♡ A...♡ Thứ trơn tuột này là dầu bôi trơn sao? Hay là rỉ ra từ anh Shun vậy?」[p]
[舜]「Không phải là chảy ra từ chỗ em sao?」[p]
Nagi「Ưm...♡ Trộn lẫn hết vào nhau nên mới nhầy nhụa thế này nhỉ...♡ Thảo nào lại sướng đến thế♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「A♡ A♡ A♡ Ưm...♡ Bên trong cũng ướt nhẹp hết rồi...♡」[p]
[舜]「Nagi, eo em đang tự động đậy kìa... A~, dâm quá...」[p]
Nagi「Ưm... Sướng quá... em không dừng lại được mất...♡ Em muốn của anh đút vào sâu hơn nữa cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「Ưm♡ Hộc, hà♡ Con cu của anh cứ giật giật liên tục kìa...♡」[p]
Nagi「Trơn tuột cọ xát vào nhau, sướng thật anh nhỉ♡ Hà, a♡ Phần đầu đang mắc lại kìa...♡」[p]
Nagi「Híuu♡ A...♡ Mãnh liệt quá... con cu sắp bị vò nát mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ H-Hỏng mất... em sắp phát điên mất thôi...♡」[p]
Nagi「Hà♡ Hà♡ A...♡ Eo em không dừng lại được...♡」[p]
Nagi「Em lại muốn đút vào sâu hơn nữa rồi♡ Hà, a... Dùng phần đầu gõ nhẹ vào trong đi anh♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_kaiwa1

[tb_start_text mode=1 ]
Nagi「Lỡ bị phát hiện thì làm sao đây... Nhỡ có ai tới thì sao...」[p]
[舜]「Chỉ cần em không phát ra tiếng thì không sao đâu.」[p]
Nagi「...! Thiệt tình... anh xấu tính quá...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_kaiwa2

[tb_start_text mode=1 ]
Nagi「...Này, có ai tới không? Bên ngoài có ai không anh?」[p]
[舜]「Em lo xa quá rồi. Làm gì có tiếng bước chân nào.」[p]
Nagi「Nhưng mà... cứ nghĩ lỡ bị lộ là tim em lại đập thình thịch...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_kaiwa3

[tb_start_text mode=1 ]
Nagi「Anh biết em không giỏi giấu giếm mà đúng không...?」[p]
Nagi「Ngay cả bây giờ... em cũng đang căng thẳng... đến mức tim như muốn nhảy ra ngoài...」[p]
[舜]（Nói là căng thẳng, nhưng mặt lại đang giãn ra hết kìa.）[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J3_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Phù...♡ Phù, phù... A...」[p]
[舜]「Suỵt, phát ra tiếng rồi kìa... Lỡ có ai tới là lộ mất đấy?」[p]
Nagi「Nh-Nhưng mà... tại anh chạm vào... cơ mà...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_munemomi2

[tb_start_text mode=1 ]
Nagi「Ưm... Kh-Không được... sờ ngực thêm nữa là... không được đâu...」[p]
[舜]「Em mà động đậy nhiều là lỡ tay bấm nhầm nút gọi khẩn cấp đấy nhé?」[p]
Nagi「...! Nh-Như thế thì... rắc rối to mất... Ưm.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Trật tự nào... Có người tới bây giờ đấy?」[p]
Nagi「Ưm... Phù, phù... Thế thì... đừng có nắn bóp ngực em nhiều quá...♡」[p]
Nagi「Phù... Phù... Ưm♡ Mới chỉ sờ ngực thôi... mà eo em đã tự động đậy rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Híuu♡ A... X-Xin lỗi anh... lỡ phát ra tiếng mất rồi... Ưm♡」[p]
Nagi「Tại anh chạm đúng chỗ sướng, nên em không nhịn được...」[p]
Nagi「Ưm♡ Phù, chỗ đó... không được đâu... Ưm♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hà... Phù... Á, nhột quá đi mất.」[p]
[舜]「Cái mông ngọ nguậy trông đáng yêu ghê.」[p]
Nagi「Đ-Đừng có nói mà... Em xấu hổ lắm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_sirinade2

[tb_start_text mode=1 ]
Nagi「Ưm...♡ C-Cứ vuốt ve mông em mãi... không được đâu...」[p]
[舜]「Em muốn anh vuốt ve chỗ khác nữa à?」[p]
Nagi「Đâu phải thế... Nhưng mà, lỡ có ai tới thì sao... Em không bình tĩnh nổi đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Phù... Phù... Đừng có vuốt ve mông em mãi thế...」[p]
Nagi「Bên trong bụng em, râm ran hết cả lên rồi...」[p]
[舜]「Suỵt... Phải nhịn không được phát ra tiếng đấy Nagi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_sirinade_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Phù, phù, phù... Gi-Giữ im lặng... không nổi đâu♡」[p]
Nagi「Phù, phù, ưm, hà...♡」[p]
Nagi「Sờ mông... không được đâu♡ Em sẽ phát ra... âm thanh dâm đãng mất.」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ch-Chờ đã anh... Chỗ đó thì, không được... Dừng lại đi...♡」[p]
Nagi「Ư... Ưm♡ Không chịu đâu♡ Ư, ư♡」[p]
[舜]「Em kêu to quá rồi đấy... Ráng giữ im lặng thêm chút nữa đi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_teman2

[tb_start_text mode=1 ]
Nagi「Ưm♡ Ưm♡ Phù, phù...♡」[p]
[舜]「Đang ngậm chặt miệng đấy à? Đáng yêu quá... Nào, cố gắng nhịn kêu đi...」[p]
Nagi「Híuu♡ Ưm♡ Anh xấu tính quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Híuu♡ Ưm♡ Ư♡ Không được, không được đâu...♡」[p]
[舜]「Ướt nhẹp hết cả rồi... Nước nôi lênh láng hơn mọi khi nhỉ? Em đang hưng phấn lắm à?」[p]
Nagi「L-Làm gì... có chuyện đó... Ưm♡ Hà, a, a♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ Ưm...! Chỗ đó... không được, không được không được đâu...」[p]
Nagi「S-Sướng quá... eo em tự động đậy mất... Ưm...♡」[p]
[舜]「Em rên to quá rồi đấy... Phải giữ im lặng chứ.」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_sirikoki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm...♡ Anh thấy sao? Có sướng không?」[p]
[舜]「Ư... Phù, hà... Sướng lắm... Ưm.」[p]
Nagi「Hà... Phù... Mông... cọ xát vào nhau... Ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_sirikoki2

[tb_start_text mode=1 ]
[舜]「Ư... Ưm...!」[p]
Nagi「Suỵt, thấy chưa? Anh... không được phát ra tiếng đâu đấy♡」[p]
Nagi「Ưm... Phù...♡ Cùng nhau nhịn nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki+=1"  name="H_sirikoki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_sirikoki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Phù... Phù... Phù... Cả em cũng thấy sướng lây rồi...♡」[p]
Nagi「Ưm, hà, a... Kh-Không nhịn được kêu mất... Ưm♡」[p]
Nagi「Kh-Không được... Giữa hai chân... nhét vào mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirikoki=0"  name="H_sirikoki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_sirikoki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Híuu...♡ Ư, ư♡ Chỗ đó, không được đâu...♡」[p]
Nagi「Rõ ràng là mông... sao lại sướng thế này cơ chứ♡」[p]
Nagi「A, t-tiếng kêu... không sao... em nhịn được, mà...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Chỗ đó, kh-không được... Anh à, thật sự đấy...」[p]
[舜]「Chỗ này sướng à...?」[p]
Nagi「Đừng có xấu tính thế mà... Ngực em nhạy cảm lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_tikubiijiri2

[tb_start_text mode=1 ]
Nagi「Hà, a... Ưm, ư...♡」[p]
[舜]「Núm vú sưng phồng lên rồi kìa. Em đang hưng phấn à?」[p]
Nagi「Kh-Không phải... Đừng mà...♡ Cứ vê nắn miết thế, không chịu đâu...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Phù, phù... B-Bị cào nhẹ thế này... em, rên mất──」[p]
[舜]「Không sao chứ? Phát ra tiếng đi...」[p]
Nagi「Kh-Không được... Híuu♡ Đừng có ấn tụt núm vú vào trong ngực mà...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ư, ưm♡ N-Núm vú... Đừng có véo mạnh thế chứ... Ưm...♡」[p]
[舜]「Đang liều mạng nhịn kêu đấy à? Càng làm anh muốn trêu em thêm thôi.」[p]
Nagi「Á... Đừng có, xấu tính thế mà...♡ Hơn thế này nữa là thật sự... em không nhịn nổi đâu.」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... A... Hà...」[p]
[舜]「Khuôn mặt đê mê kìa. Em thích lỗ tai à?」[p]
Nagi「Á... Đ-Đừng có đột nhiên cất tiếng thế chứ...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_miminame2

[tb_start_text mode=1 ]
Nagi「Híuu♡ Lỗ tai, bị liếm... cảm giác kỳ lạ lắm...」[p]
Nagi「Ưm♡ Phù... Phù, phù... C-Cơ thể em nóng ran... lên rồi...」[p]
Nagi「Hà, a... Phù... Phù... Ưm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Tai em đỏ ửng lên rồi kìa.」[p]
Nagi「Th-Thì tại... anh liếm nhiều quá... cơ mà...」[p]
Nagi「V-Với lại em cứ hồi hộp sợ lỡ bị phát hiện... Ưm♡ Hà, a...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ C-Cái đó... gian xảo quá...♡ Phù... Phù... Phù...」[p]
Nagi「Hơi thở của anh... phả hết vào trong tai em rồi...♡」[p]
Nagi「Đ-Đầu óc em... rối tung hết cả lên rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Hộc... Hà, a... Không được đâu anh... r-rút ra đi...」[p]
[舜]「Bên trong siết chặt lắm đấy?」[p]
Nagi「Ưm♡ Không chịu đâu... đừng có nói mà...♡ Ư... Phù, phù...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Vừa nhịn kêu, Nagi cũng đang hưng phấn lắm đúng không? Đang uốn éo dữ lắm kìa.」[p]
Nagi「A, ưm, làm gì, có chuyện... đó...♡」[p]
Nagi「Hà, a... Híuu... Kh-Không nhịn được kêu mất... Ưm...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「R-Rõ ràng là bệnh viện... lại còn là nhà vệ sinh... thế mà lại đang làm chuyện đồi bại...」[p]
Nagi「Ưm... Hà, a... Của anh, to hơn mọi khi rồi kìa...♡」[p]
Nagi「Đang h-hưng phấn đấy à... Thật là... Đồ biến thái...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hiaa♡ A... Trúng phải, chỗ không được phép rồi...♡」[p]
[舜]「Nagi, kìm giọng lại đi...」[p]
Nagi「Nh-Như thế, không thể nào, được đâu... Ưm... Phù, hà, a...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Ưm, ư, phù... Hà, hộc... Mãnh liệt quá... Không được rồi, em không đứng vững nổi...」[p]
[舜]「Lảo đảo thế kia, có khi em bấm nhầm nút gọi khẩn cấp thật đấy?」[p]
Nagi「Không, em không bấm đâu... Em sẽ cố... trụ vững mà...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「Ư... Ưm♡ Phù, phù... Lỡ có ai tới, thì làm sao đây...」[p]
[舜]「Vì thế nên em mới hưng phấn chứ gì?」[p]
Nagi「Kh-Không phải thế mà...♡ A... Ưm... Phù... Ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Làm tình với y tá trong nhà vệ sinh à... Hưng phấn vãi...」[p]
Nagi「Ưm, hà♡ Đ-Đang làm chuyện không được phép, thế mà... lại sướng đến mức này...♡」[p]
Nagi「Híuu... Hà, hà, hộc... L-Lên đỉnh mất...♡ Lên đỉnh mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm~♡ B-Bên trong... đang co thắt liên hồi kìa♡」[p]
Nagi「Không, nhịn được kêu mất... Em hết chịu nổi rồi... Ưm♡」[p]
Nagi「X-Xin đấy... đừng có ai tới... Híuu♡ A♡ A♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_2_kaiwa1

[tb_start_text mode=1 ]
Nagi「Muốn lén lút làm tình trong nhà vệ sinh... lỡ bị lộ là to chuyện đấy anh biết không?」[p]
[舜]「Nhưng Nagi cũng có hứng thú mà đúng không?」[p]
Nagi「Em thì... đâu có... cái đó... ch-chỉ một chút xíu thôi, nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_2_kaiwa2

[tb_start_text mode=1 ]
Nagi「Anh, không được phát ra tiếng đâu đấy? Lỡ có ai tới kiểm tra thì chết...♡」[p]
[舜]「Nagi mới đúng đấy...」[p]
Nagi「Nếu sướng quá, có khi em sẽ kêu lên mất... Lúc đó anh bịt miệng em lại nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Bệnh nhân ơi, đi vệ sinh nào~♡ Để tôi giúp một tay nhé♡」[p]
Nagi「Khc, đùa thôi... Lỡ có ai tới, chắc em giả vờ như đang dìu bệnh nhân đi vệ sinh nhỉ.」[p]
Nagi「Có khi phải dựa vào tài diễn xuất của anh đấy.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*J3_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Phù...♡ Tự dưng vồ lấy ngực người ta thế...」[p]
Nagi「Anh đang cố, làm em kêu lên chứ gì... Ưm... Hà, ưm...♡」[p]
Nagi「Đừng có, nắn bóp mạnh thế chứ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*J3_2_munemomi2

[tb_start_text mode=1 ]
Nagi「Phù... Phù... Phù... Ưm♡ C-Cố tình làm thế... để em kêu lên à?」[p]
Nagi「Em sẽ nhịn được, mà...♡ Ưm♡ Ư... Phù... Phù...」[p]
Nagi「Híuu♡ Anh mê ngực quá rồi đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A...♡ Hà, a♡ Ưm... Bóp mạnh thế là ngực em biến dạng mất đấy♡」[p]
[舜]「Nagi, nhịn kêu đi.」[p]
Nagi「Ưm♡ Rõ ràng là tại anh sờ mà... Ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Au♡ Hàn...♡ Chỗ đó...♡ Sướng lắm♡」[p]
Nagi「Ưm... Ngực em... sắp bị anh vò nát mất rồi...♡」[p]
Nagi「Hà...♡ Hà...♡ Sâu trong bụng em... co thắt liên hồi rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_2_sirinade1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Híuu...♡ Đừng có bóp mông em thô bạo thế chứ♡ A, không được... vạch mông ra là...」[p]
Nagi「Thấy hết... bên trong mất...♡ Xấu hổ quá...」[p]
Nagi「Ưm... Phù... Hà, ưm... Mông em, bị anh tha hồ sờ mó sao...?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_sirinade2

[tb_start_text mode=1 ]
[舜]「Không giữ im lặng là có người tới bây giờ...」[p]
Nagi「Tại anh... sờ mông nên em mới phát ra tiếng đấy chứ...♡」[p]
Nagi「Ưm... Hà, hộc...♡ Em sẽ, ráng nhịn mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade+=1"  name="H_sirinade"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_sirinade3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A... Ưm... Mới chỉ bị sờ mông thôi... mà eo em đã tự động đậy rồi...♡」[p]
Nagi「Hà♡ Hà♡ A, eo không dừng lại được♡」[p]
Nagi「Sướng quá... Hà... Hà... Anh à... em sắp không nhịn nổi nữa rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sirinade=0"  name="H_sirinade"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_sirinade_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Aaan♡ Xin lỗi anh... em lỡ rên to mất rồi♡」[p]
Nagi「Phù... Phù... Không chỉ mông đâu, sâu hơn nữa cơ... em muốn anh sờ cả chỗ đang nhầy nhụa nước ấy♡」[p]
Nagi「Nãy giờ nó cứ giật giật liên hồi... em không nhịn được nữa rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_2_siiohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Ưm... A♡ Thế này thì... không nhịn kêu nổi đâu... có cái gì đó sắp ra...」[p]
Nagi「Híuuuu♡ A, aaa♡ Ra mất rồi...♡」[p]
Nagi「Kh-Không chịu đâu... Phun nước thế này xấu hổ chết đi được...♡ Ưm, cảm giác sướng lại ập đến nữa rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siiohuki+=1"  name="H_siiohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_2_siiohuki2

[tb_start_text mode=1 ]
Nagi「L-Lại ra nữa... em lại phun nước mất... Hức♡ Ơ♡ Ơ ơ ơ♡」[p]
[舜]「A~... Lại tè dầm nữa rồi à...?」[p]
Nagi「Đừng có bảo là tè dầm mà...♡ Em xấu hổ chết mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siiohuki+=1"  name="H_siiohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_2_siiohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Cứ phun nước liên tục nhỉ... Ở cửa nhà vệ sinh có cốc thử nước tiểu đấy. Hứng vào đó nhé?」[p]
Nagi「Á... Không chịu đâu, xấu hổ lắm... A, l-lại ra nữa rồi... A♡ A♡ Aaaa♡」[p]
Nagi「Hoàn toàn không dừng lại được... Nó cứ tự động tuôn ra đầy luôn...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siiohuki=0"  name="H_siiohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*J3_2_siiohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hyauu♡ A, hà, a...♡ Từ sâu trong bụng... dòng nước nóng hổi cứ trào ra... không dừng lại được♡」[p]
Nagi「Đến cả khoảnh khắc bắn ra, cũng sướng thế này cơ chứ♡ A, ưm♡」[p]
Nagi「Hà, a, sức lực... bị rút cạn hết rồi...♡ Ưm, xin lỗi, em không kìm giọng nổi...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*J3_2_sumata1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A~... Trơn tuột nhẵn thín... Cảm giác sờ quần tất thích thật đấy...」[p]
Nagi「Ưm, hà, hộc...♡ A, của anh, to hơn mọi khi rồi kìa...」[p]
Nagi「Anh hưng phấn quá rồi đấy...♡ Ưm, ư... Hà, cứ như anh đang dùng em để thủ dâm vậy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_sumata2

[tb_start_text mode=1 ]
Nagi「Ưm... Kh-Không được... em kêu lên mất...♡ Ưm, chỗ nhạy cảm, bị cọ xát...♡」[p]
Nagi「Ư, ư♡ Hà, a...♡ Á... Nó mắc lại rồi cọ xát vào nhau...♡」[p]
[舜]「Em cứ ngọ nguậy thế... sột soạt người ta nghi ngờ đấy?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata+=1"  name="H_sumata"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_sumata3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A~... Hình như, nó đang dần nóng lên và ướt át hơn rồi kìa?」[p]
Nagi「Ưm♡ Xấu hổ quá... Phù... Phù... Tại sướng quá... nên nó mới co thắt liên hồi đấy...♡」[p]
Nagi「Hà, a... Ch-Chờ đã... Chỗ nhạy cảm lúc nãy... cứ bị cọ xát mãi... em lên đỉnh mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sumata=0"  name="H_sumata"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_sumata_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hiaa♡ A, ưm... T-Tiếng... em lỡ rên to mất rồi...♡」[p]
Nagi「Xin lỗi anh... Ưm, ư... Phù, phù, ưm... Á, mãnh liệt quá... Ưm♡」[p]
Nagi「Cái sự nóng hổi của anh... truyền hết sang em rồi...♡ Au, sướng quá♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Phù♡ Anh à... Núm vú thì, không được đâu...」[p]
Nagi「Bị sờ vào là... em không nhịn kêu được, đâu... Ưm... Phù... Phù...」[p]
Nagi「Ưm... Phù, hộc, hà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_tikubiijiri2

[tb_start_text mode=1 ]
Nagi「Biết rõ là không được phát ra tiếng... thế mà anh cố tình cứ sờ vào núm vú mãi chứ gì♡」[p]
Nagi「Ưm, em biết thừa...♡ Nãy giờ, anh toàn kích thích vào núm vú thôi...♡」[p]
Nagi「Ưm, phù... Kìm giọng khổ sở lắm đấy... Ưm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Híuu♡ Ưm... Hà, hộc... Không ngờ, lại làm chuyện này trong nhà vệ sinh...」[p]
Nagi「Nhân viên với bệnh nhân chắc chẳng ai tưởng tượng nổi đâu... nhỉ...♡ Ưm... Hà♡」[p]
Nagi「A... Đừng có vê nắn thế mà, không được... Ưm♡ Đánh úp bất ngờ, gian xảo quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ Hộc... Hà♡ A... V-Vừa nãy... sướng lắm luôn ấy♡」[p]
[舜]「Em rên to lắm rồi đấy... Eo cũng tự động đậy nữa.」[p]
Nagi「Ưm, đừng có nói, mà...♡ Hà, a... Tại núm vú, sướng quá cơ...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_2_miminame1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Lỗ tai... bị đút vào rồi...♡」[p]
Nagi「Hà...♡ Hà...♡ Kỳ lạ quá... Cứ như trong đầu em cũng đang bị hiếp vậy...」[p]
Nagi「A... Bên trong... nhức nhối quá...♡ Hộc, hộc, hộc...♡ Em muốn quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_miminame2

[tb_start_text mode=1 ]
[舜]「Nagi, người em đang giật giật kìa...」[p]
Nagi「Ưm♡ Phù... Đừng có nói chuyện ở chỗ đó...♡ Chỉ nghe giọng anh thôi là em đã thấy sướng rồi...」[p]
Nagi「Phù... Phù... Hà, a... Ưm... Em đứng, hết vững rồi... sắp ngã mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame+=1"  name="H_miminame"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_miminame3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Hà... Anh đang liếm như thể đang thưởng thức ấy à...? Bị anh ăn tươi nuốt sống mất thôi...♡」[p]
Nagi「Trong tai em... cứ phát ra tiếng lép nhép dâm đãng ấy...♡」[p]
Nagi「Ưm, phù, hộc... Bị khuấy đảo nhầy nhụa ướt át hết cả lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_miminame=0"  name="H_miminame"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*J3_2_miminame_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ư, ư♡ Hộc... Ch-Chỉ là lỗ tai thôi, mà...♡ Sướng quá♡」[p]
Nagi「Eo em run rẩy hết cả lên rồi...♡ Em lên đỉnh mất, thôi...♡」[p]
Nagi「Hà, a... Tan chảy mất... Em sắp phát điên mất thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*J3_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Híuu... Ưm, ư... Ưm... Phù♡」[p]
[舜]「Cũng biết ngoan ngoãn nhịn kêu đấy chứ? Cứ giữ phong độ thế nhé.」[p]
Nagi「Ưm... Phù, phù... A... Bị lắc lư mạnh thế này...♡ Em rên lên mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「Hà♡ Nga♡ A...♡ Ưm...♡ Của anh, to hơn mọi khi rồi kìa...♡」[p]
Nagi「Anh cũng đang hưng phấn lắm đúng không...♡」[p]
Nagi「Em cũng... giống vậy... Rõ ràng là chuyện không được phép... thế mà lại hưng phấn vô cùng♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「Phù... Ưm, a, a...! Làm tình... trong nhà vệ sinh... là không được phép, cơ mà...♡」[p]
[舜]「Thế dừng lại nhé? Dừng cũng được thôi?」[p]
Nagi「Kh-Không chịu đâu... Đừng dừng lại mà...! Em muốn anh làm nhiều nữa cơ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*J3_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Híuu♡ Ơ, ơ ơ♡ Ưm, chỗ đó, sướng quá đi♡」[p]
Nagi「Ư, ưm... Hỏng mất thôi...♡ Hà, a... L-Lên đỉnh mất...♡」[p]
Nagi「Hà, a, em sắp rên... to mất thôi...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*J3_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Híuu♡ Ơ, ơ ơ♡ Ưm, chỗ đó, sướng quá đi♡」[p]
Nagi「Ư, ưm... Hỏng mất thôi...♡ Hà, a... L-Lên đỉnh mất...♡」[p]
Nagi「Hà, a, em sắp rên... to mất thôi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「Hộc, hà, hà... Híuu♡ Sướng quá đi♡」[p]
[舜]「Em rên to quá rồi đấy... Lỡ có ai tới thì em định bào chữa thế nào?」[p]
Nagi「Đâu có nói được gì... Á... Lỡ bị lộ thì làm sao đây...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Cứ nghĩ đến chuyện có ai tới là em lại càng hưng phấn hơn à?」[p]
Nagi「Ưm! Làm gì có chuyện đó... Hà, a...♡ Em đang lo lỡ bị lộ thì làm sao đây này...」[p]
Nagi「Thế mà... lại hưng phấn vô cùng... Em cứ như một đứa con gái hư hỏng vậy...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*J3_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hiaa♡ Au♡ Đang cọ xát sướng lắm...♡」[p]
Nagi「Em thích, kiểu đó♡ A, sâu hơn nữa đi... làm cho bên trong ướt nhẹp hết đi...♡」[p]
Nagi「Mọi thứ khác em chẳng màng tới nữa... Hà, a, giờ em chỉ nghĩ đến chuyện sướng thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_kaiwa1

[tb_start_text mode=1 ]
Nagi「Ch-Chờ đã... Em chưa tắm đâu... mồ hôi nhễ nhại hết cả...」[p]
[舜]「Hê~, thế mà em lại nấu ăn đứng đợi anh à?」[p]
Nagi「Xin lỗi anh... Em nghĩ đằng nào nấu ăn xong cũng đổ mồ hôi tiếp...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa2

[tb_start_text mode=1 ]
[舜]「Để nguyên cơ thể đầy mồ hôi chờ anh, là vì muốn anh cứ thế mà ôm lấy em chứ gì?」[p]
Nagi「Kh-Không phải đâu... Xấu hổ lắm... Em định sẽ tắm rửa đàng hoàng cơ...」[p]
Nagi「Nhưng mà... Em chọn sai thời điểm mất rồi, xin lỗi anh. Đáng lẽ em nên tắm xong rồi mới đợi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kaiwa3

[tb_start_text mode=1 ]
Nagi「A, không được... Đừng có ghé sát mặt vào thế... Em nghĩ người em đầy mùi mồ hôi thật đấy...」[p]
Nagi「Xấu hổ quá... Lỡ bị anh ghét thì em không chịu đâu... Đừng có ngửi nhiều quá nhé?」[p]
Nagi「A, với lại da em... chắc cũng hơi nhớp nháp mồ hôi rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_kagu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á... Đừng ngửi mùi chân em mà... Hôm nay em còn đi quần tất nữa...」[p]
[舜]「Thật này... Mùi hầm bí bốc lên luôn... Kinh thật. Em cứ thế này đi lại trong nhà à?」[p]
Nagi「A... X-Xin lỗi anh... Đúng, nhỉ. Mất vệ sinh quá...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_kagu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Mới ghé sát mặt vào thôi đã ngửi thấy mùi kỳ lạ rồi này...」[p]
Nagi「Kh-Không chịu đâu... Đừng ngửi thật mà... Em không ngờ anh lại đột nhiên đòi làm tình...」[p]
Nagi「Có mùi xin lỗi anh... Đừng ghét em nhé...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kagu3

[tb_start_text mode=1 ]
Nagi「E-Em... đi tắm ngay đây...! Anh đợi một lát nhé...!」[p]
[舜]「Khỏi cần...! Có mùi chỗ nào thì khai thật hết ra đây. A, chắc bên trong quần lót cũng có mùi chứ gì?」[p]
Nagi「Á... Chỗ đó thì... thật sự không được đâu... Xin lỗi anh, tha cho em đi...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu=0"  name="H_kagu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_kagu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Híuu...♡ Kh-Không chịu đâu...♡ Đã bảo là không được ngửi bên trong đồ lót cơ mà.」[p]
[舜]「Mùi quá... Rõ ràng là ghét bị ngửi... sao mặt em lại đê mê thế kia.」[p]
Nagi「Không phải... Đâu phải thế... Thật sự không được đâu... Bẩn lắm...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ngực em cũng ươn ướt này... Cái này là đổ mồ hôi à?」[p]
Nagi「A... Ưm♡ Xin lỗi anh... Tại mặc áo lót... nên mới đổ mồ hôi...」[p]
Nagi「Cơ thể chưa tắm rửa... lại để anh sờ vào, xin lỗi anh...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_munemomi2

[tb_start_text mode=1 ]
Nagi「Ưm... Hà, a... X-Xấu hổ quá... Hay là em, chỉ tắm vòi sen thôi cũng được...」[p]
[舜]「Đã bảo khỏi cần, dang rộng chân ra cho anh xem toàn bộ cơ thể chưa tắm rửa của em đi!」[p]
Nagi「V-Vâng... Ưm♡ Phù♡ Ngực em, sắp bị vò nát mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Để cơ thể chưa tắm rửa thế này, sao chưa xin lỗi hả?」[p]
Nagi「Xin lỗi anh... Em xin lỗi vì đã để anh sờ vào bộ ngực đầy mồ hôi...」[p]
Nagi「Từ giờ trở đi... em sẽ tắm rửa sạch sẽ rồi mới đợi anh về mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Híuu♡ A...♡ S-Sướng quá...♡」[p]
[舜]「Đổ thêm mồ hôi cũng không sao à? Em mà ngọ nguậy là mùi nó bay tứ tung đấy nhé?」[p]
Nagi「Hà... Hà, a... Xin lỗi anh... E-Em sẽ cố gắng, không ngọ nguậy nữa♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_tikubiname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Không, không được, không được đâu...! B-Bẩn lắm...!」[p]
[舜]「Thật này... Ngực nặc mùi mồ hôi luôn... Em định nhờ lưỡi của anh làm sạch cho à?」[p]
Nagi「Em đâu có nghĩ thế...♡ Ưm♡ A, đừng có mút mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_tikubiname2

[tb_start_text mode=1 ]
[舜]「Được anh liếm cho bộ ngực hầm bí thế này... em không định nói lời cảm ơn à?」[p]
Nagi「Hà, a♡ C-Cảm ơn anh... Được anh liếm bộ ngực hầm bí đầy mồ hôi thế này... em vui lắm♡」[p]
Nagi「Ưm... Ư♡ A♡ Cứ bị mút núm vú mãi... em sắp phát điên mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname+=1"  name="H_tikubiname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_tikubiname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A~, mùi mồ hôi kinh quá... Trong khe ngực cũng đổ mồ hôi này...」[p]
Nagi「Au♡ Ưm... Ư♡ Đừng có nói mà... Ưm, tại sướng quá, nên cơ thể mới nóng ran lên đấy♡」[p]
Nagi「Xin lỗi anh vì đã đổ nhiều mồ hôi thế này...♡ Anh tránh mặt ra đi mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiname=0"  name="H_tikubiname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_tikubiname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Híuu♡ A, aa♡ Rõ ràng là xấu hổ, thế mà lại thấy sướng...♡」[p]
[舜]「Lại càng đổ mồ hôi nhiều hơn rồi đúng không? Đáng xấu hổ thật.」[p]
Nagi「Ư... Ưm♡ Chắc là, đổ mồ hôi rồi... Ư, xấu hổ quá đi mất♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á... A... Á, đau... Đừng đánh mông em mà... Không được...♡」[p]
[舜]「Rõ ràng là đang hưng phấn... Không khai thật là anh đánh đau hơn đấy nhé?」[p]
Nagi「A... X-Xin lỗi anh... Bị đánh, em thấy hơi sướng một chút♡ Tha cho em đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_supankingu2

[tb_start_text mode=1 ]
Nagi「Híuu♡ A♡ C-Cảm ơn... anh...♡」[p]
[舜]「Em có biết tại sao lại bị đánh đòn không?」[p]
Nagi「Vì em chưa tắm rửa mà đã đợi anh... Xin lỗi anh vì em thiếu tinh tế quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Hửm? Bị đánh đòn nên ướt át hơn rồi chứ gì... Bốc mùi dâm đãng lên rồi này?」[p]
Nagi「Th-Thì tại... với cái tư thế đáng xấu hổ này, bị anh nhìn thấy hết sạch...♡」[p]
Nagi「Xấu hổ lắm... thế mà em lại thấy rạo rực... Xin lỗi anh vì em biến thái quá...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hiaa♡ Đ-Đau quá... Mông em, đỏ ửng lên mất...♡ Tha cho em đi mà♡」[p]
[舜]「Rên rỉ ngọt ngào thế kia cơ mà. Lại còn nói dối à?」[p]
Nagi「Đ-Đâu phải nói dối... Bị đánh đòn trong tư thế đáng xấu hổ thế này, làm sâu trong bụng em râm ran hết cả lên...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_kunni1

[tb_start_text mode=1 ]
Nagi「Aaa♡ Kh-Không được, bẩn lắm... Chỗ đó không được liếm đâu...」[p]
[舜]「A thật này... Bốc mùi nồng nặc luôn... Để anh liếm chỗ thế này mà em coi được à?」[p]
Nagi「Ư... Xấu hổ quá... X-Xin anh đấy... Ít ra cũng cho em tắm vòi sen đi...」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_kunni2

[tb_start_text mode=1 ]
Nagi「Hiaa♡ Au♡ Th-Thật sự đấy, bỏ miệng ra đi mà...」[p]
Nagi「Đang bẩn lắm... Đừng mút âm vật mà... Ưm... Xin lỗi anh vì vừa bẩn vừa hôi♡」[p]
Nagi「Ưm... Thế mà... để anh liếm chỗ bẩn thỉu như vậy, em lại thấy sướng mất rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni+=1"  name="H_kunni"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_kunni3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Á... Em, không biết gì nữa đâu...♡ Không được, không được không được không được♡」[p]
[舜]「Mật ngọt từ bên trong trào ra rồi... Trộn lẫn với mùi giống cái, thế là xong cô bé nóng hổi nhé.」[p]
Nagi「Ưm♡ Xấu hổ quá... Bị liếm trong, cái tư thế đáng xấu hổ này... Em không chịu đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kunni=0"  name="H_kunni"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_kunni_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ Ưm♡ Liếm cửa mình, bẩn lắm đấy...♡」[p]
[舜]「Nhưng mà bị liếm, sướng đến mức giật giật liên hồi rồi còn gì?」[p]
Nagi「C-Có... Bị liếm sướng quá mất rồi... Xin lỗi anh...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ A♡ A♡ R-Rút ngón tay ra đi... Không được đâu, bẩn lắm.」[p]
[舜]「Thật này... Bên trong nhầy nhụa ướt át hết cả... Em đổ mồ hôi nhiều đến mức nào thế?」[p]
Nagi「Không chịu không chịu đâu, đừng có nói mà... Ư... Xin lỗi anh...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_teman2

[tb_start_text mode=1 ]
Nagi「Aaa! Sâu bên trong, không được đâu♡ R-Rút ngón tay ra đi... Xin anh đấy...♡」[p]
Nagi「Vừa xấu hổ vừa sướng... trong đầu em rối tung hết cả lên rồi...♡」[p]
Nagi「Với tư thế này... bị khuấy đảo... em xấu hổ không chịu nổi nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Vì bẩn nên em hãy tự tiết mật ra làm sạch bên trong đi... Anh sẽ khuấy đảo cho...!」[p]
Nagi「Vâng♡ Vâng...♡ Aaa♡ Em sẽ tự làm sạch ạ...♡」[p]
Nagi「Trở nên ướt nhẹp... cả mồ hôi lẫn chất bẩn... tất cả... em sẽ làm sạch hết mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hyauuu♡ A, ưm...♡ Cứ chọc vào chỗ đó mãi... không được đâu♡」[p]
[舜]「Hửm? Đang làm cái khuôn mặt lẳng lơ tận hưởng đấy à?」[p]
Nagi「Hà, aa♡ Xin lỗi anh vì em làm khuôn mặt kỳ lạ... Sướng quá nên cơ mặt giãn hết cả ra♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Híuu♡ A... Ư...♡ Ưm... Đột nhiên đút vào sâu thế này...♡」[p]
[舜]「Anh chưa cho phép em hạ chân xuống đâu nhé? Không giữ nguyên tư thế đó là anh dừng lại đấy?」[p]
Nagi「Xin lỗi anh... Em sẽ giữ nguyên thế này mà...! Đừng dừng lại đi anh...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Cảm giác bị hiếp trong cái tư thế thảm hại này thế nào hả?」[p]
Nagi「Ư... Xấu hổ... lắm ạ♡ Nhưng mặc cho anh muốn làm gì thì làm... em thấy sướng lắm♡」[p]
Nagi「Bên trong cũng nóng ran như bị tê dại... râm ran hết cả lên rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Nhìn rõ mồn một cảnh đang bị ra vào luôn này... Cứ giật giật dâm quá đi.」[p]
Nagi「Ưm... Aaa, á, xấu hổ quá... Đừng nhìn mà...♡」[p]
Nagi「Sướng quá nên nó tự động đậy... Siết chặt lấy của anh mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hiaa♡ Au, chỗ đó♡ Đâm trúng chỗ nhạy cảm, rồi...♡」[p]
[舜]「Đã bảo đừng có buông chân ra...! Bám cho chắc vào... phải làm bồn chứa tinh cho anh chứ...!」[p]
Nagi「Ưm♡ Vâng... Cứ tự do di chuyển đi anh...♡ Hãy dùng em... để sung sướng nhé♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Ư... A♡ Ch-Chờ đã... Mãnh liệt quá em không thở nổi...」[p]
[舜]「Nhưng mà lại càng siết chặt hơn kìa? Đang thích đúng không? Muốn anh dừng lại à?」[p]
Nagi「Ư♡ Không chịu đâu, đừng dừng lại mà...! Anh cứ làm gì tùy thích đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Lỗ đít cũng bị nhìn thấy hết sạch rồi kìa? Chỗ này cũng chưa rửa đúng không?」[p]
Nagi「Híuu♡ A, đừng có, nói mà... Em xấu hổ chết mất thôi...」[p]
Nagi「Aa♡ Mãnh liệt quá... Xin lỗi anh vì em chưa tắm rửa... Tha cho em đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「Hộc♡ Hộc♡ A, em không biết gì nữa đâu... Không, được, không được...!」[p]
[舜]「Mồ hôi với dâm thủy hòa vào nhau ướt nhẹp hết cả rồi này... Bốc mùi giống cái nồng nặc luôn...!」[p]
Nagi「Híuu♡ Đừng có hít sâu mà♡ Đừng ngửi cái mùi kỳ lạ đó...!」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ngaa...♡ Sâu bên trong đó... không được, đâu...♡ Sức lực bị rút cạn hết rồi♡」[p]
[舜]「Đã bảo là cứ giữ nguyên tư thế này cơ mà...!」[p]
Nagi「Dạ♡ Em hiểu rồi♡ Cho đến khi anh bảo được, em sẽ giữ nguyên thế này...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「Nãy giờ anh cứ để ý cái mùi mồ hôi chua loét hòa lẫn với mùi giống cái đấy...」[p]
Nagi「Ưm... Xin lỗi anh♡ Lại để bốc mùi mồ hôi với mùi dâm đãng thế này...」[p]
Nagi「Phù... Hà, bắt anh phải ngửi cái mùi kỳ lạ của em... Xin lỗi anh vì có mùi hôi nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa2

[tb_start_text mode=1 ]
Nagi「B-Bây giờ em đi tắm vòi sen ngay đây... Anh đợi em được không...?」[p]
[舜]「Hả? Việc gì anh phải đợi?」[p]
Nagi「Xin lỗi anh... Nếu anh thấy không sao... thì em cứ để nguyên thế này cũng được♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Về đến nhà là phải nấu cơm ngay mới kịp... Em chạy một chút nên mới đổ mồ hôi.」[p]
Nagi「Với lại... được gặp anh em vui quá... nên cứ nghĩ đến chuyện đồi bại rồi ướt nhẹp luôn...♡」[p]
[舜]「Đừng ngửi nhiều quá...♡ Mùi sẽ càng dâm đãng hơn mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R1_2_kagu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Chưa rửa ráy gì mà đã dạng chân vạch cô bé ra... Thật đáng xấu hổ nhỉ?」[p]
Nagi「Aa, không được... Đừng có ghé sát mặt vào...♡ Ưm... Không, đừng hít sâu mà♡」[p]
Nagi「Em đi vệ sinh mấy lần rồi... lại còn đổ mồ hôi nữa. Không được ngửi mùi đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R1_2_kagu2

[tb_start_text mode=1 ]
[舜]「Hả? Bị ngửi cái mùi chua loét mà em lại hưng phấn à?」[p]
Nagi「Ưm♡ Xấu hổ lắm... thế mà sâu trong cơ thể lại tê rần hết cả lên...」[p]
Nagi「Đừng ngửi nhiều thế mà♡ Anh sẽ thấy khó chịu đúng không?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu+=1"  name="H_kagu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_kagu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hà♡ Hà♡ Chắc là bốc mùi dâm đãng lên rồi nhỉ...?」[p]
Nagi「Đáng lẽ phải xấu hổ... thế mà bị ngửi mùi lại làm em thấy rạo rực quá...♡」[p]
Nagi「Xin lỗi anh vì có mùi hôi... A, mũi anh sắp dính vào chỗ hôi hám đó rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kagu=0"  name="H_kagu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_kagu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ Á... Ưm♡ Hơi thở của anh, phả vào rồi...♡」[p]
Nagi「Hà, hộc... Rõ ràng là hôi, thế mà lại bị anh hít lấy hít để...♡」[p]
Nagi「Xấu hổ quá... Không chịu đâu... C-Cô bé của em râm ran hết cả lên rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Chắc ngực em cũng hầm bí vì mồ hôi đúng không? Để anh kiểm tra xem nào...」[p]
Nagi「Ưm... Đang đổ mồ hôi mà... Không được ngửi mùi đâu đấy♡」[p]
Nagi「Ưm... Vê nắn cũng không được đâu♡ Bị lộ chuyện em đang ướt đẫm mồ hôi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_munemomi2

[tb_start_text mode=1 ]
[舜]「Phải nói xin lỗi vì bộ ngực đầy mồ hôi đi chứ.」[p]
Nagi「Xin lỗi anh... vì bộ ngực đầy mồ hôi♡ Làm bẩn tay anh mất rồi♡」[p]
Nagi「Lỡ anh cũng bị lây mùi mồ hôi chua loét thì làm sao đây... Thành ra chung một mùi mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Đổ mồ hôi nhiều quá nên ngực nhão ra rồi chứ gì? Nhìn này, mềm nhũn ra thế này cơ mà.」[p]
Nagi「A♡ Nó mềm là... do vốn dĩ đã thế rồi mà♡」[p]
Nagi「Cứ như nó sắp bám dính lấy tay anh luôn ấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hyauuu♡ A... Bị vồ lấy mạnh thế này... ngực em biến dạng mất♡」[p]
[舜]「Nhưng mặt em trông có vẻ sung sướng lắm kìa.」[p]
Nagi「Ư... Thì tại anh cứ yêu chiều bộ ngực của em mà...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_tikubikami1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Á... Đ-Đừng có cắn ngực em mà...♡」[p]
[舜]「Núm vú cương cứng lên rồi kìa... Bị cắn nên hưng phấn chứ gì?」[p]
Nagi「Á... Hiaaan♡ Cảm giác đau đớn lẫn sung sướng... lan tỏa khắp cơ thể em...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubikami+=1"  name="H_tikubikami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubikami2

[tb_start_text mode=1 ]
[舜]「Hít... Hà... A~, mồ hôi chua loét... Bị cắn núm vú nên lại càng đổ mồ hôi nhiều hơn à?」[p]
Nagi「Ưm...♡ Làm gì có chuyện đó...♡ A... Đừng có cắn mạnh thế chứ♡」[p]
Nagi「Đứt núm vú mất♡ Ưm, chuyện chưa tắm vòi sen, em xin lỗi mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubikami+=1"  name="H_tikubikami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubikami3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á... A... Núm vú, đau lắm♡ Đừng có cắn day day thế mà.」[p]
[舜]「Để núm vú cương cứng lên thế này cơ mà. Em không thấy xấu hổ à?」[p]
Nagi「Xấu hổ lắm... Tại nó nhạy cảm, nên hễ bị chạm vào là lại to lên...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubikami=0"  name="H_tikubikami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R1_2_tikubikami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Aaa♡ Ngực em tê rần rồi♡ Không được cắn thêm nữa đâu♡」[p]
Nagi「Phù... Ưm... E-Eo tự động đậy mất... A, cảm giác sung sướng lan tỏa...」[p]
Nagi「Làm trong đầu em cũng tê rần lên như điện giật...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R1_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á... Ngực em đỏ ửng lên mất... Hằn cả dấu tay của anh rồi kìa...♡」[p]
[舜]「Đây là hình phạt vì em chưa tắm rửa đấy.」[p]
Nagi「A... Ưm, ra là vậy...♡ Thế thì bị đánh cũng đành chịu thôi nhỉ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_supankingu2

[tb_start_text mode=1 ]
Nagi「Ư... Ưm♡ Mỗi lần anh vỗ vào ngực, tiếng kêu to lắm...♡」[p]
Nagi「Xin lỗi anh... Xin lỗi anh...♡ Xin lỗi anh vì em chưa tắm vòi sen...」[p]
[舜]「Xin lỗi bằng cái giọng ngọt ngào thế kia, anh chẳng thấy thành ý gì đâu nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ A♡ Ngực em, bị đánh đỏ ửng lên hết rồi...」[p]
[舜]「Đang làm cái tư thế mời gọi anh đánh đòn cơ mà.」[p]
Nagi「Ưm... Đâu phải thế... Híuu... Aaa♡ A♡ Tha cho em đi mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ngaaa♡ Hà, hộc... Chỉ bị đánh đòn thôi, thế mà... người em lại nóng ran lên rồi♡」[p]
Nagi「Ngực cũng rát rát... Sâu trong bụng cũng tê rần hết cả lên rồi♡」[p]
Nagi「Hà... Hà...♡ Hình như em... bị đánh đòn nên hưng phấn mất rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_2_tituname1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ch-Chờ đã... Chỗ đó không được đâu...♡ Em đổ đầy mồ hôi... lại còn đi vệ sinh nữa...」[p]
Nagi「Ưm... Đ-Đừng có liếm vào tận bên trong... Bỏ miệng ra đi anh. Bẩn lắm♡」[p]
Nagi「Híuu♡ A, a...♡ L-Lưỡi... thọc vào tận bên trong rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_tituname2

[tb_start_text mode=1 ]
[舜]「Vãi... Mùi quá... Hầm bí kinh khủng. Hơi nóng phả ra ngùn ngụt luôn này.」[p]
Nagi「Thật là, không chịu đâu... Tại em đi quần tất làm việc cả ngày mà... Ưm. Aaa♡ Đừng có liếm bên trong mà♡」[p]
Nagi「Ư, ư... Aaa, cứ ra vào lưỡi thế...♡ Cái đó không được đâu♡ Sướng lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname+=1"  name="H_tituname"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_tituname3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Híuuu♡ A... Á... Lưỡi, chạm tới tận sâu bên trong rồi♡ Aaa, bị liếm sạch sành sanh luôn♡」[p]
[舜]「Em định nhờ anh liếm sạch hết cả chất bẩn luôn chứ gì?」[p]
Nagi「Làm gì có chuyện đó♡ Không cần liếm đâu... Bẩn miệng anh mất.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tituname=0"  name="H_tituname"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_tituname_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ L-Lưỡi... thọc sâu vào trong... kêu chùn chụt thế không được đâu... Eo em, nảy lên mất♡」[p]
[舜]「Bắt anh liếm cô bé bẩn thỉu thế này, không định xin lỗi à?」[p]
Nagi「Ưm♡ A... X-Xin lỗi anh... vì đã bắt anh liếm chỗ bẩn thỉu...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_2_Gsupo1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Đừng có rụt eo lại...! Anh đang khuấy đảo cô bé bẩn thỉu nhầy nhụa của em đấy...!」[p]
Nagi「Hà, a, a♡ Xin lỗi anh, em sẽ không rụt lại nữa đâu...♡」[p]
Nagi「Ưm♡ E-Eo em nảy lên mất♡ Kích thích bên trong mạnh quá... Ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Gsupo+=1"  name="H_Gsupo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_Gsupo2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ngón tay anh sắp ám cái mùi chua loét của cô bé rồi này?」[p]
Nagi「A♡ A♡ Xin lỗi anh...♡ Lúc đó, em sẽ liếm sạch ngón tay cho anh mà♡」[p]
Nagi「Em sẽ chịu trách nhiệm, làm sạch sẽ luôn♡ Nên tha cho em đi... Ngaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Gsupo+=1"  name="H_Gsupo"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_Gsupo3

[tb_start_text mode=1 ]
[舜]「Ướt nhẹp hết cả rồi này... Thế này chắc cũng sạch sẽ hơn chút rồi nhỉ?」[p]
Nagi「Ưm, chắc, là vậy... Cảm ơn anh đã làm sạch cho em...♡」[p]
Nagi「Hà♡ An♡ Ư, chạm tới tận cùng, bên trong luôn rồi♡ Sâu quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_Gsupo=0"  name="H_Gsupo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R1_2_Gsupo_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hức♡ Đừng có vuốt ve mãi... vào chỗ nhạy cảm mà♡」[p]
[舜]「A a, ướt sũng rồi. Cứ để thế này khéo lại hầm bí hơn mất.」[p]
Nagi「Hà, hà♡ Xong việc... em sẽ đi tắm vòi sen ngay... Em sẽ làm sạch sẽ mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R1_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「A a, lại đổ mồ hôi nữa rồi kìa. Lây sang anh cũng nhớp nháp hết cả bây giờ.」[p]
Nagi「Xin lỗi anh... Người em nóng ran... Ưm... Mồ hôi, không ngừng tuôn ra♡」[p]
Nagi「Hà, a... B-Bên trong... chạm tới rồi♡ Sâu quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Lần sau em có hứa là sẽ tắm rửa đàng hoàng rồi mới đợi anh không?」[p]
Nagi「Vâng♡ Lần sau em sẽ... tắm rửa đàng hoàng rồi mới đợi anh...♡」[p]
Nagi「Làm sạch sẽ... với cơ thể thơm tho... rồi mới làm tình với anh, mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
Nagi「T-Tư thế này xấu hổ lắm... Bị nhìn thấy hết sạch rồi♡」[p]
[舜]「Bị giữ chặt không ngọ nguậy được em ghét lắm à? Thế anh không nhấp nữa đâu nhé?」[p]
Nagi「Kh-Không chịu đâu... Nhấp đi anh♡ Đừng dừng lại mà... Cứ để nguyên thế này cũng được♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R1_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ Chạm tới... chỗ khủng khiếp mất rồi♡ S-Sâu trong bụng... đang run rẩy kìa♡」[p]
Nagi「Ch-Chỗ đó... phần sâu bên trong... Phần đầu của anh chạm tới rồi...」[p]
Nagi「Bên trong bị khám xét sạch sành sanh luôn... Bị khuấy đảo nhầy nhụa ướt át hết cả rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R1_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
[舜]「A~, mùi mồ hôi hòa với mùi giống cái, thành ra cái mùi kinh khủng lắm rồi đấy?」[p]
Nagi「Ư... Xin lỗi anh...♡ Hà, a... Sâu trong cơ thể nóng ran... mồ hôi không ngừng tuôn ra♡」[p]
Nagi「Ưm♡ Xin lỗi anh vì có mùi hôi... Đừng ghét em nhé... A, ưm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「Hà, a... Ưm! Hỏng mất thôi... Mãnh liệt quá... Chạm tới tận cùng rồi...!」[p]
[舜]「Bị vạch cô bé chưa rửa ra thế này, em không thấy xấu hổ à?」[p]
Nagi「X-Xấu hổ chứ... Nhưng mà, tại em không có cả thời gian đi tắm vòi sen cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Thế còn lời cảm ơn đâu? Cơ thể bẩn thỉu thế này mà vẫn được anh ôm ấp, sướng quá còn gì?」[p]
Nagi「Sướng, lắm ạ♡ Cảm ơn anh vì dù em chưa tắm rửa mà vẫn làm tình với em♡」[p]
Nagi「Bị đâm thọc tận sâu bên trong thế này... em vui lắm♡ Sướng lắm ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R1_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ B-Bên trong... Chỗ không được phép... sắp bị nghiền nát mất rồi♡」[p]
Nagi「Ngaa♡ Lên đỉnh mất... Sướng quá đi mất thôi♡」[p]
[舜]「Sướng đến mức nảy cả eo lên cơ à? Này, đừng có khép chân lại...!」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_kaiwa1

[tb_start_text mode=1 ]
Nagi「A, ra phía trước quá... bên ngoài nhìn thấy mất...」[p]
[舜]「Thì sao? Em không định bắt anh tự hiểu đấy chứ? Nói rõ ràng ra xem nào?」[p]
Nagi「X-Xin lỗi anh... Em lỡ lời. Em sẽ làm theo lời anh...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Hửm? Sao em cứ ngó nghiêng xung quanh thế?」[p]
Nagi「L-Lỡ có ai nhìn thấy thì sao... nên em mới nhìn quanh...」[p]
Nagi「E-Em chưa bao giờ mặc đồ lót ra ngoài ban công cả... nên hồi hộp lắm.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_kaiwa3

[tb_start_text mode=1 ]
[舜]「Lỡ bị ai phát hiện thì em định bào chữa thế nào?」[p]
Nagi「L-Làm sao đây... Nếu bị phát hiện... chắc em chẳng nói được gì mất...」[p]
Nagi「Nh-Nhưng mà trời tối rồi... chắc cũng khó nhìn hơn ban ngày... em nghĩ là không sao đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Híuu... Ưm...! Ư... Phù... Phù...」[p]
[舜]「Hê, đang cố nhịn không phát ra tiếng à? Rõ ràng là chẳng có ai mà.」[p]
Nagi「Buổi tối cũng có người ra ban công hút thuốc... nên em nghĩ phải cố không để bị phát hiện...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_supankingu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hyauuu! Đ-Đau... Â-Âm thanh vang vọng hết cả lên rồi...」[p]
[舜]「Em đang nói khéo bảo anh dừng lại đấy à? Anh không thích cái kiểu bắt người khác tự hiểu đâu nhé.」[p]
Nagi「X-Xin lỗi anh...! Em không có ý đó đâu... Anh cứ làm gì tùy thích đi.」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu3

[tb_start_text mode=1 ]
Nagi「Hiaa! A♡ Mông em... râm ran hết cả lên rồi...」[p]
[舜]「Nhưng giọng em, nghe ngọt ngào hơn rồi kìa... Hưng phấn thế lộ hết cả ra rồi.」[p]
Nagi「Hà, a, xin lỗi anh...♡ Ưm...♡ Âm thanh, da thịt bị đánh... vang vọng quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaa♡ Tha cho em đi mà♡ Mỗi lần bị đánh, tiếng kêu to lắm... nên là...♡」[p]
[舜]「A~, khéo có ai thò mặt ra nhìn cũng nên? Nhưng cứ nghĩ lỡ bị nhìn thấy là em lại hưng phấn chứ gì.」[p]
Nagi「Ưm♡ Em không biết, nữa♡ Vừa xấu hổ vừa nóng rực... trong đầu em rối tung hết cả lên rồi.」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Kh-Không nhịn được kêu mất...♡」[p]
[舜]「Nếu không ngại bị hàng xóm phát hiện thì em cứ rên thoải mái đi?」[p]
Nagi「Không được đâu... Từ ngày mai em không biết... phải vác mặt ra chào hỏi thế nào nữa mất...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi2

[tb_start_text mode=1 ]
Nagi「Hà, a♡ Cứ nhắm vào ngực mãi...♡ Em thấy xao xuyến lắm...」[p]
[舜]「Nói xao xuyến thì anh chịu đấy. Có sướng không? Phải nói rõ ràng ra chứ.」[p]
Nagi「V-Vâng... Sướng lắm ạ...♡ Ư, ư...♡ Xin lỗi vì em nói khó hiểu...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Á, thôi mà... Hơn thế này nữa là... thật sự không được đâu. Bị ai nhìn thấy mất...」[p]
[舜]「Hê, thật sự dừng lại cũng được à? Chẳng phải em đang muốn bị vò nát ngực sao?」[p]
Nagi「Ưm♡ Em không muốn anh dừng lại đâu... Được anh chạm vào, em vui lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ngaa♡ Au♡ Chỉ sờ ngực thôi mà... cô bé của em cũng râm ran hết cả lên rồi...」[p]
[舜]「Đang ở ngoài ban công đấy nhé? Đang nhức nhối muốn làm tình lắm rồi à?」[p]
Nagi「A... Chẳng biết sẽ bị ai nhìn thấy lúc nào, thế mà em lại... Xin lỗi anh♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Xung quanh núm vú... bị cào nhẹ... Ưm, cảm giác kỳ lạ lắm... Ưm... Phù, bứt rứt vô cùng...」[p]
[舜]「Em cứ ngọ nguậy thì anh sờ kiểu gì?」[p]
Nagi「Ưm... Ư♡ Xin lỗi anh... Em sẽ cố không ngọ nguậy, mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiijiri2

[tb_start_text mode=1 ]
[舜]「Em muốn anh sờ núm vú đúng không? Như thế này này──」[p]
Nagi「Ưm♡ Phù♡ Phù♡ Tại bị trêu chọc nãy giờ... nên kích thích mạnh quá...」[p]
Nagi「Hàn♡ Ư... Ưm♡ Không chịu đâu... Kh-Không nhịn kêu nổi nữa rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Núm vú cương cứng hết lên rồi kìa? Đứng ngoài ban công mà để núm vú vểnh ngược lên thế này, biến thái thật đấy.」[p]
Nagi「Em xin lỗi ạ...♡ Bị sờ vào... nên núm vú nó tự phản ứng...」[p]
Nagi「Nhưng mà... em không biết làm cách nào để nó xẹp xuống... Ưm♡ Núm vú cứ sưng phồng lên mãi thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_tikubiijiri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ahuu♡ A♡ Phần đầu bị cọ xát... râm ran hết cả lên rồi♡」[p]
[舜]「Chỉ nói phần đầu thì anh chịu đấy? Bị sờ vào đâu thì sướng nào?」[p]
Nagi「Núm vú, ạ♡ Cái núm vú sưng phồng cương cứng này đang sướng lắm ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_teman1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「A♡ Ưm♡ Ưm...♡ Bị khuấy đảo thế này... t-tiếng kêu... Ưm♡」[p]
[舜]「Bên ngoài không nhìn thấy cảnh em đang bị sờ đâu, cứ im lặng thì chắc không lộ đâu?」[p]
Nagi「Ưm, ư♡ Anh có nói thế... thì tiếng rên... vẫn tự động phát ra thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman2

[tb_start_text mode=1 ]
Nagi「Ưm♡ A, aaa♡ Chỗ đó... bị chạm vào... kh-không nhịn được kêu mất...♡」[p]
[舜]「Không kìm giọng lại được à? Hay là để người quen từ xưa chiêm ngưỡng dáng vẻ dâm đãng này nhé? Chắc sẽ thành chủ đề bàn tán đấy nhỉ?」[p]
Nagi「Ưm♡ E-Em sẽ nhịn, mà... Em sẽ cố không phát ra tiếng đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman+=1"  name="H_teman"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... Ư...♡ Hà~♡ Hà~♡ B-Bên trong... ngón tay chạm vào... Ưm♡」[p]
[舜]「Lắc eo để giải tỏa bớt cơn sướng đấy à? Gian xảo thật... Để anh làm cho ướt nhẹp luôn nhé.」[p]
Nagi「Híuu♡ Không giải tỏa nổi...♡ Sâu trong bụng... râm ran hết cả lên rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_teman=0"  name="H_teman"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_teman_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hà♡ Au♡ E-Eo tự động đậy mất...♡ Ư, ư♡」[p]
[舜]「Chắc sẽ có tin đồn về một người phụ nữ chỉ mặc đồ lót đứng rên rỉ dâm đãng đấy nhỉ?」[p]
Nagi「Không, chịu đâu...♡ Em không dám vác mặt đi dạo trong khu chung cư nữa mất...♡ Xấu hổ lắm...」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_anaruijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Vãi, lỗ đít cũng giật giật liên hồi kìa... Em muốn anh sờ cả chỗ này nữa à?」[p]
Nagi「Mông thì không được đâu... Xấu hổ lắm. Đừng nhìn chỗ đó mà...♡」[p]
Nagi「Ư, ư♡ A, bị vuốt ve cảm giác kỳ lạ quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_anaruijiri2

[tb_start_text mode=1 ]
Nagi「A...! Á... Ngón tay... đút vào mất... Ưm... Khó chịu quá...♡ Ngón tay trơn tuột chui tọt vào rồi...♡」[p]
[舜]「A~ khít quá... Đút vào trong này chắc ra nhiều lắm đây...」[p]
Nagi「Ưm♡ Thế thì... đút con cu vào... mông em hỏng mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri+=1"  name="H_anaruijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_anaruijiri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ủa? Hình như nó nới lỏng ra rồi này? Bị sờ lỗ sau ở nơi thế này làm em hưng phấn à?」[p]
Nagi「Ưm♡ Ư...♡ Không phải... Lỗ đít... chỉ là tự nó giật giật thôi...♡」[p]
Nagi「Ưm♡ Nhưng mà... mông em dần dần nóng ran lên rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anaruijiri=0"  name="H_anaruijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_anaruijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Au♡ Mông em...♡ Mất cảm giác luôn mất...♡ Đừng đút ngón tay vào sâu quá mà♡」[p]
Nagi「Hức...♡ A... Aaa♡ Bị khuấy đảo... không được đâu... lỗ đít lỏng lẻo hết ra mất♡」[p]
[舜]「Để cho quen thêm chút nữa, chắc là làm tình lỗ đít cũng được đấy nhỉ.」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_denma1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ A... rung... mạnh quá♡ Vừa mới vào đã lên đỉnh mất thôi♡」[p]
[舜]「Tiếng em vang vọng quá nhỉ? Còn to hơn cả tiếng máy rung nữa đấy?」[p]
Nagi「Kưư... ưm♡ T-Tại vì... kích thích mạnh quá... tiếng rên cứ tự động phát ra thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_denma+=1"  name="H_denma"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_denma2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Hồi nhỏ chúng ta cũng từng chơi đồ chơi rồi. Nhưng lớn lên chơi đồ chơi kiểu này cũng vui đúng không?」[p]
Nagi「Vui lắm ạ♡ Hơn nữa... còn sướng vô cùng... ưm, kưư♡」[p]
Nagi「Em muốn được chơi nhiều hơn nữa... muốn anh dạy cho em thêm nhiều chuyện sung sướng hơn nữa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_denma+=1"  name="H_denma"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_denma3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Lần tới mình mang máy rung ra công viên chơi nhé? Cứ ấn mạnh vào thế này rồi──」[p]
Nagi「Hiưưư♡ Aaa♡ Công viên thì không được đâu... em rên thành tiếng mất...♡」[p]
Nagi「Đầu óc quay cuồng... chẳng biết gì nữa rồi... kưư♡ A, aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_denma=0"  name="H_denma"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_denma_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn ooo♡ Chỗ đó... hạt le... bị ấn mạnh vào... không được đâu...♡」[p]
Nagi「Sướng quá... a, aaaa♡ Không thoát khỏi kích thích được... trong đầu như có pháo hoa nổ tung vậy♡」[p]
Nagi「Mọi thứ chẳng còn quan trọng nữa rồi♡ Đừng, đừng mà đừng mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Ưm...♡ Tiếng rên... phát ra mất...♡ Haa, a... Làm chuyện dâm đãng... ở nơi thế này... là không được mà.」[p]
[舜]「Nhưng cơ thể em có vẻ thích thú lắm mà?」[p]
Nagi「Higuu♡ A♡ Đâu có...♡ Ưm ưm♡ B-Bên trong ngứa ngáy quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Nếu lỡ chạm mắt ai thì cứ đường hoàng mà chào hỏi. Em làm được đúng không? Nào, tập thử xem.」[p]
Nagi「Ưm... hức... haa, a... Ch-Chào buổi tối... X-Xin lỗi vì bộ dạng này của cháu...」[p]
Nagi「T-Tại sao... sao đẹp quá nên... cháu ra ngắm thôi ạ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Nếu người ta hỏi đang làm gì, em có trả lời thành thật được không?」[p]
Nagi「Kh-Không được đâu... Làm sao em d-dám nói là... đang làm tình chứ...♡」[p]
Nagi「Xấu hổ lắm... k-không cử động nổi nữa... ưm♡ Em không muốn bị ai nhìn thấy đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm ưm♡ Kưư...♡ Ha... haa, rõ ràng đang lo sợ bị nhìn thấy...」[p]
Nagi「Vậy mà nghĩ tới... c-cơ thể lại càng nóng rực lên...♡ Sắp trở nên kỳ lạ mất rồi♡」[p]
Nagi「Có lẽ... em trở nên kỳ lạ thật rồi...♡ Ưm... bên trong, sướng quá...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「A♡ Ưm ưm♡ N-Nếu bị ai đó nhìn thấy...! Sẽ đồn ầm lên mất♡」[p]
[舜]「Rõ ràng là tưởng tượng rồi tự hưng phấn mà...! Lại thắt chặt rồi này.」[p]
Nagi「Ưn ưư♡ Ha♡ Haa...♡ A, đừng... rên thành tiếng mất... gây chú ý mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「Hức...♡ Mãnh liệt quá... ưư... bám vào để đứng thôi cũng đã cạn kiệt sức rồi...」[p]
[舜]「Bám cho chắc vào. Lảo đảo là càng dễ bị chú ý đấy nhé?」[p]
Nagi「Ưm... kưư♡ Vâng... em sẽ trụ vững♡ Sẽ cố gắng... đứng vững♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「Ưm... kư... ha, haa, a... Đâm tới tận cùng rồi... aa♡ Đầu quy đầu chạm vào rồi♡」[p]
Nagi「Kưư, lỡ bị ai đó phát hiện thì chết... Không được, vậy mà...」[p]
Nagi「Hồi hộp quá lại càng làm em sướng hơn♡ Sướng không dừng lại được♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn ưư♡ Bên trong, bị ấn bẹp rồi...♡ Đâm trúng chỗ sâu nhất rồi...♡」[p]
Nagi「Ha... ha... Thế này... cứ như bị ép buộc... chuẩn bị tạo em bé vậy...♡」[p]
Nagi「Ưn kưưư♡ Aaa♡ Cơ thể cứ run lên... không dừng lại được♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_kaiwa1

[tb_start_text mode=1 ]
[舜]「Làm chuyện dâm đãng ở đây, tiếng rên vang vọng là dễ bị nhìn thấy lắm đấy nhé?」[p]
Nagi「Xấu hổ quá... đừng mà...♡ Phù... phù... Mọi người trong khu chung cư, toàn là người quen cả mà...♡」[p]
[舜]「Vậy thì phải nhịn rên đi chứ?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Chẳng phải em cũng từng làm tình ngoài ban công rồi sao?」[p]
Nagi「Kh-Không có... chuyện đó đâu...♡ Tại vì là anh Shun... nên em mới nghĩ đến chuyện làm thôi...」[p]
Nagi「Bình thường là em từ chối rồi♡ Chỉ có anh Shun thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Mặc mỗi đồ lót ra ban công thế này là lần đầu tiên đấy... Không có ai nhìn đúng không anh?」[p]
[舜]「Ai biết? Chắc cũng có gã nào đó đang hút thuốc ngoài ban công chứ? Hay là cho hắn xem luôn đi?」[p]
Nagi「Xấu hổ lắm...♡ Nh-Nhưng mà... từ giờ trở đi có thể sẽ còn bị nhìn thấy những bộ dạng xấu hổ hơn nữa đúng không anh?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hiaaa♡ Đau quá... Bị đánh mạnh thế này mông em sưng lên mất...!」[p]
[舜]「Nhưng hông em vẫn đang ưỡn ẹo đấy thôi?」[p]
Nagi「A... k-không, cái này là... vì cảm giác kỳ lạ quá... nên nó tự động di chuyển thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R2_2_supankingu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hiaa♡ Â-Âm thanh... phát ra tiếng kêu lớn quá rồi♡」[p]
[舜]「Có vẻ ai đó sắp nhận ra rồi đấy? Tính sao đây? Lỡ người ta bảo đây là bạo hành gia đình thì sao?」[p]
Nagi「Em sẽ bảo là không phải♡ Rằng anh Shun chỉ đang làm cho em sung sướng thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Nào! Mỗi lần bị đánh là phải nói lời cảm ơn đấy!」[p]
Nagi「Ưm♡ Cảm ơn anh♡ Cảm ơn anh♡ Em yêu anh lắm♡」[p]
Nagi「Dấu tay của anh Shun... in hằn lên mông em mất♡ Đỏ ửng hết cả lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Higuuu♡ Ưn ưư♡ Aa, mông em, tê rần cả lên rồi♡」[p]
[舜]「Vãi... chỉ mới đánh thôi mà cô bé đã ướt nhẹp, dâm thủy chảy ròng ròng xuống tận đùi rồi kìa.」[p]
Nagi「Haa♡ Haa♡ Xin lỗi vì em biến thái quá...♡ Bị đánh... làm em hưng phấn mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Tại sao em lại mặc bộ đồ anh không thích? Để được anh cởi ra sao?」[p]
Nagi「Ưm♡ Em ngàn lần xin lỗi anh♡ Em không biết... là anh ghét đến mức đó...♡」[p]
Nagi「Hãy dạy dỗ cơ thể em đi anh♡ Hãy nhào nặn ngực em... cho em hiểu ra đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi2

[tb_start_text mode=1 ]
[舜]「Từ ngày mai, không biết em sẽ mang bộ mặt nào ra đây phơi đồ nữa nhỉ?」[p]
Nagi「Nhớ lại cảnh bị anh Shun nhào nặn vú... cô bé của em lại thắt lại mất thôi♡」[p]
Nagi「Hồi hộp quá... lỡ không phơi đồ được nữa thì sao đây...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Rõ ràng là thích bị nghịch ngực mà... Phải nói thật đi chứ!」[p]
Nagi「V-Vâng♡ Bị nhào nặn vú... em thích lắm...♡」[p]
Nagi「Được bàn tay to lớn của anh Shun bao trọn, nhào nặn... sâu trong bụng em lại rung lên bần bật♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaaa♡ Cơ thể em sẽ nhớ mất... cảm giác sung sướng khi bị nhào nặn vú...」[p]
Nagi「Mỗi lần đứng ở ban công là em lại nhớ tới... rồi hưng phấn mất thôi♡」[p]
Nagi「Xin lỗi vì em biến thái quá...♡ Nhờ anh Shun mà em mới biết được cảm giác sung sướng này đấy♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm, kưư...♡ Ha... Đầu vú bị mân mê... sướng quá♡」[p]
[舜]「Rên rỉ chuyện dâm đãng lớn tiếng thế cơ mà... Em không thấy mình quá dâm đãng sao?」[p]
Nagi「Ưm♡ Em xin lỗi... Em sẽ cố không nói mấy lời dâm đãng nữa...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubitumami2

[tb_start_text mode=1 ]
[舜]「Em nhịn nói chuyện dâm đãng được không đấy? Bây giờ đang làm gì nào?」[p]
Nagi「Kư... ưm... Đ-Đầu vú... đang bị anh nhéo rồi mân mê ạ...♡」[p]
Nagi「Haa, a... Lại càng dâm đãng hơn mất rồi...♡ Em xin lỗi♡ Em xin lỗi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưn guu♡ Anh nhéo mạnh thế...♡ Đứt mất núm vú mất♡ Em ngốc mất thôi♡」[p]
[舜]「Ây dà, toàn nói mấy lời dâm đãng. Không sợ ảnh hưởng xấu đến lũ trẻ trong khu chung cư sao?」[p]
Nagi「Ưm♡ Em sẽ cẩn thận để không ai nghe thấy đâu mà♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R2_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaaa♡ Bây giờ... cảm giác sung sướng tê dại chạy dọc từ đầu vú...」[p]
Nagi「Làm hông em cũng phải ưỡn ẹo theo...♡ Em lăng loàn quá... ngàn lần xin lỗi anh♡」[p]
Nagi「Aa... hông em cứ ưỡn ẹo không ngừng♡ Không được mà nó cứ tự động di chuyển...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R2_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hiưư♡ Aa♡ Ra mất... không kìm lại được♡」[p]
[舜]「Ra ngoài ban công mà còn phun nước cơ à? Xấu hổ quá đi mất.」[p]
Nagi「Em xin lỗi...♡ Nó cứ tự phun ra... không kìm lại được...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Phải xin lỗi là em lỡ tè dầm rồi chứ. Trẻ con cũng đâu có tè dầm ngoài ban công thế này?」[p]
Nagi「Ưưư... em xin lỗi vì lỡ tè dầm rồi♡ Nhưng mà sướng vô cùng luôn ạ♡」[p]
Nagi「Sâu trong bụng cứ tê rần... cảm giác sung sướng vẫn kéo dài mãi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Hồi nhỏ, chúng ta cũng từng chơi ngoài ban công nhỉ? Rõ ràng bị mắng là nguy hiểm cấm ra, thế mà vẫn lén lút ra chơi.」[p]
Nagi「Ưn ưư♡ Haa, ha... Tại anh Shun rủ ra ngắm cảnh... nên em mới ra mà...♡」[p]
[舜]「Tuy trời tối, nhưng bây giờ vẫn ngắm cảnh được mà? Hay là em vừa phun nước vừa ngắm cảnh bên ngoài đi?」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hyauu♡ Aaaa♡ Chỗ sâu nhất, cứ bị đâm trúng liên tục... hỏng mất thôi...♡」[p]
Nagi「Ưn guu♡ Phun nước không dừng lại được♡ Ha, aaaa♡ R-Rõ ràng là không còn nước để ra nữa mà♡」[p]
Nagi「Bên trong cơ thể em, khô khốc hết cả lên rồi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_2_anarubizu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
[舜]「A~, không chỉ cô bé mà đến cả lỗ đít em cũng ngậm trọn được thế này rồi à.」[p]
Nagi「Nhiii♡ Bên trong cơ thể... đang bị cọ xát♡ Ưn ưư♡ Bị lôi tuột hết ra ngoài mất♡」[p]
Nagi「Haa, ha... Thêm nữa là đít em hỏng mất♡ Kưư♡ Trở nên kỳ lạ mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_anarubizu2

[tb_start_text mode=1 ]
[舜]「Bị kích thích lỗ đít rồi thì đừng có ị đùn ra đấy nhé? Nếu không muốn bị làm ầm lên vì mùi thối.」[p]
Nagi「V-Vâng♡ Em sẽ nhịn ạ♡ Trước mặt anh Shun... em tuyệt đối không làm bậy đâu♡」[p]
Nagi「Ưn ưưư♡ Ahaa♡ Cả mông lẫn bụng đều gồng cứng... kỳ lạ quá đi mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_anarubizu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Lỗ đít em đang giật giật kìa? Có vẻ ngậm luôn cả con cu cũng được đấy nhỉ?」[p]
Nagi「Ưm♡ Kưưư♡ Không thể nhét thêm cái nào to hơn vào được nữa đâu...♡」[p]
Nagi「Nếu anh đút con cu vào... lỗ đít em sẽ hỏng... và cứ mở toác ra mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu=0"  name="H_anarubizu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_anarubizu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「A~, thắt chặt ghê thật... Chỗ này cũng trở nên ngoan ngoãn rồi đấy.」[p]
Nagi「Ưm♡ Haa, a♡ Vâng... anh Shun nói gì em cũng sẽ nghe theo hết♡」[p]
Nagi「Vú, cô bé hay cả lỗ đít... tất cả mọi thứ của em... đều là của anh Shun mà♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_2_baibu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Từ đây nhìn thấy công viên kìa. Ở đằng kia là một cặp đôi nhỉ? Có khi họ đang chú ý đến bên này đấy.」[p]
Nagi「Ưm... kư♡ Haa, ưm ưm... Lỡ bị phát hiện... đang làm gì thì tính sao đây.」[p]
Nagi「Nếu bị phát hiện đang làm tình... thì em không dám đi dạo quanh công viên nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_baibu2

[tb_start_text mode=1 ]
Nagi「Ưm... kư... Chỗ sâu nhất... bị đâm trúng rồi♡ Ọ♡ Ọ ọ♡」[p]
Nagi「Thế này... cô bé hỏng mất thôi... em không đứng vững nổi nữa...♡」[p]
Nagi「Ưn guuu♡ Hahi, aaaa♡ Cô bé trở nên kỳ lạ mất rồi... đầu gối em run lẩy bẩy luôn♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_baibu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Dù sao thì cũng rên thành tiếng rồi... Hay là em hét lớn lên là cô bé đang sướng lắm đi?」[p]
Nagi「V-Vâng♡ Bị dương vật giả đâm sâu vào tận cùng... cô bé sướng lắm ạ♡」[p]
Nagi「A♡ A♡ A♡ Em, sắp rụng rời cả hông rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu=0"  name="H_baibu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R2_2_baibu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn oooo♡ Ưn ưưư♡ B-Bên trong... đâm trúng rồi...」[p]
Nagi「Cả người run lên... sướng quá đi mất... không kìm được tiếng rên nữa♡」[p]
[舜]「Em đã rên đủ to rồi đấy chứ? Nãy giờ toàn tiếng rên dâm đãng vang vọng thôi...!」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R2_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
[舜]「Làm tình ngoài trời, đâm ra nghiện cảm giác giải phóng này rồi chứ gì?」[p]
Nagi「Ưm... haa, a, aa♡ Ưm, cảm giác sung sướng, cứ trào dâng từ tận sâu trong bụng♡」[p]
Nagi「Đây... chính là hưng phấn... nhỉ...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「Dù đang hồi hộp vì sợ bị nhìn thấy...♡ Thế mà lại càng làm em thấy sướng hơn♡」[p]
Nagi「Có lẽ em, đang dần trở nên biến thái rồi... Anh Shun, đừng ghét em nhé♡」[p]
Nagi「Em sẽ ngoan ngoãn nghe lời anh Shun mà...♡ Em chỉ có mình anh Shun thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Rên ra tiếng rồi kìa... Em đã chẳng còn quan tâm đến thứ gì khác nữa rồi đúng không?」[p]
Nagi「Ưm...... Đâu, có... chuyện đó♡ Nhưng trong đầu em giờ chỉ tràn ngập cảm giác sung sướng...」[p]
Nagi「Đến mức không còn tâm trí để bận tâm đến chuyện khác nữa rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R2_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn aaaa♡ Chỗ đó... chỗ đó là... điểm yếu... bị cọ xát rồi♡」[p]
[舜]「Tiếng rên vang vọng quá nhỉ? Ây dà, tiếng vừa nãy chắc làm vài người thò mặt ra xem rồi đấy?」[p]
Nagi「Ưn gu...♡ A, em xin lỗi... Em lỡ, rên to quá...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R2_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Nhi♡ Ha♡ Haa♡ Aa♡ Mãnh liệt quá... em không đứng nổi nữa♡」[p]
Nagi「Oo♡ Đừng... rên mất... em rên thành tiếng mất♡ Ưn ưư♡ Kưưư♡」[p]
Nagi「Haa, ha... Đâm trúng tận cùng rồi... cọ xát sột soạt luôn rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Đừng nhịn nữa, cứ rên mấy tiếng dâm đãng cho người ta nghe đi? Dù sao thì trẻ con cũng ngủ hết rồi.」[p]
Nagi「Ưm...♡ Ha♡ Ha♡ Vâng...♡ Nếu anh Shun đã nói thế... em sẽ rên thành tiếng♡」[p]
Nagi「Tiếng rên sung sướng...♡ Để hàng xóm cùng nghe thấy... aaaa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
[舜]「Nói cho mọi người xung quanh biết đi. Rằng em đã trở thành một cô y tá biến thái cuồng làm tình rồi.」[p]
Nagi「Vâng♡ Em là... một cô y tá biến thái cực kỳ thích con cu của anh Shun...♡」[p]
Nagi「Sau giờ làm việc...♡ Làm tình ngoài ban công... và đang sướng điên lên đây ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R2_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Higuuu♡ Oo♡ Ưn guu♡ Hông em cứ ưỡn ẹo thôi♡」[p]
[舜]「Run lẩy bẩy nãy giờ nhỉ... Lại tự mình thấy sướng rồi à?」[p]
Nagi「Xin lỗi vì em lại tự thấy sướng rồi♡ Bên trong... cứ như bị tê rần hết cả lên ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_kaiwa1

[tb_start_text mode=1 ]
[舜]「Phải bắt đầu bằng màn chào hỏi đàng hoàng chứ. Nói được không?」[p]
Nagi「Vâng... Để anh Shun được sung sướng... hãy cứ dùng cơ thể của em đi ạ♡」[p]
Nagi「Em là... của anh Shun... nên anh cứ làm gì tùy thích♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_kaiwa2

[tb_start_text mode=1 ]
Nagi「Nếu anh Shun muốn làm gì... em cũng muốn đáp ứng...」[p]
[舜]「Kể cả anh bảo em làm nơi giải quyết nhu cầu sinh lý cho anh, em cũng làm được chứ?」[p]
Nagi「Vâng...! Em sẽ làm cho anh Shun sung sướng... chỉ cần anh vui là được♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_kaiwa3

[tb_start_text mode=1 ]
Nagi「Được mặc món đồ anh Shun tặng, em hạnh phúc lắm...♡」[p]
Nagi「Có hợp với em không anh...? A, anh thấy hợp nên mới tặng em đúng không...♡」[p]
Nagi「Mặc trên người suốt cả ngày hôm nay, em cứ thấy bứt rứt mãi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R3_supankingu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hia♡ Aa♡ Vú em đỏ ửng hết lên rồi...♡ Đây cũng là một phần của việc dạy dỗ nhỉ...♡」[p]
Nagi「Để được anh Shun yêu thích... em sẽ cố gắng hết sức♡」[p]
Nagi「Hãy đánh em thật nhiều, dạy dỗ em đi anh...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_supankingu2

[tb_start_text mode=1 ]
Nagi「A...♡ Rõ ràng là đang bị đánh... thế mà đầu vú lại phản ứng mất rồi...♡ Phù, phù... không được mà♡」[p]
Nagi「Anh Shun... xin lỗi vì em làm đầu vú cương cứng lên mất rồi...」[p]
Nagi「Hình như bị đánh làm em thấy sướng rồi... Em ngàn lần xin lỗi vì biến thái quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_supankingu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hyauu♡ A, ưm...♡ Em vui lắm vì được anh Shun trừng phạt...♡」[p]
Nagi「Cảm ơn anh...♡ Bị đánh trong bộ dạng này... em hạnh phúc đến đê mê luôn...」[p]
Nagi「A, nếu vậy thì trừng phạt đâu còn ý nghĩa gì nữa nhỉ... Em xin lỗi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_supankingu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Auuu♡ Khoảnh khắc bị đánh, cảm giác nóng ran lan tỏa dần ra...♡」[p]
Nagi「Haa♡ Haa♡ Tính sao đây... sướng quá đâm ra nghiện mất thôi...」[p]
Nagi「Em... chẳng còn nghĩ được gì ngoài mấy chuyện dâm đãng nữa rồi... Trở thành một đứa lăng loàn mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... aaaa♡ Bị anh chạm vào như đang thưởng thức cảm giác... xấu hổ quá... đầu vú, phản ứng mất rồi...♡」[p]
[舜]「Đầu vú em đã cương cứng vểnh ngược lên từ lâu rồi còn gì.」[p]
Nagi「Cả bầu vú trở nên nhạy cảm... sướng quá đi mất♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_munemomi2

[tb_start_text mode=1 ]
Nagi「Hiaaa♡ Toàn là vú... bị nhào nặn thôi...♡」[p]
Nagi「Dù không nhìn thấy, nhưng chỉ bằng cảm giác em cũng biết là anh Shun đang chạm vào♡」[p]
Nagi「Cả cơ thể em... đều ghi nhớ cảm giác của anh Shun♡ Cả cách anh chạm vào, hay cách anh vuốt ve♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... haa, a... Cảm giác từ ngón tay anh Shun... vú em nhớ rõ lắm♡」[p]
Nagi「Aa... chỉ cần nhớ lại thôi là cô bé đã nóng rực lên rồi...♡」[p]
Nagi「Phù... phù... Em, đang dần trở thành một đứa dâm đãng mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Auu♡ Vú em sướng quá♡ Suốt cả ngày hôm nay, em luôn khao khát được anh chạm vào thế này đấy♡」[p]
[舜]「Làm việc mà lúc nào cũng nứng thế cơ à?」[p]
Nagi「Vâng...♡ Lúc nào em cũng mong được anh Shun nhanh chóng chạm vào... trong đầu chỉ nghĩ đến chuyện đó thôi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_tikubiijiri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưn ưư♡ Aaaa♡ Đ-Đầu vú, bị mân mê... em thích lắm...♡」[p]
[舜]「Đúng là em thích bị nghịch đầu vú thật nhỉ?」[p]
Nagi「Ưm, kưưư♡ Vâng♡ Aa... bị chạm vào như đang trêu chọc, người em nóng ran lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_tikubiijiri2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưn aaaa♡ Bị búng mạnh như thế...♡ Đầu em, tê rần cả lên♡」[p]
[舜]「Mới bị chạm vào đầu vú thôi mà đã ướt sũng rồi đúng không? Phải nói thật cho anh biết chứ?」[p]
Nagi「Haa, ha... C-Chắc là ướt rồi ạ...♡ Tại đầu vú, sướng quá mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri+=1"  name="H_tikubiijiri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_tikubiijiri3

[tb_start_text mode=1 ]
[舜]「Đang như thế nào rồi, em phải nói ra chứ...!」[p]
Nagi「A... aa♡ Càng lúc càng nhạy cảm hơn... em chẳng còn nghĩ được gì ngoài việc đầu vú đang sướng râm ran♡」[p]
Nagi「Đầu óc em mông lung... chỉ muốn được anh chạm vào nhiều hơn nữa... chẳng nghĩ được gì khác cả♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubiijiri=0"  name="H_tikubiijiri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_tikubiijiri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Hiưưư♡ A♡ Ưm♡ Luồng điện, giật tê tái...」[p]
Nagi「Rõ ràng chỉ là đầu vú thôi... mà em lên đỉnh mất... sướng quá đi mất♡」[p]
Nagi「Haa...♡ Hông em cũng tự động ưỡn ẹo... không dừng lại được♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_kosihuri1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Hay là để em tự giới thiệu bản thân nhé. Vừa lắc hông vừa cho anh biết em dâm đãng đến mức nào đi?」[p]
Nagi「Haa♡ Vâng♡ Cả cơ thể lẫn trái tim em đều là của anh Shun...♡」[p]
Nagi「Để anh Shun được thỏa mãn... hãy cứ dùng cơ thể em tùy thích đi ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kosihuri+=1"  name="H_kosihuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kosihuri2

[tb_start_text mode=1 ]
Nagi「Haa, haa, ưm... Thế nào, ạ? Em làm có giỏi không?」[p]
[舜]「Phải lắc hông sao cho anh nhìn rõ cô bé hơn chứ.」[p]
Nagi「V-Vâng♡ Nhìn đi anh...♡ Đây là cô bé để anh Shun dùng đấy ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kosihuri+=1"  name="H_kosihuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kosihuri3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Cơ thể này sinh ra để làm gì nhỉ?」[p]
Nagi「Để làm cho anh Shun sung sướng... sinh ra để hầu hạ anh ạ♡」[p]
Nagi「Em sẽ chuẩn bị... để anh Shun bắn ngập tinh dịch vào bên trong em...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kosihuri=0"  name="H_kosihuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kosihuri_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Kư... ưm ưm♡ Phù, phu... S-Sâu trong bụng... thắt lại rồi...♡」[p]
[舜]「Mới lắc hông thôi mà đã hưng phấn rồi à? Biến thái thật đấy.」[p]
Nagi「Vâng...♡ Em là đồ biến thái... Đang ngứa ngáy... muốn thắt chặt lấy con cu của anh Shun đây ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_kiss1

[tb_start_text mode=1 ]
Nagi「Chu, churururu, chu, ưm... Em không, thở được...」[p]
[舜]「Đừng có luyên thuyên chuyện bao đồng, lè lưỡi ra liếm đi chứ?」[p]
Nagi「V-Vâng♡ Chụt, chụt chụt, chụt chụt♡ Ưm... lưỡi em tan chảy mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kiss2

[tb_start_text mode=1 ]
Nagi「Chu, chụt, chụt chụt♡ Ưm♡ Chỉ hôn thôi mà... em đã thấy sướng rồi♡」[p]
[舜]「Vì không nhìn thấy nên đến cả trong miệng cũng trở nên nhạy cảm hơn à? Quấn lấy lưỡi anh đi.」[p]
Nagi「V-Vâng♡ Chụt chụt, chụt, chụt chụt♡ Ưm, nụ hôn ướt át này, sướng quá♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss+=1"  name="H_kiss"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kiss3

[tb_start_text mode=1 ]
[舜]「Ưm... Em hôn, giỏi hơn trước rồi đấy...」[p]
Nagi「Chụt chụt, ưm♡ Được anh khen em vui lắm...♡ Ưm, chụt chụt♡」[p]
Nagi「Để anh vui hơn nữa... em sẽ làm tình giỏi hơn nữa♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kiss=0"  name="H_kiss"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kiss_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Chụt chụt chụt♡ Ưn phuu...! Ưm... phù, phù... Rõ ràng chỉ là hôn thôi mà...」[p]
Nagi「Cơ thể... cảm giác sung sướng giật tung lên chạy dọc khắp người...♡ Chụt chụt, chụt chụt」[p]
Nagi「Ưm... chu, chụt, em không muốn rời môi anh chút nào...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_kubisime1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ư, aaaa... Khó thở quá... a, ưư... em không, thở được...」[p]
[舜]「Bị bịt mắt, lại còn bị bóp cổ, chắc em đang sợ chết khiếp nhỉ?」[p]
Nagi「Em không sao...♡ Vì là anh Shun làm cho em... nên em...♡ Vui lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kubisime+=1"  name="H_kubisime"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kubisime2

[tb_start_text mode=1 ]
Nagi「Ha♡ Ha♡ Ha♡ Aa... Đầu óc em... m-mông lung quá...」[p]
[舜]「Thè cả lưỡi ra cứ như chó con ấy nhỉ? Khó thở không?」[p]
Nagi「Kh-Khó thở, lắm ạ... ưn gu, guu... Nhưng em là của anh Shun... nên anh cứ làm gì tùy thích đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kubisime+=1"  name="H_kubisime"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kubisime3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ây dà, nước dãi chảy ròng ròng rồi kìa. Nếu muốn anh dừng lại thì thử cầu xin xem nào?」[p]
Nagi「Ư, aaaa... Xin anh tha cho em... em, xin anh... ưn guuu♡」[p]
Nagi「Không... được rồi... ý thức... mất đi... auuu... khó thở quá... ưn guuu♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kubisime=0"  name="H_kubisime"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_kubisime_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn guuu...♡ Rõ ràng là sắp chết rồi...♡ Mà sâu trong bụng... lại nóng rực lên... ưn ưưư♡」[p]
[舜]「Làm cái vẻ mặt sung sướng thế kia. Thôi, đến đây thôi.」[p]
Nagi「Khục! Khục! Khục! Haa, haa, haa... Cảm ơn anh...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「A... aa... Nó to lên nhiều quá...♡ Anh đang hưng phấn vì em sao...?」[p]
Nagi「Em vui lắm♡ Em muốn... được hầu hạ con cu của anh Shun nhiều hơn nữa...♡」[p]
Nagi「Anh hãy sướng thật nhiều đi ạ... ưm♡ Hãy bắn thật nhiều tinh dịch ra nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_pisuton_yukkuri2

[tb_start_text mode=1 ]
[舜]「Hửm? Tức là em thấy vinh hạnh khi được đút con cu của anh vào sao?」[p]
Nagi「Vâng... vinh hạnh lắm ạ...♡ Em rất vui vì làm cho con cu của anh Shun sung sướng♡」[p]
Nagi「Em sẽ hứng trọn tất cả... nên anh cứ dùng tùy thích đi ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Em có biết là anh đang cực kỳ hưng phấn không? Chắc cô bé của em cảm nhận được rõ nhỉ?」[p]
Nagi「Vâng♡ Em biết chứ...♡ Cảm ơn anh vì đã hưng phấn vì em...♡」[p]
Nagi「Anh hãy sướng nhiều hơn nữa đi... rồi rót đầy tinh dịch vào trong em nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Higuuu♡ Aaaa♡ B-Bên trong... bị cọ xát... hông em cứ nảy lên thôi♡」[p]
[舜]「Này! Đừng có rụt hông lại trốn thế chứ...!」[p]
Nagi「Auu♡ Em xin lỗi... anh cứ đâm tùy thích đi ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「Ưm... haaa, a♡ Vì không nhìn thấy... nên em nhạy cảm hơn bình thường...」[p]
Nagi「Bị làm mạnh là em lên đỉnh ngay mất♡ A♡ A♡ A♡ Cảm giác sung sướng ập đến rồi♡」[p]
Nagi「Ưm... kưưư♡ Em sẽ nhịn cho đến khi anh Shun ra ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_pisuton_hagesiku2

[tb_start_text mode=1 ]
[舜]「Kinh thật, thắt chặt quá... Bị bịt mắt rồi bị trói thế này lại càng làm em hưng phấn hơn à?」[p]
Nagi「Vâng♡ Chỉ cần nghĩ đến việc đang bị anh Shun thuần hóa... là sâu trong bụng em lại thắt lại...」[p]
Nagi「Làm em thấy sướng hơn bình thường nhiều lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「A♡ Auu♡ Aa♡ Đâm tới tận cùng rồi...♡ Tuyệt quá♡」[p]
[舜]「Chỉ biết sướng thôi thì đâu có làm anh thỏa mãn được?」[p]
Nagi「Em xin lỗi♡ Anh hãy sướng đi ạ... hãy dùng cô bé của em mà sục cu thật nhiều đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaaa♡ Chỗ đó... là điểm yếu mà... kưư... ưm♡ Ưm♡ Ưm♡」[p]
[舜]「Bên trong co giật kinh thật đấy... Đang định vắt kiệt tinh dịch của anh à?」[p]
Nagi「Vâng♡ Tinh dịch của anh Shun... em muốn dùng cô bé ừng ực nuốt trọn hết♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_2_kaiwa1

[tb_start_text mode=1 ]
Nagi「Hôm nay, vì không mặc đồ lót nên em cứ hồi hộp sợ bị phát hiện mãi.」[p]
[舜]「Đúng như anh nói, em cứ thế đi làm thật à?」[p]
Nagi「Vâng...♡ Vì anh Shun đã bảo em phải làm thế mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_2_kaiwa2

[tb_start_text mode=1 ]
[舜]「Thở dốc ghê thế? Đang mong đợi lắm à?」[p]
Nagi「Phù... phù... Vâng...♡ Em mong được anh Shun chạm vào lắm...」[p]
Nagi「Cơ thể em nóng rực lên rồi... cô bé cũng ngứa ngáy hết cả lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa+=1"  name="H_kaiwa"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_2_kaiwa3

[tb_start_text mode=1 ]
Nagi「Hôm nay lúc nào em cũng mang tâm trạng dâm đãng... chỉ mong được anh nhanh chạm vào thôi.」[p]
Nagi「Anh Shun... hãy yêu chiều em thật nhiều nhé... em cũng sẽ làm cho anh Shun sung sướng mà.」[p]
Nagi「Được anh dạy dỗ nhiều như thế, nên anh có bảo làm gì em cũng sẽ đáp ứng hết mình...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_kaiwa=0"  name="H_kaiwa"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*R3_2_supankingu1

[tb_start_text mode=1 ]
[舜]「Bị đánh đít thì phải nói gì nhỉ!? Không nói thì anh không biết đâu đấy?」[p]
Nagi「Hiư♡ Aa♡ Cảm ơn anh♡ Cảm ơn anh♡ Em vui lắm♡」[p]
Nagi「Hãy đánh đít em... và dạy dỗ em thật nhiều đi ạ♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*R3_2_supankingu2

[tb_start_text mode=1 ]
Nagi「Hyauuun♡ Aa... dù không nhìn thấy... em cũng biết anh Shun đang làm vẻ mặt gì♡」[p]
Nagi「Hơi thở dồn dập... bàn tay nóng rực... chắc anh đang hưng phấn lắm nhỉ.」[p]
Nagi「Em vui lắm vì anh hưng phấn vì em♡ Hãy đánh em nhiều hơn nữa đi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu+=1"  name="H_supankingu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_supankingu3

[tb_start_text mode=1 ]
Nagi「Auu♡ Ha♡ Ha♡ Mông em, bắt đầu nóng ran lên rồi...♡」[p]
[舜]「Dấu tay đỏ ửng, in hằn rõ mồn một rồi kìa?」[p]
Nagi「Dấu vết bị anh Shun đánh... lưu lại làm em vui lắm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supankingu=0"  name="H_supankingu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_supankingu_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Higuuu♡ Ưm... haa♡ B-Bên trong... cũng nóng ran lên rồi♡」[p]
Nagi「Cảm ơn anh vì đã đánh em thật nhiều♡ Giờ vẫn còn rát lắm...」[p]
Nagi「Quả nhiên em chỉ có mình anh Shun thôi...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_2_munemomi1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ Haa, ha... Mãnh liệt quá... vú em bị nhào nặn tung tóe hết rồi...♡」[p]
[舜]「Mềm quá... Vú này là của ai nhỉ?」[p]
Nagi「Là của anh Shun, ạ♡ Cả vú này... lẫn cơ thể này, tất cả đều chỉ là của anh Shun thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_munemomi2

[tb_start_text mode=1 ]
Nagi「Ưm... ha... Bị nhào nặn mạnh thế này vú em, biến dạng mất...♡」[p]
[舜]「Dấu tay anh in hằn lại thì em vui lắm mà đúng không?」[p]
Nagi「Vâng...♡ Dấu vết chứng minh được anh Shun chạm vào lưu lại... em vui lắm...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi+=1"  name="H_munemomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_munemomi3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Em mặc quần áo đè lên bộ dạng này để đi làm à? Vì muốn được nhào nặn vú thế này sao?」[p]
Nagi「Vâng...♡ Em chỉ muốn nhanh chóng được anh Shun nhào nặn vú thôi♡」[p]
Nagi「Suốt cả ngày hôm nay, lúc nào em cũng nứng hết cả lên♡ Xin lỗi vì em biến thái quá...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_munemomi=0"  name="H_munemomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_munemomi_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Auuu♡ Vú em sướng quá...♡ Ha, haa♡ Sâu trong bụng... tê rần cả lên♡」[p]
[舜]「Đầu vú cũng cương cứng vểnh ngược lên rồi kìa? Sướng đến thế cơ à?」[p]
Nagi「Sướng lắm ạ...♡ Cả cơ thể nóng rực lên... vú em cứ như bị tê dại đi rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_2_tikubitumami1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hiưưư♡ Aaa♡ Đ-Đầu vú, đừng... đang nhạy cảm lắm, nên♡」[p]
[舜]「Vì không nhìn thấy nên cảm nhận nhạy cảm hơn nhỉ...」[p]
Nagi「Aaaa♡ Kư, ưm...♡ Vâng... đ-đầu vú em tê rần cả lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_2_tikubitumami2

[tb_start_text mode=1 ]
Nagi「Hiưư♡ A♡ Chỉ có đầu vú... bị nhéo mạnh một cái... em trở nên kỳ lạ mất thôi♡」[p]
Nagi「Aaaa♡ Hông em... tự ưỡn ẹo rồi...♡ Aaaa♡ Ưỡn ẹo thế này xấu hổ quá♡」[p]
Nagi「Đ-Đừng nhìn em mà...♡ Bộ dạng này... xấu hổ lắm...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami+=1"  name="H_tikubitumami"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_2_tikubitumami3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưn kưư♡ Bị nhéo rồi mân mê... tuyệt quá...♡ Đầu vú... tê dại đi rồi...♡」[p]
Nagi「Aaaa♡ Cảm giác sung sướng truyền từ vú xuống tận cô bé luôn...!」[p]
Nagi「Tất cả những nơi bị anh Shun chạm vào... đều sướng lắm ạ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_tikubitumami=0"  name="H_tikubitumami"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low3==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high3==1"  ]
[return  ]
*R3_2_tikubitumami_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Oo♡ Ưm♡ Đừng... đầu vú nóng rực lên rồi... aaaa♡」[p]
[舜]「Bị nhéo đầu vú mà hông cứ ưỡn ẹo liên tục à? Mới chỉ nghịch đầu vú thôi mà đã sắp lên đỉnh rồi kìa.」[p]
Nagi「Hahii♡ Chỉ là đầu vú thôi mà... cảm giác sung sướng cứ trào dâng...♡ Em sắp lên đỉnh mất rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
[return  ]
*R3_2_siohuki1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Hiư... ưn ưưư♡ Ha... Em xin lỗi♡ Em làm bẩn chăn mất rồi♡」[p]
[舜]「Em phải xin lỗi vì lỡ tè dầm làm bẩn chăn chứ... Nào, mau lên...!」[p]
Nagi「Ưm...♡ E-Em lỡ tè dầm... làm bẩn chăn rồi, em xin lỗi♡ Xin anh tha cho em♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_siohuki2

[tb_start_text mode=1 ]
Nagi「Haa, aaaa♡ Oo♡ Bụng em... cứ run lên... như đang co giật vậy...」[p]
Nagi「Kh-Không dừng lại được...♡ Sướng quá♡ Không kìm lại được... em trở nên kỳ lạ mất thôi♡」[p]
Nagi「Nước nôi trong người, sắp tuôn ra hết rồi...♡ Cơ thể em khô khốc mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki+=1"  name="H_siohuki"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_siohuki3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Cảm giác sung sướng vẫn còn mãi♡ Chẳng dứt chút nào...♡ Trở nên kỳ lạ mất thôi♡」[p]
Nagi「Hiư, trong đầu em, cháy rụi mất thôi...♡ O♡ O♡ Ooo♡」[p]
[舜]「Kinh thật, cứ phun nước liên tục như đài phun nước vậy...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_siohuki=0"  name="H_siohuki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_siohuki_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Sướng quá♡ Phun nước... không dừng lại được đâu...♡ Auu♡」[p]
[舜]「Dâm quá... hông em cứ run lẩy bẩy nãy giờ kìa...」[p]
Nagi「Sướng quá nên... cơ thể cứ tự động di chuyển thôi♡ Em chẳng nghĩ được gì nữa...♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_2_anarubizu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t1.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưm... kưưư♡ L-Lỗ đít... có cảm giác kỳ lạ quá...♡」[p]
[舜]「Đến cả lỗ đít cũng đóng mở liên tục, trông có vẻ vui sướng lắm nhỉ?」[p]
Nagi「Được anh Shun nghịch thật nhiều... lỗ đít em sướng lắm ạ...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_anarubizu2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Đến lỗ đít cũng biết sướng rồi cơ à?」[p]
Nagi「Vì được anh Shun dạy dỗ mà...♡ Đến cả lỗ đít cũng biết sướng rồi ạ♡」[p]
Nagi「Hãy dạy cho em... thêm nhiều chuyện sung sướng hơn nữa đi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu+=1"  name="H_anarubizu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_anarubizu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Ây dà... lỗ đít em đang mở toác ra kìa?」[p]
Nagi「Haa♡ A♡ Aa♡ Xấu hổ quá... bên trong cơ thể cũng bị anh Shun nhìn thấy hết rồi...」[p]
Nagi「Lỗ đít mở toác ra thế này... ngàn lần xin lỗi vì để anh thấy bộ dạng khó coi này ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_anarubizu=0"  name="H_anarubizu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_anarubizu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn aaaa♡ Oooo♡ Truyền tới tận nội tạng rồi... em trở nên kỳ lạ mất♡」[p]
[舜]「Trông em có vẻ kỳ lạ sẵn rồi mà?」[p]
Nagi「Ưm♡ Vâng♡ Em chẳng còn nghĩ được gì ngoài việc sướng... có lẽ em trở nên kỳ lạ thật rồi♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_2_baibu1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t2.mp3"  ]
[tb_start_text mode=1 ]
Nagi「Ưn oooo♡ Ưm, kưưư♡ Mãnh liệt quá... hỏng mất♡ Hỏng mất thôi♡」[p]
[舜]「Uốn éo nhiều quá rồi đấy... Này, đừng có tự ý rụt hông lại chứ...!」[p]
Nagi「Ooo♡ Em xin lỗi...♡ E-Em không tự ý di chuyển nữa đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_baibu2

[tb_start_text mode=1 ]
Nagi「Uuuu♡ B-Bên trong... rung lên rồi...♡ Oo♡」[p]
Nagi「Kích thích, mạnh quá... đầu óc em, trắng xóa hết rồi... ưn aaaa♡」[p]
Nagi「Cứ lên đỉnh mãi thôi... mất...♡ Em trở nên kỳ lạ mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu+=1"  name="H_baibu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_baibu3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t4.mp3"  ]
[tb_start_text mode=1 ]
[舜]「Nếu dương vật giả sướng thế thì cứ để nguyên thế này mãi cũng được nhỉ?」[p]
Nagi「A, đừng đừng đừng mà♡ Oo♡ Thật sự, trở nên kỳ lạ, mất thôi...♡」[p]
Nagi「Aaaa, c-cảm giác sung sướng cứ trào dâng... tràn ngập mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_baibu=0"  name="H_baibu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low5==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high"  cond="f.H_high5==1"  ]
[return  ]
*R3_2_baibu_hit

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_t3.mp3"  ]
[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Higuuu♡ O♡ Oo♡ Giọng kỳ lạ, phát ra mất rồi...♡」[p]
[舜]「Nãy giờ rên đủ giọng kỳ lạ rồi đấy... Dâm quá làm anh cứ cương cứng nãy giờ đây này.」[p]
Nagi「Haa♡ Aaaa♡ Em muốn con cu của anh Shun♡ Hãy đâm... tới tận cùng đi anh♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*hit"  cond=""  ]
*R3_2_pisuton_yukkuri1

[tb_start_text mode=1 ]
Nagi「Ưm♡ A♡ Aa♡ Em sẽ... làm cho anh Shun sướng...♡」[p]
[舜]「Vậy thì em cũng phải tự lắc hông đi chứ...! Nào, mau lên.」[p]
Nagi「V-Vâng♡ Ưm♡ Cách chuyển động mà anh Shun đã dạy... anh hãy nhìn nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_pisuton_yukkuri2

[tb_start_text mode=1 ]
Nagi「Ưm♡ O♡ Oo♡ Con cu, to lên rồi...♡」[p]
Nagi「Anh Shun... đang sướng khi ở bên trong em đúng không... em vui lắm...♡」[p]
Nagi「Anh hãy dùng em để làm con cu sướng thật nhiều đi ạ...♡ Hãy cứ dùng em tùy thích♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri+=1"  name="H_supiritasu_pisuton_yukkuri"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_pisuton_yukkuri3

[tb_start_text mode=1 ]
[舜]「Bản thân em cũng phải tự chuyển động hông chứ... Đang định làm cho anh sướng cơ mà?」[p]
Nagi「Em ngàn lần xin lỗi anh♡ Haa, a♡ Nh-Nhìn em đi anh...♡ Em sẽ chuyển động hông mà♡」[p]
Nagi「Hiưư...♡ Ưm... Toàn là em... thấy sướng thôi...♡ Em xin lỗi anh♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_yukkuri=0"  name="H_supiritasu_pisuton_yukkuri"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low1==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high1==1"  ]
[return  ]
*R3_2_pisuton_yukkuri_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưn aaaa♡ B-Bên trong... cọ xát sột soạt... đâm trúng rồi... ưm♡ Oo♡」[p]
[舜]「Đấy, lại tự mình thấy sướng rồi. Phải xin lỗi anh đi chứ!」[p]
Nagi「Kư... ưm♡ Ngàn lần xin lỗi anh vì em không kìm nén được cảm giác sung sướng này♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
*R3_2_pisuton_hagesiku1

[tb_start_text mode=1 ]
Nagi「A♡ Ưm♡ Oooo♡ S-Sướng quá... ưn ưưư♡」[p]
[舜]「Tự tiện lên đỉnh đấy à? Bên trong đang thắt chặt lắm nên anh biết thừa rồi đấy...!」[p]
Nagi「Hiaaa♡ Em xin lỗi...♡ Tại sướng quá em không kìm được... xin anh tha cho em♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_pisuton_hagesiku2

[tb_start_text mode=1 ]
Nagi「A♡ A♡ A♡ M-Mãnh liệt quá... em trở nên kỳ lạ mất... lại... sướng nữa rồi♡」[p]
Nagi「Kưưư... Em sẽ nhịn, ạ♡ Cho đến khi anh Shun sướng...! Em sẽ cố gắng♡」[p]
Nagi「O♡ Ưn ưư...♡ Đừng... cảm giác sung sướng ập đến mất... thứ gì đó tuyệt lắm đang trào dâng lên♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku+=1"  name="H_supiritasu_pisuton_hagesiku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_pisuton_hagesiku3

[tb_start_text mode=1 ]
Nagi「Ưn gu♡ Mãnh liệt quá... oo♡ Sâu trong bụng... c-cứ như bị ấn bẹp vậy...♡」[p]
[舜]「Đâm trúng cửa tử cung rồi à? Em muốn anh ngoáy mạnh vào đây đúng không?」[p]
Nagi「Vâng♡ Hãy dùng con cu... mà ngoáy đảo đi anh♡ Hãy cho cô bé của em hiểu ra đi ạ♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_supiritasu_pisuton_hagesiku=0"  name="H_supiritasu_pisuton_hagesiku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_serihu_nagi.ks"  target="*low"  cond="f.H_low2==1"  ]
[call  storage="H_serihu_nagi.ks"  target="*high2"  cond="f.H_high2==1"  ]
[return  ]
*R3_2_pisuton_hagesiku_hit

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Oooo♡ Nội tạng, bị đẩy ngược lên rồi...♡ Con cu đang quậy phá trong bụng em♡」[p]
Nagi「Aaa♡ Cả hình dáng lẫn nhiệt độ của anh Shun... em bị ép phải nhớ hết rồi♡」[p]
Nagi「Ha♡ Ha♡ Ha♡ Cả cơ thể lẫn đầu óc em ngốc nghếch hết rồi♡ Không... được đâu♡」[p]
[_tb_end_text]

[call  storage="H_serihu_nagi.ks"  target="*high2"  cond=""  ]
[return  ]
