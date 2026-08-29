]
[_tb_system_call storage=system/_H_nagi_J1_2.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_01_00_00.gif"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.H_zettyou_kaisuu=0"  name="H_zettyou_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
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
[anim name="base" opacity=255 time=500]
[wait time="500"]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_nagi_kaisi2.mp3" buf="1"]凪「は～い、診察室にどうぞ～…なんて♡　どう？　興奮しちゃった？　好きにしていいよ♡」[p]
[_tb_end_text]

*top2

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_clear_images]

[call  storage="H_nagi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_J1_2_凪=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png name="ui"]

;右１　Dキス
[button target=*Dkiss enterimg=/H/HUI_Dkiss.png clickimg=/H/HUI_Dkiss_on.png x=1192 y=16 graphic=/H/HUI_Dkiss_on.png name="ui"]

;右２　パイズリ
[button target=*paizuri enterimg=/H/HUI_paizuri.png clickimg=/H/HUI_paizuri_on.png x=1104 y=16 graphic=/H/HUI_paizuri_on.png name="ui"]

;右３　フェラ
[button target=*fera enterimg=/H/HUI_fera.png clickimg=/H/HUI_fera_on.png x=1016 y=16 graphic=/H/HUI_fera_on.png name="ui"]

;右４　膣舐め
[button target=*tituname enterimg=/H/HUI_tituname.png clickimg=/H/HUI_tituname_on.png x=928 y=16 graphic=/H/HUI_tituname_on.png name="ui"]

;右5　手マン
[button target=*teman enterimg=/H/HUI_teman.png clickimg=/H/HUI_teman_on.png x=840 y=16 graphic=/H/HUI_teman_on.png name="ui"]

;右6　股ズリ
[button target=*matazuri enterimg=/H/HUI_sumata.png clickimg=/H/HUI_sumata_on.png x=752 y=16 graphic=/H/HUI_sumata_on.png name="ui"]

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
[jump storage="H_nagi_J1.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_nagi_J1_2.ks" target=*top2]

[_tb_end_tyrano_code]

*fera

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_fera.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_50_01.gif"  ]
[tb_start_tyrano_code]
;フェラ_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1"]
[call storage=H_serihu_nagi.ks target="*J1_2_fera_hit"]

[elsif exp="f.H_fera == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_fera1"]

[elsif exp="f.H_fera == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_fera2"]

[elsif exp="f.H_fera == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_fera3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*tituname

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman2.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_05_04.gif"  ]
[tb_start_tyrano_code]
;膣舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_nagi.ks target="*J1_2_tituname_hit"]

[elsif exp="f.H_nameru == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_tituname1"]

[elsif exp="f.H_nameru == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_tituname2"]

[elsif exp="f.H_nameru == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_tituname3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*Dkiss

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_kiss2.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_01_02.gif"  ]
[tb_start_tyrano_code]
;Dキス_ループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_nagi.ks target="*J1_2_Dkiss_hit"]

[elsif exp="f.H_kiss == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_Dkiss1"]

[elsif exp="f.H_kiss == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_Dkiss2"]

[elsif exp="f.H_kiss == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_Dkiss3"]

[endif]



[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*paizuri

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_60_01.gif"  ]
[tb_start_tyrano_code]
;パイズリ_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_paizuri_hit"]

[elsif exp="f.H_paizuri == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_paizuri1"]

[elsif exp="f.H_paizuri == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_paizuri2"]

[elsif exp="f.H_paizuri == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_paizuri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*teman

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_04_02.gif"  ]
[tb_start_tyrano_code]
;手マン_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_teman_hit"]

[elsif exp="f.H_teman == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_teman1"]

[elsif exp="f.H_teman == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_teman2"]

[elsif exp="f.H_teman == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_teman3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*matazuri

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_10_01.gif"  ]
[tb_start_tyrano_code]
;股ズリループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_matazuri_hit"]

[elsif exp="f.H_matazuri == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_matazuri1"]

[elsif exp="f.H_matazuri == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_matazuri2"]

[elsif exp="f.H_matazuri == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_matazuri3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_01_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_nagi+=1"  name="Hresult_kansatu_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_nagi_J1_2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「俺、そろそろ…」[p]
[playse storage="nagi/voice_j1_2_nagi_sou1.mp3" buf="1"]凪「頂戴？　もうパンパンだもんね…早く中に挿れて…？　おっきいお注射、してくれるんでしょ？」[p]
[舜]「ん…注射しようか。ほら、奥まで…くっ…」[p]
[playse storage="nagi/voice_j1_2_nagi_sou2.mp3" buf="1"]凪「あっ…きた、きたきたっ…♡　奥まで入ってきてるっ…」[p]
[playse storage="nagi/voice_j1_2_nagi_sou3.mp3" buf="1"]凪「根元まで…全部入っちゃったぁ…はぁ、はっ、おっきい…んんっ、お注射気持ちいい♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[call  storage="H_nagi_gazou.ks"  target="*J1_yukkuri_cam1"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_凪=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 "]
[call storage="H_nagi_gauge.ks" target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 "]
[call storage="H_nagi_gauge.ks" target=*pis_voice_J_2]

;■普通
[else]
[call storage="H_nagi_gauge.ks" target=*pis_voice_J_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_nagi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_J1_凪　挿入=========================================

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
[call storage="H_nagi_cam.ks" target=*J1_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_nagi_cam.ks" target=*J1_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_nagi_cam.ks" target=*J1_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_nagi_cam.ks" target=*J1_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_j_nagi_pis2_take3.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_nagi_gazou.ks" target="*J1_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_nagi_gazou.ks" target="*J1_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_j_nagi_pis3.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_nagi_gazou.ks" target="*J1_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_nagi_gazou.ks" target="*J1_hagesiku_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2 "]
[call storage=H_serihu_nagi.ks target="*J1_2_pisuton_hagesiku3"]

[endif]



[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_nagi_J1_2.ks"  target="*sounyu_top"  ]
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
[bg  time="0"  method="crossfade"  storage="H/HJ01_01_00_00.gif"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「看護師さん…体に精子かけてもいいですか…？」[p]
凪「はい…♡　患者さんのご希望なら、喜んで…♡　お世話するのがお仕事なのでっ」[p]
凪「たっぷりかけて…トロットロにしてください…♡」[p]
[舜]「出すよ…あぁ、イクっ、出る出る出るっ…！　あ、あぁぁぁぁっ！」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_01_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁんっ♡　はぁ、はっ…いっぱい出たね…♡　ふふ、出し切れた？」[p]
凪「おちんちん、まだヒクヒクってしてるの？　あったかいタオルで拭いてあげたいな♡」[p]
凪「また精子こみ上げてきちゃったら、その時もお世話してあげるから…ね♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_J1_2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_01_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「きゃっ♡　あぁっ、すごいっ…こんな量…溜めてたの？」[p]
凪「たくさん我慢したの？　だめだよ、あんまり我慢したら体によくないんだから…」[p]
凪「これからは、こまめに出せるようにたくさんお世話するからね♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_J1_2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
[舜]「くっ…出る…どこに出してほしい？」[p]
凪「な、中…！　中に出してほしいの…！　[舜]ちゃんの全部、私の中に注ぎ込んで…♡」[p]
凪「[舜]ちゃんのおちんちん注射して…♡　熱々のお薬注ぎ込んでほしいの♡」[p]
凪「おまんこトロトロにして…準備できてるからぁ♡」[p]
[舜]「エロいおねだりするようになったんだな…わかった…中に出すぞ…！　くっ…！　あぁぁぁっ♡」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HJ01_01_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HJ01_01_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_nagi_J1_2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_01_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あ゛っ♡　あぁぁっ♡　ビクビクしてる…はっ、はぁっ♡　お薬…注ぎ込まれてる♡」[p]
[舜]「もっとエロくなる薬だよ」[p]
凪「あぁぁっ♡　効いてきましたぁ♡　おまんこ、ウズウズしちゃってます…♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_nagi+=1"  name="Hresult_nakadasi_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_J1_2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_01_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「ん゛ん゛っ…ふっ…す、すごい量のお薬でっ…受け止めきれない…んぅぅっ♡」[p]
凪「はぁっ♡　はぁっ♡　溢れちゃう…んんっ♡　お腹の中タプタプになってる…」[p]
凪「このお薬で…赤ちゃんできちゃうかも♡」[p]
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
[tb_replay  id="nagi_HJ1_1"  ]
[call  storage="H_kaihaturesult_nagi.ks"  target="*top"  ]
[jump  storage="EV_nagi_J.ks"  target="*H1_back"  