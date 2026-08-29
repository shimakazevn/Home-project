]
[_tb_system_call storage=system/_H_nagi_J2_2.ks]

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
[bg  time="0"  method="crossfade"  storage="H/HJ02_01_00_00.gif"  ]
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
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_nagi_kaisi3.mp3" buf="1"]凪「体、ヌルヌルになっちゃった…ふふ、お風呂で遊ぶなんて悪いことしてる気分だね♡」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_凪=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 "]
[call storage="H_nagi_gauge.ks" target=*voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 "]
[call storage="H_nagi_gauge.ks" target=*voice_J_2]

;■普通
[else]
[call storage="H_nagi_gauge.ks" target=*voice_J_1]
[endif]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_clear_images]

[call  storage="H_nagi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_J1_凪=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　Dキス
[button target=*1 enterimg=/H/HUI_Dkiss.png clickimg=/H/HUI_Dkiss_on.png x=1192 y=16 graphic=/H/HUI_Dkiss_on.png]

;右２　尻コキ（激しく）
[button target=*2 enterimg=/H/HUI_sirikoki2.png clickimg=/H/HUI_sirikoki2_on.png x=1104 y=16 graphic=/H/HUI_sirikoki2_on.png name="ui"]

;右３　胸揉み（鷲掴み）
[button target=*3 enterimg=/H/HUI_munewasidukami.png clickimg=/H/HUI_munewasidukami_on.png x=1016 y=16 graphic=/H/HUI_munewasidukami_on.png name="ui"]

;右４　尻撫で
[button target=*4 enterimg=/H/HUI_sirinade.png clickimg=/H/HUI_sirinade_on.png x=928 y=16 graphic=/H/HUI_sirinade_on.png name="ui"]

;右5　乳首弄り
[button target=*5 enterimg=/H/HUI_tikubiijiri.png clickimg=/H/HUI_tikubiijiri_on.png x=840 y=16 graphic=/H/HUI_tikubiijiri_on.png name="ui"]

;右6　潮吹き
[button target=*6 enterimg=/H/HUI_sio.png clickimg=/H/HUI_sio_on.png x=752 y=16 graphic=/H/HUI_sio_on.png name="ui"]

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
[jump storage="H_nagi_J2.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_nagi_J2_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_kiss2.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_01_02.gif"  ]
[tb_start_tyrano_code]
;Dキス_ループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_Dkiss_hit"]

[elsif exp="f.H_kiss == 0"]
[call storage=H_serihu_nagi.ks target="*J2_2_Dkiss1"]

[elsif exp="f.H_kiss == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_Dkiss2"]

[elsif exp="f.H_kiss == 2"]
[call storage=H_serihu_nagi.ks target="*J2_2_Dkiss3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman2.mp3"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_30_02.gif"  ]
[tb_start_tyrano_code]
;尻コキ強_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_sirikoki_hit"]

[elsif exp="f.H_sirikoki == 0"]
[call storage=H_serihu_nagi.ks target="*J2_2_sirikoki1"]

[elsif exp="f.H_sirikoki == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_sirikoki2"]

[elsif exp="f.H_sirikoki == 2"]
[call storage=H_serihu_nagi.ks target="*J2_2_sirikoki3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*3

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_02_02.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_nagi.ks target="*J2_2_munemomi_hit"]

[elsif exp="f.H_munemomi == 0 "]
[call storage=H_serihu_nagi.ks target="*J2_2_munemomi1"]

[elsif exp="f.H_munemomi == 1 "]
[call storage=H_serihu_nagi.ks target="*J2_2_munemomi2"]

[elsif exp="f.H_munemomi == 2 "]
[call storage=H_serihu_nagi.ks target="*J2_2_munemomi3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*4

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_08_06.gif"  ]
[tb_start_tyrano_code]
;尻撫で_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_sirinade_hit"]

[elsif exp="f.H_sirinade == 0 "]
[call storage=H_serihu_nagi.ks target="*J2_2_sirinade1"]

[elsif exp="f.H_sirinade == 1 "]
[call storage=H_serihu_nagi.ks target="*J2_2_sirinade2"]

[elsif exp="f.H_sirinade == 2 "]
[call storage=H_serihu_nagi.ks target="*J2_2_sirinade3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*5

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_03_01.gif"  ]
[tb_start_tyrano_code]
;乳首弄りでループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_nagi.ks target="*J2_2_tikubiijiri_hit"]

[elsif exp="f.H_tikubiijiri == 0 "]
[call storage=H_serihu_nagi.ks target="*J2_2_tikubiijiri1"]

[elsif exp="f.H_tikubiijiri == 1 "]
[call storage=H_serihu_nagi.ks target="*J2_2_tikubiijiri2"]

[elsif exp="f.H_tikubiijiri == 2 "]
[call storage=H_serihu_nagi.ks target="*J2_2_tikubiijiri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*6

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="teman.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_04_04.gif"  ]
[tb_start_tyrano_code]
;潮吹きループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_siohuki_hit"]

[elsif exp="f.H_siohuki == 0"]
[call storage=H_serihu_nagi.ks target="*J2_2_siohuki1"]

[elsif exp="f.H_siohuki == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_siohuki2"]

[elsif exp="f.H_siohuki == 2"]
[call storage=H_serihu_nagi.ks target="*J2_2_siohuki3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_01_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_nagi.ks target="*J2_2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_nagi.ks target="*J2_2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_nagi.ks target="*J2_2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_nagi+=1"  name="Hresult_kansatu_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_nagi_J2_2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「あぁ、ヤバ…ヌルヌル過ぎて腰持ち上げたら先っぽ中入りそ」[p]
[playse storage="nagi/voice_j2_2_nagi_sou1.mp3" buf="1"]凪「はぁ、あっ、んんっ♡　[舜]ちゃんの先っぽからも熱くてトロトロなの溢れてるもんね…」[p]
[playse storage="nagi/voice_j2_2_nagi_sou2.mp3" buf="1"]凪「全部グチャグチャに混ぜて…中に挿れて…♡」[p]
[舜]「挿れるよ…くっ…あっ、あぁぁ…ぬるんって…中まで入っちゃった」[p]
[playse storage="nagi/voice_j2_2_nagi_sou3.mp3" buf="1"]凪「ひぅぅっ…♡　んっ…はぁ、あっ、[舜]ちゃんのすっごく熱くなってる…♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[call  storage="H_nagi_gazou.ks"  target="*J2_yukkuri_cam1"  ]
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
[call storage="H_nagi_cam.ks" target=*J2_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_nagi_cam.ks" target=*J2_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_nagi_cam.ks" target=*J2_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_nagi_cam.ks" target=*J2_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_j_nagi_pis2_take3.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_nagi_gazou.ks" target="*J2_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_nagi_gazou.ks" target="*J2_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_j_nagi_pis3.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_nagi_gazou.ks" target="*J2_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_nagi_gazou.ks" target="*J2_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_nagi.ks target="*J2_2_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_nagi_J2_2.ks"  target="*sounyu_top"  ]
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
[bg  time="0"  method="crossfade"  storage="H/HJ02_01_00_00.gif"  ]
[call  storage="H_nagi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「はぁ、はっ…あぁ、出る…！　も、出る…凪にかけたい…！」[p]
凪「かけてっ♡　真っ白になっちゃうくらい…[舜]ちゃんの精子たっぷりかけてほしいのっ♡」[p]
凪「ヌルヌルトロトロにしてぇっ…♡」[p]
[舜]「あぁぁっ…！　イク、イクイクイクっ…！　出っる…！」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_01_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んんっ…すっごい量…♡　ローションと精子で体中ドロドロになっちゃったぁ…♡」[p]
凪「混ざり合って…エッチな液体できあがっちゃったね…♡」[p]
凪「これ、お肌に塗り込んで…[舜]ちゃんの匂い…染み込ませていいのっ？」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_J2_2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_01_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁっ♡　はぁ、はっ…すっごい量…♡　オスの匂いでクラクラしちゃうよ…♡」[p]
凪「こんなエッチで気持ちいい遊び…今だから楽しめるんだね…♡」[p]
凪「またしたくなっちゃったら、付き合ってほしいの…♡　その時もまた精子でトロトロにして♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_nagi+=1"  name="Hresult_bukkake_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_J2_2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
[舜]「くっ…もう出る…！　どこに出してほしい…！？」[p]
凪「はぁ、はっ…[舜]ちゃん…中に…中に出してほしいのっ♡　全部注いでっ♡」[p]
凪「熱々の精子っ、ひとり占めさせてっ…♡」[p]
[舜]「可愛いワガママ言えるようになったんだ？　可愛い…くっ、出すよ…！　出る、出る出るっ…！」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HJ02_01_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HJ02_01_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_nagi_J2_2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_01_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「あぁぁぁぁっ♡　きたぁぁっ♡　ビュルビュルって中出てるっ…♡」[p]
凪「[舜]ちゃんでいっぱいになっちゃった…♡　お風呂で遊んでるだけ、なのにっ…♡」[p]
凪「遊んで気持ちよくなっちゃうなんて…♡　私たち、悪い子だね♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_nagi+=1"  name="Hresult_nakadasi_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_nagi_J2_2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_01_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
凪「んぅぅぅっ♡　あっ♡　あぁぁっ♡　だ、だめ…中、パンクしちゃう…♡」[p]
凪「こ、こんな量出ちゃうなんて聞いてないっ♡　はぁ、はっ…[舜]ちゃん興奮しすぎだよぉ♡」[p]
凪「んっ…はぁ、あっ…動いたら溢れちゃう…♡　とろんって出ちゃう♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_nagi+=1"  name="Hresult_nakadasi_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_eval  exp="sf.Hresult_sex_nagi+=1"  name="Hresult_sex_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_HJ2_2"  ]
[call  storage="H_kaihaturesult_nagi.ks"  target="*top"  ]
[jump  storage="EV_nagi_J.ks"  target="*EV2_back"  