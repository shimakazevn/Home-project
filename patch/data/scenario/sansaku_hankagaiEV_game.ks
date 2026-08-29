[_tb_system_call storage=system/_sansaku_hankagaiEV_game.ks]

*top

[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="645"  y="299"  size="30"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="━"  edge="undefined"  shadow="undefined"  ]
*rupu

[glink  color="green"  storage="sansaku_hankagaiEV_game.ks"  size="20"  text="Nhấn nút"  x="1006"  y="456"  width="99"  height="129"  _clickable_img=""  target="*osu"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="true"  storage="chara/138/para_rank_S.png"  width="25"  height="26"  left="650"  top="37"  reflect="false"  ]
[chara_move  name="para_yuuki_rank"  anim="true"  time="500"  effect="linear"  wait="false"  left="650"  top="290"  width="25"  height="26"  ]
[tb_eval  exp="f.game_on=1"  name="game_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[chara_move  name="para_yuuki_rank"  anim="true"  time="30"  effect="linear"  wait="false"  left="650"  top="305"  width="25"  height="26"  ]
[tb_eval  exp="f.game_on=0"  name="game_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[chara_move  name="para_yuuki_rank"  anim="true"  time="500"  effect="linear"  wait="false"  left="650"  top="600"  width="25"  height="26"  ]
[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[jump  storage="sansaku_hankagaiEV_game.ks"  target="*rupu"  ]
*osu

[jump  storage="sansaku_hankagaiEV_game.ks"  target=""  cond="f.game_on==1"  ]
*off

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Thất bại[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="sansaku_hankagaiEV_game.ks"  target="*rupu"  ]
*on

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Thành công![p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="sansaku_hankagaiEV_game.ks"  target="*rupu"  