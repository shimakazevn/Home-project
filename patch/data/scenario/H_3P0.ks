[_tb_system_call storage=system/_H_3P0.ks]

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

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="H/H3P_02_03_00.gif"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.H_hit=0"  name="H_hit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_koudoukaisu=0"  name="H_koudoukaisu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_sounyu=0"  name="H_sounyu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_pisutonspeed=0"  name="H_pisutonspeed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_koudoukaisu=16"  name="H_koudoukaisu"  cmd="="  op="t"  val="16"  val_2="undefined"  ]
[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="2" x=" 1048" y="328" storage="default/HUI_pistopad2.png" time="0" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_3P_kaisi1.mp3" buf="2"]Tsubomi「Giữa em và mẹ, anh thích ai hơn... Hãy dùng tình dục để quyết định ngay bây giờ đi.」[p]
[_tb_end_text]

[wait  time="1500"  ]
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

*sounyu_top

[tb_clear_images]

[tb_start_tyrano_code]
;ベース画像（挿入）
[image layer="2" x=" 1048" y="328" storage="default/HUI_pistopad2.png" time="0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;H_3P　挿入=========================================

;射精ボタン
[button target=*syasei enterimg=/H/HUI_otokzetcho2_off.png clickimg=/H/HUI_otokzetcho2_on.png x=1104 y=386 graphic=/H/HUI_otokzetcho2_on.png name="ui"]

;ピストン（蕾）
[button target=*pituton_yukkuri enterimg=/H/HUI_pistontubomi_off.png clickimg=/H/HUI_pistontubomi_on.png x=1048 y=328 graphic=/H/HUI_pistontubomi_on.png name="ui"]

;ピストン（凛子）
[button target=*pituton_hagesiku enterimg=/H/HUI_pistonrinko_off.png clickimg=/H/HUI_pistonrinko_on.png x=1168 y=328 graphic=/H/HUI_pistonrinko_on.png name="ui"]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui" name="ui"]

;=======================================================
[anim name="ui" opacity=0 time=0]
[anim name="ui" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*pituton_yukkuri

[cm  ]
[call  storage="H_rinko_gauge.ks"  target="*voice_R_2"  ]
[call  storage="H_tubomi_gauge.ks"  target="*pis_voice_R_3"  ]
[tb_start_tyrano_code]
;画像表示(蕾)
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
[tb_eval  exp="f.H_keikenti_tubomi+=12"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[jump  storage="H_3P0.ks"  target="*sounyu_top"  ]
*pituton_hagesiku

[cm  ]
[call  storage="H_tubomi_gauge.ks"  target="*voice_R_3"  ]
[call  storage="H_rinko_gauge.ks"  target="*pis_voice_R_3"  ]
[tb_start_tyrano_code]
;画像表示(凛子)
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
[tb_eval  exp="f.H_keikenti_rinko+=12"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[jump  storage="H_3P0.ks"  target="*sounyu_top"  ]
*syasei

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_clear_images]

[tb_start_tyrano_code]
;蕾に出す
[button target=*syasei_tubomi enterimg=/H/HUI_syasei_tubomi_off.png clickimg=/H/HUI_syasei_tubomi_on.png x=1048 y=328 graphic=/H/HUI_syasei_tubomi_on.png]

;凛子に出す
[button target=*syasei_rinko enterimg=/H/HUI_syasei_rinko_off.png clickimg=/H/HUI_syasei_rinko_on.png x=1168 y=328 graphic=/H/HUI_syasei_rinko_on.png]

;戻る
[button target=*sounyu_top enterimg=/H/HUI_modoru0_off.png clickimg=/H/HUI_modoru0_on.png x=1104 y=384 graphic=/H/HUI_modoru0_on.png]

[_tb_end_tyrano_code]

[s  ]
*nuku

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_clear_images]

[bg  time="0"  method="crossfade"  storage="H/H3P_02_03_00.gif"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="H_3P0.ks"  target="*sounyu_top"  ]
*syasei_rinko

[cm  ]
[tb_start_text mode=1 ]
Rinko「A♡ Aaaa♡ Con cu của anh Shun, đến giới hạn rồi nhỉ♡ Không sao đâu, cứ bắn ra đi...♡」[p]
[舜]「Bắn vào trong luôn sao? Vậy là... Tsubomi có thể sắp có thêm em trai hoặc em gái rồi đấy♡」[p]
Rinko「Hà♡ Hà♡ Thế cũng được mà...♡ Cứ bắn vào trong đi... sinh em bé cho em nhé...♡」[p]
[舜]「Vậy anh sẽ bắn ra theo đúng ý em...! A, ra rồi! Ưm!」[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/H3P_G_rinko.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Rinko「Ooo♡ A♡ A♡ Tinh dịch... bắn ra nhiều quá... trào ra, trào ra ngoài mất thôi♡」[p]
Tsubomi「Trời ơi, kinh khủng quá... E-Em cũng... muốn được bắn ngập vào trong nhiều như thế này cơ♡」[p]
Rinko「Hí♡ B-Bị bắn nhiều thế này... chắc chắn là dính bầu rồi♡ Em lại bị anh biến thành một người mẹ mất rồi♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_rinko+=1"  name="Hresult_nakadasi_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_rinko+=80"  name="H_keikenti_rinko"  cmd="+="  op="t"  val="80"  val_2="undefined"  ]
[l  ]
[jump  storage="H_3P0.ks"  target="*end"  ]
*syasei_tubomi

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
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[mask  time="1000"  effect="fadeIn"  color="0xffffff"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="H_syasei.mp3"  ]
[bg  time="0"  method="crossfade"  storage="H/H3P_G2_tubomi.png"  ]
[wait  time="1500"  ]
[mask_off  time="4000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Tsubomi「O♡ Tuyệt quá♡ B-Bên trong♡ Đang giật giật... bắn ra nhiều quá đi♡」[p]
Rinko「Tsubomi, được bắn vào trong rồi thì phải cảm ơn anh Shun chứ♡ Kìa, ngẩng mặt lên cho cậu ấy xem đi.」[p]
Tsubomi「Ưm♡ Kư♡ Hà, hà♡ C-Cảm ơn anh vì đã bắn vào trong em nhé♡ Sướng quá đi mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_nakadasi_tubomi+=1"  name="Hresult_nakadasi_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_tubomi+=80"  name="H_keikenti_tubomi"  cmd="+="  op="t"  val="80"  val_2="undefined"  ]
[l  ]
[jump  storage="H_3P0.ks"  target="*end"  ]
*end

[cm  ]
[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_eval  exp="f.Hresult_sex_tubomi+=1"  name="Hresult_sex_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.Hresult_sex_rinko+=1"  name="Hresult_sex_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="rinkotubomi_3P"  ]
[call  storage="H_kaihaturesult_rinko.ks"  target="*top"  ]
[call  storage="H_kaihaturesult_tubomi.ks"  target="*top"  ]
[jump  storage="EV_3P.ks"  target="*H_END"  