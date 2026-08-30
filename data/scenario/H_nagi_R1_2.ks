[_tb_system_call storage=system/_H_nagi_R1_2.ks]

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
[playse storage="nagi/voice_r_nagi_kaisi1.mp3" buf="1"]凪「えっ…い、今するの？　ご飯冷めちゃうよ…？　ご飯よりエッチの気分だった…？」[p]
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
;H_R1_2_凪=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　嗅ぐ
[button target=*1 enterimg=/H/HUI_kagu2.png clickimg=/H/HUI_kagu2_on.png x=1192 y=16 graphic=/H/HUI_kagu2_on.png]

;右２　胸揉み
[button target=*2 enterimg=/H/HUI_munewasidukami.png clickimg=/H/HUI_munewasidukami_on.png x=1104 y=16 graphic=/H/HUI_munewasidukami_on.png name="ui"]

;右３　乳首噛み
[button target=*3 enterimg=/H/HUI_tikubikami.png clickimg=/H/HUI_tikubikami_on.png x=1016 y=16 graphic=/H/HUI_tikubikami_on.png name="ui"]

;右４　スパンキング（両胸叩き）
[button target=*4 enterimg=/H/HUI_munetataki2.png clickimg=/H/HUI_munetataki2_on.png x=928 y=16 graphic=/H/HUI_munetataki2_on.png name="ui"]

;右5　膣舐め
[button target=*5 enterimg=/H/HUI_tituname.png clickimg=/H/HUI_tituname_on.png x=840 y=16 graphic=/H/HUI_tituname_on.png name="ui"]

;右6　Gスポ
[button target=*6 enterimg=/H/HUI_Gsupo.png clickimg=/H/HUI_Gsupo_on.png x=752 y=16 graphic=/H/HUI_Gsupo_on.png name="ui"]

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
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_07_04.gif"  ]
[tb_start_tyrano_code]
;嗅ぐループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_kagu_hit"]

[elsif exp="f.H_kagu == 0"]
[call storage=H_serihu_nagi.ks target="*R1_2_kagu1"]

[elsif exp="f.H_kagu == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_kagu2"]

[elsif exp="f.H_kagu == 2"]
[call storage=H_serihu_nagi.ks target="*R1_2_kagu3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_02_02.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_munemomi_hit"]

[elsif exp="f.H_munemomi == 0"]
[call storage=H_serihu_nagi.ks target="*R1_2_munemomi1"]

[elsif exp="f.H_munemomi == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_munemomi2"]

[elsif exp="f.H_munemomi == 2"]
[call storage=H_serihu_nagi.ks target="*R1_2_munemomi3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*3

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_03_04.gif"  ]
[tb_start_tyrano_code]
;乳首噛み_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tikubikami_hit"]

[elsif exp="f.H_tikubikami == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tikubikami1"]

[elsif exp="f.H_tikubikami == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tikubikami2"]

[elsif exp="f.H_tikubikami == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tikubikami3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*4

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="binta.mp3"  loop="false"  ]
[tb_start_tyrano_code]
;叩く（notloop）
[tb_image_show  time="1000"  storage="default/H/HR01_01_09_02.gif"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;尻叩き_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_supankingu_hit"]

[elsif exp="f.H_supankingu == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_2_supankingu1"]

[elsif exp="f.H_supankingu == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_2_supankingu2"]

[elsif exp="f.H_supankingu == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_2_supankingu3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_00_00.gif"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*5

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_05_04.gif"  ]
[tb_start_tyrano_code]
;膣舐めでループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tituname_hit"]

[elsif exp="f.H_tituname == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tituname1"]

[elsif exp="f.H_tituname == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tituname2"]

[elsif exp="f.H_tituname == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_2_tituname3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*6

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman2.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_04_03.gif"  ]
[tb_start_tyrano_code]
;Gスポループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_Gsupo_hit"]

[elsif exp="f.H_Gsupo == 0"]
[call storage=H_serihu_nagi.ks target="*R1_2_Gsupo1"]

[elsif exp="f.H_Gsupo == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_Gsupo2"]

[elsif exp="f.H_Gsupo == 2"]
[call storage=H_serihu_nagi.ks target="*R1_2_Gsupo3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_01_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_nagi.ks target="*R1_2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_nagi.ks target="*R1_2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_nagi.ks target="*R1_2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_nagi+=1"  name="Hresult_kansatu_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_nagi_R1_2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「奥まで挿れるから、そのまま動かないように。できる？」[p]
[playse storage="nagi/voice_r1_2_nagi_sou1.mp3" buf="1"]凪「できる…♡　だから挿れて…奥までほしいのっ♡」[p]
[舜]「あーあー、おまんこパックリ開いて…挿れてもらう準備万端だな。挿れるからな…んんっ！」[p]
[playse storage="nagi/voice_r1_2_nagi_sou2.mp3" buf="1"]凪「あぁぁぁっ♡　くっ…んんっ♡　はぁ、ああっ…奥まで一気に…きたぁ♡」[p]
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

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_r_nagi_pis2.mp3"  loop="true"  ]
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
[call storage=H_serihu_nagi.ks target="*R1_2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_nagi.ks target="*R1_2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_r_nagi_pis3.mp3"  loop="true"  ]
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
[call storage=H_serihu_nagi.ks target="*R1_2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_nagi.ks target="*R1_2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_nagi.ks target="*R1_2_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_nagi_R1_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_nagi_R1_2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「あ～、もう出る…！　どうせこのあとシャワー浴びるなら…ぶっかけてもいいんだよな？」[p]
凪「いいです♡　かけて…体中[舜]ちゃんの匂いにしてください…♡」[p]
凪「全身…[舜]ちゃんにマーキングされたいの…♡　好きなところに思いっきりかけて…♡」[p]
[舜]「それなら…遠慮なく思いっきりぶっかけてやる…！　あぁ、出る…！　イク…イクイクっ！」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁっ♡　はぁ、あっ…♡　すごい…顔まで飛んじゃった♡」[p]
凪「頭の芯まで…[舜]ちゃんのオスの匂い響くっ…♡　すっごく濃厚…♡」[p]
凪「はぁ、はっ…これで…私の匂いも上書き出ちゃったかな♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_R1_2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んぐぅぅぅっ♡　あぁぁっ♡　すごい…精子まみれになっちゃったぁ♡」[p]
凪「全身ヌルヌルだよ…♡　あぁ…おっぱいも顔も[舜]ちゃんの匂いになるかなぁ♡」[p]
凪「肌に塗り込んで…もっと[舜]ちゃんの匂いつけちゃいたいなぁ♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_R1_2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
凪「んぅぅっ♡　はっ、あぁぁぁっ♡　中でビクビクって…それっ、だめぇ♡」[p]
[舜]「くっ…んんっ！　締めすぎだろ…はぁ、はぁっ…中も精子で洗ってやらなきゃなぁ！」[p]
凪「出して…１番奥で…射精してほしいのっ♡」[p]
[舜]「出してください、だろっ！」[p]
凪「ご、ごめんなさいっ♡　出してくださいっ♡　私の中で…ドクドクっていっぱい出してくださいぃ♡」[p]
[舜]「しょうがないな…！　１番奥で思いっきり出してやるから受け取れよ…！」[p]
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

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[jump  storage="H_nagi_R1_2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ひぅぅぅっ♡　あっ、あぁぁぁっ♡　中に出てる…♡　いっぱいになっちゃってる♡」[p]
[舜]「種付けしてくださいって体勢だったから、出しやすかったわ…」[p]
凪「んんっ…はぁ、あぁ♡　熱い…♡　精子でタプタプになっちゃった…♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_nagi+=1"  name="Hresult_nakadasi_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_R1_2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_01_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁぁっ♡　すごいぃっ♡　お、奥で出てるっ…♡　溢れちゃう♡」[p]
[舜]「あーあ、余計にねっとりホカホカになってる…でもすぐ洗うなよ？　しばらくそのままな」[p]
凪「わかりました…♡　このまま、[舜]ちゃんの精子…大事にしまっておきます♡」[p]
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
[tb_replay  id="nagi_HK1_2"  ]
[call  storage="H_kaihaturesult_nagi.ks"  target="*top"  ]
[jump  storage="EV_nagi_R.ks"  target="*EV1_back"  ]
