[_tb_system_call storage=system/_mesi_jisui.ks]

[tb_show_message_window  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[bg  time="0"  method="crossfade"  storage="back_room.jpg"  ]
[cm  ]
[stop_bgmovie  time="0"  ]
[bg  time="0"  method="crossfade"  storage="back_room.jpg"  cross="false"  ]
[wait  time="500"  ]
[mask_off  time="900"  effect="fadeOut"  ]
*top

[tb_start_text mode=1 ]
舜「よし、今日は自炊するか[r]何を作ろうかな」[p]
[_tb_end_text]

