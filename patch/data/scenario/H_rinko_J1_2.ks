
[_tb_system_call storage=system/_H_rinko_J1_2.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="BGM.ks"  target="*love1"  ]
*top

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_03_00_00.gif"  ]
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
[playse storage="rinko/voice_j_rinko_kaisi2.mp3" buf="3"]Rinko「Em sẽ dạy cho chị cách massage độc quyền sao? Chị mong chờ có được không nhỉ♡」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_凛子=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000"]
[call storage="H_rinko_gauge.ks" target="*voice_J_3"]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500"]
[call storage="H_rinko_gauge.ks" target="*voice_J_2"]

;■普通
[else]
[call storage="H_rinko_gauge.ks" target="*voice_J_1"]

[endif]
[_tb_end_tyrano_code]

[tb_clear_images]

[call  storage="H_rinko_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_J1_2凛子=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　Dキス
[button target=*1 enterimg=/H/HUI_Dkiss.png clickimg=/H/HUI_Dkiss_on.png x=1192 y=16 graphic=/H/HUI_Dkiss_on.png]

;右２　フェラ
[button target=*2 enterimg=/H/HUI_fera.png clickimg=/H/HUI_fera_on.png x=1104 y=16 graphic=/H/HUI_fera_on.png name="ui"]

;右３　胸揉み（鷲掴み）
[button target=*3 enterimg=/H/HUI_munewasidukami.png clickimg=/H/HUI_munewasidukami_on.png x=1016 y=16 graphic=/H/HUI_munewasidukami_on.png name="ui"]

;右４　胸舐め（強）
[button target=*4 enterimg=/H/HUI_munename2.png clickimg=/H/HUI_munename2_on.png x=928 y=16 graphic=/H/HUI_munename2_on.png name="ui"]

;右5　膣舐め
[button target=*5 enterimg=/H/HUI_tituname.png clickimg=/H/HUI_tituname_on.png x=840 y=16 graphic=/H/HUI_tituname_on.png name="ui"]

;右6　潮吹き
[button target=*6 enterimg=/H/HUI_sio.png clickimg=/H/HUI_sio_on.png x=752 y=16 graphic=/H/HUI_sio_on.png name="ui"]

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
[jump storage="H_rinko_J1.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_rinko_J1_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_kiss2.mp3"  loop="true"  clear="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_03_01_02.gif"  ]
[tb_start_tyrano_code]
;Dキス_ループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_Dkiss_hit"]

[elsif exp="f.H_kiss == 0"]
[call storage=H_serihu_rinko.ks target="*J1_2_Dkiss1"]

[elsif exp="f.H_kiss == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_Dkiss2"]

[elsif exp="f.H_kiss == 2"]
[call storage=H_serihu_rinko.ks target="*J1_2_Dkiss3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*2

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="rinko/voice_j_rinko_fera.mp3"  loop="true"  ]
[cm  ]
[bg  time="2000"  method="crossfade"  storage="H/HJ01_03_50_01.gif"  ]
[tb_start_tyrano_code]
;フェラ_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_fera_hit"]

[elsif exp="f.H_fera == 0"]
[call storage=H_serihu_rinko.ks target="*J1_2_fera1"]

[elsif exp="f.H_fera == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_fera2"]

[elsif exp="f.H_fera == 2"]
[call storage=H_serihu_rinko.ks target="*J1_2_fera3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*3

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_03_02_02.gif"  ]
[cm  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munemomi_hit"]

[elsif exp="f.H_munemomi == 0 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munemomi1"]

[elsif exp="f.H_munemomi == 1 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munemomi2"]

[elsif exp="f.H_munemomi == 2 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munemomi3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*4

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_03_02_04.gif"  ]
[cm  ]
[tb_start_tyrano_code]
;胸舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_munename_hit"]

[elsif exp="f.H_munename == 0 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munename1"]

[elsif exp="f.H_munename == 1 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munename2"]

[elsif exp="f.H_munename == 2 "]
[call storage=H_serihu_rinko.ks target="*J1_2_munename3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*5

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman2.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_03_05_04.gif"  ]
[cm  ]
[tb_start_tyrano_code]
;膣舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_rinko.ks target="*J1_2_tituname_hit"]

[elsif exp="f.H_tituname == 0 "]
[call storage=H_serihu_rinko.ks target="*J1_2_tituname1"]

[elsif exp="f.H_tituname == 1 "]
[call storage=H_serihu_rinko.ks target="*J1_2_tituname2"]

[elsif exp="f.H_tituname == 2 "]
[call storage=H_serihu_rinko.ks target="*J1_2_tituname3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*6

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="teman.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_03_04_04.gif"  ]
[cm  ]
[tb_start_tyrano_code]
;潮吹きループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_siohuki_hit"]

[elsif exp="f.H_siohuki == 0"]
[call storage=H_serihu_rinko.ks target="*J1_2_siohuki1"]

[elsif exp="f.H_siohuki == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_siohuki2"]

[elsif exp="f.H_siohuki == 2"]
[call storage=H_serihu_rinko.ks target="*J1_2_siohuki3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*kaiwa

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ01_03_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_rinko.ks target="*J1_2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_rinko.ks target="*J1_2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_rinko.ks target="*J1_2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_rinko+=1"  name="Hresult_kansatu_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_rinko_J1_2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j1_2_rinko_sou1.mp3" buf="3"]Rinko「Shun-kun... đừng kết thúc vội... chị muốn em xoa bóp tận sâu bên trong nữa cơ...」[p]
[舜]「Chị vòi vĩnh em đấy à...? Tận sâu bên trong, là chỗ mà ngón tay không chạm tới được sao?」[p]
[playse storage="rinko/voice_j1_2_rinko_sou2.mp3" buf="3"]Rinko「Em biết rõ rồi mà còn... xin em đấy, hãy massage thật mạnh bạo vào tận sâu bên trong chị đi?」[p]
[舜]「Chị Rinko dâm quá rồi đấy... em sẽ massage tận sâu bên trong nhé... chị thả lỏng ra đi... khốn」[p]
[playse storage="rinko/voice_j1_2_rinko_sou3.mp3" buf="3"]Rinko「A♡ Aaaa♡ Tuyệt quá... to quá đi♡ Hà, ưm♡ Chạm đến nơi rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[call  storage="H_rinko_gazou.ks"  target="*J1_yukkuri_cam1"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_凛子=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 "]
[call storage="H_rinko_gauge.ks" target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 "]
[call storage="H_rinko_gauge.ks" target=*pis_voice_J_2]

;■普通
[else]
[call storage="H_rinko_gauge.ks" target=*pis_voice_J_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_rinko_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_J1_凛子　挿入=========================================

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
[call storage="H_rinko_cam.ks" target=*J1_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*J1_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_rinko_cam.ks" target=*J1_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*J1_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis2.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*J1_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*J1_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis3.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*J1_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*J1_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_rinko.ks target="*J1_2_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_rinko_J1_2.ks"  target="*sounyu_top"  ]
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
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_03_00_00.gif"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「Khốn... a, sắp ra rồi...! Xin lỗi chị Rinko... em sắp ra rồi!」[p]
Rinko「Shun-kun đã làm cho chị sướng thật nhiều rồi... bây giờ đến lượt Shun-kun sướng chứ nhỉ♡」[p]
Rinko「Đống tinh dịch tích tụ đầy ứ, em cứ xả hết ra đi...! Bắn lên người chị cũng được mà...♡」[p]
Rinko「Hãy bắn... tất cả của Shun-kun ra đi! Làm cho chị dính nhem nhuốc đi...!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_03_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Dính nhem nhuốc hết cả rồi♡ Ấm quá... bài trị liệu này thì chị không thể bắt chước được đâu.」[p]
[舜]「Không sao đâu, đây là bài massage mà em chỉ dành riêng cho chị Rinko thôi mà.」[p]
Rinko「Vậy à... là bài độc quyền sao...♡ Cảm ơn em vì bài massage dâm đãng đặc biệt này nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_J1_2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_03_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Hyaaa♡ Shun-kun, em bắn ra nhiều quá rồi đấy...♡ Tinh dịch lại có thể bắn ra nhiều thế này cơ à♡」[p]
Rinko「Tinh dịch của Shun-kun, đọng lại một đống rồi kìa. Trông cứ như kem massage ấy...」[p]
Rinko「Em cứ thế này thoa lên người chị cũng được đấy? Giống như đánh dấu vậy, hãy để lại mùi của em đi♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_J1_2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
Rinko「A... con cu, đang căng phồng lên ở bên trong kìa...♡ Shun-kun, em sắp ra rồi sao?」[p]
Rinko「Chị cũng đã được sướng rồi mà... Shun-kun cũng cùng sướng đi em...♡」[p]
[舜]「Cảm ơn chị...! Em sẽ bắn hết vào trong nhé...! Hãy đón nhận lấy đi chị...!」[p]
Rinko「Tất nhiên rồi♡ Nếu là của Shun-kun thì thứ gì chị cũng muốn... cho chị tất cả đi em...♡」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HJ01_03_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HJ01_03_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_J1_2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_03_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hiu♡ Được rót đầy vào trong sướng quá đi... da dẻ cũng căng mọng lên rồi.」[p]
[舜]「Không chỉ massage mà còn có cả hiệu quả làm đẹp nữa... tuyệt quá nhỉ, Shun-kun.」[p]
Rinko「Chị tan chảy mất rồi... nhờ có Shun-kun mà chị biết thêm được cả phương pháp massage chưa từng biết đấy.」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_J1_2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ01_03_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Thứ nóng hổi rót vào rồi♡ Chị đã nhớ kỹ xúc cảm của Shun-kun mất rồi đấy?」[p]
Rinko「Từ nay về sau mỗi lần massage cho khách, chị sẽ nhớ lại hình dáng của Shun-kun rồi hưng phấn mất thôi...」[p]
Rinko「Em phải chịu trách nhiệm đấy nhé? Mỗi lần chị rạo rực thì em phải làm cho chị sướng đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_eval  exp="sf.Hresult_sex_rinko+=1"  name="Hresult_sex_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_HJ1_2"  ]
[call  storage="H_kaihaturesult_rinko.ks"  target="*top"  ]
[jump  storage="EV_rinko_J.ks"  target="*EV2_back"  