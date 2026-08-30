[_tb_system_call storage=system/_EV_OP_map.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
[舜]（はぁ……うだうだしてるうちに、もうこんな時間か）[p]
──やはり、まずは病院へ行って情報を得るしかない。[p]
[舜]（……よし、普通に患者として行けば、不自然じゃないはずだ。[r]凪が働いてるってのは確かなはずだしな）[p]
[_tb_end_text]

[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  ]
*top2

[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="tm_bg.png"  cross="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;ボタン表示
;病院
[button target=*byouin enterimg="../fgimage/default/tm_biyouin_on.png" clickimg="../fgimage/default/tm_biyouin_on.png" x=776 y=96 graphic="../fgimage/default/tm_biyouin_off.png" name="sansaku_icon"]
;ファミレス
[button target=*famiresu enterimg="../fgimage/default/tm_famiresu_on.png" clickimg="../fgimage/default/tm_famiresu_on.png" x=328 y=184 graphic="../fgimage/default/tm_famiresu_off.png" name="sansaku_icon"]
;繁華街
[button target=*hankagai enterimg="../fgimage/default/tm_hankagai_on.png" clickimg="../fgimage/default/tm_hankagai_on.png" x=984 y=144 graphic="../fgimage/default/tm_hankagai_off.png" name="sansaku_icon"]
;買い物
[button target=*kaimono enterimg="../fgimage/default/tm_shopping_on.png" clickimg="../fgimage/default/tm_shopping_on.png" x=856 y=392 graphic="../fgimage/default/tm_shopping_off.png" name="sansaku_icon"]
;メイドリフレ
[button target=*rihure enterimg="../fgimage/default/tm_maidrefre_on.png" clickimg="../fgimage/default/tm_maidrefre_on.png" x=0 y=424 graphic="../fgimage/default/tm_maidrefre_off.png" name="sansaku_icon"]

[anim name="sansaku_icon" opacity=0 time=0]
[anim name="sansaku_icon" opacity=255 time=300]
[_tb_end_tyrano_code]

*op1

[s  ]
*rihure

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_rihure.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（ん？　なんだここ…[font color="yellow"]メイドリフレ[resetfont]？　へぇ、事務のバイトを募集してるのか）[p]
[舜]（女の子たちの中で働くのも、案外悪くないかもしれないな。ちょっと頭の片隅に置いておこう）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
*byouin

[cm  ]
[jump  storage="EV_OP3.ks"  target="*top"  ]
*famiresu

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_famiresu.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（こんなところにファミレスがあるのか…。ちょうどいいな。ちょっと何か適当に食べていくか）[p]
[舜]（[font color="yellow"]一人で静かに過ごせる場所ってありがたいよな。[resetfont]人の気配はあるけど、干渉されない…[r]そんな空間がちょうどいいんだよな）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
*kaimono

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_kaimono1.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（[font color="yellow"]薬局から電気屋まで、何でも揃ってるショッピングビルだ。[resetfont]便利そうだな…。[r]これからの生活、きっと何かとお世話になることになりそうだ）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
*hankagai

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_hankagai.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（はぁ…ここは相変わらず人が多いな。雑踏の中にいるだけで、なんだか気が滅入る）[p]
[舜]（よく見たら、雑居ビルに[font color="yellow"]スポーツジム[resetfont]が入ってるな…。まあ、俺には関係ないか）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
