]
[_tb_system_call storage=system/_sansaku_rihureEV_tubomi.ks]

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
繁華街の喧騒の中で、ひときわ可憐な雰囲気を放つメイドリフレが目にとまった。[p]
まるで別世界のような癒しの空気が漂っている。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
蕾がいるようだ。ちょっと入ってみようかな？
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_rihureEV_tubomi.ks"  size="20"  text="Bắt chuyện với Tsubomi"  x="415"  y="180"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_rihureEV_tubomi.ks"  size="20"  text="Vào quán Maid (Tăng Dũng cảm / -5,000 Yên)"  x="415"  y="290"  width="497"  height="57"  _clickable_img=""  target="*rihure"  ]
[glink  color="btn_03_black"  storage="sansaku.ks"  size="20"  text="Quay về nhà"  x="415"  y="400"  width="497"  height="57"  _clickable_img=""  target="*end"  ]
[s  ]
*hanasu

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure_hikaesitu.png"  ]
[call  storage="character.ks"  target="*tubomi_meido"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*hanasu2"  ]
*rihure

[jump  storage="sansaku_hankagaiEV.ks"  target="*rihure"  ]
*okanenasi

[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ断られるか）[p]
（仕方ない。今日は諦めよう）[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  