]
[_tb_system_call storage=system/_H_tubomi_hajimete.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="H/HF01_02_00_00.gif"  ]
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
[image layer="2" x="516" y="0" storage="default/HUI_Kaihatu_base2.png" time="0"  name="base" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_kaisi1.mp3" buf="2"] Tsubomi「Đ-Đây là lần đầu tiên của em đấy... Anh phải nhẹ nhàng thôi nhé...」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_蕾=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call storage="H_tubomi_gauge.ks" target=*voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 "]
[call storage="H_tubomi_gauge.ks" target=*voice_J_2]

;■普通
[else]
[call storage="H_tubomi_gauge.ks" target=*voice_J_1]
[endif]
[_tb_end_tyrano_code]

[tb_clear_images]

[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_はじめて_蕾=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　キス
[button target=*1 enterimg=/H/HUI_kiss0.png clickimg=/H/HUI_kiss0_on.png x=1192 y=16 graphic=/H/HUI_kiss0_on.png]

;右２　胸揉み
[button target=*2 enterimg=/H/HUI_munemomi0.png clickimg=/H/HUI_munemomi0_on.png x=1104 y=16 graphic=/H/HUI_munemomi0_on.png name="ui"]

;右３　乳首舐め
[button target=*3 enterimg=/H/HUI_tikubiname.png clickimg=/H/HUI_tikubiname_on.png x=1016 y=16 graphic=/H/HUI_tikubiname_on.png name="ui"]

;右４　クンニ
[button target=*4 enterimg=/H/HUI_kunni.png clickimg=/H/HUI_kunni_on.png x=928 y=16 graphic=/H/HUI_kunni_on.png name="ui"]

;右5　太腿撫で
[button target=*5 enterimg=/H/HUI_asinade.png clickimg=/H/HUI_asinade_on.png x=840 y=16 graphic=/H/HUI_asinade_on.png name="ui"]

;右6　足裏
[button target=*6 enterimg=/H/HUI_asiuraname.png clickimg=/H/HUI_asiuraname_on.png x=752 y=16 graphic=/H/HUI_asiuraname_on.png name="ui"]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui"]

;■挿入
[if exp="f.H_koudoukaisu >= 0"]
[button target=*sounyu enterimg=/H/HUI_sonyu_off.png clickimg=/H/HUI_sonyu_on.png x=1184 y=416 graphic=/H/HUI_sonyu_on.png name="ui"]
[endif]



;===============================================
[anim name="ui" opacity=0 time=0]
[anim name="ui" opacity=255 time=500]









[_tb_end_tyrano_code]

[call  storage="H_kandocheck.ks"  target="*top_6"  ]
[s  ]
*6

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_08_04.gif"  ]
[tb_start_tyrano_code]
;足裏_ループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_tubomi.ks target="*H1_asiura_hit"]

[elsif exp="f.H_nameru == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_asiura1"]

[elsif exp="f.H_nameru == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_asiura2"]

[elsif exp="f.H_nameru == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_asiura3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*5

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_08_02.gif"  ]
[tb_start_tyrano_code]
;脚撫で_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1"]
[call storage=H_serihu_tubomi.ks target="*H1_naderu_hit"]

[elsif exp="f.H_naderu == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_naderu1"]

[elsif exp="f.H_naderu == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_naderu2"]

[elsif exp="f.H_naderu == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_naderu3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_tubomi+=1"  name="Hresult_kokanseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*4

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_05_03.gif"  ]
[tb_start_tyrano_code]
;クンニ_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_tubomi.ks target="*H1_kunni_hit"]

[elsif exp="f.H_kunni == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_kunni1"]

[elsif exp="f.H_kunni == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_kunni2"]

[elsif exp="f.H_kunni == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_kunni3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*3

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_03_03.gif"  ]
[tb_start_tyrano_code]
;乳首舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_tikubiname_hit"]

[elsif exp="f.H_tikubiname == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_tikubiname1"]

[elsif exp="f.H_tikubiname == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_tikubiname2"]

[elsif exp="f.H_tikubiname == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_tikubiname3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_02_01.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_munemomi_hit"]

[elsif exp="f.H_munemomi == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_munemomi1"]

[elsif exp="f.H_munemomi == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_munemomi2"]

[elsif exp="f.H_munemomi == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_munemomi3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*1

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_kiss1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_01_01.gif"  ]
[tb_start_tyrano_code]
;キス_ループパターン

[if exp="f.H_hit == 5 && f.H1 == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_kiss_hit"]

[elsif exp="f.H_kiss == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_kiss1"]

[elsif exp="f.H_kiss == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_kiss2"]

[elsif exp="f.H_kiss == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_kiss3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_tubomi+=1"  name="Hresult_kokanseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HF01_02_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_kaiwa3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_tubomi+=1"  name="Hresult_kansatu_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_sou1_1.mp3" buf="2"] [舜]「Anh biết rồi, đừng lo lắng quá」[p]
Tsubomi「Ưm... Em hơi sợ một chút... Nhưng vì là anh [舜] nên em sẵn sàng rồi」[p]
[playse storage="tubomi/voice_j_tubomi_sou1_2.mp3" buf="2"] [舜]「Cảm ơn em đã tin tưởng anh, Tsubomi」[p]
Tsubomi「N-Nó... đang chạm vào rồi kìa... To quá...」[p]
[playse storage="tubomi/voice_j_tubomi_sou1_3.mp3" buf="2"] [舜]「Thả lỏng ra nào, hít thở sâu vào」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[call  storage="H_tubomi_gazou.ks"  target="*H1_yukkuri_cam1"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_蕾=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call storage="H_tubomi_gauge.ks" target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 "]
[call storage="H_tubomi_gauge.ks" target=*pis_voice_J_2]

;■普通
[else]
[call storage="H_tubomi_gauge.ks" target=*pis_voice_J_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_はじめて_蕾　挿入=========================================

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
[call storage="H_tubomi_cam.ks" target=*H1_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_cam.ks" target=*H1_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_tubomi_cam.ks" target=*H1_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_cam.ks" target=*H1_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="tubomi/voice_j_tubomi_pis1.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*H1_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*H1_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_yukkuri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="tubomi/voice_j_tubomi_pis2.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*H1_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*H1_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high1 == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0 "]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1 "]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2 "]
[call storage=H_serihu_tubomi.ks target="*H1_pisuton_hagesiku3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*sounyu_top"  ]
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
;ベース（挿入）
[image layer="0" x=" 1056" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*sounyu_top"  ]
*nuku

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[cm  ]
[stop_bgmovie  time="0"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HF01_02_00_00.gif"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
Tsubomi「Hà... phù... Ưm... đau một chút... nhưng không sao đâu ạ」[p]
[舜]「Vào được một nửa rồi đấy... Em ổn chứ?」[p]
Tsubomi「Vâng... Tiếp tục đi anh... Đút hết vào đi ạ」[p]
Dẫn chuyện|Tôi từ từ tiến sâu vào bên trong, cảm nhận sự chật chội và nóng bỏng của màng trinh trinh nguyên.[p]
Tsubomi「A... vào hết rồi... Đầy ắp bên trong em rồi kìa...♡」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HF01_02_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Tsubomi ngoan lắm, giờ bắt đầu cử động nhé」[p]
Tsubomi「Ưm... Chậm rãi thôi anh nhé...♡」[p]
Dẫn chuyện|Từng nhịp chuyển động nhẹ nhàng dần xua tan cơn đau, thay thế bằng cảm giác tê dại ngọt ngào.[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  ]
[l  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HF01_02_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A... nhột quá... Nhưng mà... Bắt đầu thấy sướng rồi nè...♡」[p]
[舜]「Thế thì anh tăng tốc nhé」[p]
Tsubomi「Vâng ạ! Hãy làm cho lần đầu tiên của em trở nên đáng nhớ nhất đi!」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
Dẫn chuyện|Tiếng thở dốc hòa cùng tiếng rên rỉ non nớt của cô thiếu nữ ngây thơ bắt đầu nếm trải trái cấm.[p]
Tsubomi「A... a... sướng quá đi mất... Không ngờ làm tình lại tuyệt vời đến thế này...♡」[p]
[舜]「Em thích là tốt rồi... Anh sắp ra rồi đấy」[p]
Tsubomi「Bắn vào trong em đi! Hãy trao trọn vẹn lần đầu tiên này cho em!」[p]
Dẫn chuyện|Tôi thúc sâu một cú dứt khoát, bắn trọn dòng tinh dịch trinh nguyên vào sâu trong lòng Tsubomi.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HF01_02_99_01A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HF01_02_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HF01_02_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A... a... ấm áp quá... Em cảm nhận được dòng tinh dịch của anh rồi...♡」[p]
[舜]「Tsubomi... Giờ em đã chính thức là người phụ nữ của anh rồi đấy」[p]
Tsubomi「Vâng... Từ nay về sau, em thuộc về anh hoàn toàn rồi ạ...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  ]
[l  ]
[jump  storage="H_tubomi_hajimete.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HF01_02_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Dẫn chuyện|Vệt máu trinh đỏ thắm hòa quyện cùng dòng tinh dịch trắng ngà lưu lại dấu ấn vĩnh cửu trên ga giường.[p]
Tsubomi「Em hạnh phúc lắm... Cảm ơn anh vì đã nâng niu lần đầu của em nhé...♡」[p]
[舜]「Anh cũng hạnh phúc lắm, Tsubomi à」[p]
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
[tb_replay  id="tubomi_H0"  ]
[call  storage="H_kaihaturesult_tubomi.ks"  target="*top"  ]
[jump  storage="EV_kokuhaku_tubomi.ks"  target="*H_back"  