

[_tb_system_call storage=system/_title_kaisou.ks]

*end

[tb_eval  exp="f.kaisou=0"  name="kaisou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=0"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_rinko=0"  name="Hresult_kaihatuLV0_rinko"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_tubomi=0"  name="Hresult_kaihatuLV0_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;音声ストップ
[stopse buf=0]
[stopse buf=1]
[stopse buf=2]
[stopse buf=3]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[stopse  time="1000"  buf="5"  fadeout="true"  ]
[tb_replay  id="nagi_H0"  ]
[tb_replay  id="nagi_HJ1"  ]
[tb_replay  id="nagi_HJ1_1"  ]
[tb_replay  id="nagi_HJ2"  ]
[tb_replay  id="nagi_HJ2_2"  ]
[tb_replay  id="nagi_HJ3"  ]
[tb_replay  id="nagi_HJ3_2"  ]
[tb_replay  id="nagi_HK1"  ]
[tb_replay  id="nagi_HK1_2"  ]
[tb_replay  id="nagi_HK2"  ]
[tb_replay  id="nagi_HK2_2"  ]
[tb_replay  id="nagi_HK3"  ]
[tb_replay  id="nagi_HK3_2"  ]
[tb_replay  id="nagi_item_suimin"  ]
[tb_replay  id="nagi_item_biyaku1"  ]
[tb_replay  id="nagi_item_biyaku2"  ]
[tb_replay  id="nagi_item_biyaku3"  ]
[tb_replay  id="nagi_item_supiritasu"  ]
[tb_replay  id="rinko_H0"  ]
[tb_replay  id="rinko_HJ1"  ]
[tb_replay  id="rinko_HJ1_2"  ]
[tb_replay  id="rinko_HJ2"  ]
[tb_replay  id="rinko_HJ2_2"  ]
[tb_replay  id="rinko_HR1"  ]
[tb_replay  id="rinko_HR1_2"  ]
[tb_replay  id="rinko_HR2"  ]
[tb_replay  id="rinko_HR2_2"  ]
[tb_replay  id="rinko_item_supiritasu"  ]
[tb_replay  id="rinkotubomi_3P"  ]
[tb_replay  id="tubomi_H0"  ]
[tb_replay  id="tubomi_HJ1"  ]
[tb_replay  id="tubomi_HJ1_2"  ]
[tb_replay  id="tubomi_HJ2"  ]
[tb_replay  id="tubomi_HJ2_2"  ]
[tb_replay  id="tubomi_HR1"  ]
[tb_replay  id="tubomi_HR1_2"  ]
[tb_replay  id="tubomi_HR2"  ]
[tb_replay  id="tubomi_HR2_2"  ]
[tb_replay  id="tubomi_item_supiritasu"  ]
[tb_replay  id="nagi_kokuhaku"  ]
[tb_replay  id="nagi_TrueEND"  ]
[tb_replay  id="nagi_jyunaiEND"  ]
[tb_replay  id="nagi_hukusyuEND"  ]
[tb_replay  id="nagi_kyouaiEND"  ]
[tb_replay  id="nagi_doreiEND"  ]
[tb_replay  id="rinko_kokuhaku"  ]
[tb_replay  id="rinko_jyunaiEND"  ]
[tb_replay  id="rinko_kyouaiEND"  ]
[tb_replay  id="rinkotubomi_doreiEND"  ]
[tb_replay  id="tubomi_kokuhaku"  ]
[tb_replay  id="tubomi_jyunaiEND"  ]
[tb_replay  id="tubomi_kyouaiEND"  ]
[tb_replay  id="haremuEND"  ]
*NameChange_END

[tb_eval  exp="f.NameChange_END=1"  name="NameChange_END"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_clear_images]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="name.ks"  target="*top"  ]
*NameChange_H

[tb_eval  exp="f.NameChange_H=1"  name="NameChange_H"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_clear_images]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="name.ks"  target="*top"  ]
*J_base

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_show_message_window  ]
[call  storage="BGM.ks"  target="*love1"  ]
[return  ]
*R_base

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_show_message_window  ]
[call  storage="BGM.ks"  target="*love_R"  ]
[return  ]
*nagiH0

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_hajimete.ks"  target="*top"  ]
*nagi_J1

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_J1.ks"  target="*top"  ]
*nagi_J1_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=1000"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top"  ]
*nagi_J2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_J2.ks"  target="*top"  ]
*nagi_J2_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=1000"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top"  ]
*nagi_J3

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_J3.ks"  target="*top"  ]
*nagi_J3_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=1000"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_nagi_J3_2.ks"  target="*top"  ]
*nagi_R1

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_nagi_R1.ks"  target="*top"  ]
*nagi_R1_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=1000"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top"  ]
*nagi_R2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_nagi_R2.ks"  target="*top"  ]
*nagi_R2_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=1000"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_nagi_R2_2.ks"  target="*top"  ]
*nagi_R3

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_nagi_R3.ks"  target="*top"  ]
*nagi_R3_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_nagi=1000"  name="Hresult_kaihatuLV0_nagi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_nagi_R3_2.ks"  target="*top"  ]
*nagi_suimin

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kintyou2.mp3"  ]
[jump  storage="H_suimin1.ks"  target="*top"  ]
*nagi_item_ona

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_show_message_window  ]
[jump  storage="EV_item_biyaku.ks"  target="*top"  ]
*nagi_item_onatuuwa

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_show_message_window  ]
[jump  storage="EV_item_biyaku2.ks"  target="*top"  ]
*nagi_item_onabyouin

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_show_message_window  ]
[jump  storage="EV_item_biyaku3.ks"  target="*top"  ]
*nagi_item_supiritasu

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_item_Spirytus_nagi.ks"  target="*yes"  ]
*rinkoH0

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_rinko_hajimete.ks"  target="*top"  ]
*rinko_J1

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_rinko_J1.ks"  target="*top"  ]
*rinko_J1_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_rinko=1000"  name="Hresult_kaihatuLV0_rinko"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top"  ]
*rinko_J2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_rinko_J2.ks"  target="*top"  ]
*rinko_J2_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_rinko=1000"  name="Hresult_kaihatuLV0_rinko"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top"  ]
*rinko_R1

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_rinko_R1.ks"  target="*top"  ]
*rinko_R1_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_rinko=1000"  name="Hresult_kaihatuLV0_rinko"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_rinko_R1_2.ks"  target="*top"  ]
*rinko_R2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_rinko_R2.ks"  target="*top"  ]
*rinko_R2_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_rinko=1000"  name="Hresult_kaihatuLV0_rinko"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_rinko_R2_2.ks"  target="*top"  ]
*rinko_item_supiritasu

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_item_Spirytus_rinko.ks"  target="*yes"  ]
*3P

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P0.ks"  target="*top"  ]
*tubomiH0

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top"  ]
*tubomi_J1

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_tubomi_J1.ks"  target="*top"  ]
*tubomi_J1_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_tubomi=1000"  name="Hresult_kaihatuLV0_tubomi"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_tubomi_J1_2.ks"  target="*top"  ]
*tubomi_J2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_tubomi_J2.ks"  target="*top"  ]
*tubomi_J2_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_tubomi=1000"  name="Hresult_kaihatuLV0_tubomi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*J_base"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top"  ]
*tubomi_R1

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_tubomi_R1.ks"  target="*top"  ]
*tubomi_R1_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_tubomi=1000"  name="Hresult_kaihatuLV0_tubomi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_tubomi_R1_2.ks"  target="*top"  ]
*tubomi_R2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top"  ]
*tubomi_R2_2

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kaihatuLV0_tubomi=1000"  name="Hresult_kaihatuLV0_tubomi"  cmd="="  op="t"  val="1000"  ]
[call  storage="title_kaisou.ks"  target="*R_base"  ]
[jump  storage="H_tubomi_R2_2.ks"  target="*top"  ]
*tubomi_item_supiritasu

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_item_Spirytus_tubomi.ks"  target="*yes"  ]
*kaisou_nagi_kokuhaku

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_kokuhaku_nagi.ks"  target="*top"  ]
*kaisou_nagi_TrueEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_show_message_window  ]
[jump  storage="EV_TrueEND_nagi.ks"  target="*top"  ]
*kaisou_nagi_jyunaiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_jyunaiEND_nagi.ks"  target="*top"  ]
*kaisou_nagi_hukusyuEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_hukusyuEND_nagi.ks"  target="*top"  ]
*kaisou_nagi_kyouaiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_kyouaiEND_nagi.ks"  target="*top"  ]
*kaisou_nagi_doreiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_nikubenkiEND_nagi.ks"  target="*top"  ]
*kaisou_rinko_kokuhaku

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_kokuhaku_rinko.ks"  target="*top"  ]
*kaisou_rinko_jyunaiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_show_message_window  ]
[jump  storage="EV_jyunaiEND_rinko.ks"  target="*top"  ]
*kaisou_rinko_kyouaiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_kyouaiEND_rinko.ks"  target="*top"  ]
*kaisou_rinkotubomi_doreiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_nikubenkiEND_rinko_tubomi.ks"  target="*top"  ]
*kaisou_tubomi_kokuhaku

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_kokuhaku_tubomi.ks"  target="*top"  ]
*kaisou_tubomi_jyunaiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_jyunaiEND_tubomi.ks"  target="*top"  ]
*kaisou_tubomi_kyouaiEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_kyouaiEND_tubomi.ks"  target="*top"  ]
*haremuEND

[tb_replay_start  ]
[tb_eval  exp="f.kaisou=1"  name="kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[jump  storage="EV_haremEND.ks"  target="*top" ]
