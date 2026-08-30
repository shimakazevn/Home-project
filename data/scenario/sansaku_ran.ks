
[_tb_system_call storage=system/_sansaku_ran.ks]

[tb_start_tyrano_code]
;凛子が登場していない場合はスルー

[if exp="f.chara_rinko_on == 0"]
[jump target="*nagi_ran"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;蕾が登場していない場合はスルー
[if exp="f.chara_tubomi_on == 0"]
[jump target="*hayato_ran"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=fore storage=map_rinko.png x=624 y=1160]
[_tb_end_tyrano_code]

*top

[tb_eval  exp="f.sansakuEV_massaji_rinko=1"  name="sansakuEV_massaji_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sansaku_ran_rinko=Math.floor(Math.random()*(9-1+1)+1)"  name="sansaku_ran_rinko"  cmd="="  op="r"  val="1"  val_2="9"  ]
[tb_start_tyrano_code]
;凛子（隼人が来てる1　蕾が来てる1　凛子のみ8）
[if exp="f.sansaku_ran_rinko == 1 && f.EV_hatukinmu_tubomi == 2"]
[call target="*nagi_byouin_call"]
[jump target="*tubomi_massaji"]

[elsif exp="f.sansaku_ran_rinko == 2"]
[call target="*nagi_byouin_call"]
[if exp="f.EV_hatukinmu_tubomi == 2"]
[call target="*tubomi_rihure_call"]
[endif]
[jump target="*hayato_massaji"]
[endif]


;アイコン（凛子
[button storage="sansaku.ks" target="*rinko" x=624 y=160 graphic="../fgimage/default/map_rinko.png" name="rinko_icon"]
[_tb_end_tyrano_code]

*nagi_ran

[tb_eval  exp="f.sansaku_ran_nagi=Math.floor(Math.random()*(10-1+1)+1)"  name="sansaku_ran_nagi"  cmd="="  op="r"  val="1"  val_2="10"  ]
[tb_ptext_show  x="1300"  y="48"  size="30"  color="0xffffff"  time="0"  text="&f.sansaku_ran_nagi"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;凪（病院9　繁華街1）
[if exp="f.sansaku_ran_nagi <= 9 "]
[jump target="*nagi_byouin"]
[endif]

[if exp="f.sansaku_ran_nagi == 10 "]
[jump target="*nagi_hankagai"]
[endif]
[_tb_end_tyrano_code]

*nagi_byouin

[tb_eval  exp="f.sansakuEV_byouin_nagi=1"  name="sansakuEV_byouin_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（凪
[button storage="sansaku.ks" target="*byouin" x=848 y=56 graphic="../fgimage/default/map_nagi.png" name="nagi_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*tubomi_ran"  ]
*nagi_byouin_call

[tb_eval  exp="f.sansakuEV_byouin_nagi=1"  name="sansakuEV_byouin_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（凪
[button storage="sansaku.ks" target="*byouin" x=848 y=56 graphic="../fgimage/default/map_nagi.png" name="nagi_icon"]
[_tb_end_tyrano_code]

[return  ]
*nagi_hankagai

[tb_eval  exp="f.sansakuEV_hankagai_nagi=1"  name="sansakuEV_hankagai_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（凪
[button storage="sansaku.ks" target="*hankagai" x=1112 y=200 graphic="../fgimage/default/map_nagi.png" name="nagi_icon"]
[_tb_end_tyrano_code]

*tubomi_ran

[tb_eval  exp="f.sansaku_ran_tubomi=Math.floor(Math.random()*(20-1+1)+1)"  name="sansaku_ran_tubomi"  cmd="="  op="r"  val="1"  val_2="20"  ]
[tb_ptext_show  x="1300"  y="105"  size="30"  color="0xffffff"  time="0"  text="&f.sansaku_ran_tubomi"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;蕾（15/15）リフレ5　ファミレス4　繁華街4　マッサージ2
;凪が繁華街にいる場合は出現しない

[if exp="f.sansaku_ran_nagi== 10 && f.EV_hatukinmu_tubomi == 2"]
[jump target="*hayato_ran"]
[endif]

[if exp="f.sansaku_ran_tubomi <= 3  && f.EV_hatukinmu_tubomi == 2"]
[jump target="*hayato_tubomi_hankagai"]
[endif]

[if exp="f.sansaku_ran_tubomi <= 6  && f.EV_hatukinmu_tubomi == 2"]
[jump target="*tubomi_famiresu"]
[endif]

[if exp="f.sansaku_ran_tubomi <= 10  && f.EV_hatukinmu_tubomi == 2"]
[jump target="*tubomi_hankagai"]
[endif]

[if exp="f.sansaku_ran_tubomi <= 18  && f.EV_hatukinmu_tubomi == 2"]
[jump target="*tubomi_rihure"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*hayato_ran"  ]
*tubomi_massaji

[tb_eval  exp="f.sansakuEV_massaji_rinko=0"  name="sansakuEV_massaji_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_massaji_rinko_tubomi=1"  name="sansakuEV_massaji_rinko_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（凛子
[button storage="sansaku.ks" target="*rinko" x=592 y=160 graphic="../fgimage/default/map_rinko.png" name="rinko_icon"]
;アイコン（蕾
[button storage="sansaku.ks" target="*rinko" x=672 y=160 graphic="../fgimage/default/map_tubomi.png" name="tubomi_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*hayato_ran"  ]
*tubomi_hankagai

[tb_eval  exp="f.sansakuEV_hankagai_tubomi=1"  name="sansakuEV_hankagai_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（蕾
[button storage="sansaku.ks" target="*hankagai" x=1112 y=200 graphic="../fgimage/default/map_tubomi.png" name="tubomi_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*hayato_ran"  ]
*tubomi_rihure

[tb_eval  exp="f.sansakuEV_rihure_tubomi=1"  name="sansakuEV_rihure_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（蕾
[button storage="sansaku.ks" target="*rihure" x=88 y=376 graphic="../fgimage/default/map_tubomi.png" name="tubomi_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*hayato_ran"  ]
*tubomi_rihure_call

[tb_eval  exp="f.sansakuEV_rihure_tubomi=1"  name="sansakuEV_rihure_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（蕾
[button storage="sansaku.ks" target="*rihure" x=88 y=376 graphic="../fgimage/default/map_tubomi.png" name="tubomi_icon"]
[_tb_end_tyrano_code]

[return  ]
*tubomi_famiresu

[tb_eval  exp="f.sansakuEV_famiresu_tubomi=1"  name="sansakuEV_famiresu_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（蕾
[button storage="sansaku.ks" target="*famiresu" x=392 y=256 graphic="../fgimage/default/map_tubomi.png" name="tubomi_icon"]
[_tb_end_tyrano_code]

*hayato_ran

[tb_eval  exp="f.sansaku_ran_hayato=Math.floor(Math.random()*(15-1+1)+1)"  name="sansaku_ran_hayato"  cmd="="  op="r"  val="1"  val_2="15"  ]
[tb_ptext_show  x="1300"  y="171"  size="30"  color="0xffffff"  time="0"  text="&f.sansaku_ran_hayato"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;隼人（10/20）病院1　マッサージ1　繁華街5　ファミレス1

;蕾の乱数がマッサージ店にいる場合（９，１０）場合は出現しない
;凪の乱数が１～９で隼人の乱数が１の場合2人イベント
;蕾の乱数が１～４で隼人の乱数が２の場合2人イベント（ファミレス）
;蕾の乱数が５～８で隼人の乱数が２の場合2人イベント(繁華街)


[if exp="f.sansaku_ran_tubomi== 9 "]
[jump target="*end"]
[elsif exp="f.sansaku_ran_tubomi== 10 "]
[jump target="*end"]
[elsif exp="f.sansaku_ran_nagi== 10 "]
[jump target="*end"]
[endif]


[if exp="f.sansaku_ran_tubomi== 9 "]
[jump target="*end"]
[elsif exp="f.sansaku_ran_tubomi== 10 "]
[jump target="*end"]
[elsif exp="f.sansaku_ran_nagi== 10 "]
[jump target="*end"]
[endif]

[if exp="f.sansaku_ran_nagi <= 9 && f.sansaku_ran_hayato== 1"]
[jump target="*hayato_byouin"]
[endif]

[if exp="f.sansaku_ran_tubomi <= 4 && f.sansaku_ran_hayato== 2"]
[jump target="*hayato_famiresu"]
[endif]

[if exp="f.sansaku_ran_tubomi >= 5 && f.sansaku_ran_tubomi<= 8"]
[jump target="*hayato_famiresu"]
[endif]

[if exp="f.sansaku_ran_hayato >= 1 && f.sansaku_ran_hayato<= 8"]
[jump target="*hayato_hankagai"]
[endif]

[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*end"  ]
*hayato_byouin

[tb_eval  exp="f.sansakuEV_byouin_nagi=0"  name="sansakuEV_byouin_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_byouin_nagi_hayato=1"  name="sansakuEV_byouin_nagi_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
; 既存ボタンを移動（凪
[anim name="nagi_icon" left=808 top=56 time=0]
;アイコン（隼人
[button storage="sansaku.ks" target="*byouin" x=888 y=56 graphic="../fgimage/default/map_hayato.png" name="hayato_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*end"  ]
*hayato_massaji

[tb_eval  exp="f.sansakuEV_massaji_rinko=0"  name="sansakuEV_massaji_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_massaji_rinko_hayato=1"  name="sansakuEV_massaji_rinko_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（凛子
[button storage="sansaku.ks" target="*rinko" x=592 y=160 graphic="../fgimage/default/map_rinko.png" name="rinko_icon"]
;アイコン（隼人
[button storage="sansaku.ks" target="*rinko" x=672 y=160 graphic="../fgimage/default/map_hayato.png" name="hayato_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*end"  ]
*hayato_tubomi_hankagai

[tb_eval  exp="f.sansakuEV_hankagai_tubomi=0"  name="sansakuEV_hankagai_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_hankagai_tubomi_hayato=1"  name="sansakuEV_hankagai_tubomi_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（蕾
[button storage="sansaku.ks" target="*hankagai" x=1080 y=200 graphic="../fgimage/default/map_tubomi.png" name="tubomi_icon"]
;アイコン（隼人
[button storage="sansaku.ks" target="*hankagai" x=1160 y=200 graphic="../fgimage/default/map_hayato.png" name="hayato_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*end"  ]
*hayato_hankagai

[tb_eval  exp="f.sansakuEV_hankagai_tubomi=0"  name="sansakuEV_hankagai_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_hankagai_hayato=1"  name="sansakuEV_hankagai_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（隼人
[button storage="sansaku.ks" target="*hankagai" x=1112 y=200 graphic="../fgimage/default/map_hayato.png" name="hayato_icon"]
[_tb_end_tyrano_code]

[jump  storage="sansaku_ran.ks"  target="*end"  ]
*hayato_famiresu

[tb_eval  exp="f.sansakuEV_famiresu_hayato=1"  name="sansakuEV_famiresu_hayato"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アイコン（隼人
[button storage="sansaku.ks" target="*famiresu" x=392 y=256 graphic="../fgimage/default/map_hayato.png" name="hayato_icon"]
[_tb_end_tyrano_code]

*end

[tb_ptext_hide  time="0"  ]
[return  ]
