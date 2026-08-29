[_tb_system_call storage=system/_sansaku_massajiEV_rinkohayato.ks]

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
[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
Bên trong tiệm khá vắng vẻ, một khoảng thời gian êm đềm vẫn trôi qua như thường lệ.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Hayato có vẻ đang ở đây. Có nên bắt chuyện thử không nhỉ?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV_rinkohayato.ks"  size="20"  text="Bắt chuyện với cả hai người"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="Massage trị liệu (Hồi Thể lực / -5,000 Yên)"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_hayatorinko"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_rinkohayato1

[jump  storage="sansaku_massajiEV_rinkohayato.ks"  target="*EV_rinkohayato2"  cond="f.koukando_rinko>29"  ]
[tb_start_text mode=1 ]
Hayato「Tên làm thêm mới đó, làm ăn thế nào rồi?」[p]
Rinko「Cậu ấy làm việc rất chăm chỉ đấy. Dù có vẻ hơi kém giao tiếp một chút...」[p]
Hayato「Hả. Làm nghề dịch vụ mà. Tên đó có ổn không đấy...」[p]
[舜]「Chào mọi người.」[p]
Rinko「Ô, chào cháu. Hôm nay cháu đâu có lịch làm thêm nhỉ.」[p]
Hayato「Không có việc gì mà cũng mò tới đây, thời gian của cậu rảnh rỗi thật đấy... Đáng ghen tị ghê.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]Rinko「Thôi nào, con đừng nói thế chứ.」[p]
Rinko「Shun-kun, cháu nhiệt tình với công việc nên cô được giúp đỡ nhiều lắm. Lúc nào cũng cảm ơn cháu nhé.」[p]
[舜]（Cô Rinko hiền lành thế này... tại sao lại nuôi dạy ra một kẻ như Hayato được chứ?）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của cả hai đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_massajiEV_rinkohayato.ks"  target="*end"  ]
*EV_rinkohayato2

[tb_start_text mode=1 ]
Hayato「Mẹ này, dạo này tiệm có đủ người làm không?」[p]
Rinko「Ừ. Có Shun-kun làm việc rất chăm chỉ nên...」[p]
[舜]「Cô Rinko, cô vất vả rồi.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Ô? Shun-kun...! Có chuyện gì vậy? Cháu cất công đến gặp cô sao?」[p]
[舜]「Cháu đến để nhìn mặt cô Rinko thôi ạ.」[p]
Rinko「Cháu khéo nói quá nhỉ. Cô cũng rất vui khi được nhìn thấy khuôn mặt của Shun-kun đấy.」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]Hayato「Hả...? Khoảng cách có vẻ hơi gần gũi quá không?」[p]
Rinko「Vậy sao? Chắc là khoảng cách trong tim đang kéo lại gần nhau đấy.」[p]
Hayato「Hả? Thật sự là có ý gì vậy...!」[p]
Rinko「Bí mật... Khc, đúng không nào? Shun-kun.」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của cả hai đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end" ]
