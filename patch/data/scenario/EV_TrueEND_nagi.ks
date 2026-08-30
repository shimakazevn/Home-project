]
[_tb_system_call storage=system/_EV_TrueEND_nagi.ks]

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
[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom.png"  ]
[call  storage="character.ks"  target="*nagi_yuukou"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[call  storage="BGM.ks"  target="*omoide"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_ END2_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Cho dù đã trở thành người yêu, cũng không thể nào đột nhiên có ngay một mối quan hệ kiểu người lớn được...[p]
Chúng tôi vẫn lớn tiếng ầm ĩ phân định thắng thua trong trò chơi, y hệt như ngày xưa.[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_02c.gif" wait="false"]Nagi「A~ thôi nào! Tớ lại thua nữa rồi!」[p]
[舜]「Muốn thắng được tớ thì cậu còn phải tu luyện thêm trăm năm nữa.」[p]
#凪
Nagi「Tức quá đi mất... Lại một ván nữa!」[p]
Vừa nhìn gương mặt tươi cười của Nagi khi nói vậy, tôi chợt nghĩ.[p]
――Nagi, từ bao giờ lại trở thành một cô gái hay cười thế này nhỉ?[p]
Nagi ngày bé là một đứa trẻ rất ít khi bộc lộ cảm xúc ra bên ngoài.[p]
Ngay cả khi lớn lên và gặp lại nhau, ấn tượng đó trong tôi vẫn không hề thay đổi.[p]
Thế nhưng bây giờ, Nagi đang ở ngay trước mắt tôi, thực sự đang mỉm cười. Một nụ cười đầy vui vẻ.[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_04c.gif"]Nagi「Tớ á, từ khi ở cạnh Shun-chan, ngày nào cũng thấy vui lắm...」[p]
#凪
Nagi「Tớ chợt nhận ra, 'A, thì ra mình cũng có thể làm được những việc thế này', hay 'Thì ra mình cũng có những cảm xúc như vậy'.」[p]
#凪
Nagi「Tớ nghĩ, chắc chắn là do tớ đã không thể tin tưởng vào chính bản thân mình.」[p]
[舜]「Thế còn bây giờ?」[p]
#凪
Nagi「Vì Shun-chan luôn lắng nghe những điều tớ muốn làm và giao phó cho tớ nên...」[p]
#凪
Nagi「Tớ cũng đã có thể tin tưởng vào bản thân mình rồi đó.」[p]
Ánh mắt thuần khiết và chân thật của Nagi khiến tôi cảm thấy có chút nhột nhạt.[p]
Nhưng, từ tận đáy lòng, tôi thực sự muốn đáp lại ánh mắt ấy.[p]
Chính vì thế, tôi đã quyết định. Tôi sẽ──[p]
[舜]「Nagi, lơ đãng là thua đấy nhé.」[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_02c.gif" wait="false"]Nagi「Hả, á! A~! Cậu ăn gian!」[p]
Dòng chữ 「LOSE」 hiện lên to tướng trên màn hình.[p]
#凪
Nagi「Tức quá đi mất... Mồ~, nếu bắt đầu thì cậu phải bảo trước chứ.」[p]
[舜]「Tớ xin lỗi mà. Dùng cái này, có thể xí xóa đi sự ấm ức đó được không?」[p]

[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[chara_hide  name="kyara_nagi"  time="0"  wait="true"  pos_mode="false"  ]
[chara_hide  name="kyara_nagi_sabun"  time="0"  wait="true"  pos_mode="false"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tôi chìa một chiếc hộp nhỏ ra trước mặt Nagi.[p]
Ngay khi nắp hộp mở ra, nét mặt Nagi dần chuyển sang kinh ngạc.[p]
#凪
[chara_mod name="kyara_nagi_sabun" cross="false" time="500" storage="chara/178/ADV_nagi_00_04c.gif" wait="false"]Nagi「Shun-chan, cái này...!」[p]
[舜]「...À thì, chuyện đó. Là vậy đó.」[p]
Một chiếc nhẫn không hề phô trương.[p]
Dù chỉ là một viên kim cương nhỏ xíu, nhưng với mức lương hiện tại của tôi thì đây đã là cố gắng hết sức rồi. Thế nhưng...[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/nagi_TrueEND.png"  ]
[tb_cg  id="cg_nagi_TrueEND"  ]
[tb_start_text mode=1 ]
[舜]「Dù tớ không thể mua được món đồ đắt tiền...... nhưng tình cảm này, là thật.[p]
Tớ mong rằng, từ nay về sau, chúng ta có thể cùng nhau vun đắp từng chút một.」[p]
Nagi lặng thinh một lúc lâu, cứ mải miết ngắm nhìn chiếc nhẫn.[p]
#凪
Nagi「......Ừm. Ừm. Tớ vui lắm...... Cảm ơn cậu.」[p]
Những giọt nước mắt lã chã rơi từ khóe mi, cô ấy vừa cười rạng rỡ vừa chìa ngón tay ra.[p]
#凪
Nagi「Nhưng mà, tớ thực sự rất vui. Chuyện này, là ý đó... đúng không?」[p]
[舜]「Đúng vậy. Đáng lẽ tớ nên nói ở một nơi có phong cảnh đẹp, hay trong lúc ăn tối cơ, nhưng mà.」[p]
#凪
Nagi「Không đâu. Bây giờ là lúc tớ thấy hạnh phúc nhất. Cảm ơn cậu, Shun-chan.」[p]
#凪
Nagi「......Này, tớ, nên trả lời thế nào mới được đây nhỉ?」[p]
[舜]「Tất nhiên là, cứ theo ý Nagi muốn.」[p]
#凪
Nagi「Khc...... Việc để tớ tự lựa chọn như vậy, đúng là phong cách của Shun-chan nhỉ.」[p]
Nagi nở nụ cười rạng rỡ trên môi và gật đầu thật mạnh.[p]
#凪
Nagi「Từ nay mong cậu giúp đỡ nhiều hơn nhé!」[p]
Cứ thế, cô ấy chồm tới ôm chầm lấy tôi, khiến tôi mất đà ngã nhào xuống sàn.[p]
Nagi nhìn xuống tôi, nước mắt ngắn nước mắt dài nhưng vẫn nở một nụ cười thật dịu dàng.[p]
#凪
Nagi「Shun-chan, nhắm mắt lại đi?」[p]
Tôi ngoan ngoãn nhắm mắt lại theo lời cô ấy, chợt cảm thấy có thứ gì đó khẽ chạm vào má.[p]
Rụt rè mở mắt ra, tôi thấy Nagi đang cười đầy tinh nghịch.[p]
#凪
Nagi「Tớ lỡ viết tên mình lên mặt cậu mất rồi......」[p]
[舜]「Hả!? Bút lông nước đấy chứ hả?」[p]
#凪
Nagi「Nào, ai mà biết được chứ?」[p]
[舜]「......Này nhé.」[p]
Tôi vừa cười vừa nhìn gương mặt Nagi.[p]
Biểu cảm của cô ấy trông hạnh phúc đến mức, bất giác khóe miệng tôi cũng giãn ra.[p]
Chắc là để một thời gian không xóa đi cũng chẳng sao.[p]
Mỗi lần soi gương, chắc chắn tôi sẽ lại nhớ đến.[p]
Rằng cuối cùng, tôi và Nagi cũng đã thuộc về nhau.[p]
Vừa ngắm nhìn vẻ mặt ngập tràn hạnh phúc của Nagi, tôi vừa mải miết suy nghĩ về điều đó──[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
【Nagi_TrueEND　Minh chứng của hạnh phúc】[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_TrueEND"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event_fin2.jpg"  ]
[tb_hide_message_window  ]
[tb_eval  exp="sf.zenkaihou=1"  name="zenkaihou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[wait  time="2000"  ]
[l  ]
[bg  time="3000"  method="crossfade"  storage="event_fin.jpg"  ]
[wait  time="3000"  ]
[l  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]