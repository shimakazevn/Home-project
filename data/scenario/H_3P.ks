[_tb_system_call storage=system/_H_3P.ks]

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

[jump  storage="H_3P_2.ks"  target="*top"  cond="f.Hresult_kaihatuLV0_tubomi>999"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="H/H_tubomi_supiritasu.png"  ]
[tb_show_message_window  ]
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
Tsubomi「Giữa em và mẹ, anh thích ai hơn... Hãy dùng tình dục để quyết định ngay bây giờ đi.」[p]
[_tb_end_text]

*top2

[tb_start_tyrano_code]
;待機ボイスをコール_蕾=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call storage="H_tubomi_gauge.ks" target=*voice_3P_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 "]
[call storage="H_tubomi_gauge.ks" target=*voice_3P_2]

;■普通
[else]
[call storage="H_tubomi_gauge.ks" target=*voice_3P_1]
[endif]

;待機ボイスをコール_凛子=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 "]
[call storage="H_rinko_gauge.ks" target=*voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 "]
[call storage="H_rinko_gauge.ks" target=*voice_R_2]

;■普通
[else]
[call storage="H_rinko_gauge.ks" target=*voice_R_1]
[endif]


[_tb_end_tyrano_code]

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_image_hide  time="0"  ]
[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_3P=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　蕾にキス
[button target=*1 enterimg=/H/HUI_kisstubomi.png clickimg=/H/HUI_kisstubomi_on.png x=1192 y=16 graphic=/H/HUI_kisstubomi_on.png]

;右２　凛子にキス
[button target=*2 enterimg=/H/HUI_kissrinko.png clickimg=/H/HUI_kissrinko_on.png x=1104 y=16 graphic=/H/HUI_kissrinko_on.png name="ui"]

;右３　撫でる
[button target=*3 enterimg=/H/HUI_sirinade_on.png clickimg=/H/HUI_sirinade_on.png x=1016 y=16 graphic=/H/HUI_sirinade_on.png name="ui"]

;右４　素股
[button target=*4 enterimg=/H/HUI_sumata.png clickimg=/H/HUI_sumata_on.png x=928 y=16 graphic=/H/HUI_sumata_on.png name="ui"]

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
[if exp="f.Hresult_kaihatuLV0_tubomi >= 0 "]
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
[jump storage="H_3P.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_3P_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[tb_start_tyrano_code]
;蕾キスループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_tubomi_hit"]

[elsif exp="f.H_kiss == 0"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_tubomi1"]

[elsif exp="f.H_kiss == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_tubomi2"]

[elsif exp="f.H_kiss == 2"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_tubomi3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*2

[cm  ]
[tb_start_tyrano_code]
;凛子キスループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_rinko_hit"]
[elsif exp="f.H_kiss == 0"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_rinko1"]

[elsif exp="f.H_kiss == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_rinko2"]

[elsif exp="f.H_kiss == 2"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kiss_rinko3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_kokanseme_tubomi+=1"  name="Hresult_kokanseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*3

[cm  ]
[tb_start_tyrano_code]
;尻撫で_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_naderu_hit"]

[elsif exp="f.H_naderu == 0 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_naderu1"]

[elsif exp="f.H_naderu == 1 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_naderu2"]

[elsif exp="f.H_naderu == 2 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_naderu3"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*4

[cm  ]
[tb_start_tyrano_code]
;素股_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_sumata_hit"]

[elsif exp="f.H_sumata == 0 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_sumata1"]

[elsif exp="f.H_sumata == 1 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_sumata2"]

[elsif exp="f.H_sumata == 2 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_sumata3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*5

[cm  ]
[tb_start_tyrano_code]
;手マン_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_trinkotubomi.ks target="*3P_teman_hit"]

[elsif exp="f.H_teman == 0 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_teman1"]

[elsif exp="f.H_teman == 1 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_teman2"]

[elsif exp="f.H_teman == 2 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_teman3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.Hresult_kokanseme_tubomi+=1"  name="Hresult_kokanseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*6

[cm  ]
[tb_start_tyrano_code]
;アナル攻めループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_anaruseme_hit"]

[elsif exp="f.H_anaruseme == 0"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_anaruseme1"]

[elsif exp="f.H_anaruseme == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_anaruseme2"]

[elsif exp="f.H_anaruseme == 2"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_anaruseme3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_rinkotubomi.ks target="*3P_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Hresult_kansatu_tubomi+=1"  name="Hresult_kansatu_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*sounyu

[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_3P.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
Rinko「Hà♡ Hà♡ Em đã chuẩn bị sẵn sàng rồi đây, anh Shun♡ Nhìn này, bên trong ướt sũng rồi đấy♡」[p]
Rinko「Em muốn anh cắm ngập con cu của anh Shun vào tận sâu bên trong, rồi dập thật mạnh bạo cơ♡」[p]
[舜]「Cách em vòi vĩnh đúng là điêu luyện thật đấy♡ Vậy anh sẽ đâm vào cái khe dâm nóng rực đang mềm nhũn ra này nhé...」[p]
Tsubomi「Lát nữa anh cũng phải đâm vào em đàng hoàng đấy nhé♡ Em cũng muốn được làm tình mãnh liệt như thế cơ♡」[p]
[舜]「Anh biết rồi...! Cứ theo thứ tự đi, anh sẽ chiều chuộng cả hai công bằng mà...」[p]
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
[image layer="0" x=" 1048" y="328" storage="default/HUI_pistopad2.png" time="0" ]
[image layer="0" x=" 1035" y="0" storage="default/HUI_camerasitaji.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入ボイスをコール_凛子=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call storage="H_rinko_gauge.ks" target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 "]
[call storage="H_rinko_gauge.ks" target=*pis_voice_R_2]

;■普通
[else]
[call storage="H_rinko_gauge.ks" target=*pis_voice_R_1]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[mask_off  time="1500"  effect="fadeOut"  ]
*sounyu_top

[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[call  storage="H_kandocheck.ks"  target="*sounyu_top"  ]
[tb_start_tyrano_code]
;H_3P　挿入=========================================

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

;ピストン（蕾）
[button target=*pituton_yukkuri enterimg=/H/HUI_pistontubomi_off.png clickimg=/H/HUI_pistontubomi_on.png x=1048 y=328 graphic=/H/HUI_pistontubomi_on.png name="ui"]

;ピストン（凛子）
[button target=*pituton_hagesiku enterimg=/H/HUI_pistonrinko_off.png clickimg=/H/HUI_pistonrinko_on.png x=1168 y=328 graphic=/H/HUI_pistonrinko_on.png name="ui"]

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
[call storage="H_tubomi_gazou.ks" target="*3P_tubomi_cam1"]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_gazou.ks" target="*3P_rinko_cam1"]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_tubomi_gazou.ks" target="*3P_tubomi_cam2"]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_gazou.ks" target="*3P_rinko_cam2"]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*3P_tubomi_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*3P_tubomi_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿蕾）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_rinkotubomi.ks target="*3P_pisuton_yukkuri_tubomi_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_tubomi1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_tubomi2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_tubomi3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*3P_rinko_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*3P_rinko_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿凛子）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_rinko_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_rinko1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_rinko2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_rinkotubomi.ks target="*3P_pisuton_yukkuri_rinko3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_3P.ks"  target="*sounyu_top"  ]
*syasei

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_start_tyrano_code]
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
;ピストン（蕾に出す）
[button target=*syasei_nakadasi enterimg=/H/HUI_syasei_tubomi_off.png clickimg=/H/HUI_syasei_tubomi_on.png x=1040 y=328 graphic=/H/HUI_syasei_tubomi_on.png]

;ピストン（凛子に出す）
[button target=*syasei_karada enterimg=/H/HUI_syasei_rinko_off.png clickimg=/H/HUI_syasei_rinko_on.png x=1168 y=328 graphic=/H/HUI_syasei_rinko_on.png]

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
[jump  storage="H_3P.ks"  target="*sounyu_top"  ]
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
[bg  time="0"  method="crossfade"  storage="H/H_tubomi_supiritasu.png"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_3P.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
Rinko「A♡ Aaaa♡ Con cu của anh Shun, đến giới hạn rồi nhỉ♡ Không sao đâu, cứ bắn ra đi...♡」[p]
[舜]「Bắn vào trong luôn sao? Vậy là... Tsubomi có thể sắp có thêm em trai hoặc em gái rồi đấy♡」[p]
Rinko「Hà♡ Hà♡ Thế cũng được mà...♡ Cứ bắn vào trong đi... sinh em bé cho em nhé...♡」[p]
[舜]「Vậy anh sẽ bắn ra theo đúng ý em...! A, ra rồi! Bắn, bắn bắn bắn bắn ra mất! Ưm!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_3P.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H11_99_01_01.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Aaaa♡ A♡ A♡ Đang giật từng cơn này... tuyệt quá, mãnh liệt hơn mọi khi... anh đang hưng phấn lắm sao?」[p]
[舜]「Làm tình tạo em bé ngay trước mặt Tsubomi thế này thì chả hưng phấn...! Kìa, mau bảo với con bé là mẹ bị phối giống rồi đi.」[p]
Rinko「Tsubomi...♡ Mẹ bị phối giống mất rồi♡ Hà, a♡ Đang thụ tinh rồi này♡」[p]
[_tb_end_text]

[tb_eval  exp="f.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_3P.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H11_99_01_02.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ooo♡ A♡ A♡ Tinh dịch... bắn ra nhiều quá... trào ra, trào ra ngoài mất thôi♡」[p]
Tsubomi「Trời ơi, kinh khủng quá... E-Em cũng... muốn được bắn ngập vào trong nhiều như thế này cơ♡」[p]
Rinko「Hí♡ B-Bị bắn nhiều thế này... chắc chắn là dính bầu rồi♡ Em lại bị anh biến thành một người mẹ mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_3P.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
Tsubomi「Aaaa♡ Nhanh lên, bắn ra đi... em muốn anh bắn vào trong cơ♡ Này, nhanh lên đi...♡」[p]
[舜]「Hà, a, a, anh bắn đây...! Này, mau tuyên bố với Rinko là em sắp được bắn vào trong đi!」[p]
Tsubomi「Hà♡ A♡ Mẹ ơi♡ Con sắp được anh Shun rót đầy tinh dịch nóng hổi vào trong rồi này♡」[p]
Rinko「Mặt con đê mê nhũn ra hết rồi kìa... Cứ để cậu ấy rót đầy vào đi.」[p]
Tsubomi「Ưm♡ Aaa, con biết rồi♡ Con sẽ để anh ấy bắn hết vào trong nhé♡ O♡ O, ooo♡」[p]
[舜]「Ra rồi...! Bắn bắn bắn bắn đây! A, aaaa!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のムービーを再生

[if exp="f.H_cam1_on == 1"]
[bgmovie storage="H11_21_01_00a.mp4" time=1000 loop=false ]

[elsif exp="f.H_cam1_on == 0"]
[bgmovie storage="H11_21_01_00b.mp4" time=1000 loop=false ]

[endif]
[_tb_end_tyrano_code]

[wait  time="3000"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_3P.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H11_99_02_01.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「O♡ Tuyệt quá♡ B-Bên trong♡ Đang giật giật... bắn ra nhiều quá đi♡」[p]
Rinko「Tsubomi, được bắn vào trong rồi thì phải cảm ơn anh Shun chứ♡ Kìa, ngẩng mặt lên cho cậu ấy xem đi.」[p]
Tsubomi「Ưm♡ Kư♡ Hà, hà♡ C-Cảm ơn anh vì đã bắn vào trong em nhé♡ Sướng quá đi mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="f.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_3P.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/H11_99_02_02.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Aa♡ Aa♡ Nhiều thế này em không chứa hết được đâu♡ Trào ra ngoài mất thôi♡」[p]
[舜]「Anh sẽ cắm nguyên con cu bên trong để tinh dịch không trào ra ngoài, không sao đâu, đây này.」[p]
Tsubomi「Oho♡ Vừa phọt tinh ra vừa nhấp như thế là không được đâu♡ Sướng quá đi mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="f.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
*end

[cm  ]
[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_eval  exp="f.Hresult_sex_tubomi+=1"  name="Hresult_sex_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinkotubomi_3P"  ]
[call  storage="H_kaihaturesult_rinko.ks"  target="*top"  ]
[call  storage="H_kaihaturesult_tubomi.ks"  target="*top"  ]
[jump  storage="EV_3P.ks"  target="*H_END" ]
