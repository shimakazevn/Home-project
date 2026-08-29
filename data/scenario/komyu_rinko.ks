[_tb_system_call storage=system/_komyu_rinko.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.koukando_rinko_koibito=1"  name="koukando_rinko_koibito"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  cross="false"  ]
[call  storage="character.ks"  target="*rinko_sigotogi"  ]
[call  storage="BGM.ks"  target="*rinko"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
;音声ストップ
[stopse buf=3]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
（Nên nói chuyện gì đây nhỉ?）
[_tb_end_text]

[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="Trò chuyện phiếm"  target="*hanasu_top"  x="990"  y="220"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="Tặng quà"  target="*purezento_top"  x="990"  y="280"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="Rủ đi hẹn hò"  target="*deto_top"  x="990"  y="340"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="Rủ đi ăn tối"  target="*yuusyoku_top"  x="990"  y="400"  _clickable_img=""  ]
[glink  color="btn_05_black"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="Kết thúc trò chuyện"  target="*end_top"  x="990"  y="460"  _clickable_img=""  ]
[call  storage="komyu_rinko.ks"  target="*koibito"  cond="f.koukando_rinko_koibito==1"  ]
[s  ]
*koibito

[glink  color="btn_05_yellow"  storage="komyu_rinko.ks"  size="20"  width="280"  height="50"  text="Muốn làm tình"  target="*H"  x="990"  y="160"  _clickable_img=""  ]
[return  ]
*hanasu_top

[tb_start_tyrano_code]
;好感度別で日常会話が変化_凛子
;苦手0-9 普通10-19 友好20-29 好き30〜

[if exp="f.koukando_rinko >= 0 && f.koukando_rinko <= 9"]
[jump target="*kaiwa_1nigate"]

[elsif exp="f.koukando_rinko >= 10 && f.koukando_rinko <= 19"]
[jump target="*kaiwa_2hutuu"]

[elsif exp="f.koukando_rinko >= 20 && f.koukando_rinko <= 29"]
[jump target="*kaiwa_3yuukou"]

[elsif exp="f.koukando_rinko >= 30"]
[jump target="*kaiwa_4suki"]

[else]
[jump target="*kaiwa_3yuukou"]

[endif]

[_tb_end_tyrano_code]

[s  ]
*purezento_top

[jump  storage="komyu_rinko.ks"  target="*pure_nikaime"  cond="f.pure_kaisuu==1"  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[jump  storage="komyu_purezento.ks"  target="*purezento_rinko"  ]
*deto_top

[jump  storage="komyu_rinko.ks"  target="*deto_sasoenai1"  cond="f.deto_rinko==1"  ]
[tb_start_tyrano_code]
;既にデートの約束をしている時は誘えない

[if exp="f.deto_nagi == 1 || f.deto_rinko == 1 || f.deto_tubomi == 1 || f.deto_hayato == 1"]
[jump target="*deto_sasoenai2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;状態別デートの約束(凛子)

[if exp="f.koukando_rinko_koibito == 1"]
[jump target="*deto_koibito_seikou"]

[elsif exp="f.koukando_rinko < 10"]
[jump target="*deto_nigate_seikou"]

[elsif exp="f.koukando_rinko < 20"]
[jump target="*deto_hutuu_seikou"]

[elsif exp="f.koukando_rinko < 30"]
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

;好感度別_凛子

[if exp="f.koukando_rinko < 10"]
[jump target="*syokuji_nigate_ran"]

[elsif exp="f.koukando_rinko < 20"]
[jump target="*syokuji_hutuu_ran"]

[elsif exp="f.koukando_rinko < 30"]
[jump target="*syokuji_yuukou_ran"]

[else]
[jump target="*syokuji_suki_ran"]

[endif]
[_tb_end_tyrano_code]

*end_top

[tb_start_text mode=1 ]
（Cũng chẳng cần thiết phải tỏ ra thân thiết làm gì.）[p]
[_tb_end_text]

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*end

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.pure_kaisuu=0"  name="pure_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end2"  ]
*kaiwa_1nigate

[tb_start_text mode=1 ]
Rinko nở nụ cười e dè và gợi chuyện với tôi.[r]Dù vẫn cảm thấy có chút khoảng cách, nhưng tôi có thể nhận ra cô đang cố gắng quan tâm đến mình.[p]
Cảm giác như khoảng cách trong lòng đã thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*kaiwa_2hutuu

[tb_start_text mode=1 ]
Rinko mỉm cười và tự nhiên gợi chuyện với tôi.[r]Ánh mắt và cử chỉ của cô ấy mang lại cảm giác dịu dàng hơn trước.[p]
Cảm giác như khoảng cách trong lòng đã thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*kaiwa_3yuukou

[tb_start_text mode=1 ]
Rinko nở nụ cười dịu dàng và gợi chuyện với tôi.[r]Cô ấy nhìn thẳng vào tôi, cử chỉ cũng toát lên sự thân thiện.[p]
Cảm giác như khoảng cách trong lòng đã thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*kaiwa_4suki

[tb_start_text mode=1 ]
Rinko mỉm cười vui vẻ và gợi chuyện với tôi.[r]Từng lời nói của cô ấy đều chan chứa sự dịu dàng dành cho tôi, khiến lòng tôi tự nhiên cảm thấy ấm áp.[p]
Cảm giác như khoảng cách trong lòng đã thu hẹp lại một chút.[p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*end"  ]
*pure_akuse

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Đẹp quá. Cảm ơn cháu nhé... Món đồ tuyệt vời thế này, cô nhận có được không?」[p]
Rinko「Nhưng mà, chắc món này cũng đắt tiền lắm đúng không...? Tự dưng cô thấy ngại quá...」[p]
Rinko「Tất nhiên là cô rất vui vì tấm lòng của cháu. Cô sẽ trân trọng nó.」[p]
(Có vẻ như cô ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse-=1"  name="pure_akuse"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_coffee

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Thơm quá... A, hạt cà phê này...! [r]Hơn nữa còn là loại hạt mà cô thích nữa. Giỏi thật đấy, cháu đã tìm hiểu đến mức đó cơ à.」[p]
Rinko「Cảm ơn cháu nhé. Lát nữa cô sẽ thưởng thức thật ngon lành.」[p]
Rinko「Khc..., nhờ có Shun-kun mà cô lại càng thích loại hạt cà phê này hơn rồi đấy.」[p]
（Có vẻ cô ấy cực kỳ vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee-=1"  name="pure_coffee"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_game

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Cảm ơn cháu nhé.[r]Đây là tựa game mà [舜]-kun thích à? Ồ, cô thì không rành về game lắm...」[p]
Rinko「Nhưng mà được biết về sở thích của [舜]-kun cô vui lắm. Cảm ơn cháu.」[p]
(Có vẻ như cô ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_game-=1"  name="pure_game"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_hana

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Tuyệt quá...! Bó hoa đẹp thật đấy. Ơ, cháu tặng cô bó hoa này sao...?」[p]
Rinko「Khc..., cô vui lắm.[r]Cô chẳng mấy khi được đàn ông tặng hoa cả... tự dưng có cảm giác như mình hóa thành công chúa vậy.」[p]
Rinko「A, chết thật. Công chúa gì chứ. Nghe trơ trẽn quá nhỉ... Khc..., tự dưng cô lại phấn khích quá đà.」[p]
Rinko「Cảm ơn cháu nhé. Cô sẽ trang trí nó thật cẩn thận.」[p]
（Có vẻ cô ấy cực kỳ vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana-=1"  name="pure_hana"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_konpakuto

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Cảm ơn cháu nhé, nhưng loại mỹ phẩm này có vẻ dành cho mấy cô gái trẻ...[r]A, nhưng mà cháu đã cất công tặng thì để cô dùng thử xem sao.」[p]
Rinko「Biết đâu lại hợp không chừng...[r]Việc bắt gặp những món đồ mà tự bản thân mình không bao giờ chọn cũng là một điểm hay của việc nhận quà, tuyệt vời lắm đúng không.」[p]
Rinko「Cô sẽ dùng thử nhé? Cảm ơn [舜]-kun.」[p]
(Có vẻ như cô ấy cũng khá vui.)[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto-=1"  name="pure_konpakuto"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP2"  ]
[tb_eval  exp="f.koukando_rinko+=1"  name="koukando_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*pure_wagasi

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;レイヤー2を消す
[freeimage layer="2" time="100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_01c.gif"]Rinko「Oa, trông ngon quá...! Đang làm việc cô cũng hay bị đói bụng, món này đúng là cứu tinh đấy.」[p]
Rinko「Nhưng mà mùi thơm ngọt ngào thế này... khéo cô ăn hết sạch trong một nốt nhạc mất.」[p]
[舜]「Ơ? Thế cũng tốt mà. Cô cứ giữ ăn một mình đi.」[p]
Rinko「Không được đâu. Tại vì... người lớn mà béo lên thì khó giảm cân lắm cháu biết không?」[p]
Rinko「Nếu người cô mà trở nên đầy đặn quá thì cháu phải chịu trách nhiệm đấy nhé...? [r]Khc..., cô đùa thôi. Cảm ơn cháu nhé.」[p]
（Có vẻ cô ấy cực kỳ vui.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi-=1"  name="pure_wagasi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  ]
[call  storage="statusUP.ks"  target="*koukando_UP"  ]
[tb_eval  exp="f.koukando_rinko+=2"  name="koukando_rinko"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.pure_kaisuu=1"  name="pure_kaisuu"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;表情をデフォに戻す
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_00c.gif"]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*deto_nigate_seikou

[tb_start_text mode=1 ]
Rinko「Hẹn hò, à... Đúng rồi nhỉ,[r]nếu cháu đến tiệm thì cô có thể pha trà mời cháu... Như vậy có được không?」[p]
[舜]「Tất nhiên là được ạ!」[p]
Rinko「Lúc nào không có khách đặt lịch thì cháu ghé chơi nhé.」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Rinko[resetfont][p]
（Ngày nghỉ tới à, phải nhớ kỹ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_hutuu_seikou

[tb_start_text mode=1 ]
Rinko「Khc..., cháu rủ cô đi chơi sao? Cảm ơn cháu nhé.」[p]
Rinko「Nhưng vì lịch đặt trước kín hết rồi nên cô không có thời gian ra ngoài.[r]Nếu cháu đến tiệm thì chúng ta có thể từ từ nói chuyện.」[p]
[舜]（Tuyệt quá!）[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Rinko[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_yuukou_seikou

[tb_start_text mode=1 ]
Rinko「Hẹn hò sao? Fufu, một lời mời thật tuyệt vời.」[p]
Rinko「Nhưng dạo này cô hơi bận nên chắc là khó rồi. Thay vào đó, cháu đến tiệm thì sao?[r]Cô sẽ tiếp đãi cháu bằng bánh kẹo ngon và trà.」[p]
[舜]（Tuyệt quá!）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Rinko[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_suki_seikou

[tb_start_text mode=1 ]
Rinko「Hả... Cô vui lắm... Nếu được đi chơi cùng Shun-kun thì chắc chắn sẽ rất vui.」[p]
Rinko「Nhưng vì bận công việc nên cô khó ra ngoài lắm... Nếu cháu không phiền thì──」[p]
Rinko「Cháu đến tiệm được không? Chỉ có hai người chúng ta, có thể từ từ nói chuyện đấy.」[p]
[舜]「Tất nhiên là cháu sẽ đến rồi!」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Rinko[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*deto_koibito_seikou

[tb_start_text mode=1 ]
Rinko「Tất nhiên rồi...! Fufu, hẹn hò cơ đấy, cô mong chờ lắm.」[p]
Rinko「Nhờ có Shun-kun mà ngày nào tim cô cũng đập thình thịch, da dẻ cũng đẹp lên hẳn đấy.」[p]
Rinko「Chúng ta phải cùng nhau nghĩ xem nên đi đâu nhé.」[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã hẹn hò với Rinko[resetfont][p]
（Ngày nghỉ tiếp theo à, mình phải nhớ mới được.）[p]
[_tb_end_text]

[tb_eval  exp="f.deto_rinko=1"  name="deto_rinko"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_nigate_ran

[tb_eval  exp="f.syokuji_sippai=0"  name="syokuji_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(2-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="2"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_nigate_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_nigate_sippai"  ]
*syokuji_hutuu_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_hutuu_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_hutuu_sippai"  ]
*syokuji_yuukou_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(1-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_yuukou_seikou"  cond="f.syokuji_ran==1"  ]
[jump  storage="komyu_rinko.ks"  target="*syokuji_yuukou_sippai"  ]
*syokuji_suki_ran

[tb_eval  exp="f.syokuji_ran=Math.floor(Math.random()*(0-0+1)+0)"  name="syokuji_ran"  cmd="="  op="r"  val="0"  val_2="0"  ]
[tb_start_tyrano_code]
;恋人状態(食事)
[if exp="f.koukando_rinko_koibito == 1 && f.syokuji_ran == 0"]
[jump target="*syokuji_koibito_sippai"]
[endif]

[if exp="f.koukando_rinko_koibito == 1"]
[jump target="*syokuji_koibito_seikou"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="komyu_rinko.ks"  target="*syokuji_suki_seikou"  ]
*syokuji_nigate_seikou

[tb_start_text mode=1 ]
Rinko「Đúng nhỉ... Thế cũng vui đấy.」[p]
Rinko「Nhưng cô còn phải trông tiệm, hay là chúng ta dùng bữa đơn giản ở nhà cô nhé.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_nigate_sippai

[tb_start_text mode=1 ]
Rinko「Cô xin lỗi... Chắc là cô không đi ăn được rồi... Hẹn cháu ngày mai nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_hutuu_seikou

[tb_start_text mode=1 ]
Rinko「Đúng nhỉ... Thế cũng vui đấy.」[p]
Rinko「Fufu... Vậy dùng bữa đơn giản ở nhà cô thì sao? Cô còn phải trông tiệm nữa... Chỉ một lát thôi nhé.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_hutuu_sippai

[tb_start_text mode=1 ]
Rinko「Cô xin lỗi, cô có việc phải làm mất rồi.」[p]
Rinko「Cháu vất vả rồi, đi đường cẩn thận nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_yuukou_seikou

[tb_start_text mode=1 ]
Rinko「Fufu, cảm ơn cháu vì lời mời nhé.」[p]
Rinko「Vậy, nếu được thì cháu ghé nhà cô ăn nhẹ nhé? Cô còn phải trông tiệm nữa, cháu không cần phải giữ kẽ đâu.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_yuukou_sippai

[tb_start_text mode=1 ]
Rinko「Cô cũng muốn đi lắm... nhưng lại bận việc mất rồi. Lần sau cháu lại rủ cô nhé?」[p]
Rinko「Lúc đó cô sẽ khao cháu nhé.」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_suki_seikou

[tb_start_text mode=1 ]
Rinko「Hả, bữa tối sao? Fufu, cô vui lắm... Không ngờ lại được một chàng trai rủ đi ăn đấy.」[p]
Rinko「Ufufu, nếu được thì cháu ghé nhà cô ăn nhẹ nhé?[r]Cô còn phải trông tiệm nữa... Chỉ có hai người chúng ta, có thể từ từ nói chuyện.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_suki_sippai

[tb_start_text mode=1 ]
Rinko「Cô xin lỗi... Cô hơi bận một chút. Nhưng cô rất vui vì cháu đã rủ cô.」[p]
Rinko「Nếu được, lần sau cháu lại rủ cô nhé? Khi đó cô nhất định sẽ đi...」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*syokuji_koibito_seikou

[tb_start_text mode=1 ]
Rinko「Tất nhiên rồi. Nếu đi cùng cháu thì ở đâu cũng vui cả.」[p]
Rinko「Fufu, cô phấn khích quá chăng? Tại cô vui quá...」[p]
Rinko「Này, hôm nay cháu ăn ở nhà cô nhé? Cô muốn đích thân nấu ăn cho cháu.」[p]
[_tb_end_text]

[jump  storage="EV_deto_dinner.ks"  target="*rinko"  ]
*syokuji_koibito_sippai

[tb_start_text mode=1 ]
Rinko「Tiếc quá... Cô có việc bận nên không được rồi.[r]Thay vào đó, lần tới cháu đến nhà cô ăn cơm thì sao?」[p]
Rinko「Cô sẽ nấu bất cứ món gì Shun-kun thích và đợi cháu.」[p]
Rinko「Thà rằng, cháu ở lại qua đêm cũng được... nhé?」[p]
[_tb_end_text]

[tb_eval  exp="f.syokuji_sippai=1"  name="syokuji_sippai"  cmd="="  op="t"  val="1"  ]
[jump  storage="komyu_rinko.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Với số tiền hiện tại thì chắc là không đủ rồi.）[p]
[_tb_end_text]

[jump  storage="komyu_nagi.ks"  target="*top"  ]
*deto_sasoenai1

[tb_start_text mode=1 ]
Rinko「Cô đợi cháu ở tiệm nhé? Gác lại chuyện công việc, chúng ta từ từ nói chuyện thì tốt biết mấy.」[p]
[_tb_end_text]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*deto_sasoenai2

[tb_start_text mode=1 ]
(Nhắc mới nhớ, ngày hôm đó mình có hẹn mất rồi. Để lần sau rủ vậy.）[p]
[_tb_end_text]

[jump  storage="komyu_rinko.ks"  target="*top"  ]
*H

[jump  storage="komyu_H.ks"  target="*rinko"  ]
*pure_nikaime

[tb_start_text mode=1 ]
[舜]（Nếu đưa hết một lần thì trông mình có vẻ tuyệt vọng quá...）[p]
[_tb_end_text]

[jump  storage="komyu_rinko.ks"  target="*top"  