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
[playse storage="tubomi/voice_j_tubomi_zettyou1_1.mp3" buf="2"]蕾「やっ…やだ…気持ちいいの、きちゃう…変になっちゃうっ！　あぁぁぁっ！」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「気持ちよさそうにイケたんだ」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou1_2.mp3" buf="2"]蕾「はぁっ、はぁ…私、今絶対ビジュよくないから…髪とか、グチャグチャだしっ…」[p]
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
[playse storage="tubomi/voice_j_tubomi_zettyou2_1.mp3" buf="2"]蕾「あっ…またなんか…お腹のそこから…熱いのきちゃうの…あっ、あぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou2_2.mp3" buf="2"]蕾「はっ、はぁ、はぁ…恥ずかしい…やだ、そんなにじっと見ないでよ…」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou2_3.mp3" buf="2"]蕾「気持ちよくて…可愛い顔なんかできないんだからぁっ…♡」[p]
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
[playse storage="tubomi/voice_j_tubomi_zettyou3_1.mp3" buf="2"]蕾「あっ…イク…またっ…イッちゃうの…イク、イクイクっ♡　あぁぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou3_2.mp3" buf="2"]蕾「はーっ、はーっ…やだぁ…イクの止まんないの…」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou3_3.mp3" buf="2"]蕾「頭の中…ふわふわして…おかしくなっちゃいそう…」[p]
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
[playse storage="tubomi/voice_j_tubomi_zettyou4_1.mp3" buf="2"]蕾「だめ…まだイッちゃうぅぅっ♡　おかしくなっちゃうっ！　イクぅぅぅっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「イッてる顔、可愛いよ」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou4_2.mp3" buf="2"]蕾「は～っ、は～っ…ホント？　可愛いなら…いっかぁ♡　あぁ、もう…わかんない…」[p]
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
[playse storage="tubomi/voice_j_tubomi_zettyou5_1.mp3" buf="2"]蕾「あっ…♡　またイク…イッちゃう♡　あっ♡　んあぁぁぁっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou5_2.mp3" buf="2"]蕾「はぁっ♡　はぁっ♡　はぁっ♡　もうイケないってばぁ…♡」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou5_3.mp3" buf="2"]蕾「ふ～っ♡　ふ～っ♡　こんなに気持ちいいの…知っちゃったら戻れなくなっちゃう♡」[p]
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
[playse storage="tubomi/voice_j_tubomi_zettyou6_1.mp3" buf="2"]蕾「あっ♡　やっ…もうっ、顔絶対変になってるっ♡　イクイクイクぅぅぅ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_j_tubomi_zettyou5_2.mp3" buf="2"]蕾「あっ…あぁ…イキっぱなしになってる…♡　ずっと気持ちいいままなの♡」[p]
[playse storage="tubomi/voice_j_tubomi_zettyou5_3.mp3" buf="2"]蕾「体…熱くなったまま…全然収まらない…エッチの気持ちよさ、教えられちゃった」[p]
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
[playse storage="tubomi/voice_r_tubomi_zettyou1_1.mp3" buf="2"]蕾「あっ…んんっ…イクっ…あっ♡　イクイクイクっ…気持ちいいのきちゃうぅ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou1_2.mp3" buf="2"]蕾「んっ♡　ふっ…はぁ…はぁ…あぁ…中、ビクビクしてる…♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou1_3.mp3" buf="2"]蕾「中で跳ねてるの伝わってくるっ…はぁ、はっ、一緒に気持ちよくなっちゃった？」[p]
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
[playse storage="tubomi/voice_r_tubomi_zettyou2_1.mp3" buf="2"]蕾「あぁぁっ…まだイッちゃう…すごいっ…すごいの…あ、イクイクっ♡　あぁぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou2_2.mp3" buf="2"]蕾「はっ、はぁ…はぁ…♡　こんなに気持ちよくして…どうするつもり…？」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou2_3.mp3" buf="2"]蕾「離れられなくなったら責任取ってもらわなくちゃ…♡」[p]
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
[playse storage="tubomi/voice_r_tubomi_zettyou3_1.mp3" buf="2"]蕾「やっ…だめっ♡　イッちゃう…イック、イクイクイクぅぅぅ♡　あぁぁぁぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「くっ…中すっごい締まってる…！」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou3_2.mp3" buf="2"]蕾「あっ♡　あうぅぅっ♡　んっ…ふっ、ふぅ…♡　おっきいの…ビクビクいってるっ♡」[p]
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
[playse storage="tubomi/voice_r_tubomi_zettyou4_1.mp3" buf="2"]蕾「はぁんっ♡　あっ…あぁぁ♡　またイク…あっ♡　あっ♡　あっ♡　あぁぁぁ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou4_2.mp3" buf="2"]蕾「んぅぅぅ♡　おおっ♡　はっ、はぁ♡　わかんなくっ、なっちゃうのぉぉ♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou4_3.mp3" buf="2"]蕾「おぉぉっ♡　んおぉ、気持ちいいの収まんない…ずっとっ、ジンジンしてるっ♡」[p]
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
[playse storage="tubomi/voice_r_tubomi_zettyou5_1.mp3" buf="2"]蕾「んぉっ♡　ら、らめ…しゅごいの…きちゃうっ…おっ♡　おおっ♡　イクぅぅぅ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[舜]「どこが気持ちいいのか教えてくれないの？」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou5_2.mp3" buf="2"]蕾「はぁっ♡　はっ♡　も、やだぁぁっ♡　おまんこっ、気持ちいいのぉ♡」[p]
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
[playse storage="tubomi/voice_r_tubomi_zettyou6_1.mp3" buf="2"]蕾「んほっ♡　おっ、おおおっ♡　も、もうらめぇぇぇ♡　イグゥゥゥっ♡　おっほぉぉ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou6_2.mp3" buf="2"]蕾「くぅぅぅっ♡　あぁぁっ♡　ぎもぢぃぃ♡　おまんこ、馬鹿になっちゃうよぉぉ♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou6_3.mp3" buf="2"]蕾「おっ♡　おっ♡　あぅぅぅっ♡　壊れちゃうぅぅぅ♡」[p]
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
*zettyou7_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou7_1.mp3" buf="2"]蕾「あ゛っ♡　あ゛っ♡　またイグっ♡　ひぐぅぅぅぅっ♡　おおおおおっ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou7_2.mp3" buf="2"]蕾「おまんこキュンキュンとまんないぃ♡　あ゛あ゛っ♡　ん゛っ♡　お゛お゛っ♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou7_3.mp3" buf="2"]蕾「はっ♡　はぁ♡　はぁ♡　あうぅぅ♡　も、しゃべれない、から…無理ぃ♡」[p]
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
*zettyou8_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou8_1.mp3" buf="2"]蕾「も゛お゛っ♡　無理だってばぁぁぁっ♡　だめぇぇぇ♡　イッグぅぅぅ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou8_2.mp3" buf="2"]蕾「お゛っ♡　お゛っ♡　お゛っ♡　おまんこ気持ちいいの止まんない…♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou8_3.mp3" buf="2"]蕾「こんなの、知らない…♡　すごいのっ♡　」[p]
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
*zettyou9_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou9_1.mp3" buf="2"]蕾「あ゛あ゛あ゛あ゛っ♡　もぉ壊れる…♡　体もたな…お゛お゛お゛～っ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou9_2.mp3" buf="2"]蕾「おっほぉ♡　また中でおっきくなってる……またイッちゃうからっ♡　お゛お゛っ♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou9_3.mp3" buf="2"]蕾「ぎもぢぃぃ♡　んはぁ♡　おぉぉっ♡　わかんないわかんないわかんないぃ♡」[p]
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
*zettyou10_nikubenki

[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou10_1.mp3" buf="2"]蕾「お゛っ♡　お゛っ♡　お゛っ♡　お゛お゛お゛んっ♡　おまんこだめぇぇぇぇ♡」[p]
[_tb_end_text]

[mask  time="0"  effect="fadeIn"  color="0xffffff"  ]
[mask_off  time="1800"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[playse storage="tubomi/voice_r_tubomi_zettyou10_2.mp3" buf="2"]蕾「あ゛あ゛っ♡　はっ♡　はっ♡　はっ♡　はっ♡　子宮降りてきてる♡」[p]
[playse storage="tubomi/voice_r_tubomi_zettyou10_3.mp3" buf="2"]蕾「射精待ちしちゃってるぅ♡　あはぁ♡　おっ♡　おおおおっ♡」[p]
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
