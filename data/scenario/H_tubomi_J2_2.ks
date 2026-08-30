
[_tb_system_call storage=system/_H_tubomi_J2_2.ks]

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
[bg  time="0"  method="crossfade"  storage="H/HJ02_02_00_00.gif"  ]
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
[playse storage="tubomi/voice_j_tubomi_kaisi3.mp3" buf="2"]Tsubomi「Một cô vợ nhỏ biết hầu hạ chuyện giường chiếu dâm đãng thế này thì sao nào? Đã vậy còn siêu cấp đáng yêu nữa chứ♡ Anh thích lắm đúng không?」[p]
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

[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_clear_images]

[call  storage="H_tubomi_gauge.ks"  target="*zettyou1"  cond="f.H_zettyou>99"  ]
[tb_start_tyrano_code]
;H_J2_1蕾=========================================

;右7  会話
[button target=*kaiwa enterimg=/H/HUI_talk_off.png clickimg=/H/HUI_talk_on.png x=680 y=8 graphic=/H/HUI_talk_on.png]

;右１　Dキス
[button target=*1 enterimg=/H/HUI_Dkiss.png clickimg=/H/HUI_Dkiss_on.png x=1192 y=16 graphic=/H/HUI_Dkiss_on.png]

;右２　胸揉み（鷲掴み）
[button target=*2 enterimg=/H/HUI_munewasidukami.png clickimg=/H/HUI_munewasidukami_on.png x=1104 y=16 graphic=/H/HUI_munewasidukami_on.png name="ui"]

;右３　乳首弄り
[button target=*3 enterimg=/H/HUI_tikubiijiri.png clickimg=/H/HUI_tikubiijiri_on.png x=1016 y=16 graphic=/H/HUI_tikubiijiri_on.png name="ui"]

;右４　撫でる
[button target=*4 enterimg=/H/HUI_asinade.png clickimg=/H/HUI_asinade_on.png x=928 y=16 graphic=/H/HUI_asinade_on.png name="ui"]

;右5　素股
[button target=*5 enterimg=/H/HUI_sumata2.png clickimg=/H/HUI_sumata2_on.png x=840 y=16 graphic=/H/HUI_sumata2_on.png name="ui"]

;右6　手コキ
[button target=*6 enterimg=/H/HUI_tekoki2.png clickimg=/H/HUI_tekoki2_on.png x=752 y=16 graphic=/H/HUI_tekoki2_on.png name="ui"]

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
[jump storage="H_tubomi_J2.ks" target=*top2]

*kirikae_high
;ボタン切り替え（高）
[jump storage="H_tubomi_J2_2.ks" target=*top2]
[_tb_end_tyrano_code]

*1

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_kiss2.mp3"  loop="true"  clear="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_01_02.gif"  ]
[tb_start_tyrano_code]
;Dキス_ループパターン

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_Dkiss_hit"]

[elsif exp="f.H_Dkiss == 0"]
[call storage=H_serihu_tubomi.ks target="*J2_2_Dkiss1"]

[elsif exp="f.H_Dkiss == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_Dkiss2"]

[elsif exp="f.H_Dkiss == 2"]
[call storage=H_serihu_tubomi.ks target="*J2_2_Dkiss3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*2

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_02_02.gif"  ]
[tb_start_tyrano_code]
;胸揉み_ループパターン

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_munemomi_hit"]

[elsif exp="f.H_munemomi == 0"]
[call storage=H_serihu_tubomi.ks target="*J2_2_munemomi1"]

[elsif exp="f.H_munemomi == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_munemomi2"]

[elsif exp="f.H_munemomi == 2"]
[call storage=H_serihu_tubomi.ks target="*J2_2_munemomi3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*3

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_03_01.gif"  ]
[tb_start_tyrano_code]
;乳首弄り_ループパターン

[if exp="f.H_hit == 5 && f.H_high3 == 1 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_tikubiijiri_hit"]

[elsif exp="f.H_tikubiijiri == 0 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_tikubiijiri1"]

[elsif exp="f.H_tikubiijiri == 1 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_tikubiijiri2"]

[elsif exp="f.H_tikubiijiri == 2 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_tikubiijiri3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_muneseme_tubomi+=1"  name="Hresult_muneseme_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*4

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_08_03.gif"  ]
[tb_start_tyrano_code]
;撫でる_ループパターン

[if exp="f.H_hit == 5 && f.H_high4 == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_naderu_hit"]

[elsif exp="f.H_naderu == 0 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_naderu1"]

[elsif exp="f.H_naderu == 1 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_naderu2"]

[elsif exp="f.H_naderu == 2 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_naderu3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*5

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman1.mp3"  loop="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_20_02.gif"  ]
[tb_start_tyrano_code]
;素股_ループパターン

[if exp="f.H_hit == 5 && f.H_high5 == 1 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_sumata_hit"]

[elsif exp="f.H_sumata == 0 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_sumata1"]

[elsif exp="f.H_sumata == 1 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_sumata2"]

[elsif exp="f.H_sumata == 2 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_sumata3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*6

[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_teman2.mp3"  loop="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_40_02.gif"  ]
[tb_start_tyrano_code]
;手コキループパターン

[if exp="f.H_hit == 5 && f.H_high6 == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_tekoki_hit"]

[elsif exp="f.H_tekoki == 0"]
[call storage=H_serihu_tubomi.ks target="*J2_2_tekoki1"]

[elsif exp="f.H_tekoki == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_tekoki2"]

[elsif exp="f.H_tekoki == 2"]
[call storage=H_serihu_tubomi.ks target="*J2_2_tekoki3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*kaiwa

[cm  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="H/HJ02_02_00_01.gif"  ]
[tb_start_tyrano_code]
;会話_ループパターン

[if exp="f.H_kaiwa == 0 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_kaiwa1"]

[elsif exp="f.H_kaiwa == 1 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_kaiwa2"]

[elsif exp="f.H_kaiwa == 2 "]
[call storage=H_serihu_tubomi.ks target="*J2_2_kaiwa3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="sf.Hresult_kansatu_tubomi+=1"  name="Hresult_kansatu_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*sounyu

[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="0" time="0"]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[cm  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*sounyu_skip"  cond="f.H_sounyu==1"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j2_2_tubomi_sou1.mp3" buf="2"]Tsubomi「Con cu đang cương cứng cong vút lên rồi nè, em sẽ đút nó vào trong ngay đây...♡ Đừng cử động nhé? Cứ thế này, từ từ thôi──」[p]
[舜]「Khốn thật, lối vào nóng rực lên rồi... Ướt sũng nhầy nhụa luôn kìa」[p]
[playse storage="tubomi/voice_j2_2_tubomi_sou2.mp3" buf="2"]Tsubomi「Đúng thế đấy♡ Tại vì anh cứ chạm vào liên tục... Nên nó mới tan chảy ra thế này nè... Ưm, a...♡ Con cu to lớn đang chui vào trong rồi...」[p]
[playse storage="tubomi/voice_j2_2_tubomi_sou3.mp3" buf="2"]Tsubomi「Hức... a...♡ A...♡ A...♡ Tuyệt quá... Bên trong bị nong rộng hết cả ra rồi kìa♡ Ưm, ư... ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="f.H_sounyu=1"  name="H_sounyu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*sounyu_skip

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[call  storage="H_commandONOFF.ks"  target="*aibu_command_off"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[call  storage="H_tubomi_gazou.ks"  target="*J2_hagesiku_cam1"  ]
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
;H_J1_1蕾　挿入=========================================

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
[call storage="H_tubomi_cam.ks" target=*J2_cam1_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_cam.ks" target=*J2_cam1_hagesiku]
[endif]

[jump target=*sounyu_top]

*cam2

[cm  ]

;スピード別の画像を表示
[if exp="f.H_pisutonspeed== 0"]
[call storage="H_tubomi_cam.ks" target=*J2_cam2_yukkuri]
[elsif exp="f.H_pisutonspeed== 1"]
[call storage="H_tubomi_cam.ks" target=*J2_cam2_hagesiku]
[endif]

[jump target=*sounyu_top]
[_tb_end_tyrano_code]

*pituton_yukkuri

[playse  volume="100"  time="1000"  buf="0"  storage="tubomi/voice_j_tubomi_pis2.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(ゆっくり)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*J2_yukkuri_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*J2_yukkuri_cam2"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿ゆっくり）

[if exp="f.H_hit == 5 && f.H_high1 == 1"]
[call storage=H_serihu_tubomi.ks target="*J1_2_pisuton_yukkuri_hit"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 0"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_yukkuri1"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_yukkuri2"]

[elsif exp="f.H_supiritasu_pisuton_yukkuri == 2"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_yukkuri3"]

[endif]


[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[playse  volume="100"  time="1000"  buf="0"  storage="tubomi/voice_j_tubomi_pis3.mp3"  loop="true"  ]
[cm  ]
[tb_start_tyrano_code]
;画像表示(激しく)
[if exp="f.H_cam1_on == 1"]
[call storage="H_tubomi_gazou.ks" target="*J2_hagesiku_cam1"]
[elsif exp="f.H_cam1_on == 0"]
[call storage="H_tubomi_gazou.ks" target="*J2_hagesiku_cam2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;セリフをコール（挿入＿激しく）

[if exp="f.H_hit == 5 && f.H_high2 == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_hagesiku_hit"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 0"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_hagesiku1"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 1"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_hagesiku2"]

[elsif exp="f.H_supiritasu_pisuton_hagesiku == 2"]
[call storage=H_serihu_tubomi.ks target="*J2_2_pisuton_hagesiku3"]

[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_koudoukaisu+=1"  name="H_koudoukaisu"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_pisutonspeed=1"  name="H_pisutonspeed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*sounyu_top"  ]
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
[jump  storage="H_tubomi_J2_2.ks"  target="*sounyu_top"  ]
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
[bg  time="0"  method="crossfade"  storage="H/HJ02_02_00_00.gif"  ]
[call  storage="H_tubomi_gauge.ks"  target="*set"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[tb_start_text mode=1 ]
[舜]「A... a...! Không xong rồi... Sắp ra mất rồi... Tsubomi... Cho anh bắn tinh đi...!」[p]
Tsubomi「Vẫn chưa được đâu♡ Em muốn con cu cương cứng ngắc sắp bắn này... Đâm thụt thật nhiều vào tận sâu bên trong cơ♡」[p]
Tsubomi「Nhìn này...♡ Khốn thật, bên trong nó cứ giật giật thắt lại... Vì muốn bắn, muốn xuất tinh lắm rồi đúng không nào♡ Đáng yêu ghê♡」[p]
[舜]「H-Hết chịu nổi rồi...! A, ra mất... Bắn đây, bắn bắn bắn! Anh xuất đây...!」[p]
Tsubomi「Đành chịu vậy thôi nè♡ Bắn hết lên người em đi...♡ Để em bị nhuộm trọn trong tinh dịch của anh nào...♡」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*syasei_karada_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_02_G3.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ư... hức♡ Ôi trời ơi♡ A...♡ Bù cho lúc nãy phải nhịn... Bắn ra nhiều kinh khủng khiếp luôn nè...♡」[p]
Tsubomi「A...♡ Thực sự là... Dính đầy tinh dịch khắp người rồi còn gì nữa♡ Toàn thân em nồng nặc mùi ân ái luôn rồi...」[p]
Tsubomi「Trời ạ... Rõ ràng cứ tưởng là xong rồi cơ chứ... Vậy mà cơ thể lại nóng ran lên nữa rồi...♡ Đừng có làm em nứng thêm nữa mà」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*end"  ]
*syasei_karada_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_02_G4.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Hức... a...♡ Ôi...♡ Ôi trời ơi♡ A...♡ Hà, em bị anh đánh dấu chủ quyền mất rồi♡」[p]
Tsubomi「Thế này thì... Chỉ tắm sơ qua thôi làm sao mà hết mùi được chứ...♡ Phù... Phù phù♡ Mùi nồng thật đấy♡」[p]
Tsubomi「Mùi hương xộc thẳng vào tận sâu trong đầu...♡ Khiến em choáng váng cả người...♡ Ưm, hà... Sướng quá đi mất thôi♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_bukkake_tubomi+=1"  name="Hresult_bukkake_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*end"  ]
*syasei_nakadasi

[cm  ]
[tb_start_text mode=1 ]
Tsubomi「Phù...♡ Phù...♡ Phù...♡ Anh muốn bắn vào bên trong em đúng không...? Muốn áp sát vào nơi sâu nhất... Rồi bắn phì phì từng đợt vào đúng không...♡」[p]
Tsubomi「Nếu muốn bắn dòng tinh trùng nóng hổi cô đặc tích tụ bấy lâu nay ra... Thì hãy nói câu 『Anh yêu em』 đàng hoàng đi đã nào♡」[p]
[舜]「Anh yêu em mà...! Với anh chỉ có Tsubomi thôi...! Hà, a... Ra mất... Nguy hiểm quá rồi!」[p]
Tsubomi「Ưm...♡ Em hạnh phúc lắm♡ Bắn ra đi anh♡ Cứ việc trút hết toàn bộ vào bên trong em đi ạ♡」[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂＿カメラ別のフィニッシュを表示

[if exp="f.H_cam1_on == 1"]
[bg storage="H/HJ02_02_90_99A.gif" time=1000]

[elsif exp="f.H_cam1_on == 0"]
[bg storage="H/HJ02_02_90_99B.gif" time=1000]

[endif]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[wait  time="1500"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*syasei_nakadasi_tairyou"  cond="f.H_koudoukaisu>14"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_02_G1.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「A... a... a...♡ B-Bên trong... Tinh dịch đang trào ừng ực vào trong em rồi...♡ Ôi...♡ Ôi trời ơi♡」[p]
[舜]「Con cu của anh, có khi đang dốc hết sức để biến Tsubomi thành người của riêng mình đấy...」[p]
Tsubomi「Ưm...♡ Không cần phải gồng mình đến thế đâu mà, em đã là người của anh từ lâu lắm rồi cơ mà♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[l  ]
[jump  storage="H_tubomi_J2_2.ks"  target="*end"  ]
*syasei_nakadasi_tairyou

[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[stop_bgmovie  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="H/HJ02_02_G2.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「Ư...♡ Ôi...♡ A... Hỏng mất thôi...♡ Bắn ra một lượng khổng lồ luôn rồi này♡」[p]
Tsubomi「Đây chính là... Minh chứng cho thấy anh yêu em nhiều đến nhường nào đúng không nè♡ Trào cả ra ngoài luôn rồi kìa♡」[p]
Tsubomi「Cứ nghĩ đến chuyện anh vừa nghĩ về em, vừa vì em mà hưng phấn đến mức này... Là em thấy vừa hạnh phúc vừa vui sướng vô cùng luôn ý♡」[p]
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
[tb_replay  id="tubomi_HJ2_2"  ]
[call  storage="H_kaihaturesult_tubomi.ks"  target="*top"  ]
[jump  storage="EV_tubomi_J.ks"  target="*EV2_back"  