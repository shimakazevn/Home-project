[_tb_system_call storage=system/_title_screen.ks]

[tb_start_tyrano_code]
[voconfig sebuf=0 name="凪" vostorage="nagi/nagi_{number}.mp3" number=1]
[voconfig sebuf=0 name="蕾" vostorage="tubomi/tubomi_{number}.mp3" number=1]
[voconfig sebuf=0 name="凛子" vostorage="rinko/rinko_{number}.mp3" number=1]
[vostart]
[_tb_end_tyrano_code]

*top

[jump  storage="title_screen.ks"  target="*sf_skip"  cond="sf.startsf==1"  ]
[call  storage="title_sf.ks"  target="*top"  cond=""  ]
*sf_skip

[playbgm  volume="100"  time="2000"  loop="true"  storage="semi.mp3"  fadein="true"  ]
[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[bg  storage="rogo.png"  time="800"  ]
[wait  time="500"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
*back

[tb_clear_images]

[tb_image_show  time="0"  storage="default/title_logo.png"  width="560"  height="240"  x=""  y=""  _clickable_img=""  name="img_15"  ]
[bgmovie  time="0"  volume="100"  loop="true"  storage="title_bg.mp4"  ]
[bg  time="500"  method="crossfade"  storage="title2_bg.png"  cross="true"  ]
[jump  storage="title_screen.ks"  target="*title"  cond="sf.pro_reset=='true'"  ]
*title

[mask_off  time="1200"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;タイトル画像変更ボタン（盗撮CG回収100％で開放）
;sf.Completeが1の場合にボタンが出現
[if exp="sf.Complete==1"]
[button target=*gazouhenkou enterimg=title_gazohenkou_off.png clickimg=title_gazohenkou_off.png x=1060 y=600 graphic=title_gazohenkou_on.png enterse=sistem_starton.mp3 name="title"]
[endif]

;全開放ボタン（いずれかのエンディングを見ている）
;sf.zenkaihouが1の場合にボタンが出現
[if exp="sf.zenkaihou == 1"]
[call target="*zenkaihou_button"]
[endif]

;全開放ボタン（隠しボタンを開放している）
;sf.zenkaihouが1の場合にボタンが出現
[if exp="sf.zenkaihou==2"]
[button target=*zenkaihou enterimg=title_zenkaihou_off.png clickimg=title_zenkaihou_off.png x=1060 y=650 graphic=title_zenkaihou_on.png enterse=sistem_starton.mp3 name="title"]
[endif]

;ボタン表示=======================================
;ニューゲーム
[button target=*start enterimg=title_newgame_on.png clickimg=title_newgame_on.png x=16 y=360 graphic=title_newgame_off.png enterse=sistem_starton.mp3 name="title"]
;ロード
[button target=*load enterimg=title_load_on.png clickimg=title_load_on.png x=16 y=406 graphic=title_load_off.png enterse=sistem_starton.mp3 name="title"]
;CGギャラリー
[button target=*CGGallery enterimg=title_event_on.png clickimg=title_event_on.png x=16 y=452 graphic=title_event_off.png enterse=sistem_starton.mp3 name="title"]
;盗撮CG
[button target=*VoyeurGallery enterimg=title_VoyeurGallery_on.png clickimg=title_VoyeurGallery_on.png x=16 y=498 graphic=title_VoyeurGallery_off.png enterse=sistem_starton.mp3 name="title"]
;イベントリプレイ
[button target=*EventReplay enterimg=title_EVreplay_on.png clickimg=title_EVreplay_on.png x=16 y=544 graphic=title_EVreplay_off.png enterse=sistem_starton.mp3 name="title"]
;Hシーンリプレイ
[button target=*HReplay enterimg=title_Hreplay_on.png clickimg=title_Hreplay_on.png x=16 y=590 graphic=title_Hreplay_off.png enterse=sistem_starton.mp3 name="title"]

[anim name="title" opacity=0 time=0]
[anim name="title" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*start

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[cm  ]
[stop_bgmovie  time="800"  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="name.ks"  target="*top"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="title2_bg.png"  ]
[stop_bgmovie  time="1000"  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="name.ks"  target="*top"  ]
[s  ]
*load

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[cm  ]
[showload]

[bgmovie  time="1000"  volume="100"  loop="true"  storage="title_bg.mp4"  ]
[playbgm  volume="100"  time="2000"  loop="true"  storage="semi.mp3"  fadein="true"  ]
[jump  target="*title"  storage=""  ]
[s  ]
*CGGallery

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[tb_keyconfig  flag="1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[jump  storage="CG_EVCG.ks"  target=""  ]
[cm  ]
*VoyeurGallery

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_keyconfig  flag="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[call  storage="CG_tou_complete.ks"  target="*top"  ]
[jump  storage="CG_tou_top.ks"  target=""  ]
*EventReplay

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_keyconfig  flag="1"  ]
[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[jump  storage="CG_replay_EV_nagi.ks"  target=""  ]
*HReplay

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_keyconfig  flag="1"  ]
[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[jump  storage="CG_replay_H_nagi.ks"  target=""  ]
*bag

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="title2_bg.png"  ]
[stop_bgmovie  time="1000"  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="a_Debugroom.ks"  target="*top"  ]
*replay_back

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_clear_images]

[tb_ptext_hide  time="0"  ]
[playbgm  volume="100"  time="2000"  loop="true"  storage="semi.mp3"  fadein="true"  ]
[tb_image_show  time="0"  storage="default/title_logo.png"  width="560"  height="240"  x=""  y=""  _clickable_img=""  name="img_98"  ]
[bgmovie  time="0"  volume="100"  loop="true"  storage="title_bg.mp4"  ]
[bg  time="0"  method="crossfade"  storage="title2_bg.png"  cross="true"  ]
[jump  storage="title_screen.ks"  target="*title"  ]
*gazouhenkou

[tb_keyconfig  flag="1"  ]
[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[bg  time="0"  method="fadeIn"  storage="event/Congratulations!.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="title_screen.ks"  target="*title"  ]
*zenkaihou

[tb_keyconfig  flag="1"  ]
[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_clear_images]

[stopbgm  time="1000"  fadeout="true"  ]
[stop_bgmovie  time="200"  ]
[bg  time="0"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=4 ]
Shimakaze VN Translation Team 2026.[p]
[_tb_end_text]

[glink  color="btn_05_black"  storage="title_screen.ks"  size="20"  x="416"  y="220"  width="425"  height="60"  text="Mở khóa toàn bộ"  _clickable_img=""  target="*zenkaihou_yes"  ]
[glink  color="btn_05_black"  storage="title_screen.ks"  size="20"  x="416"  y="340"  width="425"  height="60"  text="Quay lại"  _clickable_img=""  target="*zenkaihou_no"  ]
[s  ]
*zenkaihou_yes

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sistem_up.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
Hẹn gặp lại trong những tác phẩm tiếp theo![p]
[_tb_end_text]

[call  storage="title_zenkaihou.ks"  target="*top"  ]
[wait  time="1500"  ]
[jump  storage="title_screen.ks"  target="*top"  ]
*zenkaihou_no

[cm  ]
[jump  storage="title_screen.ks"  target="*top"  ]
*zenkaihou_button

[clickable  storage="title_screen.ks"  x="597"  y="142"  width="190"  height="74"  target="*zenkaihou_button2"  _clickable_img="title_bg.png"  ]
[return  ]
*zenkaihou_button2

[playse  volume="100"  time="1000"  buf="0"  storage="sistem_start.mp3"  ]
[tb_eval  exp="sf.zenkaihou=2"  name="zenkaihou"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="title_screen.ks"  target="*back"  ]
[tb_eval  exp="sf.zenkaihou=1"  name="zenkaihou"  cmd="="  op="t"  val="1"  val_2="undefined"  