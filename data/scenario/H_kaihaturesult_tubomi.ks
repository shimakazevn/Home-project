
[_tb_system_call storage=system/_H_kaihaturesult_tubomi.ks]

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
[tb_image_show  time="0"  storage="default/result_kaihatu_tubomi.png"  width="1280"  height="720"  ]
[tb_start_tyrano_code]
;開発レベルをコール
[if exp="f.Hresult_kaihatuLV0_tubomi >= 1000"]
[call target="*LVMAX"]

[else]
[call target="*LV_0"]

[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1110"  y="302"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_sex_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="329"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_ikaseta_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="356"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_nakadasi_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="382"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_bukkake_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="409"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_muneseme_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="436"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kokanseme_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="462"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kansatu_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[call  storage="H_kaihaturesult_tubomi_gauge.ks"  target="*set"  cond="f.Hresult_kaihatuLV_tubomi==0"  ]
[mask_off  time="500"  effect="slideOutRight"  ]
[jump  storage="H_kaihaturesult_tubomi.ks"  target="*end"  cond="f.Hresult_kaihatuLV0_tubomi>999"  ]
[tb_start_tyrano_code]
;取得した「H_keikenti_tubomi」値を「Hresult_kaihatuLV0_tubomi」に加算
[eval exp="f.Hresult_kaihatuLV0_tubomi += f.H_keikenti_tubomi"]

[_tb_end_tyrano_code]

[call  storage="H_kaihaturesult_tubomi_gauge.ks"  target="*update"  cond=""  ]
*end

[wait  time="2000"  ]
[tb_ptext_hide  time="0"  ]
[tb_start_tyrano_code]
;開発レベルをコール
[if exp="f.Hresult_kaihatuLV0_tubomi <= 300 "]
[call target="*LV_0"]

[elsif exp="f.Hresult_kaihatuLV0_tubomi >= 1000 "]
[call target="*LVMAX"]

[endif]

[_tb_end_tyrano_code]

[tb_ptext_show  x="1110"  y="302"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_sex_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="329"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_ikaseta_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="356"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_nakadasi_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="382"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_bukkake_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="409"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_muneseme_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="436"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kokanseme_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1110"  y="462"  size="18"  color="0xffffff"  time="0"  text="&sf.Hresult_kansatu_tubomi"  anim="false"  face="fantasy"  edge="undefined"  shadow="undefined"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[l  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_keikenti_tubomi=0"  name="H_keikenti_tubomi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
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
