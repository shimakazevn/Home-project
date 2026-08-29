

[_tb_system_call storage=system/_komyu_nagi.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.koukando_nagi_koibito=1"  name="koukando_nagi_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin2.png"  cross="false"  ]
[call  storage="character.ks"  target="*nagi_sigotogi"  ]
[call  storage="BGM.ks"  target="*nagi"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;音声ストップ
[stopse buf=1]
;レイヤー2を消す
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_text mode=4 ]
（Nên nói chuyện gì đây nhỉ?）
[_tb_end_text]

[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="Trò chuyện phiếm"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="Tặng quà"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="Rủ đi hẹn hò"  target="*deto_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="Rủ đi ăn tối"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="Kết thúc trò chuyện"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[call  storage="komyu_nagi.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[s  ]
*koibito

[glink  color="btn_05_yellow"  storage="komyu_nagi.ks"  size="20"  width="280"  height="50"  text="Muốn làm tình"  target="*H"  x="990"  y="160"  _clickable_img=""  ]
[return  ]
*deto_top

[jump  storage="komyu_nagi.ks"  target="*deto_on"  cond="f.deto_nagi==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto_yoteiari"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;状態別デートの約束(凪)

[if exp="f.koukando_nagi_koibito == 1"]
[jump target="*deto_koibito_seikou"]

[elsif exp="f.koukando_nagi < 10"]
[jump target="*deto_nigate_seikou"]

[elsif exp="f.koukando_nagi < 20"]
[jump target="*deto_hutuu_seikou"]

[elsif exp="f.koukando_nagi < 30"]
[jump target="*deto_yuukou_seikou"]

[else]
[jump target="*deto_suki_seikou"]

[endif]
[_tb_end_tyrano_code]

*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_凪
;苦手0-9 普通10-19 友好20-29 好き30以上

[if exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_nagi >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_3yuukou"]

[endif]
[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_nagi.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[jump  storage="komyu_purezento.ks"  target="*purezento_nagi"  ]
*yuusyoku_top

[tb_start_tyrano_code]
;手持ち5000円未満でトップに戻る
[if exp="f.money < 5000"]
[jump target="*okanenasi"]
[endif]

;好感度別で一緒に食事ができる確率が変化_凪

[if exp="f.koukando_nagi < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_nagi < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_nagi < 30"]
[jump target="*syokuji_yuukou_ran"]

[else]
[jump target="*syokuji_suki_ran"]

[endif]
[_tb_end_tyrano_code]

*end_top

[tb_start_text mode=1 ]
（Mình cũng chẳng cần thiết phải thân thiết với cô ấy làm gì.）[p]
[_tb_end_text]

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*end

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
Tôi thử gợi một chủ đề vô thưởng vô phạt.[r]Nagi tuy có vẻ hơi gượng gạo nhưng vẫn mỉm cười gật đầu đáp lời tôi.[p]
Tôi cảm thấy khoảng cách giữa hai đứa dường như đã được kéo lại gần nhau hơn một chút.[p]

[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
Tôi thử gợi một chủ đề vẩn vơ.[r]Nagi vừa cười ngượng ngùng vừa gật đầu đáp lời tôi.[p]
Tôi cảm thấy khoảng cách giữa hai đứa dường như đã được kéo lại gần nhau hơn một chút.[p]

[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
Tôi thử nói đùa vài câu, Nagi liền nở một nụ cười thật thân thiện.[p]
Dù câu chuyện có bị ngắt quãng thì cũng không hề có chút gượng gạo nào,[r]tôi cảm thấy việc em ấy ở bên cạnh mình là một điều vô cùng tự nhiên.[p]

[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
Tôi có thể cảm nhận được em ấy đang rất hứng thú với câu chuyện của mình.[r]Nagi nhìn thẳng vào mắt tôi, và khi hai ánh mắt chạm nhau, em ấy liền bẽn lẽn cười ngượng ngùng.[p]
Tôi cảm thấy khoảng cách giữa hai đứa dường như đã được kéo lại gần nhau hơn một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"] Nagi「Oa, dễ thương quá. Cảm ơn cậu...! Nhưng mà tớ nhận thật có được không?[r]Tớ thấy hơi ngại...」[p]
Nagi「Với lại, cái này có hơi sặc sỡ so với tớ không?」[p]
[舜]「Tớ nghĩ là hợp với cậu mà.」[p]
Nagi「Vậy sao? Hehe, cảm ơn cậu nhé. Tớ sẽ thử dùng xem sao.」[p]
(Có vẻ như em ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"] Nagi「Thơm quá...! Trông ngon ghê![r]Hehe, Shun-chan cũng biết tặng những món quà sành điệu thế này rồi cơ đấy.」[p]
Nagi「Cậu còn cất công chọn loại nữa à? Tớ vui lắm.」[p]
Nagi「Chắc tớ sẽ pha uống trong giờ nghỉ. Tớ có thêm động lực để làm việc rồi. Cảm ơn cậu nhé.」[p]
（Có vẻ như em ấy rất vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"] Nagi「Oa...! Game này, mà lại là game hồi xưa đúng không? Cái này... hồi nhỏ tớ từng chơi rồi.[r]Tớ cũng từng chơi cùng Shun-chan đúng không?」[p]
[舜]「Đúng thế nhỉ? Tớ thấy hoài niệm quá nên mới mua.」[p]
Nagi「Cậu vẫn còn nhớ à...! Tớ vui lắm. Cậu giỏi thật đấy, tìm đâu ra thế. Tớ muốn chơi thử ngay quá.」[p]
（Có vẻ như em ấy rất vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"] Nagi「Oa đẹp quá...! Sao tự nhiên cậu lại tặng hoa cho tớ thế này...」[p]
Nagi「Tớ vui lắm, nhưng mà cũng thấy hơi ngại ngại sao ấy... Hehe. Cảm ơn cậu nhé.」[p]
Nagi「Để hoa héo thì tội nghiệp lắm, tớ phải nhanh chóng về nhà cắm vào lọ mới được.」[p]
(Có vẻ như em ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_01c.gif"] Nagi「Hả~! Shun-chan mua đồ trang điểm cơ á...? Cậu cất công ra tận quầy mỹ phẩm luôn sao?」[p]
[舜]「Ừ, tớ đã hỏi nhân viên tư vấn rồi mới chọn đấy.」[p]
Nagi「Thì ra là vậy.[r]Tớ thực sự rất vui vì tấm lòng của cậu... nhưng mà cứ tưởng tượng ra cảnh đó là tớ lại thấy buồn cười... Hehe!」[p]
Nagi「Cảm ơn cậu nhé. Tớ sẽ trân trọng và sử dụng nó thật cẩn thận.」[p]
(Có vẻ như em ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_nagi+=1"  name="koukando_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"] Nagi「Oa, trông ngon quá...! Tớ cũng đang đói bụng đây. Vui quá!」[p]
[舜]「Tớ nghe bảo món này ngon lắm. Tớ muốn Nagi ăn thử.」[p]
Nagi「Hehe, tớ vui lắm vì khi biết đến món ngon, cậu lại nhớ đến tớ.」[p]
Nagi「Lát nữa tớ sẽ ăn. Mong chờ quá đi.」[p]
（Có vẻ như em ấy rất vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số hưng phấn đã tăng nhẹ[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_nagi+=2"  name="koukando_nagi"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_kettei2

[return  ]
*pure_kettei_teisi

[tb_eval  exp="f.pure_kettei_on=1"  name="pure_kettei_on"  cmd="="  op="t"  val="1"  ]
[return  ]
[s  ]
*kaeru_nigate_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_nigate_seikou"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_nigate_sippai"  ]
*kaeru_hutuu_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_hutuu_seikou"  cond="f.issyonikaeru_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_hutuu_sippai"  ]
*kaeru_yuukou_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(4-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="4"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_yuukou_seikou"  cond="f.issyonikaeru_ran>1"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_yuukou_sippai"  ]
*kaeru_suki_ran

[tb_eval  exp="f.issyonikaeru_ran=Math.floor(Math.random()*(9-0+1)+0)"  name="issyonikaeru_ran"  cmd="="  op="r"  val="0"  val_2="9"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_suki_sippai"  cond="f.issyonikaeru_ran==0"  ]
[jump  storage="komyu_nagi.ks"  target="*kaeru_suki_seikou"  ]
*kaeru_nigate_seikou

[tb_start_text mode=1 ]
Nagi「Hả... ừm. A, nhưng mà... tớ căng thẳng quá chẳng biết nói gì bây giờ...」[p]
Nagi「Nếu tớ cứ im lặng mãi thì cho tớ xin lỗi nhé...」[p]
[舜]（Im lặng mãi thì... đi về cùng nhau còn ý nghĩa gì nữa?）[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_nigate_sippai

[tb_start_text mode=1 ]
Nagi「Hả, x-xin lỗi cậu... Hôm nay tớ bận quá... Thực sự xin lỗi cậu nhé.」[p]
[舜]（Cứ tưởng là có thể nói chuyện được đôi câu... nhưng không được à.）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaeru_hutuu_seikou

[tb_start_text mode=1 ]
Nagi「A, ừm, được chứ. Tớ đi chuẩn bị đồ đạc đã, cậu đợi tớ một lát nhé?」[p]
Nagi「Nếu cậu đang vội thì cứ về trước cũng được.」[p]
[舜]「Tớ đợi, tớ sẽ đợi mà...!」[p]
[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_hutuu_sippai

[tb_start_text mode=1 ]
Nagi「Ừm thì... Xin lỗi cậu nhé. Hôm nay tớ hơi bận một chút. Thực sự xin lỗi cậu.」[p]
Nagi「Cậu đi đường cẩn thận nhé.」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaeru_yuukou_seikou

[tb_start_text mode=1 ]
Nagi「Hehe, không lẽ cậu bị lạc đường à?[r]Vậy thì tớ sẽ đi về cùng cậu nhé.」[p]
Nagi「Đùa thôi... Lạ thật đấy, không ngờ Shun-chan lại rủ tớ.」[p]
Nagi「Cùng về thôi. Cậu đợi tớ một lát nhé.」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_yuukou_sippai

[tb_start_text mode=1 ]
Nagi「Tiếc quá, hôm nay tớ bận mất rồi~」[p]
Nagi「Để khi khác nhé...! Lúc đó chúng mình vừa đi vừa la cà rồi hẵng về.」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*kaeru_suki_seikou

[tb_start_text mode=1 ]
Nagi「Hả... Ư-ừm. Tớ sẽ chuẩn bị đồ đạc ngay đây, cậu đợi tớ một lát nhé...!」[p]
Nagi「Tớ thấy vui quá, lâu lắm rồi mới lại được đi về cùng Shun-chan nhỉ.」[p]

[_tb_end_text]

[jump  storage="komyu_nagi_kaeru.ks"  target="*top"  ]
*kaeru_suki_sippai

[tb_start_text mode=1 ]
Nagi「A... Tiếc quá... Hôm nay tớ không đi về cùng cậu được rồi... Xin lỗi cậu nhé.」[p]
Nagi「Tớ cũng muốn được sóng bước đi về cùng Shun-chan lắm... Lần sau cậu nhất định phải rủ tớ nữa đấy nhé?」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_nagi.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[tb_start_tyrano_code]
;恋人状態
[if exp="f.koukando_nagi_koibito == 1 && f.syokuji_ran == 0"]
[call target="*syokuji_koibito_sippai"]
[endif]

[if exp="f.koukando_nagi_koibito == 1"]
[call target="*syokuji_koibito_seikou"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_nagi.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
Nagi「Hả? Ư-ừm. Nhưng mà tớ không giỏi nói chuyện lúc đang ăn đâu...」[p]
Nagi「Nếu cậu không phiền thì...」[p]
[舜]（Mình phải cẩn thận để không biến bữa tối thành một buổi im lặng đáng sợ mới được.）[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
Nagi「Xin lỗi cậu... Tớ đang bận nên chắc là hơi khó...」[p]
Nagi「Cất công cậu rủ tớ mà lại thế này, xin lỗi cậu nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
Nagi「A, ừm được chứ, tớ cũng đang đói bụng đây. Đi ăn gì đó nhé?」[p]
Nagi「Nếu muốn ăn nhanh rồi về thì có nhà ăn của bệnh viện đấy. Vừa rẻ lại vừa ngon.」[p]
[舜]「Ừm, thế cũng được. Nhưng hay là mình đi chỗ khác đi.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
Nagi「A... Xin lỗi cậu nhé. Hôm nay tớ bận quá... Nếu lần sau cậu lại rủ tớ thì tớ sẽ vui lắm đấy.」[p]
[舜]（Cũng phải thôi... Tiếc thật, bị từ chối mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
Nagi「Tớ cũng đang đói bụng đây~. Vui quá, chúng mình đi ăn ở đâu đây!」[p]
Nagi「Shun-chan có quán nào muốn giới thiệu không? Hehe, mong chờ quá.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
Nagi「Hả~, tiếc quá...! Hôm nay tớ hơi bận mất rồi~」[p]
Nagi「Lần sau cậu lại rủ tớ nhé. Lần tới nhất định tớ sẽ đi.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
Nagi「Ăn tối á? Ừm, tớ muốn đi...! Hehe, mong chờ bữa tối với Shun-chan quá đi.」[p]
Nagi「Ăn gì bây giờ nhỉ~? Tớ thì ăn gì cũng được, miễn là đi cùng Shun-chan.」[p]
Nagi「Đã ăn cùng nhau thì món nào chẳng ngon chứ.」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
Nagi「Tớ cũng muốn đi lắm... nhưng hôm nay tớ có hẹn trước rồi nên không đi được. Nhưng mà nếu tớ hủy hẹn thì──」[p]
[舜]「Thôi, không sao đâu! Cậu cứ ưu tiên việc kia đi...!」[p]
Nagi「Vậy sao? Thực sự xin lỗi cậu nhé? Lần sau cậu lại rủ tớ nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*syokuji_koibito_seikou

[tb_start_text mode=1 ]
Nagi「Ừm, đi thôi đi thôi.[r]Nếu tớ bảo muốn đi ăn món Pháp cao cấp thì cậu tính sao?」[p]
[舜]「T-Tất nhiên là được rồi!」[p]
Nagi「Hehe, tớ không nói thế đâu. Nhưng mà cảm ơn cậu vì đã cố gắng nhé. Tớ thích cậu lắm.」[p]

[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*nagi"  ]
*syokuji_koibito_sippai

[tb_start_text mode=1 ]
Nagi「A, xin lỗi cậu, hôm nay chắc là hơi khó rồi...」[p]
Nagi「Bù lại, lần sau chúng mình cùng ăn cơm ở nhà nhé. Cùng nhau nấu ăn nhé?」[p]
Nagi「Lâu lắm rồi tớ mới lại được ăn cơm cùng Shun-chan ở nhà nhỉ. Chắc sẽ vui lắm đây.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Đúng là với số tiền đang có thì không thể nào đi được rồi.）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*deto_nigate_seikou

[tb_start_text mode=1 ]
Nagi「Đi ra ngoài à? Ừm, tớ đang rảnh nên... cũng không sao.」[p]
Nagi「Nhưng mà lâu lắm rồi mới lại nói chuyện, nên chỉ một lát thôi được không?」[p]
[舜]（Tuy là em ấy đã đồng ý. Nhưng mình vẫn cảm thấy có khoảng cách.）[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Vào ngày nghỉ tiếp theo à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_hutuu_seikou

[tb_start_text mode=1 ]
Nagi「A, ừm. Tất nhiên rồi.」[p]
Nagi「Bảo là hẹn hò thì tớ hơi khó xử một chút... nhưng nếu chỉ là cùng nhau đi dạo thì được.」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Thứ Bảy tuần sau à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_yuukou_seikou

[tb_start_text mode=1 ]
Nagi「Tớ có được không? Sao trông Shun-chan có vẻ quen rủ rê con gái thế...?」[p]
Nagi「Hehe, tớ đùa thôi, cảm ơn cậu vì đã rủ tớ nhé.」[p]
Nagi「Tớ rất mong chờ được đi nhiều nơi cùng cậu giống như ngày xưa.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Vào ngày nghỉ tiếp theo à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_suki_seikou

[tb_start_text mode=1 ]
Nagi「Hả, h-hẹn hò á? Như thế... tớ sẽ mong chờ lắm đấy nhé...?」[p]
Nagi「À mà, tớ không được tỏ ra vui mừng quá như thế nhỉ... Nhưng mà, tớ thực sự rất vui...」[p]
Nagi「Đi đâu bây giờ nhỉ, tớ thấy háo hức quá đi mất.」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Vào ngày nghỉ tiếp theo à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_koibito_seikou

[tb_start_text mode=1 ]
Nagi「Được Shun-chan rủ đi hẹn hò thế này tớ vui lắm.」[p]
Nagi「Chúng mình đi đâu đây? Đi ngắm hoa như ngày xưa cũng được, mà đi cửa hàng game cũng hay nhỉ.」[p]
Nagi「Chỉ cần là đi cùng Shun-chan thì đi đâu tớ cũng thấy vui hết.」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Nagi[resetfont][p]
（Vào ngày nghỉ tiếp theo à, mình phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_nagi=1"  name="deto_nagi"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_nagi.ks"  target="*end"  ]
*deto_on

[tb_start_text mode=1 ]
Nagi「Mong chờ buổi đi chơi quá đi.」[p]
Nagi「Hôm đó tớ sẽ chuẩn bị thật tươm tất... Nhờ cậu nhé?」[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*deto_yoteiari

[tb_start_text mode=1 ]
(Nhắc mới nhớ, hôm đó mình có lịch mất rồi. Thôi để khi khác rủ em ấy vậy.)[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（Tặng một lúc nhiều món thế này, quả nhiên là khiến em ấy thấy ngại nhỉ.）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*H

[cm  ]
[jump  storage="komyu_H.ks"  target="*nagi"  