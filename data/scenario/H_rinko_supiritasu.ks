]
[_tb_system_call storage=system/_H_rinko_supiritasu.ks]

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
[bg  time="0"  method="crossfade"  storage="H/HI01_03_00_00.gif"  ]
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
[image layer="2" x="516" y="0" storage="default/HUI_Kaihatu_base2.png" time="0"  name="base" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_kaisi4.mp3" buf="3"]Rinko「Khc, đáng yêu quá♡ Em đang căng thẳng sao...? Chỗ này, cứng ngắc lên rồi kìa♡ Hôm nay chúng ta hãy tận hưởng thật nhiềềều nhé♡」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_凛子=========================================

;■興奮
[call storage="H_rinko_gauge.ks" target=*voice_R_2]

[_tb_end_tyrano_code]

[tb_clear_images]

[call  storage="H_rinko_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_スピリタスカプセル_凛子=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右6　尻叩き
[button target=*matazuri enterimg=/H/HUI_siritataki.png clickimg=/H/HUI_siritataki_on.png x=752 y=16 graphic=/H/HUI_siritataki_on.png]

;右5　クンニ
[button target=*tikubiijiri enterimg=/H/HUI_kunni.png clickimg=/H/HUI_kunni_on.png x=840 y=16 graphic=/H/HUI_kunni_on.png name="ui"]

;右4　胸揉み
[button target=*munemomi enterimg=/H/HUI_munemomi0.png clickimg=/H/HUI_munemomi0_on.png x=928 y=16 graphic=/H/HUI_munemomi0_on.png name="ui"]

;右3　キス
[button target=*kiss enterimg=/H/HUI_kiss0.png clickimg=/H/HUI_kiss0_on.png x=1016 y=16 graphic=/H/HUI_kiss0_on.png name="ui"]

;右2　尻撫で
[button target=*hutomomo enterimg=/H/HUI_sirinade.png clickimg=/H/HUI_sirinade_on.png x=1104 y=16 graphic=/H/HUI_sirinade_on.png name="ui"]

;右1　クリ弄り
[button target=*tekoki enterimg=/H/HUI_kuriijiri.png clickimg=/H/HUI_kuriijiri_on.png x=1192 y=16 graphic=/H/HUI_kuriijiri_on.png name="ui"]

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
*tekoki

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HI01_03_04_01.gif"  ]
[tb_start_tyrano_code]
;クリ弄り_ループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_rinko.ks target="*supiritasu_tekoki_hit"]

[elsif exp="f.H_supiritasu_tekoki_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kuriijiri1"]

[elsif exp="f.H_supiritasu_tekoki_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kuriijiri2"]

[elsif exp="f.H_supiritasu_tekoki_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kuriijiri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*hutomomo

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HI01_03_08_05.gif"  ]
[tb_start_tyrano_code]
;ふともも_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1"]
[call storage=H_serihu_rinko.ks target="*supiritasu_hutomomo_hit"]

[elsif exp="f.H_supiritasu_hutomomo_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_hutomomo1"]

[elsif exp="f.H_supiritasu_hutomomo_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_hutomomo2"]

[elsif exp="f.H_supiritasu_hutomomo_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_hutomomo3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*kiss

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_kiss1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HI01_03_01_02.gif"  ]
[tb_start_tyrano_code]
;キス_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_rinko.ks target="*supiritasu_kiss_hit"]

[elsif exp="f.H_supiritasu_kiss_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kiss1"]

[elsif exp="f.H_supiritasu_kiss_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kiss2"]

[elsif exp="f.H_supiritasu_kiss_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kiss3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*munemomi

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HI01_03_02_02.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_munemomi_hit"]

[elsif exp="f.H_supiritasu_munemomi_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_munemomi1"]

[elsif exp="f.H_supiritasu_munemomi_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_munemomi2"]

[elsif exp="f.H_supiritasu_munemomi_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_munemomi3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*tikubiijiri

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HI01_03_05_03.gif"  ]
[tb_start_tyrano_code]
;クンニ_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_tikubiijiri_hit"]

[elsif exp="f.H_supiritasu_tikubi_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_tikubiijiri1"]

[elsif exp="f.H_supiritasu_tikubi_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_tikubiijiri2"]

[elsif exp="f.H_supiritasu_tikubi_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_tikubiijiri3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_rinko+=1"  name="Hresult_muneseme_rinko"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*matazuri

[cm  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="binta.mp3"  loop="false"  clear="true"  ]
[tb_start_tyrano_code]
;叩く（notloop）
[tb_image_show  time="1000"  storage="default/H/HI01_03_09_04.gif"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;股ズリ_ループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_matazuri_hit"]

[elsif exp="f.H_supiritasu_matazuri_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_matazuri1"]

[elsif exp="f.H_supiritasu_matazuri_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_matazuri2"]

[elsif exp="f.H_supiritasu_matazuri_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_matazuri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_rinko+=1"  name="Hresult_kokanseme_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="H/HI01_03_00_00.gif"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HI01_03_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_supiritasu_sikan_rinko == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kaiwa1"]

[elsif exp="f.H_supiritasu_sikan_rinko == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kaiwa2"]

[elsif exp="f.H_supiritasu_sikan_rinko == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_kaiwa3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_rinko+=1"  name="Hresult_kansatu_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_supi_rinko_sou1.mp3" buf="3"]Rinko「Khc, vậy thì... chắc là đút con cu vào được rồi nhỉ...?[r]Nơi hai chúng ta hòa làm một, em hãy nhìn cho kỹ nhé...♡」[p]
[舜]「Oa... chị Rinko... tuyệt quá, bên trong, ướt nhẹp hết rồi...」[p]
[playse storage="rinko/voice_supi_rinko_sou2.mp3" buf="3"]Rinko「Ahaaa♡ To quá♡ Aaaa♡ Tuyệt quá đi♡」[p]
[playse storage="rinko/voice_supi_rinko_sou3.mp3" buf="3"]Rinko「Đầy ứ lên mất rồi...♡ Hà, a, tận sâu bên trong căng phồng vì con cu của em rồi...」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[call  storage="H_rinko_gazou.ks"  target="*supiritasu_yukkuri_cam1"  ]
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
[call storage="H_rinko_cam.ks" target=*supiritasu_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*supiritasu_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_rinko_cam.ks" target=*supiritasu_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_rinko_cam.ks" target=*supiritasu_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis2.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*supiritasu_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*supiritasu_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis3.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_rinko_gazou.ks" target="*supiritasu_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_rinko_gazou.ks" target="*supiritasu_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high1 == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2 "]
[call storage=H_serihu_rinko.ks target="*supiritasu_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*sounyu_top"  ]
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

[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*sounyu_top"  ]
*nuku

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[cm  ]
[stop_bgmovie  time="0"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="H/HI01_03_00_00.gif"  ]
[call  storage="H_rinko_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「Sắp... ra rồi... chị Rinko... em bắn lên người chị được không...!」[p]
Rinko「B-Bắn đi em...♡ Hãy làm cho chị dính nhem nhuốc bằng tinh dịch của Shun-kun đi♡」[p]
[舜]「Ra đây...! Ưmaaa!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HI01_03_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「A, a♡ Hà, a♡ Ưm...♡ Nóng quá...」[p]
Rinko「Khắp cơ thể ướt nhẹp tinh dịch... a, lãng phí quá...♡」[p]
Rinko「Ưm, phù, mùi nồng nặc quá... hà♡ Hà♡ Em bắn ra thứ đặc sệt nhỉ...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  ]
[l  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HI01_03_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hà... hà... hà...♡ Lượng nhiều quá... hơn nữa, mùi còn nồng nặc nữa♡」[p]
Rinko「Bị bắn đầy lên người mất rồi...♡ Cứ như được bảo rằng chị là của em vậy, chị vui lắm...♡」[p]
Rinko「A... nóng quá làm chị đờ đẫn hết cả ra...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_rinko+=1"  name="Hresult_bukkake_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
Rinko「Aaa♡ C-Con cu đang căng phồng lên ở bên trong kìa♡ Nooo♡ Ưm♡ Phù♡」[p]
[舜]「Em bắn đây, chị Rinko...!」[p]
Rinko「Hà♡ Hà♡ Hà♡ Hà♡ Aaaa♡ Cho chị đi♡ [r]Của Shun-kun... hãy phọt vào tận sâu bên trong đi♡」[p]
[舜]「Ra, ra, ra... bắn đây! Aaaa♡」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HI01_03_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HI01_03_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HI01_03_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Đang bắn ra rồiii...♡ Ở, ở bên trong♡ Thứ nóng hổi đang phọt từng luồng kìa...♡」[p]
Rinko「Hà, a♡ Ưm...♡ Nhỡ có em bé thì phải làm sao đây♡」[p]
Rinko「Trong bụng chị, đang nóng ran lên rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  ]
[l  ]
[jump  storage="H_rinko_supiritasu.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HI01_03_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Hà, hà... a♡ Vẫn đang giật giật trong bụng kìa... bắn ra nhiều lắm♡」[p]
Rinko「Phù, phù... trong bụng, đầy ứ lên mất rồi... ưm, aaaa♡」[p]
Rinko「Không chứa hết nổi... trào ra mất...♡ Chắc chắn là chạm đến tận sâu bên trong rồi nhỉ♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_eval  exp="sf.Hresult_sex_rinko+=1"  name="Hresult_sex_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinko_item_supiritasu"  ]
[call  storage="H_kaihaturesult_rinko.ks"  target="*top"  ]
[jump  storage="EV_item_Spirytus_rinko.ks"  target="*H_back"  