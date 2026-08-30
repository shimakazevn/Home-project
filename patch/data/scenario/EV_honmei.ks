
[_tb_system_call storage=system/_EV_honmei.ks]

*nagi

[tb_start_tyrano_code]
;凪が既に本命の場合はスルー
[if exp="f.puro_kuria_nagi4 == 1"]
[return]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Tình cảm ấm áp dành cho cô ấy đang ngày một lớn dần lên.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[font color="yellow"]Bạn có muốn chọn Nagi làm Honmei không?[resetfont]
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_honmei.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Chọn làm người yêu"  _clickable_img=""  target="*yes_nagi"  ]
[glink  color="btn_05_black"  storage="EV_honmei.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không"  _clickable_img=""  target="*no_nagi"  ]
[s  ]
*yes_nagi

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[tb_eval  exp="f.puro_kuria_nagi4=1"  name="puro_kuria_nagi4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_rinko3=0"  name="puro_kuria_rinko3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_tubomi3=0"  name="puro_kuria_tubomi3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*no_nagi

[return  ]
*rinko

[tb_start_tyrano_code]
;凛子が既に本命の場合はスルー
[if exp="f.puro_kuria_rinko3 == 1"]
[return]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Tình cảm ấm áp dành cho cô ấy đang ngày một lớn dần lên.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[font color="yellow"]Bạn có muốn chọn Rinko làm Honmei không?[resetfont]
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_honmei.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Chọn làm người yêu"  _clickable_img=""  target="*yes_rinko"  ]
[glink  color="btn_05_black"  storage="EV_honmei.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không"  _clickable_img=""  target="*no_rinko"  ]
[s  ]
*yes_rinko

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[tb_eval  exp="f.puro_kuria_nagi4=0"  name="puro_kuria_nagi4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_rinko3=1"  name="puro_kuria_rinko3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_tubomi3=0"  name="puro_kuria_tubomi3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*no_rinko

[return  ]
*tubomi

[tb_start_tyrano_code]
;蕾が既に本命の場合はスルー
[if exp="f.puro_kuria_tubomi3 == 1"]
[return]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Tình cảm ấm áp dành cho cô ấy đang ngày một lớn dần lên.[p]
[_tb_end_text]

[tb_start_text mode=4 ]
[font color="yellow"]Bạn có muốn chọn Tsubomi làm Honmei không?[resetfont]
[_tb_end_text]

[glink  color="btn_05_black"  storage="EV_honmei.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Chọn làm người yêu"  _clickable_img=""  target="*yes_tubomi"  ]
[glink  color="btn_05_black"  storage="EV_honmei.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Không"  _clickable_img=""  target="*no_tubomi"  ]
[s  ]
*yes_tubomi

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[tb_eval  exp="f.puro_kuria_nagi4=0"  name="puro_kuria_nagi4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_rinko3=0"  name="puro_kuria_rinko3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.puro_kuria_tubomi3=1"  name="puro_kuria_tubomi3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_tubomi

[return  ]
