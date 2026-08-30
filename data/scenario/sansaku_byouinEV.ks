
[_tb_system_call storage=system/_sansaku_byouinEV.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="800"  effect="slideInLeft"  color="0x000000"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
（Bệnh viện vẫn đông đúc bệnh nhân như mọi khi.）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Hiếm khi mới thấy Nagi không có ở đây.）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="Khám bệnh (Hồi Thể lực / -5,000 Yên)"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="Quay về nhà"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*kaeru"  ]
[s  ]
*sinsatu

[jump  storage="sansaku_byouinEV.ks"  target="*okanenasi"  cond="f.money<5000"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event/sigoto_nagi.png"  ]
[tb_cg  id="cg_sigoto_nagi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.syakaisei+=1"  name="syakaisei"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.para_taityou_updated+=20"  name="para_taityou_updated"  cmd="+="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[tb_start_text mode=1 ]
Nagi「Dạo này cậu cố gắng lắm đấy. Đừng làm việc quá sức nhé.[r]Lúc nào thấy mệt thì nghỉ ngơi đàng hoàng cũng quan trọng lắm đấy.」[p]
（Cảm giác cơ thể đã nhẹ nhõm hơn một chút.）[p]
[_tb_end_text]

[tb_start_tyrano_code]
;好感度UP（小）
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.7).toFixed(1))"]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*tension_UP"  ]
[tb_start_text mode=1 ]
[font color="yellow"]Thể lực tăng 20 điểm[resetfont][r][font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][r][font color="yellow"]Đã thanh toán 5000 Yên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*okanenasi

[tb_start_text mode=1 ]
（Quả nhiên với số tiền này thì không thể khám bệnh được rồi.）[p]
（Đành chịu thôi. Hôm nay đành bỏ qua vậy.）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  ]
*kaeru

[tb_start_text mode=1 ]
（Cũng không có gì đáng bận tâm, mình không có việc gì đặc biệt ở đây cả.）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  