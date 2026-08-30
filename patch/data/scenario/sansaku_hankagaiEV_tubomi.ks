
[_tb_system_call storage=system/_sansaku_hankagaiEV_tubomi.ks]

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
（Có Tsubomi kìa. Hay là bắt chuyện thử xem sao?）
[_tb_end_text]

[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_tubomi.ks"  size="20"  text="Bắt chuyện với Tsubomi"  x="415"  y="210"  width="497"  height="57"  _clickable_img=""  target="*hanasu"  ]
[glink  color="btn_03_black"  storage="sansaku_hankagaiEV_tubomi.ks"  size="20"  text="Đi dạo quanh phố"  x="415"  y="320"  width="497"  height="57"  _clickable_img=""  target="*sansaku"  ]
[s  ]
*sansaku

[bg  time="300"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
（Mà, cũng không cần thiết phải cố bắt chuyện làm gì.）[p]
（Giờ thì, nên đi đâu đây nhỉ?）[p]
[_tb_end_text]

[bg  time="300"  method="crossfade"  storage="back_hankagai.png"  ]
[jump  storage="sansaku_hankagaiEV.ks"  target="*top2"  ]
*hanasu

[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*hanasu"  