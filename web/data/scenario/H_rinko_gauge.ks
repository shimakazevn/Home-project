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
[playse storage="rinko/voice_j_rinko_zettyou1_1.mp3" buf="3"]凛子「あっ…や…イク…あっ、あぁ、あぁぁぁっ」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou1_2.mp3" buf="3"]凛子「はぁ、はぁ、はぁ…ごめんなさい、私ばかり先に気持ちよくなってしまって…」[p]
[playse storage="rinko/voice_j_rinko_zettyou1_3.mp3" buf="3"]凛子「一緒に、気持ちよくなって…？」[p]
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
[playse storage="rinko/voice_j_rinko_zettyou2_1.mp3" buf="3"]凛子「あぁっ♡　あっ…そこ、好き…♡　あっ、イク、イクっ♡　あぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「イッた顔、可愛いですね」[p]
[playse storage="rinko/voice_j_rinko_zettyou2_2.mp3" buf="3"]凛子「恥ずかしい…緩んで変な顔してなかった？」[p]
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
[playse storage="rinko/voice_j_rinko_zettyou3_1.mp3" buf="3"]凛子「んっ…またイッちゃう…すごいの、キちゃう…あっ、あぁぁぁぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou3_2.mp3" buf="3"]凛子「はーっ、はーっ…私だけこんなに気持ちよくなっていいの…？」[p]
[playse storage="rinko/voice_j_rinko_zettyou3_3.mp3" buf="3"]凛子「年上なのにたくさんしてもらうばっかりで、申し訳なくなっちゃう…」[p]
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
[playse storage="rinko/voice_j_rinko_zettyou4_1.mp3" buf="3"]凛子「何、コレ…あっ、イク…イクイクイクっ♡　あっ、ひあぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou4_2.mp3" buf="3"]凛子「は～っ…は～っ…さっきからイカされてばかり…んっ、ふぅ、ふっ…」[p]
[playse storage="rinko/voice_j_rinko_zettyou4_3.mp3" buf="3"]凛子「すっごく上手なのね…それとも、相性がいいのかな…♡」[p]
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
[playse storage="rinko/voice_j_rinko_zettyou5_1.mp3" buf="3"]凛子「これ以上は…おかしくなっちゃう♡　あっ、だめっ、イッちゃ……あっ、あぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou5_2.mp3" buf="3"]凛子「ふーっ、ふぅっ、んんっ…壊れちゃいそう…でもっ、こんなに気持ちいいの初めて」[p]
[playse storage="rinko/voice_j_rinko_zettyou5_3.mp3" buf="3"]凛子「どうしよう、癖になったら責任取ってもらわないと…♡」[p]
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
[playse storage="rinko/voice_j_rinko_zettyou6_1.mp3" buf="3"]凛子「あんっ♡　あっ♡　あぁっ♡　イクっ…♡　イッちゃう…あっ、あぁぁぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_j_rinko_zettyou6_2.mp3" buf="3"]凛子「ふっ、んんっ♡　まだっ、中が熱い…♡　ビクビクって動いてるの伝わってきてる♡」[p]
[playse storage="rinko/voice_j_rinko_zettyou6_3.mp3" buf="3"]凛子「もう…セックスなしじゃいられなくなっちゃいそう…♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou1_1.mp3" buf="3"]凛子「んぅぅっ♡　奥まで…きてるっ♡　イッちゃう…イクイクっ♡　あぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou1_2.mp3" buf="3"]凛子「はぁっ…はぁっ…ん…こんなに気持ちいいの初めてなの…♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou1_3.mp3" buf="3"]凛子「イッちゃった余韻、収まらないみたい…♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou2_1.mp3" buf="3"]凛子「イク…イッちゃう…あっ、すごいのっ、きちゃうぅっ♡　ひあぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou2_2.mp3" buf="3"]凛子「はーっ♡　はーっ♡　はーっ♡　気持ちよくて…変になっちゃう…」[p]
[playse storage="rinko/voice_r_rinko_zettyou2_3.mp3" buf="3"]凛子「まだ中、ジンジン痺れちゃってる…」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou3_1.mp3" buf="3"]凛子「あっ♡　んあっ♡　んぅぅっ♡　気持ちいい、気持ちいいっ♡　イクゥッ」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou3_2.mp3" buf="3"]凛子「うっ♡　あっ、あぁぁ♡　まだ体の奥…気持ちいいの残ってる…♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou3_3.mp3" buf="3"]凛子「こんな快感教えられたら…戻れなくなっちゃうっ♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou4_1.mp3" buf="3"]凛子「んはっ♡　あっ♡　あっ♡　あっ♡　イク、イクイクイクイク♡　ひあぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou4_2.mp3" buf="3"]凛子「んっ、うぅぅっ♡　はぁっ♡　はぁ、だらしない顔になっちゃうぅ♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou4_3.mp3" buf="3"]凛子「まだ…イッてる…♡　イクの止まんないのっ…♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou5_1.mp3" buf="3"]凛子「あ゛っ♡　あ゛あ゛っ♡　全部どうでもよくなっちゃう♡　イグイグイグぅぅ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou5_2.mp3" buf="3"]凛子「んぉぉっ♡　はっ♡　はっ♡　癖になっちゃう…おまんこ、とろけちゃうぅ♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou5_3.mp3" buf="3"]凛子「ふーっ♡　ふーっ♡　ふーっ♡　離れられなくなっちゃう…♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou6_1.mp3" buf="3"]凛子「んっ♡　気持ちいいのくるっ♡　おっ♡　おっ♡　おっ♡　おおおおっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「エロいね凛子さん」[p]
[playse storage="rinko/voice_r_rinko_zettyou6_2.mp3" buf="3"]凛子「んおっ♡　おおっ♡　やらぁ、言わない、で♡　おほぉぉんっ♡　おまんこぎもちぃぃのぉ♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou7_1.mp3" buf="3"]凛子「はっ♡　はっ♡　んおおお♡　イグっ♡　わかんなく、なるぅぅぅ♡　おほぉっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou7_2.mp3" buf="3"]凛子「はぁんっ♡　おっ、おおっ♡　おまんこビクビクっ、止まんないっ♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou7_3.mp3" buf="3"]凛子「おちんちんで喜んじゃってるっ♡　だめなのにぃ♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou8_1.mp3" buf="3"]凛子「ひぐっ♡　お゛っ♡　お゛っ♡　イッグ♡　あ゛あ゛あ゛あ゛っ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou8_2.mp3" buf="3"]凛子「おほぉ♡　おっ、おぉぉ♡　まだイッてる…♡　もっと…もっとしてぇ♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou8_3.mp3" buf="3"]凛子「年下の子にっ♡　おまんこぎもぢよくされぢゃうぅぅ♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou9_1.mp3" buf="3"]凛子「あ゛あ゛っ♡　ん゛ぉ゛♡　おちんちんビクビクしてるっ♡　イクっ♡　お゛ぉ゛ぉ゛♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou9_2.mp3" buf="3"]凛子「んほっ♡　ん゛っ♡　んんっ♡　腰っ、動いちゃう♡　あ゛う゛う゛っ♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou9_3.mp3" buf="3"]凛子「抜かないでっ♡　チンポ抜いちゃだめぇぇ♡」[p]
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
[playse storage="rinko/voice_r_rinko_zettyou10_1.mp3" buf="3"]凛子「お゛っ♡　お゛っ♡　お゛っ♡　おまんこっ♡　ぎもぢよくなるぅぅぅ♡　お゛お゛んっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="rinko/voice_r_rinko_zettyou10_2.mp3" buf="3"]凛子「ん゛っ♡　お゛っ♡　お゛ぉ゛っ♡　イッてるの終わらないっ♡　あ゛あ゛っ♡」[p]
[playse storage="rinko/voice_r_rinko_zettyou10_3.mp3" buf="3"]凛子「こんなに気持ちいいの初めてっ♡　おほおぉぉん♡　んぅっ♡　ほぉぉ♡」[p]
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
