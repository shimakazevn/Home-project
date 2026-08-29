]
[_tb_system_call storage=system/_EV_item_Spirytus_nagi.ks]

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

[wait  time="1000"  ]
[bg  time="2000"  method="fadeIn"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Anh cũng yêu em, Tsubomi」[p]
Nụ hôn dịu dàng khép lại một buổi chiều ngập tràn hoan lạc.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Tôi đổ lọ thuốc kích dục vào cốc nước của Nagi.[p]
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_item_Spirytus_nagi.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="EV_item_Spirytus_nagi.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không sử dụng"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
Không màu, không mùi, hoàn toàn vô hình trong làn nước trong vắt.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Nagi uống cạn cốc nước mà không hề mảy may nghi ngờ điều gì.[p]
Nagi「Cảm ơn [舜]-chan nhé, nước mát thật đấy」[p]
[舜]「Không có gì đâu mà」[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*yes

[cm  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
Chỉ vài phút sau, tác dụng của thuốc kích dục bắt đầu phát huy mạnh mẽ.[p]
Nagi「Ơ… Sao người tớ nóng thế này…」[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_yoru.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*nagi_sotogi_suki"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_item1_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Đôi gò má Nagi ửng hồng, ánh mắt bắt đầu trở nên đờ đẫn và ngập tràn dục vọng.[p]
#凪
Nagi「Shun-chan… Tớ thấy khó chịu quá… Chỗ đó cứ ngứa ngáy thế nào ấy…」[p]
[舜]「Để tớ giúp cậu kiểm tra xem sao nhé」[p]
#凪
Nagi「Ưm… Giúp tớ với… Tớ không chịu nổi nữa rồi…」[p]
Nagi chủ động kéo tay tôi đặt lên ngực mình, khẽ rên rỉ từng hồi dâm đãng.[p]
Dưới tác dụng của thuốc kích dục, sự ngây thơ thường ngày đã hoàn toàn bị bản năng dục vọng nuốt chửng.[p]
Nagi「A… sướng quá… Chạm vào nữa đi Shun-chan… Đút vào trong tớ đi mà…」[p]
Tôi cởi phăng quần áo, đâm thẳng vào khe dâm đang trào dâng dâm thủy của em ấy.[p]
#凪
Nagi「A a a a…!! ♡ Tuyệt quá…! Con cu của Shun-chan làm tớ sướng chết mất thôi…!」[p]
Cuộc ân ái cuồng loạn dưới tác dụng của xuân dược đưa cả hai lên đỉnh cao của khoái lạc thể xác.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"] Nagi「Bắn vào trong đi anh! Hãy lấp đầy em bằng tinh trùng của anh đi!」[p]
[_tb_end_text]

[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
#凪
[舜]「Bắn nhé, Nagi!」[p]
Tôi xuất tinh ồ ạt vào tận sâu bên trong, biến Nagi hoàn toàn thành một ả đàn bà thèm khát nhục dục.[p]
#凪
【Thuốc Kích Dục x Nagi: Bản Năng Thức Tỉnh】[p]
#凪
Thuốc kích dục loại mạnh thứ hai được tôi hòa tan vào cốc trà của Tsubomi.[p]
Tsubomi uống xong liền cảm thấy trong người bùng cháy một ngọn lửa ham muốn dữ dội.[p]
Tsubomi「A… nóng quá… Anh [舜] ơi… Cứu em với… Em nứng không chịu nổi rồi…」[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_03c.gif"] [舜]「Thuốc ngấm rồi đấy à? Để anh cứu em nhé」[p]
Tsubomi không ngần ngại lao vào ôm chặt lấy tôi, tự tay lột sạch quần áo của cả hai.[p]
Tsubomi「Đâm vào đi! Đâm nát cô bé của em đi anh! Em thèm con cu của anh đến phát điên rồi!」[p]
Dưới tác dụng của xuân dược cực mạnh, Tsubomi trở nên dâm loạn tột cùng, tự mình nhấp hông điên cuồng trên người tôi.[p]
Tsubomi「Sướng quá đi mất! Em là con đĩ dâm đãng của anh [舜]! Hãy bắn đầy tinh trùng vào em đi!」[p]
Tôi giữ chặt lấy hông em ấy, thúc liên hồi cho đến khi xuất tinh ngập tràn tử cung.[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"] Tsubomi gục ngã trên ngực tôi, run rẩy trong cơn cực khoái kéo dài bất tận.[p]
【Thuốc Kích Dục x Tsubomi: Cơn Khát Hoang Dại】[p]
#凪
Thuốc kích dục loại ba - loại cực hạn dành cho cô Rinko.[p]
Cô Rinko sau khi uống vào lập tức biến thành một người phụ nữ khát tình đến điên dại.[p]
#凪
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"] Rinko「[舜]-kun… Mau lên… Cho cô đi mà… Cô không thể kìm hãm nổi con thú bên trong nữa rồi…」[p]
Cô ấy quỳ rạp dưới chân tôi, khẩn thiết van xin được đút con cu vào miệng và hạ bộ.[p]
Một người phụ nữ đoan trang mẫu mực giờ đây hoàn toàn bị dục vọng tha hóa dưới sự thống trị của tôi.[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"] Rinko「A a a…! Tuyệt phẩm…! Đây mới chính là thứ cô cần suốt bao năm qua…!」[p]
Từng đợt tinh dịch rót đầy vào cơ thể cô Rinko, đóng dấu sự thuần phục tuyệt đối.[p]
【Thuốc Kích Dục x Rinko: Bản Ngã Tha Hóa】[p]
Thuốc ngủ được chuẩn bị cẩn thận trong từng liều lượng.[p]
#凪
Khi đối phương chìm sâu vào giấc ngủ mê mệt, căn phòng hoàn toàn trở thành thế giới riêng của tôi.[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Mọi sự đụng chạm, khám phá và chiếm đoạt đều diễn ra trong im lặng tuyệt đối.[p]
Một cảm giác hồi hộp và kích thích tột cùng khi xâm phạm vào sự cấm kỵ.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sin_nagi_nagiroom_yoru.png"  ]
[tb_start_text mode=1 ]
【Kế Hoạch Mê Dược: Giấc Ngủ Không Phòng Bị】[p]
Nagi ngủ say không hề hay biết gì, để mặc cho tôi tùy ý thưởng thức thân thể ngọc ngà.[p]
[_tb_end_text]

[bg  time="2000"  method="fadeInUp"  storage="event/item_spirytus_nagi.png"  ]
[tb_cg  id="cg_item_spirytus"  ]
[tb_start_text mode=1 ]
Từng đường cong mềm mại đều được bàn tay tôi in dấu.[p]
Sự bất lực và ngoan ngoãn trong vô thức của em ấy càng kích thích dục vọng chiếm đoạt trong tôi.[p]
#凪
Tôi từ từ cởi bỏ lớp vải che đậy cuối cùng, chiêm ngưỡng toàn bộ vẻ đẹp nguyên sơ.[p]
Không một sự kháng cự nào có thể ngăn cản bước chân tôi.[p]
#凪
Đây chính là quyền năng tuyệt đối mà tôi nắm giữ.[p]
Một cảm giác thỏa mãn không gì sánh bằng.[p]
Và trò chơi này sẽ còn tiếp tục diễn ra nhiều lần nữa.[p]
Cho đến khi mọi thứ hoàn toàn thuộc về tôi.[p]
Mọi toan tính đều đã đem lại kết quả mỹ mãn.[p]
#凪
Tôi mỉm cười nhìn người con gái đang ngủ say bên cạnh.[p]
Tương lai đã hoàn toàn được định đoạt.[p]
Không ai có thể cứu vãn được nữa rồi.[p]
Kế hoạch đã thành công rực rỡ.[p]
Hayato đứng trước cửa nhà, đôi mắt đỏ ngầu vì tức giận và ghen tuông.[p]
Hayato「Mày… Rốt cuộc mày đã làm gì Nagi hả!?」[p]
#凪
[舜]「Tôi có làm gì đâu, chỉ là yêu thương em ấy thay phần cậu thôi mà」[p]
Hayato「Thằng khốn! Tao sẽ giết mày!」[p]
Hayato lao vào định đấm tôi, nhưng tôi dễ dàng né tránh và phản đòn hạ gục hắn xuống đất.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="teman1.mp3"  fadein="true"  loop="true"  ]
[tb_start_text mode=1 ]
[舜]「Kẻ thất bại thì nên biết điều mà cút đi. Nagi bây giờ là của tôi rồi」[p]
#凪
Đúng lúc đó, Nagi từ trong phòng bước ra, nép sát vào người tôi với ánh mắt lạnh lùng nhìn Hayato.[p]
#凪
Nagi「Hayato-san… Xin anh đừng đến làm phiền chúng tôi nữa. Tôi yêu Shun-chan」[p]
Hayato như chết lặng tại chỗ, trái tim tan nát hoàn toàn trước sự thật phũ phàng.[p]
#凪
Hayato「Không… Không thể nào… Nagi…」[p]
#凪
Hắn ôm đầu quỳ sụp xuống đất trong tuyệt vọng tột cùng.[p]
Tôi ôm eo Nagi, mỉm cười nhìn kẻ thù bại trận một cách thảm hại.[p]
Sự trả thù đã hoàn tất trọn vẹn.[p]
【BAD END Hayato: Kẻ Thua Cuộc Tuyệt Vọng】[p]
#凪
Nagi đứng trên ban công, ánh mắt vô hồn nhìn vào khoảng không vô định.[p]
Sự thật về tất cả những trò đùa và sự kiểm soát của tôi cuối cùng cũng bị phơi bày.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[wait  time="2000"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凪
Nagi「Shun-chan… Tất cả những chuyện này… Đều là dối trá sao?」[p]
[舜]「Nagi… Hãy nghe anh giải thích đã…」[p]
Nagi「Đừng chạm vào tôi! Tôi không muốn nhìn thấy mặt cậu nữa!」[p]
#凪
Nagi quay lưng bỏ chạy trong làn mưa xối xả, để lại tôi một mình trong căn phòng trống rỗng.[p]
Tôi đã thắng trong trò chơi quyền lực, nhưng lại đánh mất đi người con gái quan trọng nhất.[p]
Một sự trống rỗng đến tột cùng bao trùm lấy tâm hồn.[p]
Cái giá của sự chiếm đoạt mù quáng chính là sự cô độc vĩnh viễn.[p]
[_tb_end_text]

[wait  time="2000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_item_supiritasu"  ]
[tb_start_text mode=1 ]
【BAD END Nagi: Tan Vỡ Trái Tim Thuở Nhỏ】[p]
Cô Rinko phát hiện ra toàn bộ sự thật về những gì tôi đã làm với các con của cô.[p]
Rinko「[舜]-kun… Sao cháu có thể tàn nhẫn đến mức này cơ chứ…」[p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.item_supiritasu-=1"  name="item_supiritasu"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu_nagi=1"  name="itemEV_supiritasu_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*top2

[call  storage="system.ks"  target="*fade_in"  ]
[bg  time="0"  method="crossfade"  storage="back_dantimae_hiru.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi_hutuu"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="nagi.mp3"  ]
[tb_start_text mode=1 ]
Đôi mắt cô ngấn lệ, chứa chan sự thất vọng và đau đớn tột cùng.[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"] Gia đình Naruse hoàn toàn tan vỡ, không còn cách nào hàn gắn lại được nữa.[p]
Tiệm massage đóng cửa vĩnh viễn, mọi người ly tán khắp nơi.[p]
Tôi đứng nhìn căn nhà hoang tàn, nhận ra sự trả thù chỉ đem lại sự hủy diệt cho tất cả.[p]
【BAD END Rinko: Gia Đình Tan Tác】[p]
Tsubomi nhìn tôi với ánh mắt khinh bỉ và căm hận tột cùng.[p]
Tsubomi「Tôi cứ tưởng anh là người tốt… Hóa ra anh chỉ là một con quái vật đáng ghê tởm!」[p]
Em ấy xé nát chiếc áo đồng phục hầu gái rồi ném vào mặt tôi trước khi bỏ đi mãi mãi.[p]
Mọi nỗ lực thuần phục cuối cùng chỉ đổi lại sự thù ghét vĩnh viễn.[p]
【BAD END Tsubomi: Sự Khinh Bỉ Tột Cùng】[p]
Tiếng chuông cửa vang lên dồn dập trong đêm tối.[p]
Khi mở cửa ra, một toán cảnh sát đang đứng nghiêm nghị trước mặt tôi.[p]
Cảnh sát「Anh Hidaka Shun, anh bị bắt vì hành vi quay lén và xâm hại bất hợp pháp」[p]

[_tb_end_text]

[call  storage="system.ks"  target="*fade_in"  ]
[chara_hide  name="kyara_nagi_sabun2"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[tb_start_text mode=1 ]
Chiếc còng số tám lạnh buốt tra vào cổ tay, chấm dứt tất cả những ảo tưởng thống trị.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.itemEV_supiritasu_nagi=2"  name="itemEV_supiritasu_nagi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[wait  time="1000"  ]
[return  