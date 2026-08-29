]
[_tb_system_call storage=system/_EV_rinko.ks]

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
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="rinko.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tôi lấy một chiếc khăn nóng hổi ra rồi đặt lên khay.[p]
[舜]（Không ngờ lại đột nhiên phải phụ giúp thế này...）[p]
Chỉ là, tôi muốn nói chuyện với cô Rinko một chút――[p]
Đáng lẽ tôi chỉ ghé qua tiệm với tâm trạng nhẹ nhàng như thế thôi.[p]
Thế nhưng, thấy cô ấy có vẻ quá bận rộn,[r]tôi đã lỡ buột miệng nói "Có gì cần cháu giúp không ạ?".[p]
[舜]（Mà thôi... coi như đây là cơ hội tốt để làm quen với công việc vậy.）[p]
Dù đã nghĩ lại như vậy, nhưng đối với một kẻ đã làm hikikomori nhiều năm như tôi,[r]thì "công việc" sau một thời gian dài lại khó nhằn hơn tưởng tượng rất nhiều.[p]
Đầu tiên là vì quá căng thẳng nên không thể nghe điện thoại.[p]
Lúc ra đón khách cũng không thốt nên lời, chỉ biết toát mồ hôi lạnh.[p]
Lâu lắm rồi mới giao tiếp nên tiếng của đối phương chẳng lọt vào tai chữ nào――hoàn toàn bị loại rồi.[r]Nếu tôi mà là chủ tiệm, chắc chắn sẽ sa thải ngay lập tức.[p]
Thế nhưng cô Rinko không hề tỏ vẻ khó chịu mà vẫn ân cần hướng dẫn tôi cách dọn dẹp và trải ga giường.[p]
[舜]「Phải nhanh chóng học việc mới được.」[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_date1_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凛子
Rinko「Thiệt tình... Quý khách cứ vươn tay ra thế này thì tôi không massage được đâu.[r]Xin quý khách bỏ tay xuống nhé? A...」[p]
Giọng cô Rinko nghe rõ sự bối rối.[p]
Dù biết là không nên, nhưng tôi vẫn hé mở cửa phòng trị liệu để nhìn trộm một chút──[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="event/rinko1.png"  ]
[tb_cg  id="cg_rinko1"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="kintyou.mp3"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Quý khách... xin đừng trêu chọc tôi nữa được không?」[p]
Dù nói vậy, nhưng nét mặt cô ấy lại lộ rõ vẻ phức tạp, không thể phản kháng mạnh mẽ.[r]Bàn tay gã đàn ông đang nắm chặt lấy mông cô Rinko.[p]
[舜]（Này này này, sờ soạng trắng trợn thế. Chỗ này... đâu phải là cái loại tiệm đó đâu nhỉ?）[p]
Khách nam「A, chà~ thất lễ quá thất lễ quá! Tại cơ thể cô đẹp quá nên tay tôi cứ tự động thế đấy.」[p]
[舜]（Lão già đó... lợi dụng việc cô Rinko không thể từ chối quyết liệt...）[p]
Suy nghĩ một lát, tôi lấy một chiếc khăn nóng hổi từ khay đang cầm trên tay,[r]rồi quyết tâm bước vào phòng.[p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_massajiten3.png"  ]
[tb_start_text mode=1 ]
[舜]「Xin thất lễ... a, dạ... tôi mang khăn nóng đến đây ạ... xem như là dịch vụ đặc biệt.」[p]
Tôi đắp chiếc khăn lên mặt gã đàn ông, che khuất tầm nhìn của lão.[p]
Khách nam「Ô, ồ... dịch vụ đặc biệt à, ừm, dễ chịu thật... mà khoan, có cả nhân viên nam cơ à?」[p]
#凛子
Rinko「Vâng ạ. Kỹ thuật lau bằng khăn nóng của cậu ấy là tuyệt hảo nên tôi mới nhờ cậu ấy làm.」[p]
Khách nam「Ừm, ừm... ra vậy, thế nghĩa là lần nào cậu ta cũng ở đây à?」[p]
Khi lấy chiếc khăn ra, khuôn mặt gã đàn ông đã không còn vẻ tà dâm nữa.[r]Cô Rinko khẽ nháy mắt với tôi.[r]Đáp lại, tôi cúi đầu nhẹ rồi lặng lẽ rời khỏi đó.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="back_massajiten2.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="rinko.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Shun-kun, may mà có cháu giúp. Cô cảm ơn nhé.」[p]
Nói rồi, cô Rinko mỉm cười có chút ngượng ngùng.[p]
#凛子
Rinko「Cháu cất công đến chơi mà cô lại bắt cháu phụ giúp, cuối cùng còn phải nhờ cháu giải vây nữa chứ.」[p]
#凛子
Rinko「Thỉnh thoảng cũng có những vị khách kiểu như vậy đấy.[r]Tuy rất khó xử nhưng cô cũng khó mà nói thẳng thừng được...」[p]
[舜](Mà, nhìn cô gợi cảm thế này thì cái cảm giác muốn sờ soạng cũng dễ hiểu thôi)[p]
[舜]「A, dạ... từ lần sau, cứ để cháu ra đón khách cho ạ.」[p]
#凛子
Rinko「Hả, nhưng mà──」[p]
[舜]「Cháu sẽ tập nói chuyện cho trôi chảy! [r]Nếu biết có đàn ông ở đây thì họ sẽ không dám làm càn đâu ạ.」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"]Rinko「Cảm ơn cháu, thật may vì có Shun-kun ở đây.」[p]
Cùng với lời nói đó là một nụ cười rạng rỡ nhất từ trước đến nay, có vẻ như đó là nụ cười xuất phát từ tận đáy lòng.[p]
[舜]（Mình bị hội chứng sợ giao tiếp mà, có ổn không đây...?）[p]
Liệu mình có hứa suông quá không nhỉ. Thế nhưng, như để xua tan đi nỗi bất an đó――[r]Nét mặt tươi cười của cô Rinko trước mắt khiến tim tôi khẽ rung động.[p]
（Mà, đành phải làm thôi chứ sao……!）[p]
Vừa lẩm bẩm trong lòng, tôi vừa khẽ nắm chặt nắm đấm.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_rinko1=1"  name="EV_rinko1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  