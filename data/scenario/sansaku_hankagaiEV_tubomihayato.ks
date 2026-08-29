]
[_tb_system_call storage=system/_sansaku_hankagaiEV_tubomihayato.ks]

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
[bg  time="0"  method="crossfade"  storage="back_hankagai.png"  ]
[tb_show_message_window  ]
[mask_off  time="800"  effect="slideOutRight"  ]
[tb_start_text mode=1 ]
[舜]（Vẫn đông người như mọi khi, mệt thật đấy.）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（Có Hayato và Tsubomi kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_tubomihayato.ks"  size="20"  text="Bắt chuyện với cả hai người"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hansu"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_tubomi.ks"  size="20"  text="Đi dạo quanh phố"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sansaku"  ]
[s  ]
*hansu

[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*koibito"  cond="f.koukando_nagi_koibito==1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_hide  time="0"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="character.ks"  target="*2kyara_hayatotubomi"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="hayato.mp3"  ]
*EV_tubomihayato1

[jump  storage="sansaku_hankagaiEV_tubomihayato.ks"  target="*EV_tubomihayato2"  cond="f.koukando_tubomi>29"  ]
[tb_start_text mode=1 ]
Tsubomi「Này anh hai, đi ăn cơm với em đi~. Dạo này hai anh em mình chẳng nói chuyện được với nhau mấy.」[p]
Hayato「Cũng được thôi... nhưng hôm nay tha cho anh mấy quán đắt tiền nhé? Sắp đến ngày nhận lương rồi.」[p]
[舜]「A, hai người đang định đi ăn cơm sao...」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_02c.gif"]Tsubomi「Đừng bảo là anh cũng muốn đi cùng đấy nhé?」[p]
Tsubomi「Người ta đang định đi ăn cơm gia đình, anh phải biết ý mà tránh đi chứ?」[p]
[舜]（Tôi có nói là muốn đi ăn cùng đâu chứ.）[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_01c.gif"]Hayato「Phụt, ha ha, thôi nào... Đừng có hắt hủi cậu ấy thế chứ Tsubomi.」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_00c.gif"]Tsubomi「Tại vì... anh ta mà đứng cạnh anh hai thì trông càng thảm hại hơn ấy.」[p]
[舜]（Đúng là cặp anh em đáng ghét... Mình phải mau về nhà kiếm món gì ngon ngon ăn mới được.）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của hai người đã tăng[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_hankagaiEV_tubomihayato.ks"  target="*end"  ]
*EV_tubomihayato2

[tb_start_text mode=1 ]
Tsubomi「Anh hai, tình cờ thật đấy. Anh đang định đi đâu à?」[p]
Hayato「Không, hôm nay anh được về sớm nên định đi thẳng về nhà luôn... Hay là anh em mình đi ăn gì đó nhé?」[p]
[舜]「A, Tsubomi...」[p]
[chara_mod name="kyara_tubomi_sabun" cross="false" time="500" storage="chara/181/ADV_tubomi_00_04c.gif"]Tsubomi「Hả, không thể nào... Không ngờ lại gặp anh ở đây.」[p]
Tsubomi「Anh đang định đi đâu à? Đừng bảo là... đi gặp cô gái nào đấy nhé?」[p]
[舜]「Làm gì có... Tôi đi mua sắm về thôi. Nếu cô có thời gian thì đi ăn──」[p]
Tsubomi「Đi chứ! Này nhé, nhà hàng gia đình trước nhà ga đang có lễ hội trái cây đấy~. Đi thôi nào.」[p]
[chara_mod name="kyara_hayato_sabun" cross="false" time="500" storage="chara/177/ADV_hayato_03c.gif"]Hayato「Hả? Hai người thân thiết với nhau từ lúc nào thế...」[p]
Tsubomi「Xin lỗi anh hai nhé, hôm nay em bận rồi! Hẹn anh dịp khác nhé?」[p]
Hayato「Đùa anh à...」[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[font color="yellow"]Hảo cảm của hai người đã tăng[resetfont][p]
[_tb_end_text]

[call  storage="statusUP.ks"  target="*koukando_UP3"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.5).toFixed(1))"]
[eval exp="f.koukando_hayato = Number((f.koukando_hayato + 0.5).toFixed(1))"]
[_tb_end_tyrano_code]

*end

[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[jump  storage="sansaku.ks"  target="*end"  