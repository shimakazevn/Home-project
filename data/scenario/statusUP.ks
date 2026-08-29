[_tb_system_call storage=system/_statusUP.ks]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*koukando_UP

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[chara_show  name="statusUP"  time="0"  wait="true"  storage="chara/167/status_koukando3.png"  width="160"  height="32"  left="1284"  top="100"  reflect="false"  ]
[chara_move  name="statusUP"  anim="true"  time="500"  effect="linear"  wait="true"  left="1125"  top="100"  width="160"  height="32"  ]
[chara_hide  name="statusUP"  time="1500"  wait="false"  pos_mode="false"  ]
[wait  time="1500"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[return  ]
*koukando_UP2

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[chara_show  name="statusUP"  time="0"  wait="true"  storage="chara/167/status_koukando2.png"  width="160"  height="32"  left="1284"  top="100"  reflect="false"  ]
[chara_move  name="statusUP"  anim="true"  time="500"  effect="linear"  wait="true"  left="1125"  top="100"  width="160"  height="32"  ]
[chara_hide  name="statusUP"  time="1500"  wait="false"  pos_mode="false"  ]
[wait  time="1500"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[return  ]
*koukando_UP3

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[chara_show  name="statusUP"  time="0"  wait="true"  storage="chara/167/status_koukando.png"  width="160"  height="32"  left="1284"  top="100"  reflect="false"  ]
[chara_move  name="statusUP"  anim="true"  time="500"  effect="linear"  wait="true"  left="1125"  top="100"  width="160"  height="32"  ]
[chara_hide  name="statusUP"  time="1500"  wait="false"  pos_mode="false"  ]
[wait  time="1500"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[return  ]
*keikaido_UP

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[chara_show  name="statusUP"  time="0"  wait="true"  storage="chara/167/status_keikaido.png"  width="160"  height="32"  left="1284"  top="100"  reflect="false"  ]
[chara_move  name="statusUP"  anim="true"  time="500"  effect="linear"  wait="true"  left="1125"  top="100"  width="160"  height="32"  ]
[chara_hide  name="statusUP"  time="1500"  wait="false"  pos_mode="false"  ]
[wait  time="1500"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[return  ]
*jyouken_cleared

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[chara_show  name="statusUP"  time="0"  wait="true"  storage="chara/167/jyoukenClear.png"  width="158"  height="53"  left="1284"  top="100"  reflect="false"  ]
[chara_move  name="statusUP"  anim="true"  time="500"  effect="linear"  wait="true"  left="1125"  top="100"  width="158"  height="53"  ]
[chara_hide  name="statusUP"  time="1500"  wait="false"  pos_mode="false"  ]
[wait  time="1500"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[return  