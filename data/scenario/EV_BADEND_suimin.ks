[_tb_system_call storage=system/_EV_BADEND_suimin.ks]

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

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_BADEND_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
[舜]「Nagi đã là của anh từ lâu rồi!」[p]
#凪
Nagi「A… a… Tớ sắp ra nữa rồi! Cùng lên đỉnh nhé Shun-chan!」[p]
[舜]「Bắn nhé, Nagi!」[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom_yoru.png"  ]
[chara_show  name="kyara_nagi"  time="0"  wait="true"  storage="chara/153/ADV_nagi_00_base2.png"  width="832"  height="832"  left="260"  top="20"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="BADEND.mp3"  ]
[tb_start_text mode=1 ]
#凪
Tôi thúc sâu một cú chí mạng, trút trọn vẹn dòng tinh dịch nồng nàn vào tận cổ tử cung của Nagi.[p]
Nagi「A a a a…!! ♡ Nóng quá… Tinh trùng của Shun-chan đang tràn vào trong tớ rồi…!」[p]
Nagi ôm chặt lấy lưng tôi, cả cơ thể run rẩy đón nhận từng đợt sóng tinh dịch cuộn trào.[p]
Căn phòng ngập tràn men say của rượu và men tình của đôi lứa thanh mai trúc mã.[p]
Nagi「Hà… hà… Hạnh phúc quá… Tớ thuộc về Shun-chan hoàn toàn rồi…」[p]
[舜]「Cảm ơn Nagi nhé, em tuyệt lắm」[p]
Nagi「Lần sau… Lại cho tớ uống rượu rồi làm chuyện này nữa nhé anh…♡」[p]
#凪
Nagi nở nụ cười ngây thơ say đắm rồi gục đầu vào ngực tôi ngủ thiếp đi.[p]
Tôi vuốt ve gò má ửng hồng của Nagi, trong lòng dâng trào cảm giác chiếm hữu ngọt ngào.[p]
Hayato à… Người con gái cậu hằng yêu thương, giờ đây đã hoàn toàn là của tôi rồi.[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="hasiru.mp3"  loop="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
【Nagi x Spirytus: Men Say Tình Đầu】[p]
Nagi khẽ cựa mình, áp sát vào lồng ngực tôi.[p]
Hơi thở của em ấy vẫn còn phảng phất mùi thơm ngọt của rượu.[p]
Một đêm tuyệt vời mà cả hai chúng tôi sẽ không bao giờ có thể quên được.[p]
Tôi kéo tấm chăn mỏng đắp lên người cả hai, ôm chặt Nagi vào lòng.[p]
Tương lai phía trước, Nagi sẽ chỉ thuộc về một mình tôi mà thôi.[p]
Ngủ ngon nhé, Nagi của anh.[p]
Ánh trăng ngoài cửa sổ rọi vào căn phòng tĩnh lặng, chứng giám cho sự gắn kết vĩnh cửu này.[p]
[_tb_end_text]

[wait  time="3000"  ]
[stopse  time="2000"  buf="0"  fadeout="true"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[tb_start_text mode=1 ]
Tất cả mọi rào cản giữa chúng tôi đã hoàn toàn tan biến.[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[l  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  