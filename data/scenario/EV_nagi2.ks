
[_tb_system_call storage=system/_EV_nagi2.ks]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom.png"  ]
[call  storage="character.ks"  target="*nagi_heyagi"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_date2_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Đó là lúc tôi đang cùng Nagi chơi game vui vẻ như mọi khi──[p]
#凪
Nagi「Này Shun-chan, hôm nay mình làm việc gì đó mang không khí mùa hè đi?」[p]
[舜]「Hả, mùa hè á? Thôi... ra ngoài giữa trời nắng nóng thế này thì...」[p]
Với một cơ thể suốt ngày ru rú trong nhà, việc đột nhiên phải đi bộ dưới trời nắng gắt là một thử thách quá lớn.[p]
Nếu là bạn trai thì đây hẳn là câu trả lời tệ nhất, nhưng hiện tại chúng tôi chỉ là bạn thuở nhỏ. Tôi không ngần ngại tỏ thái độ nhăn nhó.[p]
#凪
Nagi「Khc, không sao đâu. Tớ cũng giống cậu mà. Bọn mình không phải đi bộ loanh quanh đâu.」[p]
#凪
Nagi「Hồi nhỏ, cậu có nhớ tụi mình từng đi biển cùng hội trẻ em trong khu chung cư không?」[p]
[舜]「A~, hình như có...」[p]
#凪
Nagi「Nhà tớ ấy, bố mẹ đều đi làm. Họ bận rộn quá nên chẳng mấy khi quan tâm đến tớ...」[p]
#凪
Nagi「Kỷ niệm đi chơi vào kỳ nghỉ hè của tớ cũng chỉ có ngần ấy thôi, nên tớ đã rất vui và hạnh phúc.」[p]
#凪
Nagi「Nếu cậu không phiền thì bọn mình lại đi nhé? Để làm kỷ niệm mùa hè.」[p]
[舜]「Hả, đi biển á? Sẽ đông đúc lắm đấy?」[p]
#凪
Nagi「Không sao đâu, tớ có cách rồi.」[p]
Nhìn dáng vẻ đầy tự tin của Nagi, tôi đành gật đầu đồng ý.[p]
Nhưng nếu Nagi đã nói vậy thì chắc chắn cô ấy thực sự có ý tưởng gì đó.[r]Vừa ngắm nhìn những đám mây tích tụ ngoài cửa sổ, tôi vừa suy nghĩ xem rốt cuộc cô ấy định làm gì.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[wait  time="1000"  ]
[playbgm  volume="50"  time="1500"  loop="true"  storage="umi.mp3"  fadein="true"  ]
[wait  time="1500"  ]
[call  storage="uireset.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="sora.jpg"  ]
[mask_off  time="1600"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Vài giờ sau──[p]
Chúng tôi đang đứng trên bãi biển ngập tràn ánh trăng.[p]
#凪
Nagi「Thấy chưa! Buổi tối thì chẳng có ai cả đúng không?」[p]
Nagi vui vẻ ngước lên nhìn tôi.[r]Tôi cứ tưởng sẽ có đám thanh niên nào đó đang đốt pháo hoa, nhưng trên bãi biển hay dưới biển đều không có bóng người.[p]
#凪
Nagi「Ban ngày thì sợ ánh mắt của mọi người, với lại ngại lắm. Ban đêm là tuyệt nhất nhỉ.」[p]
#凪
Nagi「Thêm nữa là không bị nóng!」[p]
Nagi cởi áo khoác ngoài rồi chạy về phía mép nước.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="2000"  method="crossfade"  storage="event/nagi2.png"  ]
[tb_cg  id="cg_nagi2"  ]
[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_text mode=1 ]
[舜]「Cậu không sợ biển đêm à?」[p]
#凪
Nagi「Shun-chan nhát gan quá đi. Bệnh viện ban đêm cũng đáng sợ lắm đấy nhé?」[p]
Tôi cười khổ trước lời trêu chọc của Nagi.[p]
[舜]「Không phải sợ kiểu đó đâu. Ý tôi là lỡ có chuyện gì xảy ra thì phiền phức lắm.」[p]
#凪
Nagi「Không sao đâu... Shun-chan sẽ để mắt đến tớ mà đúng không? Cậu sẽ không rời mắt khỏi tớ đâu nhỉ.」[p]
Giọng nói nũng nịu ấy khiến tim tôi lỡ nhịp.[p]
Nagi tắm mình trong ánh trăng trông hoàn toàn khác biệt so với thường ngày.[r]Vẻ quyến rũ ấy khiến tôi một lần nữa nhận ra cô ấy đã là một người phụ nữ trưởng thành.[p]
[舜]「Thì tôi vẫn đang nhìn đây...」[p]
#凪
Nagi「...Cảm ơn cậu, Shun-chan.」[p]
Ngay lúc đó, nước biển hắt ầm lên người tôi.[r]Kẻ đầu sỏ khiến tôi ướt sũng đang cười tươi như một đứa trẻ.[p]
[舜]「Này!」[p]
#凪
Nagi「Tại cậu cứ thẫn thờ ra đó chứ...!」[p]
Miệng thì nói vậy nhưng cô ấy vẫn không nương tay hắt nước vào tôi.[r]Tôi cũng liều mạng phản công, chẳng mấy chốc cả hai đều ướt sũng.[p]
#凪
Nagi「Khc, a ha ha... Trời ạ, ướt nhẹp hết rồi.」[p]
#凪
Nagi「Nhưng mà vui thật... Lâu lắm rồi tớ mới cười nhiều thế này.」[p]
Nagi xoay một vòng giữa làn nước biển. Tôi lại bị mê hoặc bởi dáng vẻ huyền bí ấy.[p]
#凪
Nagi「Cảm ơn cậu đã đi cùng tớ. Nếu không có Shun-chan thì tớ đã chẳng thể ra biển được rồi.」[p]
[舜]「Sao vậy? Thế còn hẹn hò thì sao? Cậu không đi à?」[p]
Tôi lúng túng hỏi, Nagi thoáng lộ vẻ hơi ngượng ngùng.[p]
#凪
Nagi「Với anh Hayato... tớ không thể nói chuyện thoải mái thế này được.」[p]
[舜]「Vậy sao?」[p]
#凪
Nagi「Có lẽ do tớ cứ cố gắng thể hiện những điểm tốt của mình quá mức...」[p]
#凪
Nagi「Tớ có cảm giác nếu mình thể hiện những mặt trẻ con hay luộm thuộm thì anh ấy sẽ khó chịu.」[p]
Tôi nhớ lại khuôn mặt có vẻ từng trải tình trường của Hayato.[r]Có lẽ hắn đang áp đặt hình mẫu lý tưởng của mình lên Nagi.[p]
#凪
Nagi「Do tớ không tốt nên mới vậy thôi...」[p]
#凪
Nagi「Thế nên người duy nhất tớ có thể cười đùa như thế này, chỉ có Shun-chan thôi.」[p]
Nhìn khuôn mặt rạng rỡ của cô bạn thuở nhỏ, tôi cũng gật đầu thật sâu.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.EV_nagi2=1"  name="EV_nagi2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
