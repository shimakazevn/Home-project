
[_tb_system_call storage=system/_sansaku_byouinEV_nagihayato.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
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
Có lẽ vì đang là giờ ăn tối nên bệnh viện yên tĩnh hơn mọi khi.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Có Nagi và Hayato kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_byouinEV_nagihayato.ks"  size="20"  text="Bắt chuyện với cả hai người"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_byouinEV.ks"  size="20"  text="Khám bệnh (Hồi Thể lực"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sinsatu"  ]
[s  ]
*hanasu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin2.png"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_hayatonagi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_nagihayato1

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*EV_nagihayato2"  cond="f.koukando_nagi>29"  ]
[tb_start_text mode=1 ]
[舜]「Ủa? Tình cờ thật đấy, hai người đang nói chuyện gì thế?」[p]
Nagi「A, [舜]-chan...」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Đang nói chuyện của những người yêu nhau thôi」[p]
Hayato「Như là hẹn hò ở đâu này... Khi nào thì đi chào hỏi hai bên gia đình, rồi chọn nơi tổ chức đám cưới ở đâu này」[p]
Nagi「Hả? Ưm, tụi em đâu có nói mấy chuyện đó đâu...」[p]
Hayato「Thì bây giờ anh đang định nói đây」[p]
[舜]（Bị dằn mặt hoàn toàn rồi...）[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_00c.gif"]Nagi「Xin lỗi [舜]-chan nhé, hẹn cậu dịp khác」[p]
[舜]「Ừ, hẹn dịp khác nhé」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của hai người đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*end"  ]
*EV_nagihayato2

[tb_start_text mode=1 ]
[舜]「Chào Nagi!」[p]
[chara_mod name="kyara_nagi_sabun2" cross="false" time="500" storage="chara/179/ADV_nagi_01_04c.gif"]Nagi「[舜]-chan...! Cậu làm gì ở đây thế... Tình cờ thật đấy」[p]
Nagi「Tớ không nghĩ là sẽ gặp được cậu... Vui quá đi」[p]
Hayato「Bạn thuở nhỏ thì bạn thuở nhỏ, cậu cũng bắt chuyện thân thiết gớm nhỉ」[p]
Nagi「Không sao đâu, tớ với [舜]-chan từ ngày xưa đã luôn thân thiết thế này rồi mà. Nhỉ? [舜]-chan」[p]
[舜]「Ừm, đúng thế thật」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]Hayato「Ư... Nhưng mà, dù sao em cũng đang hẹn hò với anh cơ mà... Còn ánh mắt của mọi người xung quanh nữa chứ...」[p]
Nagi「Thế sao? Em thấy bình thường mà?」[p]
[舜]「Thôi nào, làm bạn trai thì đương nhiên sẽ bận tâm đến sự tồn tại của những người đàn ông khác rồi. Tớ sẽ liên lạc lại sau nhé」[p]
Nagi「Ừm, tớ đợi cậu nhé...!」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của hai người đã tăng lên[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_nagi = Number((f.koukando_nagi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  ]
*koibito

[tb_start_text mode=1 ]
[舜]（Có Hayato ở đây... Tạm thời bỏ qua vậy）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  ]
