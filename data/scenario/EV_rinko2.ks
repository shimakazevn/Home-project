[_tb_system_call storage=system/_EV_rinko2.ks]

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

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten3.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="rinko.mp3"  ]
[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_date2_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
Rinko「Shun-kun, cháu thay đồ xong chưa? Vậy thì, cháu thử nằm sấp xuống xem nào.」[p]
Nghe cô Rinko giục, tôi nằm sấp xuống tấm nệm dành cho khách.[p]
[舜]（Không ngờ lại được đích thân cô ấy massage cho thế này...）[p]
Hôm nay tôi chỉ định ghé qua lúc nghỉ giải lao, để tận hưởng chút cảm giác hẹn hò với cô Rinko thôi...[r]Chỉ là tâm trạng nhẹ nhàng như thế.[r]Có vẻ cô ấy vẫn nhớ chuyện tôi từng nói "Cháu muốn học cách massage".[p]
#凛子
Rinko「Nếu muốn học massage thì cách tốt nhất là cháu phải tự mình trải nghiệm trước đã.」[p]
#凛子
Rinko「Hãy cứ tận hưởng cảm giác như một vị khách thực sự nhé.」[p]
Mỗi khi lớp dầu chạm vào da, lại phát ra những âm thanh nhóp nhép nho nhỏ,[r]cảm giác ấm áp từ lòng bàn tay cô lan tỏa khắp tấm lưng tôi.[r]Sự dễ chịu ấy khiến mí mắt tôi bất giác trĩu xuống.[p]
#凛子
Rinko「Lực ấn thế này đã vừa chưa cháu?」[p]
[舜]「Dễ chịu lắm ạ...」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"]Rinko「Khc..., may quá.[r]Lúc nghe Shun-kun nói "Cháu muốn học massage", cô đã vui lắm đấy.」[p]
#凛子
Rinko「Ở ngoài thì cô không biết thế nào chứ……[r]Hayato ở nhà chỉ toàn nói mấy lời bùi tai, chứ mấy việc phiền phức thì chẳng bao giờ động tay vào đâu.」[p]
#凛子
Rinko「Thế nên cô rất vui vì sự chăm chỉ của Shun-kun. Cô trông cậy vào cháu đấy nhé.」[p]
Đã bao lâu rồi mình mới được khen ngợi và tin tưởng thế này nhỉ.[r]Được bao bọc trong hơi ấm từ đôi bàn tay cô Rinko, cả cơ thể lẫn tâm trí tôi như muốn tan chảy vì sung sướng và dễ chịu.[p]
#凛子
Rinko「Được rồ-i, vậy tiếp theo cháu nằm ngửa lại nhé.」[p]
Giọng nói dịu dàng của cô ấy kéo tôi về với thực tại, tôi vội vàng nằm ngửa lại.[p]
#凛子
Rinko「A...」[p]
Tôi bất giác dừng lại. Trong giọng nói của cô ấy có sự ngạc nhiên pha lẫn chút bối rối.[p]
[舜]（...Chết dở）[p]
[舜](Mình đang mặc quần lót giấy mà)[p]
Khoảnh khắc thay đổi tư thế, tôi chợt nhận ra thứ đó đang đội lên rõ mồn một sau lớp vải mỏng manh.[r]Sự bối rối và xấu hổ trào dâng trong chớp mắt.[p]
[舜]「Ch-Cháu xin lỗ──」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif" wait="false"]Rinko「Không sao đâu, cháu là con trai mà. Chuyện này cũng là tự nhiên thôi.」[p]
#凛子
Rinko「Khc..., nhưng mà... có lẽ hơi khó cử động nhỉ. [r]Vậy thì... quý khách ơi, tôi massage luôn chỗ này cho quý khách nhé?」[p]
Bàn tay cô Rinko nhẹ nhàng trượt trên làn da tôi.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="event/rinko2.gif"  ]
[tb_cg  id="cg_rinko2"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*love2"  ]
[wait  time="1000"  ]
[playse  volume="80"  time="2000"  buf="0"  storage="H_teman1.mp3"  loop="true"  fadein="true"  ]
[tb_start_text mode=1 ]
Hơi ấm của dầu massage cùng những cái chạm mềm mại của cô ấy dần thấm sâu vào cơ thể tôi.[r]Dù chỉ mới là những đầu ngón tay chạm vào dương vật, nhưng cảm giác rạo rực lan tỏa khắp toàn thân khiến tôi bất giác thở hắt ra.[p]
[舜]「Kh-Khoan đã cô Rinko![r]Cháu thấy hơi ngại ngùng... hay nói đúng hơn là xấu hổ lắm ạ.」[p]
#凛子
Rinko「Hai tay phải để dọc theo thân người chứ? [r]Đâu có gì phải xấu hổ đâu nào? Bí quyết để thấy sướng là cứ thành thật tận hưởng thôi cháu ạ.」[p]
Dừng lại một nhịp, cô ấy khẽ cười.[r]Phần khấc của dương vật liên tục bị chà xát một cách tập trung.[r]Hơi nóng như lan tỏa từ chính nơi cô ấy chạm vào... từ gốc đến ngọn đã căng cứng dục vọng mất rồi.[p]
Chỉ với cảm giác trơn trượt và ấm áp từ bàn tay thấm đẫm dầu massage, tôi tưởng chừng như có thể dễ dàng bắn hết mọi thứ ra ngoài.[p]
[舜]「Ư...」[p]
#凛子
Rinko「Giọng rên nghe đáng yêu quá cơ♡ Thành thật là tốt nhất đấy.」[p]
Hương thơm dịu nhẹ của tinh dầu massage hòa quyện cùng mùi dục vọng của chính tôi và hương thơm ngọt ngào từ cô Rinko khiến đầu óc tôi choáng váng.[p]
Trong lúc lơ là, phần đỉnh đã bị lòng bàn tay cô ấy xoa nắn nhóp nhép,[r]khoái cảm ập đến mãnh liệt đến mức không thốt nên lời, khiến tôi bất giác ứn hông lên.[p]
#凛子
Rinko「Chỗ này... cháu thích được vuốt ve lắm đúng không? Cơ thể cháu đang run lên kìa.」[p]
[舜]「S-Sướng lắm ạ...」[p]
#凛子
Rinko「Khc..., cháu thích là cô vui rồi.[r]Giá mà... cháu có thể sướng hơn nữa nhỉ. ......Cô đùa thôi.」[p]
Cô ấy vừa dịu dàng mỉm cười, vừa tiếp lời bằng giọng điệu có chút e thẹn.[r]Cử chỉ đó đáng yêu đến mức khiến tận sâu trong tim tôi dần trở nên ấm áp.[p]
#凛子
Rinko「Khc... cháu đáng yêu thật đấy.[r]Thấy cháu thành thật tận hưởng thế này, cô cũng vui lây đây này.」[p]
#凛子
Rinko「...Tự dưng cô lại muốn chiều chuộng cháu nhiều hơn nữa. Đây, cháu dùng ngực cô luôn đi♡」[p]
Bầu ngực mềm mại được nhẹ nhàng đưa ra trước mắt tôi.[r]Nhanh hơn cả suy nghĩ, tôi bị dẫn dắt bởi sự thôi thúc muốn chạm vào đến không thể kiềm chế nổi.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#凛子
Rinko「Ưm... cháu làm giỏi lắm. Nào, cứ thế nhé... thả lỏng vai ra. Thư giãn đi nào?」[p]
#凛子
Rinko「Cháu không cần phải nghĩ ngợi gì đâu. ...Cứ tận hưởng cảm giác đi.」[p]
[舜]「Cô Rinko, hơn thế này nữa thì cháu...!」[p]
[舜]（Ch-Chết dở. Ra mất...!）[p]
Nhưng có vẻ cô ấy không dễ dãi đến mức cho tôi ra nhanh như vậy.[r]Vẫn giữ nụ cười trên môi, cô ấy bóp chặt lấy phần gốc dương vật rồi nhìn vào mặt tôi.[p]
#凛子
Rinko「Vẫn phải nhịn nhé. Thêm một chút nữa thôi... cứ theo nhịp độ của cô nhé♡」[p]
Tự bản thân tôi cũng hiểu rõ cả tâm trí lẫn cơ thể đều đã gần đến giới hạn.[r]Chỉ cần bị chạm vào thôi là mọi dây thần kinh đều tập trung hết vào đó, đến cả nói cũng không thành lời.[p]
[舜]「...Cháu muốn ra, lắm rồi. Cô Rinko... cháu đến, giới hạn rồi...」[p]
#凛子
Rinko「Khc... nếu cháu nhịn thêm chút nữa, biết đâu sẽ còn sướng hơn thì sao?」[p]
Cùng với tiếng thì thầm, dương vật của tôi được bàn tay cô ấy bao bọc và bắt đầu chiều chuộng.[r]Dầu massage và dâm dịch đầu cu hòa quyện vào nhau, tạo nên những âm thanh nhóp nhép, lép nhép đầy dâm đãng.[p]
Cố kìm nén khao khát muốn giải tỏa dục vọng ngay lập tức,[r]tôi say sưa liếm láp và mút mát nhũ hoa của cô Rinko. Và rồi──[p]
[舜]「Ch-Cháu, ra mất...」[p]
#凛子
Rinko「Vậy thì được rồi, cháu bắn ra đi nào♡」[p]
Khoảnh khắc giọng nói của cô Rinko vang lên bên tai, đầu óc tôi trở nên trống rỗng.[p]
Vì đã nhịn quá lâu nên khoảnh khắc xuất tinh, tôi thậm chí còn cảm thấy hơi nhói buốt.[r]Như thể cái lỗ nhỏ kia là không đủ, hơi nóng và dục vọng mãnh liệt phun trào thành từng tia, làm vấy bẩn đôi bàn tay của cô Rinko.[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[wait  time="2000"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Cháu thấy sướng là tốt rồi. ……Cháu giỏi lắm.」[p]
Giọng cô Rinko cũng lẫn chút run rẩy.[r]Đưa mắt nhìn, tôi thấy hai má cô ấy ửng đỏ, tựa như đang lan tỏa sức nóng hầm hập.[p]
Thế nhưng, nếu cứ thuận theo cảm xúc mà tiến tới lúc này, chắc chắn cô ấy sẽ khéo léo né tránh.[r]Phó mặc bản thân theo nhịp độ của cô ấy, có lẽ đó mới là điều quan trọng nhất bây giờ.[p]
Tôi không nói gì, chỉ gật đầu trong tiếng thở dốc.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_rinko2=1"  name="EV_rinko2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  