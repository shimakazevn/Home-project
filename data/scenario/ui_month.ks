[_tb_system_call storage=system/_ui_month.ks]

*top

[chara_show  name="UI_calendar"  time="0"  wait="false"  storage="chara/174/calendar.png"  width="184"  height="80"  left="-1"  top="0"  ]
[chara_hide  name="UI_month"  time="0"  wait="true"  pos_mode="false"  ]
[chara_hide  name="UI_youbi"  time="0"  wait="true"  pos_mode="false"  ]
[chara_hide  name="UI_week"  time="0"  wait="true"  pos_mode="false"  ]
[tb_start_tyrano_code]
;month表示

[if exp="f.month == 6"]
[jump target="*month6"]

[elsif exp="f.month == 7"]
[jump target="*month7"]

[elsif exp="f.month == 8"]
[jump target="*month8"]

[elsif exp="f.month == 9"]
[jump target="*month9"]

[elsif exp="f.month == 10"]
[jump target="*month10"]

[endif]
[_tb_end_tyrano_code]

*month6

[chara_show  name="UI_month"  time="0"  wait="false"  storage="chara/171/month06.png"  width="48"  height="40"  left="8"  ]
[jump  storage="ui_month.ks"  target="*week"  ]
*month7

[chara_show  name="UI_month"  time="0"  wait="false"  storage="chara/171/month07.png"  width="48"  height="40"  left="8"  ]
[jump  storage="ui_month.ks"  target="*week"  ]
*month8

[chara_show  name="UI_month"  time="0"  wait="false"  storage="chara/171/month08.png"  width="48"  height="40"  left="8"  ]
[jump  storage="ui_month.ks"  target="*week"  ]
*month9

[chara_show  name="UI_month"  time="0"  wait="false"  storage="chara/171/month09.png"  width="48"  height="40"  left="8"  ]
[jump  storage="ui_month.ks"  target="*week"  ]
*month10

[chara_show  name="UI_month"  time="0"  wait="false"  storage="chara/171/month10.png"  width="48"  height="40"  left="8"  ]
[jump  storage="ui_month.ks"  target="*week"  ]
*week

[chara_hide  name="UI_week"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;weekの表示

[if exp="f.week == 1"]
[jump target="*week1"]

[elsif exp="f.week == 2"]
[jump target="*week2"]

[elsif exp="f.week == 3"]
[jump target="*week3"]

[elsif exp="f.week == 4"]
[jump target="*week4"]

[endif]
[_tb_end_tyrano_code]

*week1

[chara_show  name="UI_week"  time="0"  wait="false"  storage="chara/170/week01.png"  width="32"  height="40"  left="80"  ]
[jump  storage="ui_month.ks"  target="*youbi"  ]
*week2

[chara_show  name="UI_week"  time="0"  wait="false"  storage="chara/170/week02.png"  width="32"  height="40"  left="80"  ]
[jump  storage="ui_month.ks"  target="*youbi"  ]
*week3

[chara_show  name="UI_week"  time="0"  wait="false"  storage="chara/170/week03.png"  width="32"  height="40"  left="80"  ]
[jump  storage="ui_month.ks"  target="*youbi"  ]
*week4

[chara_show  name="UI_week"  time="0"  wait="false"  storage="chara/170/week04.png"  width="32"  height="40"  left="80"  ]
[jump  storage="ui_month.ks"  target="*youbi"  ]
*youbi

[tb_start_tyrano_code]

;曜日の表示

[if exp="f.mon == 1"]
[jump target="*mon"]

[elsif exp="f.tue == 1"]
[jump target="*tue"]

[elsif exp="f.wed == 1"]
[jump target="*wed"]

[elsif exp="f.thu == 1"]
[jump target="*thu"]

[elsif exp="f.fri == 1"]
[jump target="*fri"]

[elsif exp="f.sat == 1"]
[jump target="*sat"]

[elsif exp="f.sun == 1"]
[jump target="*sun"]

[endif]
[_tb_end_tyrano_code]

*mon

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw01.png"  width="32"  height="40"  left="136"  ]
[return  ]
*tue

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw02.png"  width="32"  height="40"  left="136"  ]
[return  ]
*wed

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw03.png"  width="32"  height="40"  left="136"  ]
[return  ]
*thu

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw04.png"  width="32"  height="40"  left="136"  ]
[return  ]
*fri

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw05.png"  width="32"  height="40"  left="136"  ]
[return  ]
*sat

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw06.png"  width="32"  height="40"  left="136"  ]
[return  ]
*sun

[chara_show  name="UI_youbi"  time="0"  wait="false"  storage="chara/175/dw07.png"  width="32"  height="40"  left="136"  ]
[return  ]
