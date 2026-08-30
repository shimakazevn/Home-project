
[_tb_system_call storage=system/_EV_date.ks]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_nagi

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[tb_start_text mode=1 ]
Nagi「Chỉ cần được dạo quanh và ngắm nghía các cửa hàng cùng Shun-chan thôi là tớ đã thấy vui rồi.」[p]
[舜]「Nhưng mà cậu cũng bắt đầu thấm mệt rồi đúng không? Nghỉ một chút nhé.」[p]
Nagi「Không sao đâu mà...? Tớ vẫn còn đi bộ được──」[p]
[舜]「Cậu ít nói hẳn đi rồi kìa. Từ ngày xưa hễ mệt là Nagi lại im re mà.」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"]Nagi「Hả, khc, cậu thật sự luôn quan sát tớ rất kỹ nhỉ. Tớ vui lắm.」[p]
Nagi「Vậy thì... tớ không khách sáo đâu nhé.[r]Thật ra tớ cũng thấy hơi mệt mệt rồi...」[p]
Nagi「Mình đi uống trà ở quán cà phê đi. Để xem nào, a, chọn quán này đi.」[p]
[_tb_end_text]

*modoru_nagi

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="Bao ăn (-5,000 Yên)"  _clickable_img=""  target="*nagi_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="Để đối phương bao"  _clickable_img=""  target="*nagi_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="Chia đôi tiền (-2,500 Yên)"  _clickable_img=""  target="*nagi_3"  ]
[s  ]
*nagi_1

[jump  storage="EV_date.ks"  target="*okanenasi_nagi"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「Có vẻ phải gọi món ở quầy. Cậu muốn uống gì?」[p]
Nagi「A, tiền nước...」[p]
[舜]「Không sao đâu. Chút tiền lẻ thôi mà. Nagi cứ ra chỗ ngồi trước đi.」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]Nagi「A, cảm ơn cậu... Shun-chan, tự nhiên trông cậu ngầu quá đi.」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*nagi_end"  ]
*nagi_2

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP +0.5
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Xin lỗi nhé, tớ không mang đủ tiền...」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]Nagi「A, không sao đâu. Để tớ khao nhé? Cậu muốn uống gì?」[p]
[舜]（Hự, ánh nhìn của nhân viên châm chích quá... Biết thế này thì thà cố sức bảo để mình trả còn hơn.）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*nagi_end"  ]
*nagi_3

[jump  storage="EV_date.ks"  target="*okanenasi_nagi"  cond="f.money<2500"  ]
[tb_eval  exp="f.money_updated-=2500"  name="money_updated"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「Phần của ai người nấy trả được chứ?」[p]
Nagi「Ừm, tất nhiên rồi. Hãy để tớ tự trả phần của mình.」[p]
Nagi「Khc, Hayato lúc nào cũng giành phần trả tiền[r]nên tớ luôn cảm thấy ngại lắm.」[p]
[舜]（Tên đó bao trọn gói luôn sao... Quả không hổ danh.）[p]
[_tb_end_text]

*nagi_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_mod  name="kyara_nagi_sabun2"  time="0"  cross="true"  storage="chara/179/ADV_nagi_01_00c.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（Thời gian trôi qua nhanh thật đấy...）[p]
Nagi「Vậy, tớ có chỗ này muốn ghé qua một chút nên mình chia tay ở đây nhé.」[p]
Nagi「Hôm nay tớ thực sự rất vui, cảm ơn cậu. Lần sau lại rủ tớ nữa nhé!」[p]
[舜]「Tất nhiên rồi.」[p]
[舜]（Cô ấy có vẻ rất tận hưởng, tốt quá rồi.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated-=2501"  name="money_updated"  cmd="-="  op="t"  val="2501"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_tubomi

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_yuukou"  ]
[tb_start_text mode=1 ]
Tsubomi「A, nhìn kìa nhìn kìa! Cái mũ này dễ thương quá đi~! [r]Có vẻ che nắng cũng tốt nữa. Sao hả? Có hợp với tôi không?」[p]
[舜]「Cũng được đấy chứ?」[p]
Tsubomi「Ừm... Có vẻ cũng dễ dùng nữa, chắc mua luôn quá.」[p]
Tsubomi「Nhưng mà tháng này tôi mua quần áo rồi, lại còn đi hấp tóc ở tiệm nữa.[r]Liệu có tiêu xài hoang phí quá không nhỉ.」[p]
[_tb_end_text]

*modoru_tubomi

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="Mua tặng (-5,000 Yên)"  _clickable_img=""  target="*tubomi_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="Phớt lờ"  _clickable_img=""  target="*tubomi_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="Gọi món Robo-Ala (-5,000 Yên)"  _clickable_img=""  target="*tubomi_3"  ]
[s  ]
*tubomi_1

[jump  storage="EV_date.ks"  target="*okanenasi_tubomi"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「Để tôi mua cho. Đưa đây, tôi mang ra quầy thanh toán cho.」[p]
Tsubomi「Hả, được sao? Không ngờ anh lại mua cho tôi đấy...」[p]
[舜]「Thế không cần à?」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]Tsubomi「Cần chứ! Cảm ơn anh...! Khc, vui quá đi. Tôi sẽ trân trọng nó.」[p]
[舜]（Tuy hơi xấc xược nhưng khuôn mặt lúc vui vẻ trông cũng dễ thương đấy chứ...）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*tubomi_end"  ]
*tubomi_2

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP +0.5
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「…………」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]Tsubomi「Sao lại giả vờ như không nghe thấy vậy hả. Tôi có bảo anh mua cho đâu.」[p]
[舜]「Tôi lại tưởng cô đang vòi tôi mua cho đấy chứ.」[p]
Tsubomi「Mồ~, anh đúng là chẳng hiểu tâm lý con gái gì cả!」[p]
Tsubomi「Vòi vĩnh rồi bị mua cho một cách miễn cưỡng thì cũng chẳng vui vẻ gì đâu nhé?」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]Tsubomi「Mà, có giải thích chắc anh cũng chẳng hiểu đâu... Mà thôi bỏ đi. Lần sau tôi tự mua cũng được.」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*tubomi_end"  ]
*tubomi_3

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「Nếu cô định mua cái đó, tôi muốn cô mua cho tôi mô hình robot vừa xem lúc nãy cơ.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_07c.gif"]Tsubomi「Hả!? Đòi hỏi con gái mua cho á... Mà lại còn là đồ chơi nữa chứ?」[p]
[舜]「Không phải đồ chơi. Đó là thú vui tao nhã của người lớn đấy.」[p]
Tsubomi「Tôi thấy cũng như nhau cả thôi... Mồ, thôi bỏ đi. Đồ của mình thì tự đi mà mua nhé.」[p]
[_tb_end_text]

*tubomi_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_mod  name="kyara_tubomi_sabun"  time="0"  cross="true"  storage="chara/181/ADV_tubomi_00_00c.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A, vui quá đi! Vậy, đến đây là được rồi.」[p]
[舜]「Không cần tôi đưa về sao?」[p]
Tsubomi「Anh đâu phải kiểu người như vậy. Không sao đâu! Lần sau lại rủ tôi nữa nhé.」[p]
[舜]（Ồ, có vẻ như cô ấy khá hài lòng đấy.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn tăng mạnh[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated-=2501"  name="money_updated"  cmd="-="  op="t"  val="2501"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_hayato

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_hankagai.png"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
[tb_start_text mode=1 ]
Hayato「Cậu cũng bắt đầu đói rồi nhỉ? Đi kiếm gì ăn đi.」[p]
Hayato「Ồ! May mắn ghê! Quán ramen hay phải xếp hàng dài, hôm nay có vẻ vào được luôn mà không cần chờ kìa.」[p]
Hayato「Ăn ramen được chứ? Mà, hai thằng đàn ông đi ăn trưa ở quán cà phê sang chảnh thì cũng không hợp lắm nhỉ?」[p]
[舜]「Mà, cũng được thôi...」[p]
[舜]（Quán ramen nổi tiếng thì giá cả cũng khá chát đấy...）[p]
[_tb_end_text]

*modoru_hayato

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="Bao ăn (-5,000 Yên)"  _clickable_img=""  target="*hayato_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="Để đối phương bao"  _clickable_img=""  target="*hayato_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="Chia đôi tiền (-2,500 Yên)"  _clickable_img=""  target="*hayato_3"  ]
[s  ]
*hayato_1

[jump  storage="EV_date.ks"  target="*okanenasi_hayato"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_hayato+=2"  name="koukando_hayato"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「Bữa này để tôi trả cho. Hôm nay cậu đã đi mua sắm cùng tôi rồi mà.」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Thật á? May mắn ghê! Vậy thì tôi không khách sáo đâu nhé.」[p]
[舜]（Bán cho hắn một món nợ ân tình ở đây cũng không tồi.）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*hayato_end"  ]
*hayato_2

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「A, tôi quên mang ví rồi. Khao tôi bữa này nhé.」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]Hayato「Hả? Mà, cũng được thôi... Nhưng đừng có đi đòi con gái khao đấy nhé?」[p]
[舜]（Vì là mày nên tao mới nói thế đấy!）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*hayato_end"  ]
*hayato_3

[jump  storage="EV_date.ks"  target="*okanenasi_hayato"  cond="f.money<2500"  ]
[tb_eval  exp="f.money_updated-=2500"  name="money_updated"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_hayato+=1"  name="koukando_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「Vậy, chia đôi nhé.」[p]
Hayato「Mà, hai thằng đàn ông với nhau thì đương nhiên rồi. Vậy, tôi đi mua vé ăn trước đây.」[p]
Hayato「A, chắc cậu cũng biết rồi nhưng mà. Đi với con gái thì phải khao đàng hoàng đấy nhé?」[p]
[_tb_end_text]

*hayato_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_mod  name="kyara_hayato_sabun"  time="0"  cross="true"  storage="chara/177/ADV_hayato_00c.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Hayato「Vậy tôi có chỗ này cần ghé qua. Tôi đi trước đây.」[p]
Hayato「Về cẩn thận nhé. Vui lắm đấy, hẹn gặp lại.」[p]
[舜]（Cái kiểu nói mấy câu thế này một cách tự nhiên chắc là lý do hắn được lòng con gái nhỉ...）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_eval  exp="f.deto_hayato=0"  name="deto_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated-=4500"  name="money_updated"  cmd="-="  op="t"  val="4500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top_rinko

[call  storage="BGM.ks"  target="*date"  ]
[bg  time="1000"  method="crossfade"  storage="back_massajiten2.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_yuukou"  ]
[tb_start_text mode=1 ]
Rinko「Chỉ tiếp đãi cháu được mấy món đơn giản thế này, xin lỗi cháu nhé?」[p]
Rinko「Biết Shun-kun đến thì cô đã chuẩn bị sẵn bánh kẹo các thứ rồi.」[p]
[舜]「Không sao đâu ạ, cháu đến để gặp cô Rinko mà.」[p]
Rinko「Khc, cháu dẻo miệng quá.」[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[舜]（Nhắc mới nhớ, hình như mình có mang theo quà biếu thì phải.）
[_tb_end_text]

*modoru_rinko

[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="180"  width="425"  height="58"  text="Set bánh kem (-5,000 Yên)"  _clickable_img=""  target="*rinko_1"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="270"  width="425"  height="58"  text="Bánh kẹo bình dân (-1,000 Yên)"  _clickable_img=""  target="*rinko_2"  ]
[glink  color="btn_05_black"  storage="EV_date.ks"  size="20"  x="416"  y="360"  width="425"  height="58"  text="Đi tay không (Không mang quà)"  _clickable_img=""  target="*rinko_3"  ]
[s  ]
*rinko_1

[jump  storage="EV_date.ks"  target="*okanenasi_rinko"  cond="f.money<5000"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「A, cái này... Quà biếu cho cô Rinko đây ạ. Trước nhà ga mới mở một tiệm bánh ngọt.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Oa, trông ngon quá...! Cháu không cần phải khách sáo thế đâu... Cô thấy hơi ngại quá.」[p]
Rinko「Nhưng mà, cô vui lắm. Này, hai cô cháu mình cùng ăn nhé. Giữ bí mật với Tsubomi.」[p]
[舜]「Hả, được sao ạ?」[p]
Rinko「Ừ, Tsubomi cũng bảo là đang ăn kiêng mà. Khc, cô với Shun-kun là đồng phạm nhé.」[p]
[舜]（Có vẻ cô ấy rất thích. Tốt quá rồi.）[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*rinko_end"  ]
*rinko_2

[jump  storage="EV_date.ks"  target="*okanenasi_rinko"  cond="f.money<1000"  ]
[tb_eval  exp="f.money_updated-=1000"  name="money_updated"  cmd="-="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「Cháu có mua một hộp bánh kẹo thập cẩm. Nếu cô không chê thì ăn thử nhé.」[p]
Rinko「Hả, được sao? Oa! Toàn là những món quen thuộc từ ngày xưa...!」[p]
Rinko「Hồi nhỏ cô hay ăn mấy món này lắm. Cảm ơn cháu nhé, Shun-kun.」[p]
Rinko「Để lúc nghỉ giải lao cô sẽ từ từ thưởng thức.」[p]
[_tb_end_text]

[jump  storage="EV_date.ks"  target="*rinko_end"  ]
*rinko_3

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP +0.5
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Xin lỗi cô, biết thế cháu đã mua thứ gì đó mang đến.」[p]
Rinko「Không sao đâu, cháu đừng bận tâm quá thế.」[p]
Rinko「Chỉ cần được vừa uống trà vừa thong thả nói chuyện thế này là cô đã thấy vui lắm rồi.」[p]
Rinko「Được nghe Shun-kun nói chuyện chính là phần thưởng tuyệt vời nhất đấy.」[p]
[_tb_end_text]

*rinko_end

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="back_massajiten_yoru.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_hutuu"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Cảm ơn cháu vì đã đến nhé. Cô thấy khuây khỏa hơn nhiều rồi.」[p]
Rinko「Trong công việc cô cũng sẽ nhờ vả cháu nhiều đấy nhé? Về cẩn thận nha.」[p]
[舜]「Vâng, vậy hẹn gặp lại cô...」[p]
[舜]（Thật may mắn khi được thong thả nói chuyện với cô Rinko.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top_nagi_koibito

[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_nagi=0"  name="deto_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[bg  time="0"  method="crossfade"  storage="back_himawari.png"  ]
[call  storage="character.ks"  target="*nagi_sotogi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Những gợn sóng màu vàng trải dài bất tận.[p]
Chỉ cần bước vào trong đó, bóng dáng của Nagi dường như sẽ biến mất trong chớp mắt.[p]
Đối với chúng tôi, đây là nơi đong đầy kỷ niệm... một nơi quan trọng mà cả hai đã trao nhau những lời hẹn ước.[p]
Nagi「Đến bao nhiêu lần tớ vẫn thấy vui... Hơn nữa, tớ còn cảm thấy rất hạnh phúc.」[p]
[舜]「Cậu mà đi xa quá là tớ không tìm thấy đâu đấy nhé?」[p]
Nagi「Được Shun-chan đi tìm cũng không tệ chút nào...」[p]
[舜]「N-Này này──」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif" wait="false"]Nagi「Nhưng mà không sao đâu! Tớ sẽ không biến mất đâu. Vì tớ muốn ngắm nhìn khung cảnh này bên cạnh Shun-chan mà.」[p]
Nagi「Năm sau, năm sau nữa, mãi mãi về sau... cho đến khi chúng mình thành ông lão bà lão. Tớ vẫn muốn ngắm nhìn nó.」[p]
Nagi ngước nhìn bầu trời với đôi mắt lấp lánh.[p]
[舜]「Đúng vậy nhỉ...」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif" wait="false"]Nagi「A, hái hoa hướng dương mang về cũng được đúng không? Tớ muốn cắm ở phòng bệnh của mẹ.」[p]
[舜]「Vậy thì chọn những bông hoa đẹp nhất mang về thôi. Hái nhiều đến mức hai tay ôm không xuể luôn.」[p]
Nagi「Hả~? Không được đâu, làm sao mà cắm hết được!」[p]
Dù miệng nói vậy, nhưng Nagi trông rất hạnh phúc.[p]
Tôi bật cười khi tưởng tượng ra cảnh mẹ Nagi kinh ngạc giữa căn phòng ngập tràn hoa hướng dương, và Nagi thì cười phá lên.」[p]
[舜]「Có sao đâu, đẹp mà.」[p]
Nagi「Chỉ hái đủ cắm vào lọ thôi. Đổi lại, khi nào mẹ khỏe lại, chúng mình sẽ cùng đưa mẹ đến đây nhé.」[p]
Nhìn Nagi tràn đầy hạnh phúc, tôi thử tưởng tượng cảnh Nagi, mẹ Nagi và tôi cùng đứng cạnh nhau.[p]
Chắc chắn sẽ rất hạnh phúc... Tôi lại một lần nữa đưa mắt ngắm nhìn những gợn sóng màu vàng trải dài bất tận.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top_rinko_koibito

[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.deto_rinko=0"  name="deto_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[call  storage="character.ks"  target="*rinko_sigotogi_hutuu"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Người đưa ra ý tưởng đặt một tấm bảng hiệu đứng trước cửa tiệm chính là cô Rinko.[p]
Cô ấy đã rất hăng hái bảo rằng sẽ viết cả menu và giá cả lên đó,[r]để thu hút thêm khách hàng mới bước vào tiệm.[p]
Rinko「Ừm... Trông không giống như cô tưởng tượng chút nào.」[p]
Cứ viết chữ lên rồi lại xóa, xóa rồi lại viết, khuôn mặt cô Rinko trông như sắp khóc đến nơi.[p]
Tấm bảng hiệu trắng xóa những vết phấn bị bôi xóa.[p]
[舜]「Cô có sao không ạ?」[p]
Rinko「Đáng lẽ nó phải trông phong cách hơn cơ. Kiểu như... có chữ viết thật đẹp và hình vẽ 3D sống động ấy.」[p]
[舜]「Ra là vậy...」[p]
Rinko「Nhưng ngẫm lại thì, cả hai thứ đó cô đều phải tự tay vẽ lên mà.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_02c.gif" wait="false"]Rinko「Rắc rối thật... Cô mà vẽ thì chẳng phong cách nổi đâu.」[p]
Cô Rinko thở dài với vẻ mặt hoàn toàn bất lực.[p]
[舜]「À này, nếu cô không chê thì để cháu viết cho nhé. Mặc dù không biết có đúng như ý tưởng của cô hay không.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif" wait="false"]Rinko「Thật sao!? Nhờ cháu nhé...!」[p]
Tôi cầm lấy viên phấn, viết menu, giá cả và vẽ thêm vài hình minh họa đơn giản theo lời cô Rinko.[p]
Rinko「Ô, Shun-kun vẽ đẹp quá...! Không ngờ lại trông phong cách thế này.」[p]
[舜]「Vậy sao ạ?」[p]
Rinko「Thật mà thật mà! Tuyệt vời quá...! Không ngờ Shun-kun lại có khiếu thẩm mỹ của một nhà thiết kế đấy.」[p]
Rinko「Đúng rồi! Lần tới chúng ta làm thêm cả danh thiếp và poster cho tiệm luôn nhé. Shun-kun sẽ phụ trách thiết kế.」[p]
[舜]「Để một người không chuyên như cháu làm liệu có ổn không ạ?」[p]
Rinko「Nhưng mà Shun-kun vẽ đẹp lắm cơ mà. Từ giờ trở đi, chắc cô sẽ nhờ vả cháu nhiều thứ đấy.」[p]
[舜]「Xin cô tha cho cháu đi.」[p]
Nhìn khuôn mặt rạng rỡ của cô Rinko, tôi lại nghĩ dù có phải giúp đỡ bao nhiêu đi chăng nữa cũng chẳng sao.[p]
Nếu có thể độc chiếm khuôn mặt trẻ con mà một người phụ nữ trưởng thành như cô ấy thỉnh thoảng mới bộc lộ,[r]thì đáp ứng những yêu cầu vô lý đó cũng không tệ chút nào.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top_tubom_koibito

[tb_eval  exp="f.deto_tubomi=0"  name="deto_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[call  storage="BGM.ks"  target="*love1"  ]
[bg  time="0"  method="crossfade"  storage="back_himawari.png"  ]
[call  storage="character.ks"  target="*tubomi_hudangi_yuukou"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Tôi không ngờ lại có một nơi đẹp như thế này đấy...!」[p]
Tsubomi cất tiếng reo hò giữa cánh đồng hoa hướng dương.[p]
Cô ấy bước đi len lỏi giữa những bông hoa hướng dương với đôi mắt lấp lánh.[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif" wait="false"]Tsubomi「Hay là, trước đây anh từng hẹn hò ở nơi này rồi?」[p]
[舜]「Làm gì có. Hồi nhỏ tôi từng đến đây rồi thôi.」[p]
Tsubomi「Hể, thật không đấy~?」[p]
Bị nhìn bằng ánh mắt nghi ngờ, nhưng đó là sự thật nên tôi cũng chẳng có gì phải bối rối.[p]
[舜]「Thật mà.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif" wait="false"]Tsubomi「Vậy thì được!」[p]
Khuôn mặt cô ấy bừng sáng. Nụ cười rạng rỡ như đóa hoa hướng dương thật chói lóa.[p]
Chắc hẳn lúc này, những cặp tình nhân đến ngắm cánh đồng hoa hướng dương cũng đang có chung cảm nhận như vậy.[p]
[舜]「Hôm nay đông người phết nhỉ.」[p]
Tsubomi「Lỡ gặp bạn bè thì biết làm sao đây.」[p]
[舜]「Hả, cô ghét phải giới thiệu tôi với họ sao?」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif" wait="false"]Tsubomi「Cũng không hẳn là vậy... Chỉ là lần đầu tiên giới thiệu người yêu nên tôi thấy hơi xấu hổ thôi.」[p]
Tsubomi bĩu môi đầy vẻ xấu hổ.[p]
Động tác đó cũng đáng yêu không chịu nổi.[p]
[舜]「Vậy, tôi sẽ tự giới thiệu bản thân thật khéo léo nhé.」[p]
Lẩn khuất giữa những cây hoa hướng dương cao lớn, tôi nhẹ nhàng nắm lấy tay Tsubomi.[p]
Tôi tự nhủ trong lòng rằng sẽ trở thành một người bạn trai tốt của Tsubomi.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*okanenasi_nagi

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_nagi"  ]
*okanenasi_tubomi

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_tubomi"  ]
*okanenasi_rinko

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_rinko"  ]
*okanenasi_hayato

[call  storage="EV_date.ks"  target="*okanenasi_serihu"  ]
[jump  storage="EV_date.ks"  target="*modoru_hayato"  ]
*okanenasi_serihu

[tb_start_text mode=1 ]
（...Nghĩ thì nghĩ vậy, nhưng với số tiền mang theo ngần này thì chắc chắn không khao nổi rồi.）[p]
[_tb_end_text]

[return  ]
