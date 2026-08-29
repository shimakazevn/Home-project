]
[_tb_system_call storage=system/_a_taikenban.ks]

[tb_eval  exp="f.item_4_s=1"  name="item_4_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*top

[tb_eval  exp="f.item_oil_s=1"  name="item_oil_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_sm_s=1"  name="item_sm_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_3_s=1"  name="item_3_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_2_s=1"  name="item_2_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_com_idou_s=1"  name="item_com_idou_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_1_s=1"  name="item_1_s"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_supiritasu_s=4"  name="item_supiritasu_s"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.item_book_katuryoku_s=0"  name="item_book_katuryoku_s"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.item_book_katuryoku2_s=0"  name="item_book_katuryoku2_s"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.item_book_syakairyoku_s=0"  name="item_book_syakairyoku_s"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*END_taikenban

[stopbgm  time="1500"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[tb_image_show  time="0"  storage="default/taikenban_ev.png"  width="1280"  height="720"  ]
[mask_off  time="2500"  effect="fadeOut"  ]
[wait  time="1000"  ]
[l  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  