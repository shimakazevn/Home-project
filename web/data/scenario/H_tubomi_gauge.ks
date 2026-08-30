
[_tb_system_call storage=system/_H_tubomi_gauge.ks]

*voice_J_1

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_J_2

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_J_3

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_taiki3.mp3"  loop="true"  ]
[return  ]
*voice_R_1

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_R_2

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_R_3

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_taiki3.mp3"  loop="true"  ]
[return  ]
*voice_3P_1

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_taiki1.mp3"  loop="true"  ]
[return  ]
*voice_3P_2

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_taiki2.mp3"  loop="true"  ]
[return  ]
*voice_3P_3

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_taiki3.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_1

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_pis1.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_2

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_pis2.mp3"  loop="true"  ]
[return  ]
*pis_voice_J_3

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_j_tubomi_pis3.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_1

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_pis1.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_2

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_pis2.mp3"  loop="true"  ]
[return  ]
*pis_voice_R_3

[playse  volume="100"  time="1000"  buf="2"  storage="tubomi/voice_r_tubomi_pis3.mp3"  loop="true"  ]
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
[jump target="*zettyou6"]

[elsif exp="f.H_zettyou_kaisuu == 7"]
[jump target="*zettyou6"]

[elsif exp="f.H_zettyou_kaisuu == 8"]
[jump target="*zettyou6"]

[elsif exp="f.H_zettyou_kaisuu == 9"]
[jump target="*zettyou6"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou1_1.mp3" buf="2"]Tsubomi「Đừng mà... Không chịu đâu... Khoái cảm đang dâng trào lên rồi... Em sắp phát điên mất thôi! A... a... a...!」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「Trông em lên đỉnh có vẻ sướng lắm nhỉ」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou1_2.mp3" buf="2"]Tsubomi「Hà, hà... Bộ dạng em lúc này trông xấu xí lắm... Tóc tai rối bời cả ra rồi này...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou2

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou2_1.mp3" buf="2"] [舜]「Đâu có, trông em gợi cảm và đáng yêu lắm mà」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou2_2.mp3" buf="2"] Tsubomi「A... a... lại tới nữa rồi! Không dừng lại được đâu! Lên đỉnh mất thôi!」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou2_3.mp3" buf="2"] [舜]「Cứ việc lên đỉnh thỏa thích đi, Tsubomi」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou3

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou3_1.mp3" buf="2"] Tsubomi「Hức... sướng quá đi mất... Toàn thân em run rẩy hết cả lên rồi này...♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou3_2.mp3" buf="2"] [舜]「Thế mới là Tsubomi của anh chứ」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou3_3.mp3" buf="2"] Tsubomi「Á... chỗ đó... đừng chọc ngoáy vào mà... Em ra mất thôi!」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou4

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou4_1.mp3" buf="2"] [舜]「Chỗ này nhạy cảm lắm đúng không?」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou1_2.mp3" buf="2"]Tsubomi「Vâng ạ... Nhột lắm... Nhưng mà sướng vô cùng luôn á...♡」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou4_2.mp3" buf="2"] [舜]「Ngoan lắm, để anh làm cho em sướng hơn nữa nhé」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou5

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou5_1.mp3" buf="2"] Tsubomi「A... a... a... không chịu nổi nữa rồi! Ra rồi, em bắn nước ra mất rồi!」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou5_2.mp3" buf="2"] [舜]「Phun ra nhiều nước thế này cơ à? Tuyệt thật đấy」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou5_3.mp3" buf="2"] Tsubomi「Xấu hổ chết đi được... Anh [舜] biến em thành đứa dâm đãng mất rồi...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_J_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou6_1.mp3" buf="2"] [舜]「Nhưng em thích thế đúng không?」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou5_2.mp3" buf="2"] Tsubomi「Vâng... Em thích lắm... Em nghiện anh mất rồi...♡」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou5_3.mp3" buf="2"] Tsubomi「Ưm... anh chạm vào chỗ đó làm tim em đập nhanh quá...」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Htalk=1"  name="Htalk"  cmd="="  op="t"  val="1"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(純愛)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_J_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_J_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
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
[jump target="*zettyou6_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 7"]
[jump target="*zettyou6_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 8"]
[jump target="*zettyou6_nikubenki"]

[elsif exp="f.H_zettyou_kaisuu == 9"]
[jump target="*zettyou6_nikubenki"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou1_1.mp3" buf="2"] Tsubomi「A... nhột quá à... Đừng trêu em nữa mà...♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou1_2.mp3" buf="2"] Tsubomi「Hà... hà... Người em nóng ran lên rồi này...」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou1_3.mp3" buf="2"] Tsubomi「Chỗ đó... ướt nhẹp hết cả rồi... Tại anh hết đấy...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou2_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou2_1.mp3" buf="2"] Tsubomi「Nhanh lên đi anh... Em muốn anh chạm vào sâu hơn nữa cơ...」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou2_2.mp3" buf="2"] Tsubomi「A... ưm... sướng quá đi mất... Em không chịu nổi nữa đâu...♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou2_3.mp3" buf="2"] Tsubomi「Đút vào đi anh! Em thèm con cu của anh lắm rồi!」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou3_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou3_1.mp3" buf="2"] Tsubomi「A... a... chạm tới tận cùng rồi... Sướng điên lên mất thôi!」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_h_tubomi_gauge9.mp3" buf="2"]Tsubomi「Mạnh nữa lên anh! Đâm nát cô bé của em đi!」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou3_2.mp3" buf="2"] Tsubomi「Ra mất... Em sắp lên đỉnh rồi... Cùng ra nhé anh!」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou4_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou4_1.mp3" buf="2"] Tsubomi「Hức... a... ngập tràn tinh dịch bên trong rồi... Tuyệt vời quá...♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou4_2.mp3" buf="2"] Tsubomi「Em yêu anh [舜] nhiều lắm... Mãi mãi là của anh thôi...♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou4_3.mp3" buf="2"] Tsubomi「Lần sau lại làm cho em sướng thế này nữa nhé anh...♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou5_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou5_1.mp3" buf="2"] Tsubomi「Ưm... nằm nghỉ với em một lát đã nào...」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_h_tubomi_gauge15.mp3" buf="2"]Tsubomi「Ôm em chặt vào đi anh... Em thích mùi của anh lắm♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou5_2.mp3" buf="2"] Tsubomi「Hì hì, hôm nay em ngoan đúng không nè? Thưởng cho em đi chứ♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou6_1.mp3" buf="2"] Tsubomi「Hôn em một cái nữa đi mà... Chụt♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou6_2.mp3" buf="2"] Tsubomi「A... anh lại cương lên rồi kìa... Thích thế không biết♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou6_3.mp3" buf="2"] Tsubomi「Lại muốn làm hiệp nữa sao? Em chiều anh hết luôn đấy♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou7_1.mp3" buf="2"] Tsubomi「Nào, đút vào trong em đi anh... Em sẵn sàng rồi!」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou7_2.mp3" buf="2"] Tsubomi「A... a... lại vào trong rồi... Ấm áp quá đi...♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou7_3.mp3" buf="2"] Tsubomi「Hiệp hai này cảm giác còn mãnh liệt hơn hiệp một nữa á!」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou8_1.mp3" buf="2"] Tsubomi「Thúc mạnh vào đi anh! Đừng thương tiếc gì em cả!」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou8_2.mp3" buf="2"] Tsubomi「A... a... sướng quá... Em sắp không thở nổi rồi nè...♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou8_3.mp3" buf="2"] Tsubomi「Bắn vào đi! Bắn đầy bụng em đi anh [舜] ơi!」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou9_1.mp3" buf="2"] Tsubomi「Hức... tinh dịch lại trào ra nữa rồi... Sướng mê ly luôn...♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou9_2.mp3" buf="2"] Tsubomi「Hà... hà... em kiệt sức mất rồi... Nhưng mà hạnh phúc lắm...♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou9_3.mp3" buf="2"] Tsubomi「Cảm ơn anh vì đã yêu thương em nhiều đến thế này nhé♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_eval  exp="f.H_zettyou_kaisuu+=1"  name="H_zettyou_kaisuu"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
*zettyou6_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou10_1.mp3" buf="2"] Tsubomi「Ngủ thôi anh... Mai chúng ta lại tiếp tục nhé♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou10_2.mp3" buf="2"] Tsubomi「Chúc anh ngủ ngon... Anh [舜] của em♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou10_3.mp3" buf="2"] Tsubomi「Yêu anh nhất trên đời luôn đó nha... Chụt♡」[p]
[_tb_end_text]

[tb_eval  exp="sf.Hresult_ikaseta_tubomi+=1"  name="Hresult_ikaseta_tubomi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_zettyou=0"  name="H_zettyou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Htalk=1"  name="Htalk"  cmd="="  op="t"  val="1"  ]
[call  storage="H_tubomi_gauge.ks"  target="*update"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="23"  y="17"  size="12"  color="0xffffff"  time="0"  text="&f.H_zettyou_kaisuu"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;挿入ボイスをコール_蕾(凌辱)=========================================

;■興奮
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000 && f.H_sounyu == 1"]
[call target=*pis_voice_R_3]

;■やや興奮
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 500 && f.H_sounyu == 1"]
[call target=*pis_voice_R_2]

;■普通
[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 0 && f.H_sounyu == 1"]
[call target=*pis_voice_R_1]
[endif]

[_tb_end_tyrano_code]

[return  ]
