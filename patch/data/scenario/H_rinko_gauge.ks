
[_tb_system_call storage=system/_H_rinko_gauge.ks]

*voice_J_1

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_J_2

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_J_3

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_taiki3.mp3"  loop="true"  ]
[return  ]
*voice_R_1

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_R_2

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_R_3

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_taiki3.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_1

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis1.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_2

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis2.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_3

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_j_rinko_pis3.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_1

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_pis1.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_2

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_pis2.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_3

[playse  volume="100"  time="1000"  buf="3"  storage="rinko/voice_r_rinko_pis3.mp3"  loop="true"  ]
[return  ]
*set

[tb_start_tyrano_code]
[layopt layer="0" visible="true"]
[image storage="default/H_EcstasyGauge_base.png" layer="0" left="0" top="0" name="zettyou_base"]
[image storage="default/H_EcstasGauge_bar.png" layer="0" left="48" top="16" name="zettyou_active"]

[_tb_end_tyrano_code]

*update

[iscript]
f.percent = (100 - (f.H_zettyou / f.H_zettyou_max * 100)) + '%';
$('.zettyou_active').css({
'clip-path': 'inset(0 ' + f.percent + ' 0 0)'
});
[endscript]

[return  ]
*zettyou1

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂時、段階別のセリフにジャンプ
[if exp="f.H_zettyou_kaisuu == 1"]
[jump target="*zettyou2"]

[elsif exp="f.H_zettyou_kaisuu == 2"]
[jump target="*zettyou3"]

[elsif exp="f.H_zettyou_kaisuu == 3"]
[jump target="*zettyou4"]

[elsif exp="f.H_zettyou_kaisuu == 4"]
[jump target="*zettyou5"]

[elsif exp="f.H_zettyou_kaisuu >= 5"]
[jump target="*zettyou6"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou1_1.mp3" buf="3"]Rinko「A... a... ra mất... a, a, aaaa」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou1_2.mp3" buf="3"]Rinko「Hà, hà, hà... chị xin lỗi, chỉ có mình chị là sướng trước mất rồi...」[p]
[playse storage="rinko/voice_j_rinko_zettyou1_3.mp3" buf="3"]Rinko「Cùng nhau, sướng đi em...?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou2

[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou2_1.mp3" buf="3"]Rinko「Aaa♡ A... chỗ đó, thích quá...♡ A, ra, ra mất♡ Aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Khuôn mặt lúc lên đỉnh, đáng yêu quá nhỉ.」[p]
[playse storage="rinko/voice_j_rinko_zettyou2_2.mp3" buf="3"]Rinko「Xấu hổ quá... mặt chị có bị giãn ra kỳ lạ không?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou3

[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou3_1.mp3" buf="3"]Rinko「Ưm... lại lên đỉnh mất... tuyệt quá, ập đến rồi... a, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou3_2.mp3" buf="3"]Rinko「Hà, hà... chỉ một mình chị được sướng thế này có sao không...?」[p]
[playse storage="rinko/voice_j_rinko_zettyou3_3.mp3" buf="3"]Rinko「Lớn tuổi hơn mà toàn được em làm cho thế này, chị thấy có lỗi quá...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou4

[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou4_1.mp3" buf="3"]Rinko「Cái gì, thế này... a, ra mất... ra, ra, ra mất♡ A, hiaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou4_2.mp3" buf="3"]Rinko「Hà... hà... nãy giờ toàn bị làm cho lên đỉnh thôi... ưm, phù, phù...」[p]
[playse storage="rinko/voice_j_rinko_zettyou4_3.mp3" buf="3"]Rinko「Em giỏi quá nhỉ... hay là, do chúng ta hợp nhau...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou5

[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou5_1.mp3" buf="3"]Rinko「Hơn nữa là... chị trở nên kỳ lạ mất thôi♡ A, không được, lên đỉn... a, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou5_2.mp3" buf="3"]Rinko「Phù, phù, ưm... cứ như sắp hỏng mất... nhưng mà, đây là lần đầu tiên chị thấy sướng thế này.」[p]
[playse storage="rinko/voice_j_rinko_zettyou5_3.mp3" buf="3"]Rinko「Làm sao đây, nếu chị thành thói quen thì em phải chịu trách nhiệm đấy nhé...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6

[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou6_1.mp3" buf="3"]Rinko「An♡ A♡ A♡ Ra mất...♡ Chị lên đỉnh mất... a, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou6_2.mp3" buf="3"]Rinko「Phù, ưm♡ Bên trong, vẫn còn nóng lắm...♡ Chị cảm nhận được nó đang giật giật kìa♡」[p]
[playse storage="rinko/voice_j_rinko_zettyou6_3.mp3" buf="3"]Rinko「Chắc... không có tình dục thì chị không chịu nổi mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Htalk=1"  name="Htalk"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou1_nikubenki

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;絶頂時、段階別のセリフにジャンプ
[if exp="f.H_zettyou_kaisuu == 1"]
[jump target="*zettyou2_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 2"]
[jump target="*zettyou3_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 3"]
[jump target="*zettyou4_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 4"]
[jump target="*zettyou5_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu >= 5"]
[jump target="*zettyou6_nikubenki"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou1_1.mp3" buf="3"]Rinko「Ưm♡ Chạm đến tận sâu bên trong... rồi♡ Chị lên đỉnh mất... ra, ra mất♡ Aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou1_2.mp3" buf="3"]Rinko「Hà... hà... ưm... đây là lần đầu tiên chị thấy sướng thế này...♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou1_3.mp3" buf="3"]Rinko「Dư âm lúc lên đỉnh, dường như vẫn chưa chịu lắng xuống...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou2_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou2_1.mp3" buf="3"]Rinko「Ra... chị lên đỉnh mất... a, tuyệt quá, ập đến rồiii♡ Hiaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou2_2.mp3" buf="3"]Rinko「Hà♡ Hà♡ Hà♡ Sướng quá... chị trở nên kỳ lạ mất thôi...」[p]
[playse storage="rinko/voice_r_rinko_zettyou2_3.mp3" buf="3"]Rinko「Bên trong vẫn còn đang tê râm ran này...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou3_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou3_1.mp3" buf="3"]Rinko「A♡ Na♡ Ưm♡ Sướng quá, sướng quá đi♡ Ra mấtt」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou3_2.mp3" buf="3"]Rinko「Ư♡ A, aaaa♡ Tận sâu bên trong cơ thể... cảm giác sướng vẫn còn đọng lại...♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou3_3.mp3" buf="3"]Rinko「Bị dạy cho khoái cảm thế này rồi... thì không quay lại như trước được nữa đâu♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou4_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou4_1.mp3" buf="3"]Rinko「Nha♡ A♡ A♡ A♡ Ra, ra, ra, ra, ra mất♡ Hiaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou4_2.mp3" buf="3"]Rinko「Ưm, ư♡ Hà♡ Hà, mặt mũi đờ đẫn hết cả ra rồiii♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou4_3.mp3" buf="3"]Rinko「Vẫn... đang lên đỉnh này...♡ Cứ ra liên tục không dừng lại được...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou5_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou5_1.mp3" buf="3"]Rinko「A♡ Aaa♡ Mọi thứ chẳng còn quan trọng nữa rồi♡ Ra, ra, ra mất thôiii♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou5_2.mp3" buf="3"]Rinko「Nooo♡ Hà♡ Hà♡ Thành thói quen mất... cô bé, tan chảy ra mất thôiii♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou5_3.mp3" buf="3"]Rinko「Phù♡ Phù♡ Phù♡ Không thể rời xa được nữa mất...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="5"  y="87"  size="17"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou6_1.mp3" buf="3"]Rinko「Ưm♡ Cảm giác sướng ập đến rồi♡ O♡ O♡ O♡ Oooo♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Dâm đãng quá đấy chị Rinko.」[p]
[playse storage="rinko/voice_r_rinko_zettyou6_2.mp3" buf="3"]Rinko「No♡ Oo♡ Thôi mà, đừng nói, nữa♡ Ohooon♡ Cô bé sướng quá điiii♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="5"  y="87"  size="17"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

*zettyou7_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou7_1.mp3" buf="3"]Rinko「Hà♡ Hà♡ Nooo♡ Ra mất♡ Chẳng còn biết, gì nữaaa♡ Oho♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou7_2.mp3" buf="3"]Rinko「Haan♡ O, oo♡ Cô bé cứ giật giật, không dừng lại được♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou7_3.mp3" buf="3"]Rinko「Sướng điên lên vì con cu mất rồi♡ Không được đâu mà♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="5"  y="87"  size="17"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou8_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou8_1.mp3" buf="3"]Rinko「Hức♡ O♡ O♡ Ra mất♡ Aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou8_2.mp3" buf="3"]Rinko「Oho♡ O, oo♡ Vẫn đang lên đỉnh...♡ Làm nữa... làm nữa đi em♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou8_3.mp3" buf="3"]Rinko「Bị cậu bé nhỏ tuổi hơn♡ Làm cho cô bé sướng điên lên mất thôiii♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="5"  y="87"  size="17"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou9_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou9_1.mp3" buf="3"]Rinko「Aaa♡ No♡ Con cu đang giật nảy lên kìa♡ Ra mất♡ Ooo♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou9_2.mp3" buf="3"]Rinko「Nho♡ Ưm♡ Ưm♡ Hông, tự cử động mất rồi♡ Auuu♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou9_3.mp3" buf="3"]Rinko「Đừng rút ra mà♡ Không được rút con cu ra đâuuu♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="5"  y="87"  size="17"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou10_nikubenki

[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou10_1.mp3" buf="3"]Rinko「O♡ O♡ O♡ Cô bé♡ Sướng quá đi mấttttt♡ Ooon♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou10_2.mp3" buf="3"]Rinko「Ưm♡ O♡ Oo♡ Lên đỉnh mãi không chịu kết thúc♡ Aaa♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou10_3.mp3" buf="3"]Rinko「Đây là lần đầu tiên chị sướng thế này♡ Ohooon♡ Ưm♡ Hoo♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_rinko+=1"  name="Hresult_ikaseta_rinko"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Htalk=1"  name="Htalk"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="5"  y="87"  size="17"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凛子(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_rinko >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_rinko >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
