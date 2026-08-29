[_tb_system_call storage=system/_sansaku_famiresuEV.ks]

[tb_eval  exp="f.money+=10000"  name="money"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated+=10000"  name="money_updated"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="back_famiresu.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
[舜]（Bận... Bận quá đi mất! Buổi tối mà khách vẫn đông thế này sao.）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[font color="yellow"]Đã nhận được 4000 Yên[resetfont][r][font color="yellow"]Thể lực giảm 10 điểm[resetfont][p]
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Ăn xong rồi về"  x="410"  y="200"  width="497"  height="57"  _clickable_img=""  target="*taberu"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Làm thêm ca đêm (+4,000 Yên / Giảm Thể lực)"  x="410"  y="280"  width="497"  height="57"  _clickable_img=""  target="*baito"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Quay về nhà"  x="410"  y="360"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*baito

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_famiresu2.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
（Nên ăn gì đây nhỉ.）[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
（A ngon quá. Thấm vào tận tâm can luôn.）[p]
[_tb_end_text]

[tb_eval  exp="f.para_taityou_updated-=10"  name="para_taityou_updated"  cmd="-="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
[tb_eval  exp="f.money_updated+=4000"  name="money_updated"  cmd="+="  op="t"  val="4000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*end"  ]
*taberu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_famiresu2.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
*bunki

[tb_start_text mode=1 ]
Bụng đã no căng rồi.[p]
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Uống bia tươi (Tăng Hưng phấn / -3,000 Yên)"  x="330"  y="160"  width="636"  height="57"  _clickable_img=""  target="*mesi1"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Set Hamburger (Tăng Dũng cảm / -5,000 Yên)"  x="330"  y="240"  width="636"  height="57"  _clickable_img=""  target="*mesi2"  ]
[glink  color="btn_03_black"  storage="sansaku_famiresuEV.ks"  size="20"  text="Set Bít tết bò (Tăng Cơ bắp & Hưng phấn / -10,000 Yên)"  x="330"  y="320"  width="636"  height="57"  _clickable_img=""  target="*mesi3"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Quay về nhà"  x="330"  y="400"  width="636"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*mesi1

[bg  time="500"  method="fadeIn"  storage="black.jpg"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*okanenasi"  cond="f.money<3000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.money_updated-=3000"  name="money_updated"  cmd="-="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][r][font color="yellow"]Đã thanh toán 3000 Yên[resetfont][p]
[舜]（Vẫn ngon như ngày nào. Cái hương vị không đổi này đúng là tuyệt thật...）[p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_start_text mode=1 ]
Bụng đã no căng rồi.[p]
[_tb_end_text]

[jump  storage="sansaku_famiresuEV.ks"  target="*end"  ]
*mesi2

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*okanenasi2"  cond="f.money<5000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.para_yuuki_updated+=5"  name="para_yuuki_updated"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Dũng khí đã tăng một chút[resetfont][r][font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][r][font color="yellow"]Đã thanh toán 5000 Yên[resetfont][p]
（Chỉ là bít tết ở nhà hàng gia đình thôi mà sao lại ngon thế này... Tuyệt cú mèo.）[p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_start_text mode=1 ]
Bụng đã no căng rồi.[p]
[_tb_end_text]

[jump  storage="sansaku_famiresuEV.ks"  target="*end"  ]
*mesi3

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*okanenasi2"  cond="f.money<10000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.para_kinryoku_updated+=10"  name="para_kinryoku_updated"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kinryoku_update"  ]
[tb_eval  exp="f.money_updated-=10000"  name="money_updated"  cmd="-="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Sức mạnh đã tăng[resetfont][r][font color="yellow"]Chỉ số Hưng phấn đã tăng mạnh[resetfont][r][font color="yellow"]Đã thanh toán 10000 Yên[resetfont][p]
（Với số tiền này thì chẳng ăn được gì rồi.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
（Đành chịu thôi. Hôm nay đành bỏ qua vậy.）[p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP2"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*end"  ]
*end

[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Với số tiền này thì không ăn được rồi.）[p]
Bên trong quán khá náo nhiệt, nhưng đâu đó vẫn phảng phất một sự tĩnh lặng dễ chịu.[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi2

[jump  storage="sansaku_famiresuEV.ks"  target="*okanenasi"  cond="f.money<2900"  ]
[bg  time="500"  method="crossfade"  storage="back_famiresu2.png"  ]
[tb_start_text mode=1 ]
（Có Hayato kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[jump  storage="sansaku_famiresuEV.ks"  target="*bunki" ]
