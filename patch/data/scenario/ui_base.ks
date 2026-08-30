
[_tb_system_call storage=system/_ui_base.ks]

[tb_start_tyrano_code]
;テンションがマイナスの場合は0を代入する(バックアップ)
[if exp="f.tension < 0"]
[eval exp="f.tension = 0"]
[endif]

;テンションの表示（0～5低い6～10普通11～高い）(体調29以下orストレス60以上で病気)
[if exp="f.para_taityou_display <= 29"]
[jump target="*ten_byouki"]

[elsif exp="f.para_sutoresu_display >= 60"]
[jump target="*ten_byouki"]
[endif]

[if exp="f.tension >= 11"]
[jump target="*ten_takai"]

[elsif exp="f.tension >= 0 && f.tension <= 5"]
[jump target="*ten_hikui"]

[elsif exp="f.tension >= 6 && f.tension <= 10"]
[jump target="*ten_hutuu"]

[endif]

[_tb_end_tyrano_code]

*top

[chara_hide  name="para_tension"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="base"  time="0"  wait="false"  storage="chara/136/ui_base.png"  width="1280"  height="36"  left=""  top=""  reflect="false"  ]
*reset

[tb_start_tyrano_code]
;テンションが0以下の場合1を代入
[if exp="f.tension <= 0"]
[eval exp="f.tension = 1"]
[endif]

;テンションの表示
;(体調29以下orストレス60以上で病気)
[if exp="f.para_taityou_display <= 29"]
[jump target="*ten_byouki"]

[elsif exp="f.para_sutoresu_display >= 60"]
[jump target="*ten_byouki"]
[endif]

[if exp="f.tension >= 10"]
[jump target="*ten_takai3"]

[elsif exp="f.tension == 9"]
[jump target="*ten_takai2"]

[elsif exp="f.tension == 8"]
[jump target="*ten_takai1"]

[elsif exp="f.tension == 7"]
[jump target="*ten_hutuu3"]

[elsif exp="f.tension == 6"]
[jump target="*ten_hutuu2"]

[elsif exp="f.tension == 5"]
[jump target="*ten_hutuu1"]

[elsif exp="f.tension == 4"]
[jump target="*ten_hikui3"]

[elsif exp="f.tension == 3"]
[jump target="*ten_hikui2"]

[elsif exp="f.tension == 2"]
[jump target="*ten_hikui1"]

[elsif exp="f.tension == 1"]
[jump target="*ten_hikui0"]

[endif]
[_tb_end_tyrano_code]

*ten_takai3

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_takai3.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=1"  name="ten_High"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*ten_takai2

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_takai2.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=1"  name="ten_High"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  ]
[return  ]
*ten_takai1

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_takai1.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=1"  name="ten_High"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  ]
[return  ]
*ten_hutuu3

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hutuu3.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ten_Middle=1"  name="ten_Middle"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  ]
[return  ]
*ten_hutuu2

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hutuu2.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=1"  name="ten_Middle"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  ]
[return  ]
*ten_hutuu1

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hutuu1.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=1"  name="ten_Middle"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  ]
[return  ]
*ten_hikui3

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hikui3.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ten_Low=1"  name="ten_Low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*ten_hikui2

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hikui2.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Low=1"  name="ten_Low"  cmd="="  op="t"  val="1"  ]
[return  ]
*ten_hikui1

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hikui1.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Low=1"  name="ten_Low"  cmd="="  op="t"  val="1"  ]
[return  ]
*ten_hikui0

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_hikui0.png"  width="96"  height="80"  left="1184"  top="0"  reflect="false"  ]
[tb_eval  exp="f.ten_byouki=0"  name="ten_byouki"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Low=1"  name="ten_Low"  cmd="="  op="t"  val="1"  ]
[return  ]
*ten_byouki

[chara_show  name="para_tension"  time="0"  wait="false"  storage="chara/144/tension_byouki.png"  width="96"  height="80"  left="1184"  ]
[tb_eval  exp="f.ten_High=0"  name="ten_High"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Middle=0"  name="ten_Middle"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ten_Low=0"  name="ten_Low"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ten_byouki=1"  name="ten_byouki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
