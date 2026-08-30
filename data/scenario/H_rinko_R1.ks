]
[_tb_system_call storage=system/_H_rinko_R1.ks]

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

[jump  storage="H_rinko_J1_2.ks"  target="*top"  cond="f.Hresult_kaihatuLV0_rinko>999"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_03_00_00.gif"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.H_zettyou_kaisuu=0"  name="H_zettyou_kaisuu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_koudoukaisu=0"  name="H_koudoukaisu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_sounyu=0"  name="H_sounyu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;ベース
[image layer="2" x="516" y="0" storage="default/HUI_Kaihatu_base.png" time="0"  name="base" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_kaisi1.mp3" buf="3"]Rinko「Khoan đã, chị... phải làm với tư thế này sao...? Xấu hổ lắm...」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_凛子=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000"]
[call storage="H_rinko_gauge.ks" target="*voice_R_3"]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500"]
[call storage="H_rinko_gauge.ks" target="*voice_R_2"]

;■普通
[else]
[call storage="H_rinko_gauge.ks" target="*voice_R_1"]

[endif]
[_tb_end_tyrano_code]

[tb_clear_images]

[call  storage="H_rinko_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_R1_凛子=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　キス
[button target=*1 enterimg=/H/HUI_kiss0.png clickimg=/H/HUI_kiss0_on.png x=1192 y=16 graphic=/H/HUI_kiss0_on.png]

;右２　パイズリ
[button target=*2 enterimg=/H/HUI_paizuri.png clickimg=/H/HUI_paizuri_on.png x=1104 y=16 graphic=/H/HUI_paizuri_on.png name="ui"]

;右３　胸揉み
[button target=*3 enterimg=/H/HUI_munemomi0.png clickimg=/H/HUI_munemomi0_on.png x=1016 y=16 graphic=/H/HUI_munemomi0_on.png name="ui"]

;右４　クリ弄り
[button target=*4 enterimg=/H/HUI_kuriijiri.png clickimg=/H/HUI_kuriijiri_on.png x=928 y=16 graphic=/H/HUI_kuriijiri_on.png name="ui"]

;右5　素股
[button target=*5 enterimg=/H/HUI_sumata.png clickimg=/H/HUI_sumata_on.png x=840 y=16 graphic=/H/HUI_sumata_on.png name="ui"]

;右6　手マン
[button target=*6 enterimg=/H/HUI_teman.png clickimg=/H/HUI_teman_on.png x=752 y=16 graphic=/H/HUI_teman_on.png name="ui"]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui"]

;■挿入
[if exp="f.H_koudoukaisu >= 0"]
[button target=*sounyu enterimg=/H/HUI_sonyu_off.png clickimg=/H/HUI_sonyu_on.png x=1184 y=416 graphic=/H/HUI_sonyu_on.png name="ui"]
[endif]

;■ボタン切り替え（低）常に開放
[if exp="f.Hresult_kaihatuLV0_rinko >= 0 "]
[button target=*kirikae_low enterimg=/H/HUI_Kaihatu_Low_off.png clickimg=/H/HUI_Kaihatu_Low_on.png x=515 y=0 graphic=/H/HUI_Kaihatu_Low_on.png name="ui"]
[endif]

;■ボタン切り替え（高）開発度が高い状態で開放
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 "]
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
[jump storage="H_rinko_R2.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_rinko_J2_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_kiss1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_01_01.gif"  ]
[tb_start_tyrano_code]
;キスループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*R1_kiss_hit"]

[elsif exp="f.H_kiss == 0"]
[call storage=H_serihu_rinko.ks target="*R1_kiss1"]

[elsif exp="f.H_kiss == 1"]
[call storage=H_serihu_rinko.ks target="*R1_kiss2"]

[elsif exp="f.H_kiss == 2"]
[call storage=H_serihu_rinko.ks target="*R1_kiss3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_60_01.gif"  ]
[tb_start_tyrano_code]
;パイズリ_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinko.ks target="*R1_paizuri_hit"]

[elsif exp="f.H_paizuri == 0"]
[call storage=H_serihu_rinko.ks target="*R1_paizuri1"]

[elsif exp="f.H_paizuri == 1"]
[call storage=H_serihu_rinko.ks target="*R1_paizuri2"]

[elsif exp="f.H_paizuri == 2"]
[call storage=H_serihu_rinko.ks target="*R1_paizuri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*3

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_02_01.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_rinko.ks target="*R1_munemomi_hit"]

[elsif exp="f.H_munemomi == 0 "]
[call storage=H_serihu_rinko.ks target="*R1_munemomi1"]

[elsif exp="f.H_munemomi == 1 "]
[call storage=H_serihu_rinko.ks target="*R1_munemomi2"]

[elsif exp="f.H_munemomi == 2 "]
[call storage=H_serihu_rinko.ks target="*R1_munemomi3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*4

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_05_01.gif"  ]
[cm  ]
[tb_start_tyrano_code]
;クリ弄り_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_rinko.ks target="*R1_kuriijiri_hit"]

[elsif exp="f.H_kuriijiri == 0 "]
[call storage=H_serihu_rinko.ks target="*R1_kuriijiri1"]

[elsif exp="f.H_kuriijiri == 1 "]
[call storage=H_serihu_rinko.ks target="*R1_kuriijiri2"]

[elsif exp="f.H_kuriijiri == 2 "]
[call storage=H_serihu_rinko.ks target="*R1_kuriijiri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*5

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_20_01.gif"  ]
[tb_start_tyrano_code]
;素股_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_rinko.ks target="*R1_sumata_hit"]

[elsif exp="f.H_kunni == 0 "]
[call storage=H_serihu_rinko.ks target="*R1_sumata1"]

[elsif exp="f.H_kunni == 1 "]
[call storage=H_serihu_rinko.ks target="*R1_sumata2"]

[elsif exp="f.H_kunni == 2 "]
[call storage=H_serihu_rinko.ks target="*R1_sumata3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*6

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_04_01.gif"  ]
[tb_start_tyrano_code]
;手マンループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_rinko.ks target="*R1_teman_hit"]

[elsif exp="f.H_teman == 0"]
[call storage=H_serihu_rinko.ks target="*R1_teman1"]

[elsif exp="f.H_teman == 1"]
[call storage=H_serihu_rinko.ks target="*R1_teman2"]

[elsif exp="f.H_teman == 2"]
[call storage=H_serihu_rinko.ks target="*R1_teman3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HR01_03_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_rinko.ks target="*R1_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_rinko.ks target="*R1_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_rinko.ks target="*R1_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_rinko+=1"  name="Hresult_kansatu_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_rinko_R1.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r1_1_rinko_sou1.mp3" buf="3"]Rinko「Ưm♡ Hà, hà♡ Cứ như sắp trượt một mạch vào tận sâu bên trong ấy...」[p]
[舜]「Phù... hà, đang mở rộng ra thèm khát thế kia nên đút vào dễ ợt thôi. Đây này──」[p]
[playse storage="rinko/voice_r1_1_rinko_sou2.mp3" buf="3"]Rinko「A... phần đầu dính chặt vào rồi... b-bây giờ mà cử động thì...」[p]
[舜]「Sẽ vào một mạch tận sâu bên trong nhỉ? Giống, thế này này...!」[p]
[playse storage="rinko/voice_r1_1_rinko_sou3.mp3" buf="3"]Rinko「Aaaa♡ Chạm đến tận sâu bên trong rồi♡ Tuyệt quá, đầy ứ lên mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[call  storage="H_rinko_gazou.ks"  target="*R1_yukkuri_cam1"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_凛子=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 "]
[call storage="H_rinko_gauge.ks" target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 "]
[call storage="H_rinko_gauge.ks" target=*pis_voice_R_2]

;■普通
[else]
[call storage="H_rinko_gauge.ks" target=*pis_voice_R_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_rinko_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_R1_凛子　挿入=========================================

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
[call storage="H_rinko_cam.ks" target=*R1_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*R1_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_rinko_cam.ks" target=*R1_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*R1_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_pis1.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*R1_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*R1_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_pis2.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*R1_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*R1_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_rinko.ks target="*R1_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_R1.ks"  target="*sounyu_top"  ]
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

[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="H_rinko_R1.ks"  target="*sounyu_top"  ]
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
[bg  time="0"  method="crossfade"  storage="H/HR01_03_00_00.gif"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_rinko_R1.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「Phù... phù... ưm, khốn... em đến giới hạn rồi... bắn đây...」[p]
Rinko「Ưm♡ Au♡ Chị cũng sắp... lên đỉnh mất rồi... trước mắt chị đang hoa lên đây này♡」[p]
[舜]「Cơ thể chị Rinko, để em làm cho ướt nhẹp bằng loại gel bôi trơn đặc chế của em nhé?」[p]
Rinko「Hà, a♡ Bắn đi em...♡ Hãy làm cho chị dính nhem nhuốc bằng gel bôi trơn của Shun-kun đi...」[p]
[舜]「Tiếng vòi vĩnh của chị Rinko, dâm quá rồi đấy...! Em bắn lên người chị đây... a, ra mất, ra...!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_R1.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_03_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaa♡ A, aaaa... bắn xa quá nhỉ... em nhịn nhiều lắm rồi sao?」[p]
[舜]「Chị Rinko, dính đầy tinh dịch thế này... trông dâm đãng vô cùng luôn đấy...」[p]
Rinko「Thật là, chỉ thế này thôi mà con cu lại phản ứng rồi sao? Em đã bắn đủ nhiều rồi mà?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_R1.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_03_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Ư♡ Hà... hà...♡ Bắn ra nhiều quá nhỉ... a, dính đầy tinh dịch rồi...」[p]
Rinko「Bắn đè lên cả gel bôi trơn, rồi hòa quyện vào nhau mất rồi...♡ Trào ra cả ga giường mất♡」[p]
Rinko「Lát nữa phải dọn dẹp đàng hoàng mới được...♡ Shun-kun cũng phải giúp chị một tay đấy nhé?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_R1.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
Rinko「Ưm, khốn... đang căng phồng lên kìa♡ Chạm đến tận sâu bên trong rồi... chị lên đỉnh mất thôi♡」[p]
[舜]「Guu, hà, hà... thít chặt quá...! Em đến giới hạn rồi... bắn được không...!」[p]
Rinko「A♡ Au♡ Ưm...♡ Hả... khoan đã... với tư thế này thì định bắn vào đâu──」[p]
[舜]「Tất nhiên là rót vào trong rồi còn gì...!」[p]
Rinko「Hả... kh-khoan đã... vào sâu thế này mà bắn vào trong thì... sẽ rót thẳng vào tử cung mất♡」[p]
[舜]「Thế thì tuyệt quá còn gì. Em bắn ở tận sâu bên trong nhé! Ra đây...! Ra, ra, ra, ra mất! Aaaa!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HR01_03_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HR01_03_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_R1.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_03_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiu♡ A♡ Aaaa♡ Tận sâu bên trong... đang bị rót vào kìa... nóng quá đi♡」[p]
Rinko「Hà♡ Hà♡ Ưm, khốn♡ Đang phọt từng luồng... trực tiếp vào bên trong kìa♡」[p]
Rinko「Shun-kun cũng được sướng là chị vui rồi...♡ Em bắn ra nhiều thật đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_R1.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="0"  method="crossfade"  storage="H/HR01_03_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaa♡ Ưm♡ Hà, a♡ Tuyệt quá, bên trong đầy ứ đồ của Shun-kun mất rồi♡」[p]
Rinko「Hà♡ Hà♡ Hà♡ Trào ra mất thôi... còn nóng hổi sền sệt hơn cả gel bôi trơn nữa...」[p]
Rinko「Cử động là trào ra mất... ưm♡ Không chứa nổi nữa đâu...♡ Không được rồi, trào ra mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_eval  exp="sf.Hresult_sex_rinko+=1"  name="Hresult_sex_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_HR1"  ]
[call  storage="H_kaihaturesult_rinko.ks"  target="*top"  ]
[jump  storage="EV_rinko_R.ks"  target="*EV1_back"  