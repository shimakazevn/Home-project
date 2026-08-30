
[_tb_system_call storage=system/_H_tubomi_R2.ks]

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

[jump  storage="H_tubomi_R2_2.ks"  target="*top"  cond="f.Hresult_kaihatuLV0_tubomi>999"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_00_00.gif"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.H_zettyou_kaisuu=0"  name="H_zettyou_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_koudoukaisu=0"  name="H_koudoukaisu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_sounyu=0"  name="H_sounyu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;ベース
[image layer="2" x="516" y="0" storage="default/HUI_Kaihatu_base.png" time="0"  name="base" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_kaisi2.mp3" buf="2"] Tsubomi「Hôm nay chúng ta đổi tư thế mới nhé?」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_蕾=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call storage="H_tubomi_gauge.ks" target=*voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 "]
[call storage="H_tubomi_gauge.ks" target=*voice_R_2]

;■普通
[else]
[call storage="H_tubomi_gauge.ks" target=*voice_R_1]
[endif]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_clear_images]

[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_R2_蕾=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　キス
[button target=*1 enterimg=/H/HUI_kiss0.png clickimg=/H/HUI_kiss0_on.png x=1192 y=16 graphic=/H/HUI_kiss0_on.png]

;右２　胸揉み
[button target=*2 enterimg=/H/HUI_munemomi0.png clickimg=/H/HUI_munemomi0_on.png x=1104 y=16 graphic=/H/HUI_munemomi0_on.png name="ui"]

;右３　乳首舐め
[button target=*3 enterimg=/H/HUI_tikubiname.png clickimg=/H/HUI_tikubiname_on.png x=1016 y=16 graphic=/H/HUI_tikubiname_on.png name="ui"]

;右４　スパンキング
[button target=*4 enterimg=/H/HUI_hutomomotataki.png clickimg=/H/HUI_hutomomotataki_on.png x=928 y=16 graphic=/H/HUI_hutomomotataki_on.png name="ui"]

;右5　手マン
[button target=*5 enterimg=/H/HUI_teman.png clickimg=/H/HUI_teman_on.png x=840 y=16 graphic=/H/HUI_teman_on.png name="ui"]

;右6　アナル攻め
[button target=*6 enterimg=/H/HUI_anaruseme.png clickimg=/H/HUI_anaruseme_on.png x=752 y=16 graphic=/H/HUI_anaruseme_on.png name="ui"]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui"]

;■挿入
[if exp="f.H_koudoukaisu >= 0"]
[button target=*sounyu enterimg=/H/HUI_sonyu_off.png clickimg=/H/HUI_sonyu_on.png x=1184 y=416 graphic=/H/HUI_sonyu_on.png name="ui"]
[endif]

;■ボタン切り替え（低）常に開放
[if exp="f.Hresult_kaihatuLV0_tubomi >= 0 "]
[button target=*kirikae_low enterimg=/H/HUI_Kaihatu_Low_off.png clickimg=/H/HUI_Kaihatu_Low_on.png x=515 y=0 graphic=/H/HUI_Kaihatu_Low_on.png name="ui"]
[endif]

;■ボタン切り替え（高）開発度が高い状態で開放
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
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
[jump storage="H_tubomi_R2.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_tubomi_R2_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_kiss1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR02_02_01_01.gif"  ]
[tb_start_tyrano_code]
;キスループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_kiss_hit"]

[elsif exp="f.H_kiss == 0"]
[call storage=H_serihu_tubomi.ks target="*R2_kiss1"]

[elsif exp="f.H_kiss == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_kiss2"]

[elsif exp="f.H_kiss == 2"]
[call storage=H_serihu_tubomi.ks target="*R2_kiss3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR02_02_02_01.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_munemomi_hit"]

[elsif exp="f.H_munemomi == 0"]
[call storage=H_serihu_tubomi.ks target="*R2_munemomi1"]

[elsif exp="f.H_munemomi == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_munemomi2"]

[elsif exp="f.H_munemomi == 2"]
[call storage=H_serihu_tubomi.ks target="*R2_munemomi3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*3

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR02_02_03_03.gif"  ]
[tb_start_tyrano_code]
;乳首舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_tubomi.ks target="*R2_tikubiname_hit"]

[elsif exp="f.H_tikubiname == 0 "]
[call storage=H_serihu_tubomi.ks target="*R2_tikubiname1"]

[elsif exp="f.H_tikubiname == 1 "]
[call storage=H_serihu_tubomi.ks target="*R2_tikubiname2"]

[elsif exp="f.H_tikubiname == 2 "]
[call storage=H_serihu_tubomi.ks target="*R2_tikubiname3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*4

[cm  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="binta.mp3"  loop="false"  clear="true"  ]
[tb_start_tyrano_code]
;叩く（notloop）
[tb_image_show  time="1000"  storage="default/H/HR02_02_09_01.gif"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;叩く_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_supankingu_hit"]

[elsif exp="f.H_supankingu == 0 "]
[call storage=H_serihu_tubomi.ks target="*R2_supankingu1"]

[elsif exp="f.H_supankingu == 1 "]
[call storage=H_serihu_tubomi.ks target="*R2_supankingu2"]

[elsif exp="f.H_supankingu == 2 "]
[call storage=H_serihu_tubomi.ks target="*R2_supankingu3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_00_00.gif"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*5

[cm  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR02_02_04_01.gif"  ]
[tb_start_tyrano_code]
;手マン_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_tubomi.ks target="*R2_teman_hit"]

[elsif exp="f.H_teman == 0 "]
[call storage=H_serihu_tubomi.ks target="*R2_teman1"]

[elsif exp="f.H_teman == 1 "]
[call storage=H_serihu_tubomi.ks target="*R2_teman2"]

[elsif exp="f.H_teman == 2 "]
[call storage=H_serihu_tubomi.ks target="*R2_teman3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_tubomi+=1"  name="Hresult_kokanseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*6

[cm  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR02_02_06_06.gif"  ]
[tb_start_tyrano_code]
;アナル攻めループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_anaruseme1_hit"]

[elsif exp="f.H_anaruseme == 0"]
[call storage=H_serihu_tubomi.ks target="*R2_anaruseme1"]

[elsif exp="f.H_anaruseme == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_anaruseme2"]

[elsif exp="f.H_anaruseme == 2"]
[call storage=H_serihu_tubomi.ks target="*R2_anaruseme3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_tubomi+=1"  name="Hresult_kokanseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR02_02_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_tubomi.ks target="*R2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_tubomi.ks target="*R2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_tubomi.ks target="*R2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_tubomi+=1"  name="Hresult_kansatu_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_tubomi_R2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r2_1_tubomi_sou1.mp3" buf="2"] Tsubomi「Tư thế này... sâu hơn bình thường nhiều lắm á...♡」[p]
[舜]「Thử xem nào, nâng mông cao lên một chút」[p]
[playse storage="tubomi/voice_r2_1_tubomi_sou2.mp3" buf="2"] Tsubomi「Thế này được chưa anh...? Ưm... vào rồi kìa...♡」[p]
[playse storage="tubomi/voice_r2_1_tubomi_sou3.mp3" buf="2"] Tsubomi「Á... sâu quá... chạm vào tận cùng luôn rồi...♡」[p]
[舜]「Tư thế từ phía sau này đúng là tuyệt phẩm」[p]
[playse storage="tubomi/voice_r2_1_tubomi_sou4.mp3" buf="2"] Tsubomi「Mỗi lần anh thúc là người em lại giật nảy lên... sướng tê tái luôn á...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[call  storage="H_tubomi_gazou.ks"  target="*R2_yukkuri_cam1"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_蕾=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call storage="H_tubomi_gauge.ks" target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 "]
[call storage="H_tubomi_gauge.ks" target=*pis_voice_R_2]

;■普通
[else]
[call storage="H_tubomi_gauge.ks" target=*pis_voice_R_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_R2_蕾　挿入=========================================

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
[call storage="H_tubomi_cam.ks" target=*R2_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_cam.ks" target=*R2_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_tubomi_cam.ks" target=*R2_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_cam.ks" target=*R2_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="tubomi/voice_r_tubomi_pis1.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*R2_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*R2_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="tubomi/voice_r_tubomi_pis2.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*R2_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*R2_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_tubomi.ks target="*R2_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_R2.ks"  target="*sounyu_top"  ]
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

[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="H_tubomi_R2.ks"  target="*sounyu_top"  ]
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
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_00_00.gif"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_tubomi_R2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
Dẫn chuyện|Từng cú thúc mạnh mẽ khiến Tsubomi chỉ biết bấu chặt lấy ga giường mà rên rỉ.[p]
Tsubomi「A... a... đâm mạnh nữa đi anh... làm em tơi bời đi mà...♡」[p]
Tsubomi「Đâm sâu nữa đi anh... Tới tận cùng luôn đi mà...♡」[p]
[舜]「Bên trong em co bóp dữ dội quá... Sướng đến muốn phát điên rồi đây!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_tubomi_R2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ưm... Tinh dịch của anh nóng hổi quá... Cứ như đang thiêu đốt bên trong em vậy...♡」[p]
[舜]「Đó là vì tinh dịch được nấu sôi sùng sục trong tinh hoàn đấy mà... Hãy cảm nhận xem anh đã hưng phấn đến mức nào đi」[p]
Tsubomi「Phù...♡ Phù...♡ Cứ nghĩ đến chuyện anh vì em mà hưng phấn đến thế này... Là em thấy sướng vô cùng luôn ý...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_R2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ôi... ôi trời ơi...♡ Tuyệt quá... Khắp người em dính đầy tinh dịch nhớp nháp rồi nè♡ Nóng hổi và nhầy nhụa ghê á♡」[p]
Tsubomi「Anh chỉ nhìn mỗi mình em, vì một mình em mà bắn ra đúng không...? Được độc chiếm anh thế này em hạnh phúc lắm...♡」[p]
Tsubomi「Thực ra thì em vừa muốn anh rót vào bên trong, vừa muốn anh bắn cả vào trong miệng em nữa cơ đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_R2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
[舜]「A... Sắp ra rồi...! Nào... Muốn anh bắn vào trong thì phải ngoan ngoãn làm nũng cho đàng hoàng chứ!」[p]
Tsubomi「Vâng ạ♡ A...♡ X-Xin anh... Hãy bắn vào bên trong em đi ạ...♡」[p]
[舜]「Nói thế mà đòi anh bắn cho đấy à...!? Đã bảo là phải làm nũng dâm đãng hơn nữa cơ mà!」[p]
Tsubomi「Ưm... ôi♡ Xin anh hãy gieo giống tinh trùng của anh [舜] vào cô bé của Tsubomi đi ạ♡ Cô bé của em đã sẵn sàng đón nhận rồi ạ♡」[p]
[舜]「Hà, hà... Dù anh muốn em nói bậy bạ hơn nữa cơ nhưng... thế này cũng được rồi... Bắn đây! Khốn thật, a, a... a!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HR02_02_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HR02_02_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_tubomi_R2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi... Ôi trời ơi♡ Bắn phì phì từng đợt vào trong rồi kìa♡ Em được anh gieo giống rồi nè♡」[p]
[舜]「A~ kinh thật... Hà, tuyệt đỉnh... Sướng quá đến mức suýt thì khuỵu cả chân luôn rồi này...」[p]
Tsubomi「Ư... hức♡ Chưa bắn hết thì không được rút ra đâu đấy...! Phải trút sạch toàn bộ vào bên trong em rồi mới được rút ra cơ♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_R2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HR02_02_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi...♡ Bụng em căng tức đầy ắp cả rồi nè♡ Sắp trào ngược ra ngoài luôn rồi á♡」[p]
Tsubomi「Hà...♡ Hà...♡ Hà...♡ Bị rót vào một lượng khổng lồ thế này... Thì em sẽ biến thành mẹ trẻ con thật mất thôi♡」[p]
[舜]「Chẳng phải em luôn thèm muốn được gieo giống còn gì...! Nhìn kìa, trào ra ngoài rồi... Phải giữ nguyên thế này để bịt kín lại một lúc mới được」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_eval  exp="sf.Hresult_sex_tubomi+=1"  name="Hresult_sex_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="tubomi_HR2"  ]
[call  storage="H_kaihaturesult_tubomi.ks"  target="*top"  ]
[jump  storage="EV_tubomi_R.ks"  target="*EV2_back"  ]
