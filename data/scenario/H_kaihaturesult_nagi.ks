
[_tb_system_call storage=system/_H_kaihaturesult_nagi.ks]

*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[tb_start_tyrano_code]
;ベース画像削除
[freeimage layer="2" time="0"]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_image_show  time="0"  storage="default/result_kaihatu_nagi.png"  width="1280"  height="720"  name="img_9"  ]
[tb_start_tyrano_code]
;開発レベルをコール
[if exp="f.Hresult_kaihatuLV0_nagi >= 1000"]
[call target="*LVMAX"]

[else]
[call target="*LV_0"]

[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1110"  y="302"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_sex_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="329"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_ikaseta_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="356"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_nakadasi_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="382"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_bukkake_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="409"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_muneseme_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="436"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kokanseme_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="462"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kansatu_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[call  storage="H_kaihaturesult_nagi_gauge.ks"  target="*set"  cond="f.Hresult_kaihatuLV_nagi==0"  ]
[mask_off  time="500"  effect="slideOutRight"  ]
[jump  storage="H_kaihaturesult_nagi.ks"  target="*end"  cond="f.Hresult_kaihatuLV0_nagi>999"  ]
[tb_start_tyrano_code]
;取得した「H_keikenti_nagi」を「Hresult_kaihatuLV0_nagi 」に加算
[eval exp="f.Hresult_kaihatuLV0_nagi = Number(f.Hresult_kaihatuLV0_nagi) + Number(f.H_keikenti_nagi)"]

[_tb_end_tyrano_code]

[call  storage="H_kaihaturesult_nagi_gauge.ks"  target="*update"  cond=""  ]
*end

[wait  time="0"  ]
[tb_ptext_hide  time="0"  ]
[tb_start_tyrano_code]
;開発レベルをコール
[if exp="f.Hresult_kaihatuLV0_nagi <= 300 "]
[call target="*LV_0"]

[elsif exp="f.Hresult_kaihatuLV0_nagi >= 1000 "]
[call target="*LVMAX"]

[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1110"  y="302"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_sex_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="329"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_ikaseta_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="356"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_nakadasi_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="382"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_bukkake_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="409"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_muneseme_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="436"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kokanseme_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="462"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kansatu_nagi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[l  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_keikenti_nagi=0"  name="H_keikenti_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_show_message_window  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[return  ]
*LV_0

[tb_image_show  time="0"  storage="default/result_hosi1.png"  width="70"  height="37"  x="1097"  y="218"  _clickable_img=""  ]
[return  ]
*LVMAX

[tb_image_show  time="0"  storage="default/result_hosi2.png"  width="70"  height="37"  x="1097"  y="218"  _clickable_img=""  ]
[return  ]
