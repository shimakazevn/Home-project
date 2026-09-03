
[_tb_system_call storage=system/_sansaku.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money+=10000"  name="money"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_tubomi_on=1"  name="chara_tubomi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top

[tb_start_tyrano_code]
[cancelskip]
[_tb_end_tyrano_code]

[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[cm  ]
[tb_hide_message_window  ]
[bg  time="0"  method="crossfade"  storage="tm_bg.png"  cross="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  ]
[tb_start_tyrano_code]
;ボタン表示
;病院
[button target=*byouin enterimg="../fgimage/default/tm_biyouin_on.png" clickimg="../fgimage/default/tm_biyouin_on.png" x=776 y=96 graphic="../fgimage/default/tm_biyouin_off.png" name="sansaku_icon"]

;マッサージ店
[button target=*rinko enterimg="../fgimage/default/tm_relaxation_on.png" clickimg="../fgimage/default/tm_relaxation_on.png" x=560 y=200 graphic="../fgimage/default/tm_relaxation_off.png" name="sansaku_icon"]

;ファミレス
[button target=*famiresu enterimg="../fgimage/default/tm_famiresu_on.png" clickimg="../fgimage/default/tm_famiresu_on.png" x=328 y=184 graphic="../fgimage/default/tm_famiresu_off.png" name="sansaku_icon"]

;繁華街
[button target=*hankagai enterimg="../fgimage/default/tm_hankagai_on.png" clickimg="../fgimage/default/tm_hankagai_on.png" x=984 y=144 graphic="../fgimage/default/tm_hankagai_off.png" name="sansaku_icon"]

;買い物
[button target=*kaimono enterimg="../fgimage/default/tm_shopping_on.png" clickimg="../fgimage/default/tm_shopping_on.png" x=856 y=392 graphic="../fgimage/default/tm_shopping_off.png" name="sansaku_icon"]

;メイドリフレ
[button target=*rihure enterimg="../fgimage/default/tm_maidrefre_on.png" clickimg="../fgimage/default/tm_maidrefre_on.png" x=0 y=424 graphic="../fgimage/default/tm_maidrefre_off.png" name="sansaku_icon"]

;戻る
[button target=*end enterimg="../fgimage/default/tm_modoru_on.png" clickimg="../fgimage/default/tm_modoru_on.png" x=1192 y=632 graphic="../fgimage/default/tm_modoru_off.png" name="sansaku_icon"]

[anim name="sansaku_icon" opacity=0 time=0]
[anim name="sansaku_icon" opacity=255 time=300]
[_tb_end_tyrano_code]

[call  storage="sansaku_ran.ks"  target="*top"  ]
[s  ]
*byouin

[cm  ]
[jump  storage="sansaku_byouinEV_nagi.ks"  target="*top"  cond="f.sansakuEV_byouin_nagi==1"  ]
[jump  storage="sansaku_byouinEV_nagihayato.ks"  target="*top"  cond="f.sansakuEV_byouin_nagi_hayato==1"  ]
[jump  storage="sansaku_byouinEV.ks"  target="*top"  ]
*rinko

[cm  ]
[jump  storage="sansaku_massajiEV_rinko.ks"  target="*top"  cond="f.sansakuEV_massaji_rinko==1"  ]
[jump  storage="sansaku_massajiEV_rinkotubomi.ks"  target="*top"  cond="f.sansakuEV_massaji_rinko_tubomi==1"  ]
[jump  storage="sansaku_massajiEV_rinkohayato.ks"  target="*top"  cond="f.sansakuEV_massaji_rinko_hayato==1"  ]
[jump  storage="sansaku_massajiEV.ks"  target="*top"  ]
*famiresu

[cm  ]
[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*top"  cond="f.sansakuEV_famiresu_hayato==1"  ]
[jump  storage="sansaku_famiresuEV_tubomi.ks"  target="*top"  cond="f.sansakuEV_famiresu_tubomi==1"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*top"  ]
*rihure

[cm  ]
[jump  storage="sansaku_rihureEV_tubomi.ks"  target="*top"  cond="f.sansakuEV_rihure_tubomi==1"  ]
[jump  storage="sansaku_rihureEV.ks"  target="*top"  ]
[cm  ]
[jump  storage="sansaku_famiresuEV_hayato.ks"  target="*top"  cond="f.sansakuEV_rihure_tubomi==1"  ]
[jump  storage="sansaku_famiresuEV.ks"  target="*top"  ]
*hankagai

[cm  ]
[jump  storage="sansaku_hankagaiEV_nagi.ks"  target="*top"  cond="f.sansakuEV_hankagai_nagi==1"  ]
[jump  storage="sansaku_hankagaiEV_tubomi.ks"  target="*top"  cond="f.sansakuEV_hankagai_tubomi==1"  ]
[jump  storage="sansaku_hankagaiEV_hayato.ks"  target="*top"  cond="f.sansakuEV_hankagai_hayato==1"  ]
[jump  storage="sansaku_hankagaiEV_tubomihayato.ks"  target="*top"  cond="f.sansakuEV_hankagai_tubomi_hayato==1"  ]
[jump  storage="sansaku_hankagaiEV.ks"  target="*top"  ]
*kaimono

[cm  ]
[jump  storage="sansaku_kaimono1.ks"  target="*top"  ]
*end

[cm  ]
[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[call  storage="sansaku.ks"  target="*reset"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="sora.jpg"  ]
[tb_show_message_window  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[mask_off  time="600"  effect="fadeOut"  ]
*end2

[tb_start_text mode=1 ]
Và khám phá tất cả những bí mật đang chờ đợi bạn.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*reset

[tb_eval  exp="f.sansakuEV_byouin_nagi=0"  name="sansakuEV_byouin_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_byouin_nagi_hayato=0"  name="sansakuEV_byouin_nagi_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_massaji_rinko=0"  name="sansakuEV_massaji_rinko"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_massaji_rinko_tubomi=0"  name="sansakuEV_massaji_rinko_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_massaji_rinko_hayato=0"  name="sansakuEV_massaji_rinko_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_famiresu_tubomi=0"  name="sansakuEV_famiresu_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_famiresu_hayato=0"  name="sansakuEV_famiresu_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_hankagai_tubomi=0"  name="sansakuEV_hankagai_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_hankagai_hayato=0"  name="sansakuEV_hankagai_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_hankagai_tubomi_hayato=0"  name="sansakuEV_hankagai_tubomi_hayato"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_hankagai_nagi=0"  name="sansakuEV_hankagai_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.sansakuEV_rihure_tubomi=0"  name="sansakuEV_rihure_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
