
[_tb_system_call storage=system/_H_nagi_gauge.ks]

*voice_J_1

[playse  volume="30"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_J_2

[playse  volume="30"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_J_3

[playse  volume="50"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_taiki3.mp3"  loop="true"  ]
[return  ]
*voice_R_1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_R_2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_R_3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_taiki3.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_pis2_take2.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_pis2_take3.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_j_nagi_pis3.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_1

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_pis1.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_2

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_pis2.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_3

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_r_nagi_pis3.mp3"  loop="true"  ]
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

[elsif exp="f.H_zettyou_kaisuu == 5"]
[jump target="*zettyou6"]

[elsif exp="f.H_zettyou_kaisuu == 6"]
[jump target="*zettyou7"]

[elsif exp="f.H_zettyou_kaisuu == 7"]
[jump target="*zettyou8"]

[elsif exp="f.H_zettyou_kaisuu == 8"]
[jump target="*zettyou9"]

[elsif exp="f.H_zettyou_kaisuu == 9"]
[jump target="*zettyou10"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou1_1.mp3" buf="1"]Nagi「Cảm giác... kỳ lạ quá...! A, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou1_2.mp3" buf="1"]Nagi「Hà, hà... thôi mà, xấu hổ quá... cảm giác vừa rồi là lên đỉnh sao...」[p]
[playse storage="nagi/voice_j_nagi_zettyou1_3.mp3" buf="1"]Nagi「Đầu óc em cứ lâng lâng... cơ thể vẫn còn kỳ lạ lắm...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(純愛)=========================================
;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou2

[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou2_1.mp3" buf="1"]Nagi「Hà, hà... không được... cảm giác sướng lại trào lên rồi... ư, aaaa」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Em lên đỉnh giỏi lắm đấy.」[p]
[playse storage="nagi/voice_j_nagi_zettyou2_2.mp3" buf="1"]Nagi「Thôi mà, anh đừng cố tình nói ra chứ... xấu hổ lắm...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(純愛)=========================================
;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou3

[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou3_1.mp3" buf="1"]Nagi「Lại lên đỉnh mất thôi...! Anh đừng nhìn mà, xấu hổ lắm... a, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou3_2.mp3" buf="1"]Nagi「Hà, hà... hà... ưm...♡ Sướng quá... chắc em trở nên kỳ lạ mất thôi.」[p]
[playse storage="nagi/voice_j_nagi_zettyou3_3.mp3" buf="1"]Nagi「Đã bảo anh đừng có nhìn mặt em rồi mà.」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(純愛)=========================================
;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou4

[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou4_1.mp3" buf="1"]Nagi「A... aaaa♡ Đùa chứ, lại ra, ra, ra mất thôi♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou4_2.mp3" buf="1"]Nagi「A, aaaa... Dưới rốn em cứ giật thót liên hồi...」[p]
[playse storage="nagi/voice_j_nagi_zettyou4_3.mp3" buf="1"]Nagi「Khó chịu lắm cơ...♡ Cơ thể em, trở nên kỳ lạ mất rồi sao?」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(純愛)=========================================
;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou5

[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou5_1.mp3" buf="1"]Nagi「Không được nữa đâu, em không lên đỉnh được nữa đâu♡ A, a, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou5_2.mp3" buf="1"]Nagi「Anh... xấu tính lắm... hà, hà, hà... cơ thể em không còn chút sức lực nào nữa rồi♡」[p]
[playse storage="nagi/voice_j_nagi_zettyou5_3.mp3" buf="1"]Nagi「Tại vì... sướng quá đi mất mà...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(純愛)=========================================
;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6

[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou6_1.mp3" buf="1"]Nagi「Làm sao đây, em lại lên đỉnh mất... ra, a, ra, ra mất♡ A, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Đáng yêu quá đi mất...」[p]
[playse storage="nagi/voice_j_nagi_zettyou6_2.mp3" buf="1"]Nagi「Xấu hổ quá... nhưng mà hạnh phúc lắm♡ Làm tình lại sướng đến thế này cơ đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Htalk=1"  name="Htalk"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(純愛)=========================================
;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
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

[elsif exp="f.H_zettyou_kaisuu == 5"]
[jump target="*zettyou6_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 6"]
[jump target="*zettyou7_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 7"]
[jump target="*zettyou8_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 8"]
[jump target="*zettyou9_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 9"]
[jump target="*zettyou10_nikubenki"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou1_1.mp3" buf="1"]Nagi「A, không được... kỳ lạ quá... cơ thể nóng ran... a♡ A♡ A♡ Aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Lúc lên đỉnh thì phải nói đàng hoàng là lên đỉnh chứ...」[p]
[playse storage="nagi/voice_r_nagi_zettyou1_2.mp3" buf="1"]Nagi「Em xin lỗi... em sẽ nói đàng hoàng là lên đỉnh mà...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou2_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou2_1.mp3" buf="1"]Nagi「Ưm♡ Phù, phù♡ A, ra... em lên đỉnh mất...♡ Lên đỉnnhhh♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Lần tới phải nói đàng hoàng là 『Hãy nhìn em đi』 nhé.」[p]
[playse storage="nagi/voice_r_nagi_zettyou2_2.mp3" buf="1"]Nagi「Vâng...♡ Vâng♡ Em sẽ nói♡ Rằng hãy nhìn em đi... em nói được mà♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou3_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou3_1.mp3" buf="1"]Nagi「Ưm♡ Ưm♡ A, ra mất♡ Hãy nhìn em đi... a, aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou3_2.mp3" buf="1"]Nagi「Hà, hà... hà♡ A... ư...♡ Cơ thể em, vẫn đang giật giật liên hồi...♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou3_3.mp3" buf="1"]Nagi「Hơn nữa là... em trở nên kỳ lạ mất thôi...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou4_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou4_1.mp3" buf="1"]Nagi「Hiu♡ A♡ Au♡ Không được, không được đâu thật đấy, em trở nên kỳ lạ mất...♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou4_2.mp3" buf="1"]Nagi「Ra, ra, ra mất♡ Lại lên đỉnh mất thôi...♡ A, không được, ra mất thôiii♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou4_3.mp3" buf="1"]Nagi「Hà♡ Hà♡ Hà♡ Em hết chịu nổi rồi... không được đâu...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou5_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou5_1.mp3" buf="1"]Nagi「Ưm♡ Ư♡ Hau, lại ra mất... ư, không được nữa đâuuu...♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou5_2.mp3" buf="1"]Nagi「Ưm...♡ Aaa♡ Đã bảo là, không được mà...♡ Thôi mà♡ Ra mất thôiii♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou6_1.mp3" buf="1"]Nagi「A♡ A♡ Ưm♡ Ưm♡ Ra, ra, ra, ra mất♡ Aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou6_2.mp3" buf="1"]Nagi「Hà♡ Hà♡ Hà♡ Cô bé của em ngốc nghếch mất thôi...♡ Trở nên kỳ lạ mất thôiiii」[p]
[playse storage="nagi/voice_r_nagi_zettyou6_3.mp3" buf="1"]Nagi「Sướng quá đi...♡ Cứ giật thót liên hồi không dừng lại được...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou7_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou7_1.mp3" buf="1"]Nagi「A♡ Cô bé♡ Ra mất♡ Cảm giác sướng ập đến rồiii♡ Aaaa♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou7_2.mp3" buf="1"]Nagi「Hiu♡ Auuu♡ Cảm giác sướng không chịu dừng lại♡ O♡ Sướng quá điiii♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou7_3.mp3" buf="1"]Nagi「Cứ lên đỉnh liên tục, không dừng lại được đâuuu♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou8_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou8_1.mp3" buf="1"]Nagi「Oho♡ O♡ O♡ Cô bé♡ Ra, ra, ra mất♡ Ooo♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Mặt mũi đờ đẫn hết cả ra rồi kìa.」[p]
[playse storage="nagi/voice_r_nagi_zettyou8_2.mp3" buf="1"]Nagi「Vâng♡ O♡ Oho♡ Mặt mũi đờ đẫn mất rồi♡ Em xin lỗ... ưm♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou9_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou9_1.mp3" buf="1"]Nagi「O♡ O♡ O♡ Ưm♡ Cô bé ra mất thôiiii♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou9_2.mp3" buf="1"]Nagi「Ahi♡ Oho♡ Con cu đang giật nảy lên kìa♡ Ooon♡ Sướng quá điiii♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou9_3.mp3" buf="1"]Nagi「Hông♡ Cứ dập liên hồi, không dừng lại được đâuuu♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou10_nikubenki

[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou10_1.mp3" buf="1"]Nagi「Ưm♡ Oooo♡ Ra mất♡ Con cu sướng quá điiii♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou10_2.mp3" buf="1"]Nagi「O, hoo♡ Ưm♡ Hà♡ Hà♡ Hà♡ Cô bé, cô bé sướng quá đi mất♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou10_3.mp3" buf="1"]Nagi「Thích con cu nhất trần đờiii♡ Hãy nhìn cô bé đang lên đỉnh liên tục của em điii...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_nagi+=1"  name="Hresult_ikaseta_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Htalk=1"  name="Htalk"  cmd="="  op="t"  val="1"  ]
[call  storage="H_nagi_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_凪(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_nagi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  