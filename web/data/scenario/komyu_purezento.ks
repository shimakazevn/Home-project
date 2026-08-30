
[_tb_system_call storage=system/_komyu_purezento.ks]

*purezento_nagi

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_text mode=4 ]
（Nên tặng gì đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;プレゼントのベースの表示
[image layer="2" x="248" y="320" storage="default/gift_base.png" time="0" ]
;キャンセルボタン_凪
[button storage="komyu_nagi.ks" target=*top enterimg=../fgimage/default/cancel_on.png clickimg=../fgimage/default/cancel_on.png x=560 y=480 graphic=../fgimage/default/cancel_off.png]

;ボタンの表示(コーヒーギフト)
[if exp="f.pure_coffee> 0 "]
[button graphic="../fgimage/default/gift_01.png" storage="komyu_nagi.ks" target="*pure_coffee" x=288 y=360 ]
[endif]

;ボタンの表示(アクセ)
[if exp="f.pure_akuse> 0 "]
[button graphic="../fgimage/default/gift_02.png" storage="komyu_nagi.ks" target="*pure_akuse" x=408 y=360 ]
[endif]

;ボタンの表示(ゲーム)
[if exp="f.pure_game> 0 "]
[button graphic="../fgimage/default/gift_03.png" storage="komyu_nagi.ks" target="*pure_game" x=528 y=360 ]
[endif]

;ボタンの表示(花束)
[if exp="f.pure_hana> 0 "]
[button graphic="../fgimage/default/gift_04.png" storage="komyu_nagi.ks" target="*pure_hana" x=648 y=360 ]
[endif]

;ボタンの表示(コスメ)
[if exp="f.pure_konpakuto> 0 "]
[button graphic="../fgimage/default/gift_05.png" storage="komyu_nagi.ks" target="*pure_konpakuto" x=768 y=360 ]
[endif]

;ボタンの表示(和菓子)
[if exp="f.pure_wagasi> 0 "]
[button graphic="../fgimage/default/gift_06.png" storage="komyu_nagi.ks" target="*pure_wagasi" x=888 y=360 ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*purezento_rinko

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_text mode=4 ]
（Nên tặng gì đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;プレゼントのベースの表示
[image layer="2" x="248" y="320" storage="default/gift_base.png" time="0" ]
;キャンセルボタン_凛子
[button storage="komyu_rinko.ks" target=*top enterimg=../fgimage/default/cancel_on.png clickimg=../fgimage/default/cancel_on.png x=560 y=480 graphic=../fgimage/default/cancel_off.png]

;ボタンの表示(コーヒーギフト)
[if exp="f.pure_coffee> 0 "]
[button graphic="../fgimage/default/gift_01.png" storage="komyu_rinko.ks" target="*pure_coffee" x=288 y=360 ]
[endif]
;ボタンの表示(アクセ)
[if exp="f.pure_akuse> 0 "]
[button graphic="../fgimage/default/gift_02.png" storage="komyu_rinko.ks" target="*pure_akuse" x=408 y=360 ]
[endif]
;ボタンの表示(ゲーム)
[if exp="f.pure_game> 0 "]
[button graphic="../fgimage/default/gift_03.png" storage="komyu_rinko.ks" target="*pure_game" x=528 y=360 ]
[endif]
;ボタンの表示(花束)
[if exp="f.pure_hana> 0 "]
[button graphic="../fgimage/default/gift_04.png" storage="komyu_rinko.ks" target="*pure_hana" x=648 y=360 ]
[endif]
;ボタンの表示(コスメ)
[if exp="f.pure_konpakuto> 0 "]
[button graphic="../fgimage/default/gift_05.png" storage="komyu_rinko.ks" target="*pure_konpakuto" x=768 y=360 ]
[endif]
;ボタンの表示(和菓子)
[if exp="f.pure_wagasi> 0 "]
[button graphic="../fgimage/default/gift_06.png" storage="komyu_rinko.ks" target="*pure_wagasi" x=888 y=360 ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*purezento_tubomi

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_text mode=4 ]
（Nên tặng gì đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;プレゼントのベースの表示
[image layer="2" x="248" y="320" storage="default/gift_base.png" time="0" ]
;キャンセルボタン_蕾
[button storage="komyu_tubomi.ks" target=*top enterimg=../fgimage/default/cancel_on.png clickimg=../fgimage/default/cancel_on.png x=560 y=480 graphic=../fgimage/default/cancel_off.png]

;ボタンの表示(コーヒーギフト)
[if exp="f.pure_coffee> 0 "]
[button graphic="../fgimage/default/gift_01.png" storage="komyu_tubomi.ks" target="*pure_coffee" x=288 y=360 ]
[endif]
;ボタンの表示(アクセ)
[if exp="f.pure_akuse> 0 "]
[button graphic="../fgimage/default/gift_02.png" storage="komyu_tubomi.ks" target="*pure_akuse" x=408 y=360 ]
[endif]
;ボタンの表示(ゲーム)
[if exp="f.pure_game> 0 "]
[button graphic="../fgimage/default/gift_03.png" storage="komyu_tubomi.ks" target="*pure_game" x=528 y=360 ]
[endif]
;ボタンの表示(花束)
[if exp="f.pure_hana> 0 "]
[button graphic="../fgimage/default/gift_04.png" storage="komyu_tubomi.ks" target="*pure_hana" x=648 y=360 ]
[endif]
;ボタンの表示(コスメ)
[if exp="f.pure_konpakuto> 0 "]
[button graphic="../fgimage/default/gift_05.png" storage="komyu_tubomi.ks" target="*pure_konpakuto" x=768 y=360 ]
[endif]
;ボタンの表示(和菓子)
[if exp="f.pure_wagasi> 0 "]
[button graphic="../fgimage/default/gift_06.png" storage="komyu_tubomi.ks" target="*pure_wagasi" x=888 y=360 ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*purezento_hayato

[tb_eval  exp="f.pure_kettei_on=0"  name="pure_kettei_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_text mode=4 ]
（Nên tặng gì đây nhỉ?）
[_tb_end_text]

[tb_start_tyrano_code]
;プレゼントのベースの表示
[image layer="2" x="248" y="320" storage="default/gift_base.png" time="0" ]
;キャンセルボタン_隼人
[button storage="komyu_hayato.ks" target=*top enterimg=../fgimage/default/cancel_on.png clickimg=../fgimage/default/cancel_on.png x=560 y=480 graphic=../fgimage/default/cancel_off.png]

;ボタンの表示(コーヒーギフト)
[if exp="f.pure_coffee> 0 "]
[button graphic="../fgimage/default/gift_01.png" storage="komyu_hayato.ks" target="*pure_coffee" x=288 y=360 ]
[endif]
;ボタンの表示(アクセ)
[if exp="f.pure_akuse> 0 "]
[button graphic="../fgimage/default/gift_02.png" storage="komyu_hayato.ks" target="*pure_akuse" x=408 y=360 ]
[endif]
;ボタンの表示(ゲーム)
[if exp="f.pure_game> 0 "]
[button graphic="../fgimage/default/gift_03.png" storage="komyu_hayato.ks" target="*pure_game" x=528 y=360 ]
[endif]
;ボタンの表示(花束)
[if exp="f.pure_hana> 0 "]
[button graphic="../fgimage/default/gift_04.png" storage="komyu_hayato.ks" target="*pure_hana" x=648 y=360 ]
[endif]
;ボタンの表示(コスメ)
[if exp="f.pure_konpakuto> 0 "]
[button graphic="../fgimage/default/gift_05.png" storage="komyu_hayato.ks" target="*pure_konpakuto" x=768 y=360 ]
[endif]
;ボタンの表示(和菓子)
[if exp="f.pure_wagasi> 0 "]
[button graphic="../fgimage/default/gift_06.png" storage="komyu_hayato.ks" target="*pure_wagasi" x=888 y=360 ]
[endif]
[_tb_end_tyrano_code]

[s  ]
