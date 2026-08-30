
[_tb_system_call storage=system/_H_nagi_R1.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="BGM.ks"  target="*love_R"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[jump  storage="H_nagi_R1_2.ks"  target="*top"  cond="f.Hresult_kaihatuLV0_nagi>999"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_00_00.gif"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.H_zettyou_kaisuu=0"  name="H_zettyou_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_koudoukaisu=0"  name="H_koudoukaisu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_sounyu=0"  name="H_sounyu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;ベース
[image layer="2" x="516" y="0" storage="default/HUI_Kaihatu_base.png" time="0"  name="base" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_kaisi1.mp3" buf="1"]Nagi「Hả... l-làm bây giờ luôn sao? Cơm nguội mất đấy...? Hóa ra anh muốn làm tình hơn là ăn cơm à...?」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_凪=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 "]
[call storage="H_nagi_gauge.ks" target=*voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 "]
[call storage="H_nagi_gauge.ks" target=*voice_R_2]

;■普通
[else]
[call storage="H_nagi_gauge.ks" target=*voice_R_1]
[endif]
[_tb_end_tyrano_code]

[call  storage="H_nagi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_R1_凪=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　嗅ぐ
[button target=*1 enterimg=/H/HUI_kagu.png clickimg=/H/HUI_kagu_on.png x=1192 y=16 graphic=/H/HUI_kagu_on.png]

;右２　胸揉み
[button target=*2 enterimg=/H/HUI_munemomi0.png clickimg=/H/HUI_munemomi0_on.png x=1104 y=16 graphic=/H/HUI_munemomi0_on.png name="ui"]

;右３　乳首舐め
[button target=*3 enterimg=/H/HUI_tikubiname.png clickimg=/H/HUI_tikubiname_on.png x=1016 y=16 graphic=/H/HUI_tikubiname_on.png name="ui"]

;右４　スパンキング（尻叩き）
[button target=*4 enterimg=/H/HUI_siritataki.png clickimg=/H/HUI_siritataki_on.png x=928 y=16 graphic=/H/HUI_siritataki_on.png name="ui"]

;右5　クンニ
[button target=*5 enterimg=/H/HUI_kunni.png clickimg=/H/HUI_kunni_on.png x=840 y=16 graphic=/H/HUI_kunni_on.png name="ui"]

;右6　手マン
[button target=*6 enterimg=/H/HUI_teman.png clickimg=/H/HUI_teman_on.png x=752 y=16 graphic=/H/HUI_teman_on.png name="ui"]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui"]

;■挿入
[if exp="f.H_koudoukaisu >= 0"]
[button target=*sounyu enterimg=/H/HUI_sonyu_off.png clickimg=/H/HUI_sonyu_on.png x=1184 y=416 graphic=/H/HUI_sonyu_on.png name="ui"]
[endif]

;■ボタン切り替え（低）常に開放
[if exp="f.Hresult_kaihatuLV0_nagi >= 0 "]
[button target=*kirikae_low enterimg=/H/HUI_Kaihatu_Low_off.png clickimg=/H/HUI_Kaihatu_Low_on.png x=515 y=0 graphic=/H/HUI_Kaihatu_Low_on.png name="ui"]
[endif]

;■ボタン切り替え（高）開発度が高い状態で開放
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 "]
[button target=*kirikae_high enterimg=/H/HUI_Kaihatu_Hi_off.png clickimg=/H/HUI_Kaihatu_Hi_on.png x=575 y=0 graphic=/H/HUI_Kaihatu_Hi_on.png name="ui"]
[endif]

;===============================================
[anim name="ui" opacity=0 time=0]
[anim name="ui" opacity=255 time=500]









[_tb_end_tyrano_code]

[call  storage="H_kandocheck.ks"  target="*top_6"  ]
[s  ]
[tb_start_tyrano_code]
*kirikae_low
;ボタン切り替え（低）
[jump storage="H_nagi_R1.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_nagi_R1_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_07_03.gif"  ]
[tb_start_tyrano_code]
;嗅ぐループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_kagu_hit"]

[elsif exp="f.H_kagu == 0"]
[call storage=H_serihu_nagi.ks target="*R1_kagu1"]

[elsif exp="f.H_kagu == 1"]
[call storage=H_serihu_nagi.ks target="*R1_kagu2"]

[elsif exp="f.H_kagu == 2"]
[call storage=H_serihu_nagi.ks target="*R1_kagu3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_02_01.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_munemomi_hit"]

[elsif exp="f.H_munemomi == 0"]
[call storage=H_serihu_nagi.ks target="*R1_munemomi1"]

[elsif exp="f.H_munemomi == 1"]
[call storage=H_serihu_nagi.ks target="*R1_munemomi2"]

[elsif exp="f.H_munemomi == 2"]
[call storage=H_serihu_nagi.ks target="*R1_munemomi3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*3

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_03_03.gif"  ]
[tb_start_tyrano_code]
;乳首舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_tikubiname_hit"]

[elsif exp="f.H_tikubiname == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_tikubiname1"]

[elsif exp="f.H_tikubiname == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_tikubiname2"]

[elsif exp="f.H_tikubiname == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_tikubiname3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*4

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="binta.mp3"  loop="false"  ]
[tb_start_tyrano_code]
;叩く（notloop）
[tb_image_show  time="1000"  storage="default/H/HR01_01_09_04.gif"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;尻叩き_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_supankingu_hit"]

[elsif exp="f.H_supankingu == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_supankingu1"]

[elsif exp="f.H_supankingu == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_supankingu2"]

[elsif exp="f.H_supankingu == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_supankingu3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_00_00.gif"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*5

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_05_03.gif"  ]
[tb_start_tyrano_code]
;クンニでループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_kunni_hit"]

[elsif exp="f.H_kunni == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_kunni1"]

[elsif exp="f.H_kunni == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_kunni2"]

[elsif exp="f.H_kunni == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_kunni3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*6

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman2.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_04_01.gif"  ]
[tb_start_tyrano_code]
;手マンループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_teman_hit"]

[elsif exp="f.H_teman == 0"]
[call storage=H_serihu_nagi.ks target="*R1_teman1"]

[elsif exp="f.H_teman == 1"]
[call storage=H_serihu_nagi.ks target="*R1_teman2"]

[elsif exp="f.H_teman == 2"]
[call storage=H_serihu_nagi.ks target="*R1_teman3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_nagi+=1"  name="Hresult_kansatu_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_nagi_R1.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Anh sẽ đâm vào cái lỗ đang nhầy nhụa này nhé. Nhớ giữ chặt chân đấy...」[p]
[playse storage="nagi/voice_r1_1_nagi_sou1.mp3" buf="1"]Nagi「V-Vâng...♡ Thế này được chưa anh?」[p]
[舜]「Với tư thế đáng xấu hổ này, em sẽ vòi vĩnh cho anh nghe đúng không?」[p]
[playse storage="nagi/voice_r1_1_nagi_sou2.mp3" buf="1"]Nagi「Em biết rồi...♡ Xin hãy cắm con cu của anh Shun vào tận sâu bên trong em đi...♡」[p]
[舜]「Hự... ưm... a, khít hơn mọi khi rồi này...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[call  storage="H_nagi_gazou.ks"  target="*R1_yukkuri_cam1"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_凪=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 "]
[call storage="H_nagi_gauge.ks" target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 "]
[call storage="H_nagi_gauge.ks" target=*pis_voice_R_2]

;■普通
[else]
[call storage="H_nagi_gauge.ks" target=*pis_voice_R_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_nagi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_R1_凪　挿入=========================================

;cam1ボタン
[button target=*cam1 enterimg=/H/HUI_camera1_off.png clickimg=/H/HUI_camera1_on.png x=1120 y=16 graphic=/H/HUI_camera1_on.png name="ui"]
;cam2ボタン
[button target=*cam2 enterimg=/H/HUI_camera2_off.png clickimg=/H/HUI_camera2_on.png x=1200 y=16 graphic=/H/HUI_camera2_on.png name="ui"]

;射精ボタン
[if exp="f.H_koudoukaisu <= 15"]
[button target=*syasei enterimg=/H/HUI_otokzetcho1_off.png clickimg=/H/HUI_otokzetcho1_on.png x=1104 y=386 graphic=/H/HUI_otokzetcho1_on.png name="ui"]
[else]
[button target=*syasei enterimg=/H/HUI_otokzetcho2_off.png clickimg=/H/HUI_otokzetcho2_on.png x=1104 y=386 graphic=/H/HUI_otokzetcho2_on.png name="ui"]
[endif]

;ピストン（ゆっくり）
[button target=*pituton_yukkuri enterimg=/H/HUI_pistonyukkuri_off.png clickimg=/H/HUI_pistonyukkuri_on.png x=1048 y=328 graphic=/H/HUI_pistonyukkuri_on.png name="ui"]

;ピストン（激しく）
[button target=*pituton_hagesiku enterimg=/H/HUI_pistonhagesiku_off.png clickimg=/H/HUI_pistonhagesiku_on.png x=1168 y=328 graphic=/H/HUI_pistonhagesiku_on.png name="ui"]

;抜く
[if exp="f.H_koudoukaisu >= 0"]
[button target=*nuku enterimg=/H/HUI_nuku_off.png clickimg=/H/HUI_nuku_on.png x=1176 y=392 graphic=/H/HUI_nuku_on.png name="ui"]
[endif]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui" name="ui"]

;=======================================================
[anim name="ui" opacity=0 time=0]
[anim name="ui" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
[tb_start_tyrano_code]
*cam1

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_nagi_cam.ks" target=*R1_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_nagi_cam.ks" target=*R1_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_nagi_cam.ks" target=*R1_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_nagi_cam.ks" target=*R1_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_r_nagi_pis1.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_nagi_gazou.ks" target="*R1_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_nagi_gazou.ks" target="*R1_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_r_nagi_pis2.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_nagi_gazou.ks" target="*R1_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_nagi_gazou.ks" target="*R1_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_nagi.ks target="*R1_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1.ks"  target="*sounyu_top"  ]
*syasei

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_start_tyrano_code]
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
;ピストン（中に出す）
[button target=*syasei_nakadasi enterimg=/H/HUI_nakadasi_off.png clickimg=/H/HUI_nakadasi_on.png x=1040 y=328 graphic=/H/HUI_nakadasi_on.png]

;ピストン（外に出す）
[button target=*syasei_karada enterimg=/H/HUI_sotodasi_off.png clickimg=/H/HUI_sotodasi_on.png x=1168 y=328 graphic=/H/HUI_sotodasi_on.png]

;戻る
[button target=*modoru enterimg=/H/HUI_modoru0_off.png clickimg=/H/HUI_modoru0_on.png x=1104 y=384 graphic=/H/HUI_modoru0_on.png]

[_tb_end_tyrano_code]

[s  ]
*modoru

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[cm  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="H_nagi_R1.ks"  target="*sounyu_top"  ]
*nuku

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[freeimage layer="0" time="0"]
;ポイントを消す
[anim name="point" opacity=0 time=0]
;抜く　ベース
[image layer="2" x="516" y="0" storage="default/HUI_Kaihatu_base.png" time="0"  name="base" ]
[_tb_end_tyrano_code]

[cm  ]
[stop_bgmovie  time="0"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_00_00.gif"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_nagi_R1.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
Nagi「Ưm...! Hà, a, con cu của anh Shun, đang nảy lên bên trong này...♡」[p]
[舜]「Anh sẽ bắn ra ngoài... lên cả mặt và ngực em luôn...!」[p]
Nagi「Ưm♡ Xin anh đấy...♡ Hãy làm bẩn em đi...♡」[p]
[舜]「Thì em cũng đã bẩn vì mồ hôi từ lâu rồi mà...!? Anh chỉ làm cho nhầy nhụa hơn thôi...! A~ ra rồi!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_nagi_R1.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Aaaa♡ Hà, hà, tinh dịch của anh Shun... bắn lên người em rồi♡」[p]
Nagi「Phù... ưm... cho đến lúc đi tắm... em muốn anh đợi thêm một chút nữa.」[p]
Nagi「Em muốn được cảm nhận... mùi hương của anh Shun nhiều hơn nữa...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_R1.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ngaa♡ A... a...♡ Đồ nóng hổi... bắn đầy lên người em rồi...♡」[p]
Nagi「Hà, a... Toàn thân em, cứ như bị đóng dấu khẳng định là đồ của anh Shun vậy...♡」[p]
Nagi「Mùi nồng quá...♡ Anh đang cố gắng át đi mùi mồ hôi của em đúng không... hà, mùi dâm đãng quá đi♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_R1.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
[舜]「A~... Tại mùi hương dâm đãng này mà anh sắp ra mất rồi đây này...!」[p]
Nagi「Hà, a... em xin lỗi... vì mùi hôi... a-anh cứ bắn vào trong đi... tha lỗi cho em nhé♡」[p]
[舜]「Đương nhiên rồi... Anh sẽ bắn hết vào trong cho em...!」[p]
Nagi「Vâng♡ Xin anh đấy♡ Hãy bắn mạnh vào trong em đi...♡」[p]
[舜]「A~, ra rồi...! Bắn bắn bắn đây!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HR01_01_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HR01_01_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[jump  storage="H_nagi_R1.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm♡ A, bắn ra rồi... a, đồ nóng hổi... đang ọc ọc tuôn ra này...」[p]
[舜]「Đang bị bắn ngập bên trong mà người vẫn bốc mùi dâm đãng thế này... Em đang động dục à?」[p]
Nagi「Em xin lỗi...♡ Em xin lỗi... Sướng quá nên em không tự kiểm soát được mình nữa rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_nagi+=1"  name="Hresult_nakadasi_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_R1.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Nagi「Ưm! Hự... hà♡ Lượng tinh dịch nhiều quá... bắn ra rồi... a, aaaa♡」[p]
Nagi「Hà, hà, với tư thế này... tinh dịch sẽ đâm một mạch vào tận sâu bên trong mất... ưm♡」[p]
[舜]「Em phải dùng cô bé ừng ực uống cạn hết đi chứ?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_nagi+=1"  name="Hresult_nakadasi_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_eval  exp="sf.Hresult_sex_nagi+=1"  name="Hresult_sex_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_HK1"  ]
[call  storage="H_kaihaturesult_nagi.ks"  target="*top"  ]
[jump  storage="EV_nagi_R.ks"  target="*EV1_back"  