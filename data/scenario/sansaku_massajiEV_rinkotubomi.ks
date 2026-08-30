
[_tb_system_call storage=system/_sansaku_massajiEV_rinkotubomi.ks]

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
（Tsubomi có vẻ đang ở đây. Có nên bắt chuyện thử không nhỉ?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_massajiEV_rinkotubomi.ks"  size="20"  text="Bắt chuyện với cả hai người"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_massajiEV.ks"  size="20"  text="Massage trị liệu (Hồi Thể lực / -5,000 Yên)"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten2.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_rinkotubomi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_rinkotubomi1

[tb_start_tyrano_code]
;二人共好き状態の場合
[if exp="f.koukando_rinko >= 30 && f.koukando_tubomi >= 30 "]
[jump target="*EV_rinkotubomi2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Rinko「Ừm... Ngày hôm nay kín lịch đặt trước rồi nên nếu có thêm một người nữa thì tốt biết mấy.」[p]
Tsubomi「Nếu vậy thì để con phụ giúp tiệm cho.」[p]
[舜]「A, nếu vậy thì để tôi──」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]Tsubomi「Đã bảo là con đi làm rồi cơ mà...! Mẹ, con làm là được rồi đúng không?」[p]
Rinko「Hả? Nhưng làm liên tục như vậy có ổn không...? Con đang bận mà đúng không?」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_01c.gif"]Tsubomi「Không sao đâu ạ. Ai đó có vẻ kém giao tiếp, con phục vụ khách hàng chắc chắn sẽ được lòng hơn chứ?」[p]
[舜]（Hự... Lý lẽ quá sắc bén, không thể cãi lại được.）[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_06c.gif"]Rinko「Xin lỗi cháu nhé, Shun-kun. Lúc nào cần cô sẽ nhờ cháu sau được không?」[p]
[舜]「A, v-vâng ạ...」[p]
[舜]（Hôm nay cứ tạm thế này đã...）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của cả hai đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_massajiEV_rinkotubomi.ks"  target="*end"  ]
*EV_rinkotubomi2

[tb_start_text mode=1 ]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]Tsubomi「Á, c-có chuyện gì vậy? Muốn đến thì phải liên lạc trước chứ.」[p]
[chara_mod name="kyara_rinko_sabun" cross="false" time="500" storage="chara/180/ADV_rinko_00_04c.gif"]Rinko「Hay là cháu cất công đến để gặp cô?」[p]
Tsubomi「Nếu nói vậy thì là đến để gặp con mới đúng! Có phải vậy không?」[p]
[舜]「Tôi đến để nhìn mặt cả hai người thôi mà...」[p]
Rinko「Khc, Shun-kun khéo nói quá nhỉ.」[p]
Tsubomi「Uầy, tò mò không biết anh đến gặp mẹ hay gặp tôi đây.」[p]
Rinko「Đứng trước mặt người ta thì khó nói lắm nhỉ? Nhưng không sao đâu, cháu cứ trả lời thành thật đi.」[p]
Tsubomi「Là tôi đúng không?」[p]
Rinko「Khc, cô hiểu mà nên không sao đâu. Đúng không nào? Shun-kun.」[p]
[舜]（C-Câu này khó trả lời quá...）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của cả hai đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_rinko = Number((f.koukando_rinko + 0.5).toFixed(1))"]
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  