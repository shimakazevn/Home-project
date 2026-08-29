[_tb_system_call storage=system/_sansaku_hankagaiEV.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

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

[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
（Cảm giác trong lòng đã nhẹ nhõm hơn một chút.）[p]
[_tb_end_text]

*top2

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Đến quầy bán vé số"  x="330"  y="200"  width="636"  height="57"  _clickable_img=""  target="*takarakuji"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Đến phòng Gym (Tăng Cơ bắp / -5,000 Yên)"  x="330"  y="280"  width="636"  height="57"  _clickable_img=""  target="*sports"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Quay về nhà"  x="330"  y="360"  width="636"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*rihure

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="event/sigoto_tubomi.png"  ]
[tb_cg  id="cg_sigoto_tubomi"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.koukando_tubomi+=1"  name="koukando_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.para_yuuki_updated+=10"  name="para_yuuki_updated"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_eval  exp="f.para_sutoresu_updated-=5"  name="para_sutoresu_updated"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Mức độ Căng thẳng giảm 5 điểm[resetfont][r][font color="yellow"]Dũng khí tăng 10 điểm[resetfont][r][font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][r][font color="yellow"]Đã thanh toán 5000 Yên[resetfont][p]
（Dù biết là chẳng trúng đâu nhưng lại cứ muốn đến mua.）[p]
[_tb_end_text]

[call  storage="ui_parameter.ks"  target="*sutoresu_update"  ]
[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Đã mua vé số[resetfont][r][font color="yellow"]Đã thanh toán 10000 Yên[resetfont][p]
[_tb_end_text]

[tb_start_tyrano_code]
;好感度UP（小）
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.7).toFixed(1))"]
[_tb_end_tyrano_code]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*takarakuji

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[jump  storage="sansaku_hankagaiEV.ks"  target="*katteru"  cond="f.takarakuji>0"  ]
[tb_start_text mode=1 ]
[舜]（Kết quả trúng thưởng sẽ được công bố vào Chủ Nhật sao. Phải nhớ mới được.）[p]
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Mua vé số (-10,000 Yên)"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*kuji"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV.ks"  size="20"  text="Thôi, dừng lại"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*yameru"  ]
[s  ]
*kuji

[jump  storage="sansaku_hankagaiEV.ks"  target="*okanenasi"  cond="f.money<10000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[舜]（Kết quả xổ số sẽ có vào Chủ Nhật tới nhỉ.）[p]
[_tb_end_text]

[tb_eval  exp="f.money_updated-=10000"  name="money_updated"  cmd="-="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.takarakuji=Math.floor(Math.random()*(30-1+1)+1)"  name="takarakuji"  cmd="="  op="r"  val="1"  val_2="30"  ]
[tb_start_text mode=1 ]
Mỗi người đều đang tập luyện đổ mồ hôi theo nhịp độ riêng của mình.[p]
[_tb_end_text]

[jump  storage="sansaku_hankagaiEV.ks"  target="*top"  ]
*katteru

[tb_start_text mode=1 ]
（Đã cất công đến đây rồi, tập một chút vậy.）[p]
[_tb_end_text]

[jump  storage="sansaku_hankagaiEV.ks"  target="*top"  ]
*yameru

[cm  ]
[jump  storage="sansaku_hankagaiEV.ks"  target="*top"  ]
*sports

[jump  storage="sansaku_hankagaiEV.ks"  target="*okanenasi"  cond="f.money<5000"  ]
[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="back_hankagai_sports.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Sức mạnh tăng 10 điểm[resetfont][r][font color="yellow"]Đã thanh toán 5000 Yên[resetfont][p]
（Với số tiền này thì đúng là không đủ rồi.）[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.para_kinryoku_updated+=10"  name="para_kinryoku_updated"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kinryoku_update"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
（Đành chịu thôi. Hôm nay đành bỏ qua vậy.）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Với số tiền này thì đúng là không đủ rồi.）[p]
（Đành chịu thôi. Hôm nay đành bỏ qua vậy.）[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="back_hankagai.png"  ]
[jump  storage="sansaku_hankagaiEV.ks"  target="*top2"  ]
*kaeru

[tb_start_text mode=1 ]
（Cũng không có gì đáng bận tâm, mình không có việc gì đặc biệt ở đây cả.）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end" ]
