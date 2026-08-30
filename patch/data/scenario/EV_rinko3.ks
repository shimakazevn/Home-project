
[_tb_system_call storage=system/_EV_rinko3.ks]

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
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;凛子音声開始
[voconfig sebuf=3 name="凛子" vostorage="rinko/voice_date3_rinko{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Đã lâu rồi tiệm mới có ngày nghỉ.[r]Nhìn xuống cô Rinko đang nằm sấp, tôi cúi gập đầu chào.[p]
Vừa hồi hộp thoa dầu massage lên hai tay, tôi vừa chạm vào làn da mềm mại.[r]Cơ thể đẫy đà của cô Rinko tạo ra một lực đẩy vừa phải phản hồi lại lòng bàn tay tôi.[p]
#凛子
Rinko「Ưm... dễ chịu lắm, cháu làm giỏi lắm Shun-kun.」[p]
Từ bữa đó đến nay tôi đã học cách massage, và cuối cùng cũng được thực hành.[r]Càng nghĩ phải thể hiện thật tốt, vai tôi lại càng thêm căng cứng.[p]
#凛子
Rinko「Thả lỏng ra nào, Shun-kun. Sự căng thẳng của cháu sẽ truyền sang khách hàng đấy.」[p]
[舜]「Vâng...!」[p]
Khoảnh khắc tôi vuốt ngược lên phần đùi, cơ thể cô Rinko giật thót phản ứng lại.[p]
#凛子
Rinko「Ưm...♡」[p]
[舜]（Phản ứng vừa rồi... nghe dâm đãng cực kỳ...）[p]
Cặp đùi và bờ mông bóng nhẫy dầu massage thật chói mắt.[r]Sự căng thẳng dần tan biến, đồng thời những suy nghĩ đen tối cũng bắt đầu nảy nở.[p]
Dù biết là không nên, nhưng tôi vẫn cố tình ép phần thân dưới đã cương cứng của mình vào chân cô Rinko.[p]
[舜]「Ch-Cháu xin lỗi...」[p]
#凛子
Rinko「Không sao đâu. Cháu là con trai mà, biết làm sao được chứ.」[p]
[舜]「Cháu muốn vào bên trong cô Rinko.」[p]
#凛子
Rinko「Hả...?」[p]
Cô Rinko cất tiếng ngạc nhiên rồi ngồi bật dậy.[p]
[_tb_end_text]

[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Nếu cháu muốn, cô dùng tay làm cho cháu nhé?」[p]
[舜]「...Không. Không phải vậy đâu. Cháu muốn thực sự hòa quyện cùng cô Rinko cơ. Cháu muốn làm tình.」[p]
Nghe vậy, nét mặt cô Rinko thoáng chùng xuống.[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]Rinko「Chỉ chuyện đó là... không được đâu. Nhé? Chúng ta không thể mắc sai lầm được, đúng không?」[p]
[舜]「Cháu sẽ chịu trách nhiệm. Cháu... nghiêm túc đấy ạ.」[p]
#凛子
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_02c.gif"]Rinko「Thiệt tình... đừng có nói mấy lời đó dễ dàng như vậy chứ. Shun-kun vẫn còn trẻ mà.」[p]
Giọng cô Rinko tuy dịu dàng, nhưng lại phảng phất nét buồn bã.[p]
#凛子
Rinko「Cô xin cháu đấy, đừng làm khó cô thêm nữa. Nhé? [r]Chuyện này, chúng chúng ta dừng lại ở đây thôi. Nhỡ có bề gì... chắc chắn cô sẽ không thể chịu đựng nổi đâu.」[p]
Cô ấy buồn bã cụp mắt xuống, cử chỉ đó như cứa sâu vào tim tôi đau nhói.[p]
（...Chẳng phải cô ấy đã chấp nhận mình rồi sao? Không phải thế à? [r]Chỉ là do mình tự ảo tưởng thôi ư?）[p]
Nỗi buồn cuộn trào trong lòng dần chuyển hóa thành cơn giận dữ.[r]Khi nhận ra, lời nói đã buột ra khỏi miệng tự lúc nào.[p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[舜]「……Cô vẫn làm tình với những vị khách khác, chẳng phải thế sao?」[p]
#凛子
Rinko「……Hả?」[p]
[舜]「Tại sao chỉ mỗi cháu là không được chứ!」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#凛子
Rinko「……Không phải. Không phải vậy đâu, Shun-kun…… Cô không có ý đó……」[p]
[舜]「Chỉ một chút, chạm vào một chút thôi mà. Cháu sẽ không làm đau cô đâu……!」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#凛子
Rinko「Kh-Không…! Dừng lại đi Shun-kun……!」[p]
[_tb_end_text]

[wait  time="800"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="binta.mp3"  fadein="false"  ]
[wait  time="1500"  ]
[bg  time="2000"  method="crossfade"  storage="event/rinko3.png"  ]
[tb_cg  id="cg_rinko3"  ]
[call  storage="BGM.ks"  target="*love_R"  ]
[tb_start_text mode=1 ]
Tầm nhìn chao đảo. Cùng với một âm thanh chói tai, gò má trái tôi nóng ran.[r]Tôi sững sờ trong thoáng chốc, không hiểu chuyện gì vừa xảy ra.[p]
Tôi bị tát――bởi cô Rinko.[p]
Không hẳn là không thể tin được, mà chỉ là tôi đang bàng hoàng.[r]Tôi có thể thấy bàn tay cô ấy vẫn còn đang khẽ run rẩy.[p]
Cô Rinko mở to hai mắt, đôi môi run rẩy như đang cố tìm từ ngữ để nói.[p]
Trong ánh mắt đó, sự sợ hãi và nỗi buồn còn lấn át cả sự tức giận, tựa như cô ấy có thể bật khóc bất cứ lúc nào.[p]
#凛子
Rinko「...Hôm nay, chúng ta dừng lại ở đây thôi. Cháu vất vả rồi.」[p]
[舜]「……」[p]
Tôi không thể thốt nên lời nào. Cũng chẳng biết phải nói gì mới đúng.[p]
Bàn tay thu dọn đồ đạc của tôi run lẩy bẩy.[p]
Đầu óc trống rỗng, không dám nhìn thẳng vào mắt cô ấy, tôi chuồn khỏi tiệm như thể đang chạy trốn.[p]
[_tb_end_text]

[stopbgm  time="500"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="back_room_yoru.png"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="love.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
Khi sự bối rối lắng xuống, cảm giác tội lỗi với cô Rinko lập tức trào dâng.[r]Trong đầu tôi giờ chỉ toàn hiện lên khuôn mặt chực khóc ấy──[p]
[舜](Mình thảm hại quá... sao lại đi nói ra những lời như vậy cơ chứ)[p]
Cứ nghĩ đến việc mình có thể đã làm tổn thương cô ấy, tôi lại đứng ngồi không yên.[p]
[舜](Phải xin lỗi mới được... nhưng bây giờ mà mò tới tận nơi thì không ổn lắm nhỉ)[p]
Suy nghĩ một lát, tôi quyết định gọi điện cho cô Rinko.[r]Sau vài hồi chuông, tôi nghe thấy giọng nói dò xét của cô ấy vang lên.[p]
#凛子
Rinko「Alo...」[p]
[舜]「Dạ, cô Rinko... chuyện lúc nãy, cháu xin lỗi cô ạ.」[p]
[舜]「Cháu, cháu thích cô Rinko. Thế nên cháu mới nóng vội như vậy.」[p]
#凛子
Rinko「Không sao đâu, không sao. Cô cũng xin lỗi vì đã cư xử thiếu người lớn nhé?」[p]
#凛子
Rinko「Cô cứ sợ cháu sẽ bảo nghỉ làm thêm ở tiệm cơ đấy.」[p]
Giọng cô Rinko qua ống nghe nghe tươi tỉnh hơn tôi tưởng rất nhiều.[r]Âm sắc êm dịu ấy khiến lòng tôi bỗng chốc nhẹ nhõm hẳn đi.[p]
Cùng với sự an tâm, tôi nói lời "Cháu thành thật xin lỗi cô ạ" một lần nữa một cách nghiêm túc[r]như thể đang cúi gập đầu tạ lỗi.[p]
#凛子
Rinko「Khc..., cô đã bảo là không sao rồi mà.[r]Chúng ta làm hòa nhé? ...Việc thực hành massage thì phải bắt đầu lại từ con số không rồi.」[p]
Lời nói nửa đùa nửa thật ấy khiến tôi bất giác bật cười thành tiếng.[p]
[舜]（Quả nhiên cô Rinko là người lớn mà... mình vẫn còn non nớt quá.）[p]
Tôi thấy bản thân mình thật thảm hại,[r]nhưng đồng thời――nếu ở bên người phụ nữ này, biết đâu mình sẽ dần thay đổi được.[r]Vừa nghĩ vậy, tôi vừa nhẹ nhàng cúp máy.[p]

[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;体験版/6月末まで
[if exp="f.taikenban == 1"]
[jump storage="a_taikenban.ks" target="*END_taikenban"]
[endif]
[_tb_end_tyrano_code]

[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_rinko3=1"  name="EV_rinko3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  