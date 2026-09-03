
[_tb_system_call storage=system/_komyu_tubomi.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  cross="false"  ]
[call  storage="BGM.ks"  target="*tubomi"  ]
[call  storage="character.ks"  target="*tubomi_hudangi"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;音声ストップ
[stopse buf=2]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_text mode=4 ]
（Mình nên nói chuyện gì đây?）
[_tb_end_text]

[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="Trò chuyện phiếm"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="Tặng quà"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="Rủ đi hẹn hò"  target="*deto_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="Rủ đi ăn tối"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="Kết thúc trò chuyện"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[call  storage="komyu_tubomi.ks"  target="*koibito"  cond="f.koukando_tubomi_koibito==1"  ]
[s  ]
*koibito

[glink  color="btn_05_yellow"  storage="komyu_tubomi.ks"  size="20"  width="280"  height="50"  text="Muốn làm tình"  target="*H"  x="990"  y="160"  _clickable_img=""  ]
[return  ]
*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_蕾
;苦手0-9 普通10-19 友好20-29 好き30〜

[if exp="f.koukando_tubomi >= 0 && f.koukando_tubomi <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_tubomi >= 10 && f.koukando_tubomi <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_tubomi >= 20 && f.koukando_tubomi <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_tubomi >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_3yuukou"]

[endif]



[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_tubomi.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[jump  storage="komyu_purezento.ks"  target="*purezento_tubomi"  ]
*deto_top

[jump  storage="komyu_tubomi.ks"  target="*deto_sasoenai1"  cond="f.deto_tubomi==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto_sasoenai2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;状態別デートの約束(蕾)

[if exp="f.koukando_tubomi_koibito == 1"]
[jump target="*deto_koibito_seikou"]

[elsif exp="f.koukando_tubomi < 10"]
[jump target="*deto_nigate_seikou"]

[elsif exp="f.koukando_tubomi < 20"]
[jump target="*deto_hutuu_seikou"]

[elsif exp="f.koukando_tubomi < 30"]
[jump target="*deto_yuukou_seikou"]

[else]
[jump target="*deto_suki_seikou"]

[endif]
[_tb_end_tyrano_code]

*yuusyoku_top

[tb_start_tyrano_code]
;手持ち5000円未満でトップに戻る
[if exp="f.money < 5000"]
[jump target="*okanenasi"]
[endif]

;好感度別で一緒に食事ができる確率が変化_蕾

[if exp="f.koukando_tubomi < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_tubomi < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_tubomi < 30"]
[jump target="*syokuji_yuukou_ran"]

[else]
[jump target="*syokuji_suki_ran"]

[endif]

[_tb_end_tyrano_code]

*end_top

[tb_start_text mode=1 ]
（Cũng chẳng cần phải thân thiết làm gì.）[p]
[_tb_end_text]

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*end

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
Tsubomi đảo mắt đi chỗ khác, lắng nghe một cách chán nản.[r]Nhìn dáng vẻ ấy còn có thể cảm nhận được sự bực dọc.[p]
Tôi kiếm bừa một chủ đề rồi kết thúc cuộc trò chuyện.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
Tsubomi lắng nghe với vẻ uể oải.[r]Tuy thái độ lạnh nhạt nhưng có vẻ không hoàn toàn thờ ơ.[p]
Tôi quyết định rời đi trước khi bầu không khí trở nên nặng nề.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
Tsubomi mỉm cười dịu dàng lắng nghe tôi nói.[r]Cuộc trò chuyện diễn ra tự nhiên, khi chạm mắt, cô ấy khẽ gật đầu.[p]
Tôi cảm thấy khoảng cách trong lòng đã thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
Tsubomi lắng nghe tôi nói, thỉnh thoảng lại mỉm cười.[r]Ánh mắt nhìn thẳng của cô ấy mang một sự ấm áp đặc biệt.[p]
Tôi cảm thấy khoảng cách trong lòng đã thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]Tsubomi「Đẹp quá! Cảm ơn anh...! Món này đắt lắm nên em không mua nổi, em vui lắm.」[p]
Tsubomi「Anh đeo cho em được không?」[p]
[舜]「Tất nhiên rồi... Đây đây.」[p]
Tsubomi「Cảm ơn anh...! [r]Sao nào? Hợp không? Mà, em nghĩ em mặc gì cũng hợp cả thôi.」[p]
（Có vẻ cô ấy rất vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]Tsubomi「Hạt cà phê sao? Hê, anh cũng biết thưởng thức cà phê cơ à?」[p]
Tsubomi「Bình thường em không tự pha cà phê từ hạt... Chắc phải thử xem sao.[r]Mẹ chắc cũng sẽ thích lắm đây.」[p]
Tsubomi「A, hay là để ở tiệm của mẹ, lúc nghỉ giải lao mọi người cùng uống nhỉ?[r]Ừm, thế có khi lại hay.」[p]
[舜]（Định tặng cho Tsubomi mà... lại thành quà biếu cho tiệm mất rồi.）[p]
(Có vẻ cô ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]Tsubomi「Sao lại là game...? Em có chơi game bao giờ đâu...」[p]
Tsubomi「Em ghi nhận tấm lòng của anh...[r]Nhưng cái suy nghĩ mình thích gì thì người khác cũng thích nấy là sai lầm đấy nhé?」[p]
Tsubomi「Nói đúng hơn, áp đặt sở thích của mình cho con gái là không tốt đâu?」[p]
[舜]（Ư... Bị mắng mất rồi.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.keikaido+=1"  name="keikaido"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]Tsubomi「Hả, hoa sao? Fufu, giống như được fan tặng sau khi diễn xong ấy nhỉ.」[p]
Tsubomi「Không biết bao giờ em mới được nhận bó hoa to đến mức ôm không xuể nhỉ~」[p]
Tsubomi「A-Anh cười tủm tỉm cái gì thế...! Em chỉ nói ước mơ tương lai thôi mà...!」[p]
(Có vẻ cô ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]Tsubomi「Oa, tuyệt quá...! Sao anh biết chọn loại mỹ phẩm này vậy?」[p]
[舜]「Anh hỏi nhân viên cửa hàng đấy.」[p]
Tsubomi「Khá đấy chứ. Chắc em phải nhìn anh bằng con mắt khác rồi. Fufu, em vui lắm. Cảm ơn anh nhé.」[p]
Tsubomi「Muốn dùng thử ghê~. Anh phải nhìn kỹ xem em có hợp không đấy nhé?」[p]
（Có vẻ cô ấy rất vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_tubomi+=2"  name="koukando_tubomi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]Tsubomi「Oa, ngon quá... Thơm mùi ngọt ngào ghê~」[p]
Tsubomi「Á...! Nhưng mà, em đang ăn kiêng... Ư~, sao anh lại mang đến sự cám dỗ ngọt ngào thế này...」[p]
Tsubomi「Chắc ăn một chút cũng không sao đâu, nhỉ?」[p]
(Có vẻ cô ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*deto_nigate_seikou

[tb_start_text mode=1 ]
Tsubomi「Đi với anh á? ...Mà, cũng được thôi.」[p]
Tsubomi「Thay vào đó, em sẽ đi đến nơi em muốn nên anh cấm phàn nàn đấy.」[p]
[舜]（Thành công... rồi sao?）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Tsubomi[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_hutuu_seikou

[tb_start_text mode=1 ]
Tsubomi「Hẹn hò sao? Vậy anh phải khao em món gì ngon ngon đấy nhé~」[p]
[舜]「Đừng bảo là nhà hàng cao cấp nhé.」[p]
Tsubomi「Fufufu, cứ đi rồi sẽ biết.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Tsubomi[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_yuukou_seikou

[tb_start_text mode=1 ]
Tsubomi「Hẹn hò sao? Đi đâu đây? Hôm trước em có thấy trên mạng xã hội...」[p]
[舜]「Hả!? Rốt cuộc là em đồng ý hay không?」[p]
Tsubomi「Hả? Em đang nói chuyện sau khi đồng ý mà. Đi đâu đây nhỉ.」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Tsubomi[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_suki_seikou

[tb_start_text mode=1 ]
Tsubomi「Hẹn hò sao? Bị rủ thẳng thừng thế này... cứ thấy ngại ngại.」[p]
Tsubomi「Tất nhiên là em đi rồi! Em mong chờ lắm đấy...!」[p]
Tsubomi「Nên mặc gì đi nhỉ~. Này, lát nữa anh nói cho em biết anh thích kiểu đồ nào nhé.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Tsubomi[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*deto_koibito_seikou

[tb_start_text mode=1 ]
Tsubomi「Tuyệt quá, trùng hợp ghê...! Em cũng định rủ anh đi đâu đó.」[p]
Tsubomi「Nhưng được rủ đi hẹn hò, đúng là vui thật đấy.[r]Này, nói lại lần nữa đi. Nói là chúng ta đi hẹn hò nhé đi.」[p]
[舜](Sao cô ấy có vẻ vui mừng quá vậy.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Tsubomi[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_tubomi=1"  name="deto_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(4-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="4"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(3-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="3"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran>1"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(10-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="10"  ]
[tb_start_tyrano_code]
;恋人状態(食事)
[if exp="f.koukando_tubomi_koibito == 1 && f.syokuji_ran == 0"]
[jump target="*syokuji_koibito_sippai"]
[endif]

[if exp="f.koukando_tubomi_koibito == 1"]
[jump target="*syokuji_koibito_seikou"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_tubomi.ks"  target="*syokuji_suki_sippai"  cond="f.syokuji_ran==0"  ]
[jump  storage="komyu_tubomi.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
Tsubomi「Cũng được thôi... Xem như đây là buổi hẹn hò ở tiệm nhé?」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
Tsubomi「Không thích. Tạm biệt.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
Tsubomi「Cũng được thôi. Tất nhiên là anh khao đúng không?」[p]
Tsubomi「A, vậy thì đi ăn đồ Pháp trước ga đi. Em thấy trên mạng xã hội nên tò mò lắm.」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
Tsubomi「A~, em đang bận với lại đang ăn kiêng nên cho qua đi.」[p]
Tsubomi「Nếu anh muốn em đi mua sắm cùng thì em đi chung cho.[r]Tất nhiên là có tính phí nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
Tsubomi「Em cũng đang đói. Đi thôi! [r]Thay vào đó, chỉ được chọn quán nào đồ ăn healthy thôi đấy nhé?」[p]
Tsubomi「Con gái làm sao mà ăn tối nhiều được! Cứ đi theo em, cấm phàn nàn.」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
Tsubomi「Xin lỗi anh, em đang ăn kiêng nên hạn chế ăn ngoài.」[p]
Tsubomi「Anh hiểu cảm giác muốn mình luôn xinh đẹp đúng không? Vậy nên hẹn anh dịp khác nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
Tsubomi「Hả, em muốn đi! Đi ăn thôi.」[p]
Tsubomi「Anh muốn đi đâu cũng được...[r]Chỉ cần ở bên anh là vui rồi.」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
Tsubomi「Mồ~, sao không rủ sớm hơn chứ~. Giờ sao mà đi được.」[p]
[舜]「Cũng phải, em có vẻ bận nên không cần ép bản thân đâu──」[p]
Tsubomi「Không được! Lần tới nhất định em sẽ đi...! [r]Mình sắp xếp lịch rồi đi ăn nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*syokuji_koibito_seikou

[tb_start_text mode=1 ]
Tsubomi「A, em cũng định rủ anh đi quán em tìm thấy trên mạng xã hội đấy.」[p]
Tsubomi「Anh có muốn ăn gì thì cứ nói, mình đi quán đó.[r]Em thì sao cũng được...」[p]
Tsubomi「V-Vì đi với anh thì ăn gì cũng ngon mà... A, xấu hổ quá!」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*tubomi"  ]
*syokuji_koibito_sippai

[tb_start_text mode=1 ]
Tsubomi「Tiếc quá, hôm nay không được rồi.[r]Trời ạ~, biết anh rủ thì em đã để trống lịch rồi...」[p]
Tsubomi「Lần tới đi ăn món gì ngon ngon nhé? Hứa rồi đấy!」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_tubomi.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Với số tiền hiện tại thì chắc là không đủ rồi.）[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
[call  storage="komyu_tubomi.ks"  target=""  ]
*deto_sasoenai1

[tb_start_text mode=1 ]
Tsubomi「Em mong chờ buổi hẹn hò lắm. Này, em tìm hiểu đủ chỗ đi chơi rồi đấy.」[p]
Tsubomi「Lát em gửi qua tin nhắn, anh nhớ xem nhé?」[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*deto_sasoenai2

[tb_start_text mode=1 ]
（Hình như ngày nghỉ tiếp theo mình có hẹn mất rồi.）[p]
（Lần này thôi vậy.）[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
*H

[jump  storage="komyu_H.ks"  target="*tubomi"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（Tặng nhiều quá thế nào em ấy cũng được nước lấn tới cho xem.）[p]
[_tb_end_text]

[jump  storage="komyu_tubomi.ks"  target="*top"  ]
