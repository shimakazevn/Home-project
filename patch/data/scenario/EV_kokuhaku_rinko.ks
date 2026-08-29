[_tb_system_call storage=system/_EV_kokuhaku_rinko.ks]

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
[bg  time="0"  method="crossfade"  storage="back_room0.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="tyakusin.mp3"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_kokuhaku_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Giật mình vì tiếng chuông điện thoại reo lên bất chợt, tôi nhìn vào màn hình thì thấy tên của cô Rinko.[p]
[舜]（Cô Rinko? Có chuyện gì vậy nhỉ...）[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="500"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「A, Shun-kun. Xin lỗi vì gọi đột ngột nhé... Cháu đang rảnh chứ?」[p]
[舜]「Vâng, cháu ở một mình nên cũng chẳng có việc gì làm đâu ạ.」[p]
#凛子
Rinko「Khc, vậy sao... À ừm... Thế nếu cô gọi cháu ra ngoài thì cháu có đến không?」[p]
[舜]「Hả? Vâng, tất nhiên rồi ạ. Cháu đến tiệm có được không?」[p]
#凛子
Rinko「Không. Không phải vậy. Hôm nay ấy mà──」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_tera.png"  ]
[call  storage="character.ks"  target="*rinko_mohuku_hutuu"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Cô Rinko đã đến từ trước và đang lặng lẽ đứng đợi tôi.[p]
Dáng vẻ cô trong bộ tang phục màu đen toát lên chút gì đó mong manh,[r]nhưng đồng thời cũng tràn đầy vẻ đẹp đằm thắm của một người phụ nữ trưởng thành.[p]
Cô ấy chợt nhận ra tôi và khẽ mỉm cười.[r]Chỉ một cử chỉ nhỏ ấy thôi cũng làm trái tim tôi rung động.[p]
#凛子
Rinko「Cảm ơn cháu... Xin lỗi vì đã gọi cháu ra gấp thế này nhé. Nhưng cô thực sự rất muốn đi cùng Shun-kun.」[p]
Khác với mọi ngày, trông cô có vẻ buồn bã.[r]Thấy tôi ngập ngừng không nói nên lời, cô Rinko bảo "Bên này" rồi bước đi trước.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]Rinko「Cháu ngạc nhiên lắm đúng không? Tự dưng lại bảo 『Hãy đi viếng mộ người chồng đã khuất cùng cô』 cơ mà.」[p]
[舜]「D-Dạ không... Cháu cũng... nghĩ là mình nên đến chào hỏi chú ấy một tiếng.」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]Rinko「Cháu nói vậy cô vui lắm. Hôm nay là giỗ lần thứ 10 của chú ấy.」[p]
Cô Rinko nói với vẻ đượm buồn, mang dáng vẻ của một "người vợ" mà tôi chưa từng biết đến.[p]

[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="event/rinko5.png"  ]
[tb_cg  id="cg_rinko_kokuhaku"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kodomo.mp3"  ]
[tb_start_text mode=1 ]
Quỳ gối trước bia mộ, cô Rinko chắp hai tay lại.[r]Trên mộ đã được bày biện những bông hoa tươi đẹp, lon bia và cả bánh kẹo.[p]
#凛子
Rinko「Ban ngày cô đã đến cùng Tsubomi và Hayato rồi. Hoa và nhang cũng đã dâng lên hết rồi.[r]Nhưng mà, cô vẫn rất muốn giới thiệu Shun-kun với chú ấy...」[p]
#凛子
Rinko「Là một vụ tai nạn...[r]Sáng hôm ấy chú vẫn ra khỏi nhà như mọi khi... rồi khoảng tầm giờ này thì điện thoại reo lên.」[p]
#凛子
Rinko「Cuộc gọi báo rằng chú ấy đã gặp tai nạn.[r]Cô vội vã chạy đến bệnh viện... nhưng không kịp nữa rồi.」[p]
Giọng nói của cô Rinko vô cùng bình thản.[r]Tôi nghĩ, đó là giọng nói của một người đã trải qua muôn vàn đau khổ dằn vặt, để rồi cuối cùng cũng có thể ngẩng cao đầu bước tiếp.[p]
#凛子
Rinko「Một thời gian sau đó cô chẳng làm được gì cả, cứ như tự nhốt mình trong nhà vậy.」[p]
#凛子
Rinko「Dù vậy, cô vẫn còn những đứa con. Nhờ có mọi người xung quanh nâng đỡ nên cô mới vượt qua được đến ngày hôm nay.」[p]
[舜]「Cô giỏi thật đấy...」[p]
Tôi cảm thấy thật thảm hại khi chỉ có thể nói ra được chừng ấy lời.[p]
Giờ tôi mới nhận ra, đó là lý do vì sao cô ấy lại dịu dàng với một kẻ hikikomori như tôi đến vậy.[p]
#凛子
Rinko「Không đâu, hoàn toàn không phải vậy. Cô chỉ bước tiếp mà chẳng suy nghĩ gì nhiều thôi.」[p]
Tôi hướng về phía bia mộ và chắp tay lại.[r]Tôi lẩm bẩm như muốn gửi gắm đến người chồng chưa từng gặp mặt của cô.[p]
[舜]「Cháu đã được cô Rinko giúp đỡ rất nhiều.」[p]
[舜]「Cô Rinko đã luôn cố gắng hết mình... nên cháu cũng muốn được giúp đỡ cô ấy.」[p]
#凛子
Rinko「Thấy chưa? Mình à... Shun-kun là một đứa trẻ rất tốt đúng không.」[p]
Như để đáp lại giọng nói dịu dàng của cô Rinko, một cơn gió mạnh thổi qua.[p]
Không phải mùi hương của cô Rinko, cũng chẳng phải của tôi,[p]
mà là mùi nước hoa thoang thoảng tươi mát của một người đàn ông trưởng thành.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="fadeInDown"  storage="back_kaerimiti_yuu.png"  ]
[call  storage="character.ks"  target="*rinko_mohuku_hutuu"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="love.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Cảm ơn cháu hôm nay đã đến cùng cô nhé.」[p]
[舜]「Dạ không... Cháu rất vui vì đã được gặp chú ấy.」[p]
#凛子
Rinko「Cảm ơn cháu... À này, hôm nay cô có chuyện muốn nói với Shun-kun.」[p]
Cô Rinko dừng bước và nhìn thẳng vào mắt tôi.[p]
#凛子
Rinko「Nói ra những lời này trên đường đi viếng mộ chồng về có lẽ hơi ích kỷ một chút...」[p]
#凛子
Rinko「Các con cũng đã khôn lớn tự lập rồi, cô nghĩ cuối cùng cũng đã đến lúc mình nên nhìn nhận lại cuộc đời của chính mình.」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Cô... cô ấy... từ khi gặp Shun-kun, đã lâu lắm rồi cô mới lại cảm nhận được rằng "mình vẫn còn là một người phụ nữ".」[p]
#凛子
Rinko「Quãng đời còn lại, nếu có Shun-kun ở bên cạnh, cô nghĩ sẽ chẳng còn gì hạnh phúc hơn thế nữa.」[p]
#凛子
Rinko「Cô lớn tuổi hơn cháu, nếu làm cháu bối rối thì cho cô xin lỗi nhé.[r]Nhưng mà, nếu cháu cũng có cùng tâm ý――cháu có đồng ý hẹn hò với cô không?」[p]
Giọng nói ấy tuy nhỏ nhẹ nhưng lại vô cùng kiên định, truyền tải rõ ràng sự quyết tâm và tình cảm mãnh liệt của cô.[p]
Có lẽ đây là lần đầu tiên tôi thấy cô thẳng thắn bày tỏ tấm lòng mình đến vậy.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[舜](Cô Rinko có tình cảm với mình sao...? Mình──)
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_kokuhaku_rinko.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Đồng ý nhận lời"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_kokuhaku_rinko.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Từ chối"  _clickable_img=""  target="*no"  ]
[s  ]
*yes

[tb_eval  exp="f.koukando_rinko_koibito=1"  name="koukando_rinko_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_text mode=1 ]
[舜]「Tất nhiên là được rồi... Đáng lẽ cháu mới phải là người tỏ tình chứ...」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]Rinko「Khc..., Những lúc thế này thì người lớn tuổi hơn sẽ có đặc quyền đấy.」[p]
Đôi má cô Rinko ửng hồng, nở một nụ cười hiền hậu và ngập tràn hạnh phúc.[p]
[舜]「Không được đâu, cháu nghĩ đó là trách nhiệm của người đàn ông cơ. ――Cháu thích cô. Xin hãy hẹn hò với cháu.」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Ừm, cô rất sẵn lòng.」[p]
[舜]「Bây giờ, cô đến nhà cháu nhé?」[p]
Chẳng cần nói thêm lời nào cũng đủ hiểu. Cô Rinko với đôi mắt ngấn lệ khẽ gật đầu.[p]
#凛子
Rinko「Vậy thì... mình đi thôi nhỉ.」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Chúng tôi sóng bước bên nhau. Không ai bảo ai, hai bàn tay tự nhiên đan lấy nhau thật chặt.[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_kokuhaku"  ]
[jump  storage="H_rinko_hajimete.ks"  target="*top"  ]
*H_back

[bg  time="2000"  method="crossfade"  storage="back_room_genkan.png"  ]
[call  storage="character.ks"  target="*rinko_mohuku_hutuu"  ]
[tb_start_text mode=1 ]
[舜]「Để cháu đưa cô về tận nhà nhé.」[p]
#凛子
Rinko「Không sao đâu... Nhỡ gặp Tsubomi hay Hayato gần nhà thì tụi nhỏ sẽ ngạc nhiên mất. Tới đây là được rồi.」[p]
#凛子
Rinko「Cô muốn để một thời gian nữa mới báo cho hai đứa biết... Hôm nay cảm ơn cháu nhiều nhé.」[p]
[舜]「Dạ không, cháu mới là người phải cảm ơn...」[p]
#凛子
Rinko「À này... Shun-kun. Dù lớn tuổi rồi mà vẫn còn phấn khích thế này, chắc cháu sẽ nghĩ cô kỳ lạ lắm...」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Cô thực sự rất vui khi được hẹn hò với Shun-kun. Từ nay mong cháu giúp đỡ nhé.」[p]
Cô Rinko vừa vuốt lại mái tóc hơi rối, vừa vẫy tay chào rồi cất bước đi.[p]
Tôi đứng dõi theo bóng lưng cô ấy cho đến khi khuất hẳn.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã trở thành người yêu của Rinko[resetfont][p]
[_tb_end_text]

[jump  storage="room_yoru.ks"  target="*top"  ]
*no

[cm  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_kokuhaku_rinko{number}.mp3" number=28]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Cháu xin lỗi, cháu thì──」[p]
#凛子
Rinko「A, cháu không cần nói thêm gì nữa đâu...」[p]
Giọng nói điềm tĩnh của cô Rinko vang lên.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]Rinko「Người từ chối chắc chắn mới là người đau lòng nhất. Thế nên... cháu đừng xin lỗi.[r]Thực sự cảm ơn cháu vì đã thẳng thắn đối diện với cô.」[p]
[舜]「Dạ không...」[p]
#凛子
Rinko「Vậy thì, chúng ta chia tay ở đây nhé...」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nói xong, cô vội vã quay lưng bước đi.[p]
Không thể cất lời gọi theo bóng lưng ấy, tôi chỉ biết đứng chôn chân tại chỗ.[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_kokuhaku"  ]
[jump  storage="room_yoru.ks"  target="*top"  