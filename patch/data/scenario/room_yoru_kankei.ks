[_tb_system_call storage=system/_room_yoru_kankei.ks]

*top

[tb_start_tyrano_code]
;凪と隼人の関係（0～9「１（好）」10～19「２（微妙）」20～29「３（苦手）」30「４（嫌））

[if exp="f.kankei >= 30 "]
[jump target="*4"]

[elsif exp="f.kankei >= 20 "]
[jump target="*3"]

[elsif exp="f.kankei >= 10 "]
[jump target="*2"]

[endif]
[_tb_end_tyrano_code]

*1

[chara_show  name="kankei"  time="0"  wait="true"  storage="chara/183/UI_kankeisei_01.png"  width="168"  height="160"  left="560"  top="280"  ]
[jump  storage="room_yoru_kankei.ks"  target="*end"  ]
*2

[chara_show  name="kankei"  time="0"  wait="true"  storage="chara/183/UI_kankeisei_02.png"  width="168"  height="160"  left="560"  top="280"  ]
[jump  storage="room_yoru_kankei.ks"  target="*end"  ]
*3

[chara_show  name="kankei"  time="0"  wait="true"  storage="chara/183/UI_kankeisei_03.png"  width="168"  height="160"  left="560"  top="280"  ]
[jump  storage="room_yoru_kankei.ks"  target="*end"  ]
*4

[chara_show  name="kankei"  time="0"  wait="true"  storage="chara/183/UI_kankeisei_04.png"  width="168"  height="160"  left="560"  top="280"  ]
*end

[return ]
