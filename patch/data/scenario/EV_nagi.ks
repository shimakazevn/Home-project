[_tb_system_call storage=system/_EV_nagi.ks]

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

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_date_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（Cứ như đang mơ vậy……Người con gái mình vẫn luôn ngắm nhìn qua cửa sổ, giờ lại đang sánh bước bên cạnh mình thế này.）[p]
Lén liếc nhìn sang bên cạnh, tôi thấy Nagi đang vừa đi vừa dáo dác nhìn quanh.[r]Mang theo sự căng thẳng và một chút cảm giác không thoải mái, chúng tôi rảo bước trên phố.[p]
[舜]「Cứ đi dạo loanh quanh không có mục đích gì thế này cũng được sao?」[p]
#凪
Nagi「Ừm. Bình thường tớ cũng hay đi mua sắm kiểu này. Dù lúc nào cũng chỉ có một mình.」[p]
――Thế còn Hayato đâu? Tôi toan hỏi vậy, nhưng rồi lại nuốt ngược vào trong.[p]
[舜]（Nhưng mà... cũng phải 15 năm rồi nhỉ. Mình nên nói chuyện gì đây...）[p]
Bất chợt, Nagi đưa tay chỉ.[p]
#凪
Nagi「Shun-chan, nhìn kìa! Cửa hàng đó vẫn còn kìa. Tiệm văn phòng phẩm ấy, cậu nhớ không?」[p]
[舜]「À. Chỗ đó có bán cục tẩy có mùi thơm thì phải.」[p]
#凪
Nagi「Ừm. Rõ ràng là được bảo chỉ được chọn một cái thôi, thế mà tớ lại không chọn được……」[p]
[舜]「Cậu cứ xếp mấy cục tẩy ra rồi đứng hình luôn mà. Bác chủ tiệm lo lắng lắm đấy.」[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif" wait="false"]Nagi「Giỏi quá, cậu nhớ rõ thật đấy...!」[p]
Nagi bật cười đầy ngạc nhiên. Gương mặt đó chẳng khác chút nào so với ngày xưa.[p]
[舜]（Gì chứ... Khoảng thời gian không nói chuyện với nhau, chẳng phải có thể vượt qua trong chớp mắt sao.）[p]
Vừa rảo bước trên phố, chúng tôi vừa chỉ trỏ khắp nơi và ôn lại những kỷ niệm thuở nhỏ.[r]Chuyện Nagi bị lạc và tôi đi đón. Chuyện đi mua tấm lót vở của bộ anime nổi tiếng thời đó...[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif" wait="false"]Nagi「Giỏi thật đấy, Shun-chan nhớ mọi thứ luôn.」[p]
Ngắm nhìn những cửa tiệm cũ kỹ còn sót lại trên phố, ký ức chợt ùa về không sao ngăn được.[r]Đến mức tôi tự hỏi tại sao bấy lâu nay mình lại có thể quên được những điều đó.[p]
[舜]（Nếu cứ thế, mình và Nagi không trở nên xa cách... liệu có điều gì thay đổi không nhỉ.）[p]
Ngực tôi nhói đau. Nagi vẫn mỉm cười ngây thơ, chẳng hề hay biết tâm trạng của tôi lúc này.[p]
#凪
Nagi「Này, cậu nhớ chỗ này không?」[p]
Nơi cô ấy chỉ là một cửa hàng trưng bày những chiếc máy chơi game cổ điển.[p]
#凪
Nagi「Thực ra, tớ rất muốn cùng cậu đến đây. Hồi nhỏ, bọn mình chơi game ở nhà tớ nhiều lắm đúng không?」[p]
[舜]「À, nhớ chứ...! Bọn mình còn thi đấu sống mái với nhau cơ mà.」[p]
#凪
Nagi「Máy chơi game nhà tớ vẫn còn xài được đấy. Dù dạo này tớ không đụng đến nữa……」[p]
[舜]「Ồ, tuyệt đấy.」[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif" wait="false"]Nagi「Mình mua mấy trò ngày xưa về chơi nhé? [r]Rồi... tổ chức đại hội game ở nhà tớ thì sao hả? Cậu trai.」[p]
Ánh mắt nhìn thẳng của cô ấy khiến tôi bất giác xao xuyến. Nhưng chẳng có lý do gì để tôi từ chối cả.[p]
[舜]「Ừ.」[p]
Tôi cố gắng trả lời một cách vui vẻ và tự nhiên nhất có thể.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Đã lâu lắm rồi tôi mới lại ghé thăm nhà của cô bạn thuở nhỏ.[p]
Thú thực, tôi đã hơi dè chừng, tưởng rằng bầu không khí sẽ có chút gì đó ướt át, nhưng──[p]
[_tb_end_text]

[call  storage="character.ks"  target="*nagi_heyagi"  ]
[tb_start_text mode=1 ]
#凪
Nagi「Nào, chuẩn bị xong hết rồi đây. Mình bắt đầu chơi trò nào trước nhỉ?」[p]
Cùng với giọng nói lanh lảnh, Nagi quay lại phòng khách, cô ấy đã thay bộ đồ mặc ở nhà.[p]
Một bộ đồ thoải mái với chiếc áo phông quá khổ và chiếc váy ngắn.[r]Nhìn dáng vẻ thư giãn, buông lỏng đôi vai ấy, tôi bỗng cảm thấy yên tâm đến lạ.[p]
[舜]「Ồ……Phong cách khác hẳn lúc ở ngoài nhỉ.」[p]
#凪
Nagi「Ở nhà tớ thích mặc đồ thoải mái hơn.[r]Tớ chẳng biết gì về thời trang cả, thực lòng cũng không muốn ăn diện đâu,[r]chỉ là lúc đi làm thì bắt buộc phải thế thôi.」[p]
Nagi vừa cười bẽn lẽn vừa ngồi phịch xuống sàn nhà.[p]
[舜]（Vậy à... Có lẽ bình thường cô ấy đã phải cố gắng rất nhiều.）[p]
Những lời nói mộc mạc của cô ấy lặng lẽ thấm sâu vào trái tim tôi.[p]
Tuy không có sự "ướt át" như tôi tưởng tượng,[r]nhưng tôi có cảm giác trong căn phòng này còn có thứ gì đó quan trọng hơn thế.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="event/nagi1.png"  ]
[tb_cg  id="cg_nagi1"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
#凪
Nagi「Ơ, điêu thế! Shun-chan chơi giỏi vậy sao!? Tại sao chứ.」[p]
[舜]「Tại hồi trước tôi chơi suốt ngày, nên tay vẫn chưa quên đâu.」[p]
Trận đấu diễn ra gay cấn qua màn hình.[r]Sự hoài niệm xen lẫn niềm vui sướng, căn phòng ngập tràn tiếng cười.[p]
Rồi khi vừa ngừng tay chơi game, Nagi bỗng lẩm bẩm.[p]
#凪
Nagi「Cậu còn nhớ không? Ngày xưa, lúc tớ vừa khóc vừa nói "Tớ muốn mua quà sinh nhật cho mẹ".」[p]
[舜]「Lúc đó hai đứa cùng đến tiệm tạp hóa, rồi chọn mua khăn mặt nhỉ.」[p]
#凪
Nagi「Ừm. Nhưng vì không đủ tiền nên tớ hoảng quá……rồi bật khóc.」[p]
[舜]「Sau đó, tôi đã lấy tiền tiêu vặt của mình ra──rồi bảo "Bí mật nhé, là Nagi mua đấy".」[p]
#凪
Nagi「……Cậu thực sự đã nói như vậy đấy. Chuyện đó, tớ vẫn luôn nhớ mãi.」[p]
Bị đôi mắt lấp lánh ấy nhìn chằm chằm, không hiểu sao tôi lại có cảm giác xấu hổ và kỳ lạ.[p]
Có lẽ bản thân tôi trong quá khứ còn trưởng thành hơn cả tôi bây giờ.[r]Thế nhưng, tôi không tài nào mường tượng rõ ràng được hình ảnh của mình hồi nhỏ, nên đành nghiêng đầu thắc mắc.[p]
#凪
Nagi「Chiếc khăn đó, mẹ tớ vẫn còn dùng đấy. Bà ấy còn mang cả vào bệnh viện nữa.」[p]
[舜]「Vậy à……. Mẹ cậu, sức khỏe vẫn luôn không tốt sao?」[p]
#凪
Nagi「Ừm. Nhưng cũng không đến mức nghiêm trọng lắm đâu.[r]Chỉ là……tớ muốn làm bà ấy yên tâm khi còn khỏe mạnh. Thế nên, tớ mới nghĩ đến chuyện kết hôn.」[p]
[舜]（Ra vậy……Mình có cảm giác như đã hiểu được phần nào lý do cô ấy tính đến chuyện kết hôn rồi.）[p]
#凪
Nagi「Nào, chơi thêm ván nữa đi. Lần này tớ sẽ thắng!」[p]
[舜]「Tôi chấp hết.」[p]
Tôi lén nhìn Nagi đang vui vẻ cầm tay cầm chơi game.[p]
Dáng vẻ bề ngoài rõ ràng là một người phụ nữ trưởng thành, nhưng cách nói chuyện và hành động lại chẳng khác xưa là mấy.[r]Không hiểu sao tôi lại thấy điều đó thật kỳ diệu.[p]
[舜]（Không biết cô ấy có giấu Hayato chuyện mình thích chơi game không nhỉ.）[p]
Nhưng lúc này mà hỏi chuyện đó thì vô duyên quá.[p]
Tôi hướng người về phía màn hình, nắm chặt lại chiếc tay cầm.[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="sf.puro_nagi_heyagi=1"  name="puro_nagi_heyagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_nagi1=1"  name="EV_nagi1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top" ]
