 
[_tb_system_call storage=system/_CG_tou_complete.ks]

[bg  time="0"  method="crossfade"  storage="title_VoyeurCGGallery.png"  ]
[tb_eval  exp="sf.Complete=0"  name="Complete"  cmd="="  op="t"  val="0"  ]
[s  ]
*top

[cm  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[if exp="sf.cg_rate >= 100 && sf.Complete == 0"]
[eval exp="sf.Complete = 1"]
[call target="*Complete"]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1040"  y="11"  size="21"  color="0xffffff"  time="0"  text="Tỷ lệ thu thập CG quay lén:"  anim="false"  face="serif,'游明朝'"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1244"  y="11"  size="21"  color="0xffffff"  time="0"  anim="false"  face="serif,'游明朝'"  text="％"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1204"  y="11"  size="21"  color="0xffcf0f"  time="0"  anim="false"  face="serif,'游明朝'"  text="&sf.cg_rate"  edge="undefined"  shadow="undefined"  ]
[return  ]
*Complete

[bg  time="0000"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="sf.Complete=1"  name="Complete"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="rotateInDownLeft"  storage="event/Congratulations!.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_omoide.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[font color="yellow"]Congratulations! CG Collection Complete![p]
スタート画面の画像が変更出来るようになりました[resetfont][p]
[_tb_end_text]

[l  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0000"  method="crossfade"  storage="black.jpg"  ]
[tb_hide_message_window  ]
[return  