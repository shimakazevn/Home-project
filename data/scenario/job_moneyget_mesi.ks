
[_tb_system_call storage=system/_job_moneyget_mesi.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_show_message_window  ]
*top

[call storage="system.ks" target="*job_end"]
[call storage="system.ks" target="*start_keyconfig"]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_keyconfig  flag="1"  ]
[tb_start_text mode=4 ]
[舜]「Đã giờ này rồi sao. Giờ phải làm gì đây nhỉ.」
[_tb_end_text]

[glink  color="btn_05_black"  storage="job_moneyget_mesi.ks"  size="20"  text="Ra ngoài"  x="382"  y="220"  width="543"  height="56"  _clickable_img=""  target="*soto"  ]
[glink  color="btn_05_black"  storage="job_moneyget_mesi.ks"  size="20"  text="Nghỉ ngơi thư giãn ở nhà"  x="382"  y="350"  width="543"  height="56"  _clickable_img=""  target="*base"  ]
[s  ]
*base

[cm  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Cũng chẳng có việc gì làm, hay là ở nhà nằm ườn ra nhỉ.」[p]
[font color="yellow"]Chỉ số Hưng phấn đã tăng một chút[resetfont][r][font color="yellow"]Thể lực đã tăng một chút[resetfont][r][font color="yellow"]Mức độ Căng thẳng đã giảm một chút[resetfont][p]
[_tb_end_text]

[playse  volume="50"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.para_taityou_updated+=10"  name="para_taityou_updated"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
[tb_eval  exp="f.para_sutoresu_updated-=10"  name="para_sutoresu_updated"  cmd="-="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*sutoresu_update"  ]
[jump  storage="job_moneyget_mesi.ks"  target="*end"  ]
*end

[cm  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*soto

[cm  ]
[jump  storage="sansaku.ks"  target="*top"  ]
