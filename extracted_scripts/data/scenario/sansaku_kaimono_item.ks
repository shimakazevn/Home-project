]
[_tb_system_call storage=system/_sansaku_kaimono_item.ks]

[tb_eval  exp="f.money_updated+=10000"  name="money_updated"  cmd="+="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*okanenasi

[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
（さすがにこの手持ちじゃ買えないな）[p]
[_tb_end_text]

[jump  storage="sansaku_kaimono1.ks"  target="*kaden"  ]
*cam

[tb_start_tyrano_code]
;ボタンの表示(カメラ)
[button graphic="../fgimage/default/item_trap_cam.png" storage="sansaku_kaimono_item.ks" target="*cam_2" x=120 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*cam_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<2999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]盗撮用小型カメラを購入した[resetfont][p]
[舜]「つい買ってしまった…。凪の家でこっそり使ってみるしかないよな…」[p]
[_tb_end_text]

[tb_eval  exp="f.item_com_s+=1"  name="item_com_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_com+=1"  name="item_com"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=3000"  name="money_updated"  cmd="-="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*kaden"  ]
*cam_bousui

[tb_start_tyrano_code]
;ボタンの表示(防水カメラ)
[button graphic="../fgimage/default/item_trap_waterproofcam.png" storage="sansaku_kaimono_item.ks" target="*cam_bousui2" x=384 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*cam_bousui2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<2999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]盗撮用小型防水カメラを購入した[resetfont][p]
[舜]「風呂場やトイレでもしっかり撮影できそうなカメラだ。[r]凪の家で、こっそり試してみるかな……」[p]
[_tb_end_text]

[tb_eval  exp="f.item_com_bousui_s+=1"  name="item_com_bousui_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_com_bousui+=1"  name="item_com_bousui"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*kaden"  ]
*cam_idou

[tb_start_tyrano_code]
;ボタンの表示(腕時計カメラ)
[button graphic="../fgimage/default/item_trap_watchcom.png" storage="sansaku_kaimono_item.ks" target="*cam_idou2" x=648 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*cam_idou2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<7999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]腕時計型カメラを購入した[resetfont][p]
[舜]「一見、ただの腕時計にしか見えない。精巧にできてるなぁ…。[r]対面で座るようなシチュエーションで使えるかもしれないな」[p]
[_tb_end_text]

[tb_eval  exp="f.item_com_idou_s+=1"  name="item_com_idou_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_com_idou+=1"  name="item_com_idou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=8000"  name="money_updated"  cmd="-="  op="t"  val="8000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*kaden"  ]
*book1

[tb_start_tyrano_code]
;ボタンの表示(活力の道1)
[button graphic="../fgimage/default/item_book_katuryoku.png" storage="sansaku_kaimono_item.ks" target="*book1_2" x=120 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*book1_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<4999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]活力の道～心と体を整える習慣～・上巻を購入した[resetfont][p]
[舜]「へぇ…“心と体を整えて日々の活力をアップさせよう”か。[r]こういう考え方もあるんだな。勉強になるな…」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]侵入中の移動回数が1回増加した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.turnLV+=1"  name="turnLV"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_book_katuryoku_s+=1"  name="item_book_katuryoku_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*book"  ]
*book2

[tb_start_tyrano_code]
;ボタンの表示(活力の道2)
[button graphic="../fgimage/default/item_book_katuryoku2.png" storage="sansaku_kaimono_item.ks" target="*book2_2" x=384 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*book2_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<7999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]活力の道～心と体を整える習慣～・下巻を購入した[resetfont][p]
[舜]「何事も精神を鍛えれば余計な不安が消えて、迅速に行動できるようになる…か。[r]なるほどなぁ…」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]侵入中の移動回数が1回増加した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.turnLV+=1"  name="turnLV"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.item_book_katuryoku2_s+=1"  name="item_book_katuryoku2_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=8000"  name="money_updated"  cmd="-="  op="t"  val="8000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*book"  ]
*book3

[tb_start_tyrano_code]
;ボタンの表示(社会力の極意)
[button graphic="../fgimage/default/item_book_syakairyoku.png" storage="sansaku_kaimono_item.ks" target="*book3_2" x=648 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*book3_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<7999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]社会力の極意！～信頼される人の共通点～を購入した[resetfont][p]
[舜]「“信頼を得よう”、か。[r]うーん…それが今の俺に一番足りていないものな気がする。勉強になるな…」[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="lvup.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]周りの警戒度が上がりにくくなった[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.keikaido-=3"  name="keikaido"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.item_book_syakairyoku_s+=1"  name="item_book_syakairyoku_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=8000"  name="money_updated"  cmd="-="  op="t"  val="8000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*book"  ]
*suimin

[tb_start_tyrano_code]
;ボタンの表示(睡眠薬)
[button graphic="../fgimage/default/item_trap_suimin.png" storage="sansaku_kaimono_item.ks" target="*suimin2" x=120 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*suimin2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<2999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]睡眠薬を購入した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.item_4+=1"  name="item_4"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_4_s+=1"  name="item_4_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=3000"  name="money_updated"  cmd="-="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*medicine"  ]
*biyaku

[tb_start_tyrano_code]
;ボタンの表示(媚薬)
[button graphic="../fgimage/default/item_trap_biyaku.png" storage="sansaku_kaimono_item.ks" target="*biyaku_2" x=384 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*biyaku_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]媚薬を購入した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.item_1+=1"  name="item_1"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_1_s+=1"  name="item_1_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=1000"  name="money_updated"  cmd="-="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*medicine"  ]
*biyaku2

[tb_start_tyrano_code]
;ボタンの表示(媚薬プレミアム)
[button graphic="../fgimage/default/item_trap_biyaku2.png" storage="sansaku_kaimono_item.ks" target="*biyaku2_2" x=648 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*biyaku2_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<4999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]媚薬プレミアムを購入した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.item_2+=1"  name="item_2"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_2_s+=1"  name="item_2_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*medicine"  ]
*biyaku3

[tb_start_tyrano_code]
;ボタンの表示(媚薬クリーム)
[button graphic="../fgimage/default/item_trap_cream.png" storage="sansaku_kaimono_item.ks" target="*biyaku3_2" x=912 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*biyaku3_2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<2999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]媚薬クリームを購入した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.item_3+=1"  name="item_3"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_3_s+=1"  name="item_3_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=3000"  name="money_updated"  cmd="-="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*medicine"  ]
*supiritasu

[tb_start_tyrano_code]
;ボタンの表示(スピリタスカプセル)
[button graphic="../fgimage/default/item_trap_supiritasu.png" storage="sansaku_kaimono_item.ks" target="*supiritasu2" x=120 y=312 ]
[_tb_end_tyrano_code]

[return  ]
*supiritasu2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<5999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]スピリタスカプセルを購入した[resetfont][p]
[舜]「アルコールに混ぜるだけで効果があるのか。[r]今度、誰かと食事に行ったときにでも試してみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.item_supiritasu+=1"  name="item_supiritasu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_supiritasu_s+=1"  name="item_supiritasu_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_supiritasu+=1"  name="itemEV_supiritasu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=6000"  name="money_updated"  cmd="-="  op="t"  val="6000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*medicine"  ]
*coffee

[tb_start_tyrano_code]
;ボタンの表示(コーヒーギフトセット)
[button graphic="../fgimage/default/item_gift_coffee.png" storage="sansaku_kaimono_item.ks" target="*coffee2" x=120 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*coffee2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<2499"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]コーヒーギフトセットを購入した[resetfont][p]
[舜]「よし、いい買い物ができたな。今度誰かに会ったときに、プレゼントしてみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.pure_coffee+=1"  name="pure_coffee"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_coffee_s+=1"  name="pure_coffee_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=2500"  name="money_updated"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  ]
*game

[tb_start_tyrano_code]
;ボタンの表示(レトロゲーム)
[button graphic="../fgimage/default/item_gift_game.png" storage="sansaku_kaimono_item.ks" target="*game2" x=384 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*game2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]レトロゲームを購入した[resetfont][p]
[舜]「よし、いい買い物ができたな。今度誰かに会ったときに、プレゼントしてみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.pure_game+=1"  name="pure_game"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_game_s+=1"  name="pure_game_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=1000"  name="money_updated"  cmd="-="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  ]
*konpakuto

[tb_start_tyrano_code]
;ボタンの表示(化粧品)
[button graphic="../fgimage/default/item_gift_kesyou.png" storage="sansaku_kaimono_item.ks" target="*konpakuto2" x=648 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*konpakuto2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<5599"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]化粧品を購入した[resetfont][p]
[舜]「よし、いい買い物ができたな。今度誰かに会ったときに、プレゼントしてみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.pure_konpakuto+=1"  name="pure_konpakuto"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_konpakuto_s+=1"  name="pure_konpakuto_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5500"  name="money_updated"  cmd="-="  op="t"  val="5500"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  ]
*hana

[tb_start_tyrano_code]
;ボタンの表示(花束)
[button graphic="../fgimage/default/item_gift_hana.png" storage="sansaku_kaimono_item.ks" target="*hana2" x=912 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*hana2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<4999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]花束を購入した[resetfont][p]
[舜]「よし、いい買い物ができたな。今度誰かに会ったときに、プレゼントしてみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.pure_hana+=1"  name="pure_hana"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_hana_s+=1"  name="pure_hana_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=5000"  name="money_updated"  cmd="-="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  ]
*akuse

[tb_start_tyrano_code]
;ボタンの表示(アクセ)
[button graphic="../fgimage/default/item_gift_akuse.png" storage="sansaku_kaimono_item.ks" target="*akuse2" x=120 y=312 ]
[_tb_end_tyrano_code]

[return  ]
*akuse2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<19999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]アクセサリーを購入した[resetfont][p]
[舜]「よし、いい買い物ができたな。今度誰かに会ったときに、プレゼントしてみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.pure_akuse+=1"  name="pure_akuse"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_akuse_s+=1"  name="pure_akuse_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=20000"  name="money_updated"  cmd="-="  op="t"  val="20000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  ]
*wagasi

[tb_start_tyrano_code]
;ボタンの表示(アクセ)
[button graphic="../fgimage/default/item_gift_okasi.png" storage="sansaku_kaimono_item.ks" target="*wagasi2" x=384 y=312 ]
[_tb_end_tyrano_code]

[return  ]
*wagasi2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<2999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]お菓子ギフトセットを購入した[resetfont][p]
[舜]「よし、いい買い物ができたな。今度誰かに会ったときに、プレゼントしてみようかな」[p]
[_tb_end_text]

[tb_eval  exp="f.pure_wagasi+=1"  name="pure_wagasi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.pure_wagasi_s+=1"  name="pure_wagasi_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=3000"  name="money_updated"  cmd="-="  op="t"  val="3000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  ]
*oil

[tb_start_tyrano_code]
;ボタンの表示(ボディーオイル)
[button graphic="../fgimage/default/item_h_oil.png" storage="sansaku_kaimono_item.ks" target="*oil2" x=120 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*oil2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<9999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]高級ボディーオイルを購入した[resetfont][p]
[舜]「よし、いい買い物ができた。[r]これでイチャイチャの妄想がますます広がるな…使うのが楽しみだぜ」[p]
[_tb_end_text]

[tb_eval  exp="f.item_oil+=1"  name="item_oil"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_oil_s+=1"  name="item_oil_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_oil=1"  name="itemEV_oil"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=10000"  name="money_updated"  cmd="-="  op="t"  val="10000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*R18"  ]
*sm

[tb_start_tyrano_code]
;ボタンの表示(SM)
[button graphic="../fgimage/default/item_h_sm.png" storage="sansaku_kaimono_item.ks" target="*sm2" x=384 y=152 ]
[_tb_end_tyrano_code]

[return  ]
*sm2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<27999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]SMグッズを購入した[resetfont][p]
[舜]「よし、いい買い物ができた。[r]これでイチャイチャの妄想がますます広がるな…使うのが楽しみだぜ」[p]
[_tb_end_text]

[tb_eval  exp="f.item_sm+=1"  name="item_sm"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_sm_s+=1"  name="item_sm_s"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_SM=1"  name="itemEV_SM"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=28000"  name="money_updated"  cmd="-="  op="t"  val="28000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*R18"  ]
*yubiwa

[tb_start_tyrano_code]
;ボタンの表示(婚約指輪)
[button graphic="../fgimage/default/item_gift_yubiwa.png" storage="sansaku_kaimono_item.ks" target="*yubiwa2" x=648 y=312 ]
[_tb_end_tyrano_code]

[return  ]
*yubiwa2

[cm  ]
[jump  storage="sansaku_kaimono_item.ks"  target="*okanenasi"  cond="f.money<99999"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="300"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]婚約指輪を購入した[resetfont][p]
[舜]「高い買い物は緊張するな…。あとは俺の勇気次第だ」[p]
[_tb_end_text]

[tb_eval  exp="f.item_yubiwa=1"  name="item_yubiwa"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.omoide_para=20"  name="omoide_para"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[tb_eval  exp="f.money_updated-=100000"  name="money_updated"  cmd="-="  op="t"  val="100000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[wait  time="300"  ]
[jump  storage="sansaku_kaimono1.ks"  target="*gift"  