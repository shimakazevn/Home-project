[_tb_system_call storage=system/_sinnyu_byouin.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top0

[mask  time="700"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_start_tyrano_code]
[free_layermode time="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="fadeIn"  storage="sin_byouin_ura.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（Tốt, không có ai.）[p]
[_tb_end_text]

[wait  time="500"  ]
*top

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[舜]（Giờ thì, giải quyết nhanh gọn trước khi có người đến nào.）
[_tb_end_text]

[wait  time="800"  ]
[jump  storage="sinnyu_byouin.ks"  target="*end"  cond="f.sinnyu_koudou_count==0"  ]
[call  storage="sinnyu_item.ks"  target="*turn"  ]
[tb_start_tyrano_code]
;帰宅ボタン
[button target=*end enterimg=shinnyu_command_kitaku_on.png clickimg=shinnyu_command_kitaku.png x=568 y=384 graphic=shinnyu_command_kitaku.png name="sinnyu"]
;物色ボタン
[button target=*bussyoku enterimg=shinnyu_command_busshoku_on.png clickimg=shinnyu_command_busshoku.png x=736 y=120 graphic=shinnyu_command_busshoku.png name="sinnyu"]
;配置ボタン
[button target=*haiti enterimg=shinnyu_command_haichi_on.png clickimg=shinnyu_command_haichi.png x=400 y=120 graphic=shinnyu_command_haichi.png name="sinnyu"]

[anim name="sinnyu" opacity=0 time=0]
[anim name="sinnyu" opacity=255 time=700]
[_tb_end_tyrano_code]

[s  ]
*haiti

[cm  ]
[call  storage="sinnyu_item.ks"  target="*off"  ]
[bg  time="1000"  method="fadeIn"  storage="black.jpg"  ]
[bg  time="1000"  method="fadeIn"  storage="sin_byouin_ura.png"  ]
[jump  storage="sinnyu_byouin_haiti.ks"  target="*top0"  ]
*bussyoku

[call  storage="sinnyu_item.ks"  target="*off"  ]
[jump  storage="sinnyu_byouin_bussyoku.ks"  target="*top"  ]
*end

[cm  ]
[call  storage="sinnyu_item.ks"  target="*off"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="0"  wait="true"  ]
[bg  time="0"  method="fadeIn"  storage="sin_byouin_ura.png"  ]
[tb_show_message_window  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]（Ở lâu cũng chẳng ích gì. Chắc nên về thôi.）[p]
[_tb_end_text]

[stopbgm  time="1000"  ]
[wait  time="1000"  ]
[jump  storage="room_yoru.ks"  target="*top" ]
