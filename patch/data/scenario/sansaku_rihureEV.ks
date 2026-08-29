[_tb_system_call storage=system/_sansaku_rihureEV.ks]

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

[bg  time="0"  method="crossfade"  storage="back_rihure.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
Giữa sự ồn ào náo nhiệt của khu phố sầm uất, một quán bấm huyệt hầu gái toát lên bầu không khí đặc biệt đáng yêu thu hút ánh nhìn của tôi.[p]
Bầu không khí thư giãn lan tỏa tựa như một thế giới khác biệt hoàn toàn.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
Có vẻ không có người quen nào ở đây. Có nên ghé vào thử một chút không nhỉ?
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_rihureEV.ks"  size="20"  text="Vào quán Maid (Tăng Dũng cảm / -5,000 Yên)"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*rihure"  ]
[glink  color="btn_03_black"  storage="sansaku.ks"  size="20"  text="Quay về nhà"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*end"  ]
[s  ]
*rihure

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_eval  exp="f.para_yuuki_updated+=7"  name="para_yuuki_updated"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_eval  exp="f.para_sutoresu_updated-=4"  name="para_sutoresu_updated"  cmd="-="  op="t"  val="4"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*sutoresu_update"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Mức độ Căng thẳng giảm 4 điểm[resetfont][r][font color="yellow"]Dũng khí tăng 7 điểm[resetfont][r][font color="yellow"]Chỉ số Hưng phấn tăng nhẹ[resetfont][r][font color="yellow"]Đã thanh toán 5000 Yên[resetfont][p]
[_tb_end_text]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Với số tiền mang theo ngần này thì chắc chắn sẽ bị từ chối rồi.）[p]
（Đành chịu vậy. Hôm nay đành từ bỏ thôi.）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  