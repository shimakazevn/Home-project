]
[_tb_system_call storage=system/_H_rinko_J2_2.ks]

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
[bg  time="0"  method="crossfade"  storage="H/HJ02_03_00_00.gif"  ]
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
[playse storage="rinko/voice_j_rinko_kaisi3.mp3" buf="3"]Rinko「Em sẽ tắm rửa sạch sẽ cho chị sao? Vậy thì chúng ta lần lượt tắm cho nhau nhé♡」[p]
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
;H_J2_2_凛子=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　耳舐め
[button target=*1 enterimg=/H/HUI_miminame2.png clickimg=/H/HUI_miminame2_on.png x=1192 y=16 graphic=/H/HUI_miminame2_on.png]

;右２　尻撫で
[button target=*2 enterimg=/H/HUI_siriwasidukami.png clickimg=/H/HUI_siriwasidukami_on.png x=1104 y=16 graphic=/H/HUI_siriwasidukami_on.png name="ui"]

;右３　乳首弄り
[button target=*3 enterimg=/H/HUI_tikubiijiri.png clickimg=/H/HUI_tikubiijiri_on.png x=1016 y=16 graphic=/H/HUI_tikubiijiri_on.png name="ui"]

;右４　アナル弄り
[button target=*4 enterimg=/H/HUI_anaruijiri.png clickimg=/H/HUI_anaruijiri_on.png x=928 y=16 graphic=/H/HUI_anaruijiri_on.png name="ui"]

;右5　素股
[button target=*5 enterimg=/H/HUI_sumata2.png clickimg=/H/HUI_sumata2_on.png x=840 y=16 graphic=/H/HUI_sumata2_on.png name="ui"]

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
[jump storage="H_rinko_J2.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_rinko_J2_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_03_07_02.gif"  ]
[tb_start_tyrano_code]
;耳舐め_ループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_miminame_hit"]

[elsif exp="f.H_miminame == 0"]
[call storage=H_serihu_rinko.ks target="*J2_2_miminame1"]

[elsif exp="f.H_miminame == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_miminame2"]

[elsif exp="f.H_miminame == 2"]
[call storage=H_serihu_rinko.ks target="*J2_2_miminame3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_03_08_06.gif"  ]
[tb_start_tyrano_code]
;尻撫で_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_sirinade_hit"]

[elsif exp="f.H_sirinade == 0"]
[call storage=H_serihu_rinko.ks target="*J2_2_sirinade1"]

[elsif exp="f.H_sirinade == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_sirinade2"]

[elsif exp="f.H_sirinade == 2"]
[call storage=H_serihu_rinko.ks target="*J2_2_sirinade3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*3

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_03_03_01.gif"  ]
[tb_start_tyrano_code]
;乳首弄り_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_rinko.ks target="*J2_2_tikubiijiri_hit"]

[elsif exp="f.H_tikubiijiri == 0 "]
[call storage=H_serihu_rinko.ks target="*J2_2_tikubiijiri1"]

[elsif exp="f.H_tikubiijiri == 1 "]
[call storage=H_serihu_rinko.ks target="*J2_2_tikubiijiri2"]

[elsif exp="f.H_tikubiijiri == 2 "]
[call storage=H_serihu_rinko.ks target="*J2_2_tikubiijiri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*4

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_03_06_05.gif"  ]
[tb_start_tyrano_code]
;アナル弄り_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_anaruijiri_hit"]

[elsif exp="f.H_anaruijiri == 0 "]
[call storage=H_serihu_rinko.ks target="*J2_2_anaruijiri1"]

[elsif exp="f.H_anaruijiri == 1 "]
[call storage=H_serihu_rinko.ks target="*J2_2_anaruijiri2"]

[elsif exp="f.H_anaruijiri == 2 "]
[call storage=H_serihu_rinko.ks target="*J2_2_anaruijiri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*5

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_03_20_02.gif"  ]
[tb_start_tyrano_code]
;素股_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_rinko.ks target="*J2_2_sumata_hit"]

[elsif exp="f.H_sumata == 0 "]
[call storage=H_serihu_rinko.ks target="*J2_2_sumata1"]

[elsif exp="f.H_sumata == 1 "]
[call storage=H_serihu_rinko.ks target="*J2_2_sumata2"]

[elsif exp="f.H_sumata == 2 "]
[call storage=H_serihu_rinko.ks target="*J2_2_sumata3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*6

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="teman.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_03_04_04.gif"  ]
[tb_start_tyrano_code]
;潮吹きループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_siohuki_hit"]

[elsif exp="f.H_siohuki == 0"]
[call storage=H_serihu_rinko.ks target="*J2_2_siohuki1"]

[elsif exp="f.H_siohuki == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_siohuki2"]

[elsif exp="f.H_siohuki == 2"]
[call storage=H_serihu_rinko.ks target="*J2_2_siohuki3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_rinko.ks target="*J2_2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_rinko.ks target="*J2_2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_rinko.ks target="*J2_2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_rinko+=1"  name="Hresult_kansatu_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_rinko_J2_2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Em cũng phải rửa cả bên trong cơ thể cho chị chứ nhỉ... chị dạng chân ra đi.」[p]
[playse storage="rinko/voice_j2_2_rinko_sou1.mp3" buf="3"]Rinko「Em sẽ dùng bàn chải con cu của Shun-kun sao? Xin em đấy...♡ Hãy rửa sạch tận sâu bên trong chị nhé?」[p]
[playse storage="rinko/voice_j2_2_rinko_sou2.mp3" buf="3"]Rinko「Lấp đầy tận sâu bên trong, rồi rửa cho thật sạch nhé...」[p]
[舜]「Dâm quá rồi đấy... cứ giao cho em, em sẽ rửa thật sạch mà...! Vào đây... ưm!」[p]
[playse storage="rinko/voice_j2_2_rinko_sou3.mp3" buf="3"]Rinko「Aaa♡ Chạm đến tận sâu bên trong rồi... hà, an♡ Trong bụng đầy ứ lên mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[call  storage="H_rinko_gazou.ks"  target="*J2_yukkuri_cam1"  ]
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
;H_J2_凛子　挿入=========================================

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
[call storage="H_rinko_cam.ks" target=*J2_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*J2_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_rinko_cam.ks" target=*J2_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*J2_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="rinko/voice_j_rinko_pis2.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*J2_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*J2_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="rinko/voice_j_rinko_pis3.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*J2_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*J2_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_rinko.ks target="*J2_2_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_rinko_J2_2.ks"  target="*sounyu_top"  ]
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
[bg  time="0"  method="crossfade"  storage="H/HJ02_03_00_00.gif"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Con cu của Shun-kun, đang căng cứng lên kìa... em bắn ra được rồi đấy... cho chị đi♡」[p]
[舜]「Hà... hà... em bắn đây...! Em bắn lên cơ thể vừa được tắm rửa sạch sẽ này được không...!」[p]
Rinko「Cho chị đi♡ Hãy lấp đầy bằng mùi của Shun-kun đi......!」[p]
[舜]「A, sắp, ra rồi! Ra, bắn lên người chị Rinko, kích thích quá... a, aaaa!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_03_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hyauuu♡ Thứ đặc sệt như sữa tắm, bắn ra rồi nhỉ♡ Dính nhem nhuốc rồi.」[p]
[舜]「Cái này, em thoa lên người chị Rinko để tắm được không?」[p]
Rinko「Tất nhiên rồi♡ Nhưng phải làm sao đây, nếu tràn ngập mùi của Shun-kun... thì dâm đãng mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_J2_2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_03_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa... ấm quá... hà, ưm, em xả sạch sữa tắm còn sót lại trên người chị rồi sao?」[p]
Rinko「Vòi sen của Shun-kun... nóng hổi và sền sệt nhỉ♡ Chị vui lắm vì em đã tắm rửa đàng hoàng cho chị đến tận phút cuối...」[p]
Rinko「Không chỉ lần này, mà lần tới chị cũng nhờ em được chứ?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_J2_2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
[舜]「A, sắp ra mất rồi... Chị Rinko, mất công tắm rửa sạch sẽ rồi, nhưng em bắn vào trong được không?」[p]
Rinko「Bắn đi em... là bước hoàn thiện cuối cùng mà đúng không? Hãy dùng sữa dưỡng thể nóng hổi sền sệt của Shun-kun để dưỡng ẩm cho chị đi...」[p]
[舜]「Khốn... chị Rinko dâm quá rồi đấy... a, ra mất... để em dưỡng ẩm thật kỹ tận sâu bên trong nhé...!」[p]
[舜]「Ra, bắn đây...! A, aaaa!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HJ02_03_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HJ02_03_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_J2_2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_03_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ưm♡ Aaaa♡ Tuyệt quá... đầy ứ lên mất rồi...♡」[p]
Rinko「Bên trong đã được rửa sạch, chuẩn bị tươm tất hết rồi mà nhỉ...♡ Bây giờ thì chỉ toàn là tinh dịch của Shun-kun lấp đầy thôi♡」[p]
Rinko「Ưm... hà...♡ Cử động là trào ra mất...♡ Lãng phí lắm nên phải giữ lại bên trong thôi nhỉ.」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_J2_2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_03_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ Đã bảo là không chứa hết được đâu mà...♡ Ưm... bắn ra nhiều quá rồi đấy...」[p]
Rinko「Sữa tắm hòa quyện với mùi của Shun-kun... tạo thành mùi hương dễ chịu lắm...♡」[p]
Rinko「Lãng phí lắm, nên cứ giữ tinh dịch của Shun-kun đọng lại bên trong thêm một chút nữa được không em?」[p]
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
[tb_replay  id="rinko_HJ2_2"  ]
[call  storage="H_kaihaturesult_rinko.ks"  target="*top"  ]
[jump  storage="EV_rinko_J.ks"  target="*EV2_back"  