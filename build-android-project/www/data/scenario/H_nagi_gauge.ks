]
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
[playse storage="nagi/voice_j_nagi_zettyou1_1.mp3" buf="1"]凪「なんか…変なのきちゃう…！　あっ、あぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou1_2.mp3" buf="1"]凪「はぁ、はぁ…やだ、恥ずかしい…今のがイッちゃうって感覚なんだ…」[p]
[playse storage="nagi/voice_j_nagi_zettyou1_3.mp3" buf="1"]凪「頭の中、フワフワして…まだ体が変…」[p]
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
[playse storage="nagi/voice_j_nagi_zettyou2_1.mp3" buf="1"]凪「はぁ、はっ…だめ…また気持ちいいのこみ上げてきて…うっ、あぁぁぁっ」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「上手にイケたな」[p]
[playse storage="nagi/voice_j_nagi_zettyou2_2.mp3" buf="1"]凪「もう、わざわざ言わないでよ…恥ずかしいから…」[p]
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
[playse storage="nagi/voice_j_nagi_zettyou3_1.mp3" buf="1"]凪「またイッちゃう…！　見ないで、恥ずかしいから…あ、あぁぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou3_2.mp3" buf="1"]凪「はぁっ、はぁ…はぁ…んっ…♡　気持ちよくて…変になっちゃいそう」[p]
[playse storage="nagi/voice_j_nagi_zettyou3_3.mp3" buf="1"]凪「も～、顔見ないでってばぁ」[p]
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
[playse storage="nagi/voice_j_nagi_zettyou4_1.mp3" buf="1"]凪「あっ…あぁぁぁっ♡　嘘、またイク、イクイクイクっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou4_2.mp3" buf="1"]凪「あん、あぁぁ…おへその下、キュンキュンってしてる…」[p]
[playse storage="nagi/voice_j_nagi_zettyou4_3.mp3" buf="1"]凪「すごく切ないの…♡　私の体、変になっちゃったのかな？」[p]
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
[playse storage="nagi/voice_j_nagi_zettyou5_1.mp3" buf="1"]凪「もうだめ、イケないからぁぁっ♡　あ、あっ、あぁぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_j_nagi_zettyou5_2.mp3" buf="1"]凪「も…意地悪なんだから…はぁ、はっ、はぁ…体に力入らなくなっちゃったぁ♡」[p]
[playse storage="nagi/voice_j_nagi_zettyou5_3.mp3" buf="1"]凪「だって…すっごく気持ちいいんだもん…」[p]
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
[playse storage="nagi/voice_j_nagi_zettyou6_1.mp3" buf="1"]凪「どうしよう、またイッちゃうの…イク、あ、イクイクっ♡　あ、あぁぁぁんっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「すっごい可愛い…」[p]
[playse storage="nagi/voice_j_nagi_zettyou6_2.mp3" buf="1"]凪「恥ずかしい…でも幸せ♡　エッチってこんなに気持ちいいんだね♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou1_1.mp3" buf="1"]凪「あ、だめ…変…体が熱く…あっ♡　あっ♡　あっ♡　あぁぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「イク時はちゃんとイクって言わなきゃ…」[p]
[playse storage="nagi/voice_r_nagi_zettyou1_2.mp3" buf="1"]凪「ごめんなさい…ちゃんとイクって言いますから…♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou2_1.mp3" buf="1"]凪「んんっ♡　ふっ、ふぅっ♡　あ、イク…イッちゃいます…♡　イックゥゥッ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「次はちゃんと『見ててください』って言えるだろ」[p]
[playse storage="nagi/voice_r_nagi_zettyou2_2.mp3" buf="1"]凪「はいっ…♡　はい♡　言います♡　見ててくださいって…言えます♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou3_1.mp3" buf="1"]凪「んっ♡　んっ♡　あぁっ、イクゥッ♡　見ててくださ……あっ、あぁぁぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou3_2.mp3" buf="1"]凪「はぁっ、はぁ…はぁ♡　あぁ…うぅぅ…♡　まだ、体ビクビクってしてる…♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou3_3.mp3" buf="1"]凪「これ以上は…おかしくなっちゃう…♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou4_1.mp3" buf="1"]凪「ひぅっ♡　あっ♡　あぅっ♡　だめ、だめほんとにっ、おかしくなる…♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou4_2.mp3" buf="1"]凪「イクイクイクっ♡　またイッちゃう…♡　あっ、だめ、イクぅぅぅ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou4_3.mp3" buf="1"]凪「はーっ♡　はーっ♡　はーっ♡　もう無理…だめなの…♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou5_1.mp3" buf="1"]凪「んぅぅっ♡　くぅぅっ♡　はぅっ、またイク…うぅぅっ、もうらめぇぇ…♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou5_2.mp3" buf="1"]凪「んっくっ…♡　あ゛あ゛っ♡　らめ、らってばぁ…♡　もうっ♡　イグゥゥゥ♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou6_1.mp3" buf="1"]凪「あ゛っ♡　あ゛っ♡　ん゛っ♡　ん゛ぉぉ♡　イク、イクイクイク♡　あ゛ぁ゛ぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou6_2.mp3" buf="1"]凪「はっ♡　はっ♡　はっ♡　おまんこ馬鹿になっちゃう…♡　おかしくなっちゃうのぉぉ」[p]
[playse storage="nagi/voice_r_nagi_zettyou6_3.mp3" buf="1"]凪「気持ちいい…♡　ずっと、キュンキュンしてるの止まんない…♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou7_1.mp3" buf="1"]凪「あ゛っ♡　おまんこっ♡　イクッ♡　気持ちいいのきちゃうぅ♡　あぁぁぁぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou7_2.mp3" buf="1"]凪「ひぅぅ♡　あ゛う゛う゛っ♡　気持ちいいの収まんないっ♡　お゛っ♡　ぎもぢぃぃ♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou7_3.mp3" buf="1"]凪「イキっぱなしっ、止まんないよぉ♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou8_1.mp3" buf="1"]凪「お゛ほぉっ♡　お゛っ♡　お゛っ♡　おまんこっ♡　イグイグイグ♡　お゛お゛お゛っ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「だらしない顔になってるぞ」[p]
[playse storage="nagi/voice_r_nagi_zettyou8_2.mp3" buf="1"]凪「はひ♡　お゛っ♡　おほぉ♡　だらしない顔でっ♡　ごめんなさ…んぉぉっ♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou9_1.mp3" buf="1"]凪「お゛っ♡　お゛っ♡　お゛っ♡　ん゛ぉ゛っ♡　おまんこイグゥゥゥゥッ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou9_2.mp3" buf="1"]凪「あひぃ♡　おほぉ♡　おちんちんビクビク跳ねてる♡　おぉぉん♡　ぎもぢぃぃぃ♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou9_3.mp3" buf="1"]凪「腰っ♡　へこへこっ、止まんないぃ♡」[p]
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
[playse storage="nagi/voice_r_nagi_zettyou10_1.mp3" buf="1"]凪「ん゛お゛っ♡　お゛お゛お゛お゛っ♡　イグゥ♡　おちんちんぎもぢぃぃぃ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="nagi/voice_r_nagi_zettyou10_2.mp3" buf="1"]凪「おっ、ほぉぉ♡　んぅっ♡　はっ♡　はっ♡　はっ♡　おまんこ、おまんこ気持ちいい♡」[p]
[playse storage="nagi/voice_r_nagi_zettyou10_3.mp3" buf="1"]凪「おちんちんだいしゅき♡　イキまくりおまんこ見てくだしゃい…♡」[p]
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