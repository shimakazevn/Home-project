
[_tb_system_call storage=system/_komyu_hayato.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  cross="false"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
[call  storage="character.ks"  target="*hayato_hudangi"  ]
*top

[cm  ]
[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
（Nên nói chuyện gì đây nhỉ?）
[_tb_end_text]

[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="Trò chuyện phiếm"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="Tặng quà"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="Mượn tiền"  target="*okane_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="Rủ đi ăn tối"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_hayato.ks"  size="20"  width="280"  height="50"  text="Kết thúc trò chuyện"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[s  ]
*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_隼人
;嫌い0 苦手1-9 普通10-19 友好20-29 好き30〜

[if exp="f.koukando_hayato >= 1 && f.koukando_hayato <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_hayato >= 10 && f.koukando_hayato <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_hayato >= 20 && f.koukando_hayato <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_hayato >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_1nigate"]

[endif]

[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_hayato.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[jump  storage="komyu_purezento.ks"  target="*purezento_hayato"  ]
*okane_top

[tb_start_tyrano_code]
;好感度別で金を借りられる確率が変化_隼人

;ATMの場合
[if exp="f.kan_atm_hayato == 1"]
[jump target="*okane_atm"]
[endif]

;洗脳相手
[if exp="f.kan_sennouaite_hayato == 1"]
[jump target="*okane_sennou"]
[endif]

[if exp="f.koukando_hayato < 10"]
[jump target="*okane_nigate_ran"]

[elsif exp="f.koukando_hayato < 20"]
[jump target="*okane_hutuu_ran"]

[elsif exp="f.koukando_hayato < 30"]
[jump target="*okane_yuukou_ran"]

[else]
[jump target="*okane_suki_ran"]

[endif]
[_tb_end_tyrano_code]

*yuusyoku_top

[tb_start_tyrano_code]
;手持ち5000円未満でトップに戻る
[if exp="f.money < 5000"]
[jump target="*okanenasi"]
[endif]

;好感度別で一緒に食事ができる確率が変化_隼人

[if exp="f.koukando_hayato < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_hayato < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_hayato < 30"]
[jump target="*syokuji_yuukou_ran"]

[else]
[jump target="*syokuji_suki_ran"]

[endif]

[_tb_end_tyrano_code]

*end_top

[tb_start_text mode=1 ]
（Mình cũng chẳng cần thiết phải thân thiết với hắn làm gì.）[p]
[_tb_end_text]

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*end

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
Nhìn cái cách hắn bắt chuyện mà chẳng có chút e dè nào, có vẻ như trong từ điển của hắn không có khái niệm "ngại người lạ".[r]Dù vậy, đối với tôi, hắn vẫn là kiểu người mà tôi không thể nào ưa nổi.[p]
Trong lúc đứng trò chuyện đôi câu, tôi cảm thấy khoảng cách giữa hai đứa dường như đã được thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
Khuôn mặt hắn toát lên vẻ tự tin ngút ngàn.[r]Tuy hắn là kiểu người mà tôi không ưa, nhưng tôi nghĩ hắn là một gã sảng khoái, không hề có chút giả tạo nào kể cả với người khác giới.[p]
Tôi cảm thấy khoảng cách giữa hai đứa dường như đã được thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
Hắn chẳng hề ngần ngại mà bắt chuyện với một kẻ ngại giao tiếp như tôi.[r]Tôi có thể cảm nhận rõ ràng rằng hắn hoàn toàn không cảm thấy có chút khoảng cách nào với tôi cả.[p]
Tôi cảm thấy khoảng cách giữa hai đứa dường như đã được thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
Hắn vui vẻ bắt chuyện với tôi bằng một vẻ mặt vô tư lự.[r]Có vẻ như từ lúc nào không hay, tôi đã được xếp vào "diện bạn bè" trong mắt hắn.[p]
Tôi cảm thấy khoảng cách giữa hai đứa dường như đã được thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"] Hayato「A, không... Cái gì đây? Đồ bỏ đi à?」[p]
Hayato「Đúng rồi, hay là mang món trang sức này tặng Nagi nhỉ.[r]Bảo là quà của tôi... Nagi chắc chắn sẽ vui hơn đấy.」[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"] Hayato「Hạt cà phê cao cấp đây mà! Mùi thơm thật đấy.」[p]
Hayato「Phải xay hạt ra uống thử ngay mới được.[r]Thì ra cũng có kiểu quà tặng hay ho thế này cơ à... Không ngờ lại được cậu chỉ giáo đấy.」[p]
Hayato「Tôi cũng phải trau dồi thêm để có thể tặng những món quà sành điệu cho các cô gái mới được.」[p]
（Có vẻ như hắn rất vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_hayato+=2"  name="koukando_hayato"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"] Hayato「Ồ, game cũng được đấy.[r]Tôi cũng đang tò mò đây. Chắc lúc rảnh rỗi sẽ chơi thử xem sao.」[p]
Hayato「Này nhé, bây giờ cũng có nhiều cô em xinh xắn thích chơi game lắm.[r]Chỉ cần biết chút đỉnh thôi là tha hồ mà bắt chuyện rồi.」[p]
Hayato「Lần sau có gì muốn biết về anime hay game, tôi sẽ hỏi cậu. Giúp đỡ nhé.」[p]
(Có vẻ như hắn cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_hayato+=1"  name="koukando_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"] Hayato「Hả, bó hoa á...?」[p]
Hayato「Ngoài mấy dịp chúc mừng ra thì làm gì có chuyện đàn ông con trai lại đi tặng hoa cho nhau... Cậu lệch sóng quá rồi đấy.」[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"] Hayato「Mỹ phẩm á...?」[p]
Hayato「A, thôi được rồi... Nhưng mà đồ vật thì không có tội. Tạm thời tôi sẽ mang cái này tặng cho Tsubomi vậy.」[p]
Hayato「Nói thật nhé, cậu nên nghĩ đến người nhận mà chọn quà cho cẩn thận vào.」[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*keikaido_UP"  ]
[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"] Hayato「Trông ngon thế...! Nhưng mà ngọt thế này thì tôi chịu không ăn nổi đâu.」[p]
Hayato「Đang rảnh rỗi, hay là mang đến tiệm của mẹ làm đồ ăn nhẹ nhỉ. Mẹ chắc chắn sẽ vui lắm đấy.」[p]
(Có vẻ như hắn cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_hayato+=1"  name="koukando_hayato"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*okane_nigate_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_nigate_seikou"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_nigate_sippai"  ]
*okane_hutuu_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_hutuu_sippai"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_hutuu_seikou"  ]
*okane_yuukou_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_yuukou_sippai"  cond="f.issyonikaeru_ran>1"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_yuukou_seikou"  ]
*okane_suki_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_suki_sippai"  cond="f.issyonikaeru_ran==0"  ]
[jump  storage="komyu_hayato.ks"  target="*okane_suki_seikou"  ]
*okane_nigate_seikou

[tb_start_text mode=1 ]
Hayato「Thật luôn...? Này nhé... Cậu cũng là người trưởng thành rồi, phải biết xấu hổ đi chứ.」[p]
Hayato「Chỉ lần này thôi đấy nhé!? Nhất định phải trả lại đấy...!」[p]
Hayato「Với lại, cấm tiệt cái trò vòi vĩnh tiền bạc của mẹ và Tsubomi đi đấy nhé?」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã nhận 3.000 Yên[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=3000"  name="money_updated"  cmd="+="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_nigate_sippai

[tb_start_text mode=1 ]
Hayato「Này nhé... Sao cậu có thể mở miệng vay tiền một cách tỉnh bơ như thế được nhỉ...」[p]
Hayato「Thà vay của mấy công ty tài chính còn hơn là đi mượn người quen đấy?」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_hutuu_seikou

[tb_start_text mode=1 ]
Hayato「Mà thôi cũng được... Nhưng tốt nhất là đừng có đi mượn tiền người khác nữa nhé?」[p]
Hayato「Ảnh hưởng đến uy tín lắm đấy... Rồi, cầm lấy đi. Từng này đủ chưa?」[p]
Hayato「Trả sớm đấy nhé?」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã nhận 5.000 Yên[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_hutuu_sippai

[tb_start_text mode=1 ]
Hayato「Dù có là người quen đi chăng nữa, thì hết tiền cũng là hết tình đấy.」[p]
Hayato「Mấy cái chuyện tiền nong này, cậu không được hời hợt đâu đấy.」[p]
Hayato「Mà này, ít ra cũng phải tiết kiệm chút đỉnh đi chứ...」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_yuukou_seikou

[tb_start_text mode=1 ]
Hayato「Thiếu tiền à? Mà thôi cũng được, tôi chỉ có thể đưa cho cậu chừng này thôi.」[p]
Hayato「Mà, cậu trả lúc nào cũng được.」[p]
Hayato「Đến lúc kẹt quá thì tôi sẽ trừ vào tiền lương làm thêm của cậu... Haha, đùa thôi.」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã nhận 10.000 Yên[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=10000"  name="money_updated"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_yuukou_sippai

[tb_start_text mode=1 ]
Hayato「A, xin lỗi nhé, bây giờ tôi không mang theo tiền mặt.」[p]
Hayato「Để khi khác nhé! Nếu thiếu quá thì cứ liên lạc cho tôi.」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_suki_seikou

[tb_start_text mode=1 ]
Hayato「Cũng được thôi. Tiền lương làm thêm ít thế cơ à?」[p]
Hayato「Mà, dạo này vật giá cũng leo thang mà... Sống chật vật thế này cũng mệt mỏi nhỉ.」[p]
Hayato「Này... Cứ thư thả lúc nào có dư dả thì trả cũng được.」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã nhận 15.000 Yên[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=15000"  name="money_updated"  cmd="+="  op="t"  val="15000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_suki_sippai

[tb_start_text mode=1 ]
Hayato「Xin lỗi nhé, bây giờ tôi không mang theo tiền mặt...」[p]
Hayato「Cậu ổn không đấy? Bao một bữa thì tôi lo được. Nếu kẹt quá thì cứ bảo tôi nhé.」[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_atm

[call  storage="statusUP.ks"  target="*jyouken_cleared"  ]
[tb_start_text mode=1 ]
Hayato「À, được thôi. Đây, chừng này đủ chưa?」[p]
Hayato「Cậu đúng là vô tư thật đấy, nhưng mà chẳng hiểu sao tôi không thể bỏ mặc cậu được.」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã nhận 20.000 Yên[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=20000"  name="money_updated"  cmd="+="  op="t"  val="20000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okane_sennou

[call  storage="statusUP.ks"  target="*jyouken_cleared"  ]
[tb_start_text mode=1 ]
Hayato「Thật tình... Tôi chịu thua cậu luôn đấy. Cầm lấy chừng này thôi nhé. Tôi cạn sạch tiền rồi.」[p]

[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Đã nhận 20.000 Yên[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.money_updated+=20000"  name="money_updated"  cmd="+="  op="t"  val="20000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="2000"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran>1"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(10-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="10"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_suki_sippai"  cond="f.syokuji_ran==0"  ]
[jump  storage="komyu_hayato.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
Hayato「Hử? Đi ăn với tôi á? Mà, cũng được thôi... Nhưng chỉ một lát thôi đấy nhé?」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
Hayato「Hai thằng đàn ông mặt đối mặt ngồi ăn với nhau, trông thảm hại lắm. Không được đâu.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
Hayato「Mà, cũng được thôi.[r]A, cậu muốn nghe tôi truyền đạt bí kíp khi đi ăn với con gái đúng không?」[p]
Hayato「Nếu cậu bao tôi một bữa coi như học phí thì tôi sẽ chỉ cho cậu vài chiêu.」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
Hayato「A, xin lỗi nhé, tôi đã quyết định là không đi ăn với đàn ông con trai rồi.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
Hayato「Ồ, được đấy. Ăn gì nào? Nếu cậu có yêu cầu gì thì tôi sẽ chọn quán cho.」[p]
Hayato「Đây chính là lúc để tôi trổ tài đấy.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
Hayato「A, xin lỗi nhé. Hôm nay tôi có hẹn với một cô em rồi... Để khi khác nhé?」[p]
Hayato「Nhân tiện thì giữ bí mật với Nagi giúp tôi nhé. Cảm ơn.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
Hayato「Được đấy. Thực ra tôi cũng đang định rủ cậu đây.[r]Đúng lúc thật đấy.」[p]
Hayato「Tôi có cả núi chuyện muốn nói với cậu đây. Chuẩn bị tinh thần mà hầu chuyện tôi đi nhé?」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*hayato"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
Hayato「Xin lỗi nhé, tôi cũng muốn đi lắm. Nhưng mà khó quá...」[p]
Hayato「Để lần sau tôi bù cho nhé.[r]Tôi cũng có nhiều chuyện muốn nói với cậu lắm. Lát nữa tôi sẽ liên lạc lại.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_hayato.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Đúng là với số tiền đang có thì không thể nào đi được rồi.）[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（Mà khoan, tại sao mình lại phải tặng quà cho hắn cơ chứ.）[p]
[_tb_end_text]

[jump  storage="komyu_hayato.ks"  target="*top"  ]
