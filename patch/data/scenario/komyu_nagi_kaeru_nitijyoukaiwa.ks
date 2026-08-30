
[_tb_system_call storage=system/_komyu_nagi_kaeru_nitijyoukaiwa.ks]

[bg  time="0"  method="crossfade"  storage="kaeri_nagi.png"  ]
[tb_show_message_window  ]
*nitijyouA_nigate

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(8-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="8"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_天気の話（嫌い、苦手状態）
;変数8/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Atenki_nigate_sippai == 0"]
[call target="*Atenki_nigate_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_nigate_sippai == 1"]
[call target="*Atenki_nigate_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_nigate_sippai == 2"]
[call target="*Atenki_nigate_sippai3"]


;日常会話_天気の話（嫌い、苦手状態）
;変数8/7で成功

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_nigate_seikou == 0"]
[call target="*Atenki_nigate_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_nigate_seikou == 1"]
[call target="*Atenki_nigate_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_nigate_seikou == 2"]
[call target="*Atenki_nigate_seikou3"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*nitijyouA_hutuu

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(9-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="9"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_天気の話（普通状態）
;変数9/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Atenki_hutuu_sippai == 0"]
[call target="*Atenki_hutuu_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_hutuu_sippai == 1"]
[call target="*Atenki_hutuu_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_hutuu_sippai == 2"]
[call target="*Atenki_hutuu_sippai3"]


;日常会話_天気の話（普通状態）
;変数9/8で成功

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_hutuu_seikou == 0"]
[call target="*Atenki_hutuu_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_hutuu_seikou == 1"]
[call target="*Atenki_hutuu_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_hutuu_seikou == 2"]
[call target="*Atenki_hutuu_seikou3"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*nitijyouA_yuukou

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(10-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="10"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*Atenki_yuukou_tokimeki"  cond="f.kaiwa_tokimeki_nagi>3"  ]
[tb_start_tyrano_code]
;日常会話_天気の話（友好状態）
;変数10/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Atenki_yuukou_sippai == 0"]
[call target="*Atenki_yuukou_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_yuukou_sippai == 1"]
[call target="*Atenki_yuukou_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_yuukou_sippai == 2"]
[call target="*Atenki_yuukou_sippai3"]


;日常会話_天気の話（友好状態）
;変数10/9で成功

[elsif exp="f.love >= 100"]
[call target="*Atenki_yuukou_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_yuukou_seikou == 0"]
[call target="*Atenki_yuukou_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_yuukou_seikou == 1"]
[call target="*Atenki_yuukou_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_yuukou_seikou == 2"]
[call target="*Atenki_yuukou_seikou3"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*nitijyouA_suki

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(11-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="11"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*Atenki_suki_tokimeki"  cond="f.kaiwa_tokimeki_nagi>3"  ]
[tb_start_tyrano_code]
;日常会話_天気の話（好き状態）
;変数11/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Atenki_suki_sippai == 0"]
[call target="*Atenki_suki_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_suki_sippai == 1"]
[call target="*Atenki_suki_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Atenki_suki_sippai == 2"]
[call target="*Atenki_suki_sippai3"]


;日常会話_天気の話（好き状態）
;変数11/10で成功

[elsif exp="f.love >= 100"]
[call target="*Atenki_suki_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_suki_seikou == 0"]
[call target="*Atenki_suki_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_suki_seikou == 1"]
[call target="*Atenki_suki_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Atenki_suki_seikou == 2"]
[call target="*Atenki_suki_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*Atenki_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_nigate_sippai+=1"  name="Atenki_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_nigate_sippai+=1"  name="Atenki_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_nigate_sippai=0"  name="Atenki_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_nigate_seikou+=1"  name="Atenki_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_nigate_seikou+=1"  name="Atenki_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_nigate_seikou=0"  name="Atenki_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_hutuu_sippai+=1"  name="Atenki_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_hutuu_sippai+=1"  name="Atenki_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_hutuu_sippai=0"  name="Atenki_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_hutuu_seikou+=1"  name="Atenki_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_hutuu_seikou+=1"  name="Atenki_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_hutuu_seikou=0"  name="Atenki_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_yuukou_sippai+=1"  name="Atenki_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_yuukou_sippai+=1"  name="Atenki_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_yuukou_sippai=0"  name="Atenki_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_yuukou_seikou+=1"  name="Atenki_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_yuukou_seikou+=1"  name="Atenki_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_yuukou_seikou=0"  name="Atenki_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện thời tiết_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_suki_sippai1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_suki_sippai+=1"  name="Atenki_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_suki_sippai2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_suki_sippai+=1"  name="Atenki_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_suki_sippai3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_suki_sippai=0"  name="Atenki_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Atenki_suki_seikou1

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_suki_seikou+=1"  name="Atenki_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_suki_seikou2

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_suki_seikou+=1"  name="Atenki_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_suki_seikou3

[tb_start_text mode=1 ]
Chuyện thời tiết_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Atenki_suki_seikou=0"  name="Atenki_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Atenki_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện thời tiết_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*nitijyouB_nigate

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(6-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="6"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_団地の話（嫌い、苦手状態）
;変数6/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Bdanti_nigate_sippai == 0"]
[call target="*Bdanti_nigate_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_nigate_sippai == 1"]
[call target="*Bdanti_nigate_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_nigate_sippai == 2"]
[call target="*Bdanti_nigate_sippai3"]


;日常会話_団地の話（嫌い、苦手状態）
;その他成功

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_nigate_seikou == 0"]
[call target="*Bdanti_nigate_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_nigate_seikou == 1"]
[call target="*Bdanti_nigate_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_nigate_seikou == 2"]
[call target="*Bdanti_nigate_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*nitijyouB_hutuu

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(7-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="7"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_団地の話（普通状態）
;変数7/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Bdanti_hutuu_sippai == 0"]
[call target="*Bdanti_hutuu_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_hutuu_sippai == 1"]
[call target="*Bdanti_hutuu_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_hutuu_sippai == 2"]
[call target="*Bdanti_hutuu_sippai3"]


;日常会話_団地の話（普通状態）
;その他成功

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_hutuu_seikou == 0"]
[call target="*Bdanti_hutuu_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_hutuu_seikou == 1"]
[call target="*Bdanti_hutuu_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_hutuu_seikou == 2"]
[call target="*Bdanti_hutuu_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*nitijyouB_yuukou

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(8-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="8"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*Bdanti_yuukou_tokimeki"  cond="f.kaiwa_tokimeki_nagi>3"  ]
[tb_start_tyrano_code]
;日常会話_団地の話（友好状態）
;変数8/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Bdanti_yuukou_sippai == 0"]
[call target="*Bdanti_yuukou_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_yuukou_sippai == 1"]
[call target="*Bdanti_yuukou_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_yuukou_sippai == 2"]
[call target="*Bdanti_yuukou_sippai3"]


;日常会話_団地の話
;その他成功

[elsif exp="f.love >= 100"]
[call target="*Bdanti_yuukou_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_yuukou_seikou == 0"]
[call target="*Bdanti_yuukou_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_yuukou_seikou == 1"]
[call target="*Bdanti_yuukou_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_yuukou_seikou == 2"]
[call target="*Bdanti_yuukou_seikou3"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*nitijyouB_suki

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(9-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="9"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*Bdanti_suki_tokimeki"  cond="f.kaiwa_tokimeki_nagi>3"  ]
[tb_start_tyrano_code]
;日常会話_団地の話（好き状態）
;変数9/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Bdanti_suki_sippai == 0"]
[call target="*Bdanti_suki_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_suki_sippai == 1"]
[call target="*Bdanti_suki_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Bdanti_suki_sippai == 2"]
[call target="*Bdanti_suki_sippai3"]


;日常会話_団地の話（好き状態）
;その他成功

[elsif exp="f.love >= 100"]
[call target="*Bdanti_suki_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_suki_seikou == 0"]
[call target="*Bdanti_suki_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_suki_seikou == 1"]
[call target="*Bdanti_suki_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Bdanti_suki_seikou == 2"]
[call target="*Bdanti_suki_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*Bdanti_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_nigate_sippai+=1"  name="Bdanti_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_nigate_sippai+=1"  name="Bdanti_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_nigate_sippai=0"  name="Bdanti_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_nigate_seikou+=1"  name="Bdanti_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_nigate_seikou+=1"  name="Bdanti_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_nigate_seikou=0"  name="Bdanti_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_hutuu_sippai+=1"  name="Bdanti_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_hutuu_sippai+=1"  name="Bdanti_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_hutuu_sippai=0"  name="Bdanti_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_hutuu_seikou+=1"  name="Bdanti_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_hutuu_seikou+=1"  name="Bdanti_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_hutuu_seikou=0"  name="Bdanti_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_yuukou_sippai+=1"  name="Bdanti_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_yuukou_sippai+=1"  name="Bdanti_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_yuukou_sippai=0"  name="Bdanti_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_yuukou_seikou+=1"  name="Bdanti_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_yuukou_seikou+=1"  name="Bdanti_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_yuukou_seikou=0"  name="Bdanti_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_suki_sippai1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_suki_sippai+=1"  name="Bdanti_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_suki_sippai2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_suki_sippai+=1"  name="Bdanti_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_suki_sippai3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_suki_sippai=0"  name="Bdanti_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bdanti_suki_seikou1

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_suki_seikou+=1"  name="Bdanti_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_suki_seikou2

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_suki_seikou+=1"  name="Bdanti_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_suki_seikou3

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bdanti_suki_seikou=0"  name="Bdanti_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bdanti_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện khu chung cư_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*nitijyouC_nigate

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(4-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="4"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_仕事の話（嫌い、苦手状態）
;変数４/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Csigoto_nigate_sippai == 0"]
[call target="*Csigoto_nigate_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_nigate_sippai == 1"]
[call target="*Csigoto_nigate_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_nigate_sippai == 2"]
[call target="*Csigoto_nigate_sippai3"]

;日常会話_仕事の話（嫌い、苦手状態）
;その他

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_nigate_seikou == 0"]
[call target="*Csigoto_nigate_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_nigate_seikou == 1"]
[call target="*Csigoto_nigate_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_nigate_seikou == 2"]
[call target="*Csigoto_nigate_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*nitijyouC_hutuu

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(5-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="5"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_仕事の話（普通状態）
;変数５/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Csigoto_hutuu_sippai == 0"]
[call target="*Csigoto_hutuu_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_hutuu_sippai == 1"]
[call target="*Csigoto_hutuu_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_hutuu_sippai == 2"]
[call target="*Csigoto_hutuu_sippai3"]

;日常会話_仕事の話（普通状態）
;その他

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_hutuu_seikou == 0"]
[call target="*Csigoto_hutuu_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_hutuu_seikou == 1"]
[call target="*Csigoto_hutuu_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_hutuu_seikou == 2"]
[call target="*Csigoto_hutuu_seikou3"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*nitijyouC_yuukou

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(6-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="6"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_仕事の話（友好状態）
;変数６/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Csigoto_yuukou_sippai == 0"]
[call target="*Csigoto_yuukou_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_yuukou_sippai == 1"]
[call target="*Csigoto_yuukou_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_yuukou_sippai == 2"]
[call target="*Csigoto_yuukou_sippai3"]

;日常会話_仕事の話（友好状態）
;その他

[elsif exp="f.love >= 100"]
[call target="*Csigoto_yuukou_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_yuukou_seikou == 0"]
[call target="*Csigoto_yuukou_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_yuukou_seikou == 1"]
[call target="*Csigoto_yuukou_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_yuukou_seikou == 2"]
[call target="*Csigoto_yuukou_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*nitijyouC_suki

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(7-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="7"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_仕事の話（好き状態）
;変数7/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Csigoto_suki_sippai == 0"]
[call target="*Csigoto_suki_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_suki_sippai == 1"]
[call target="*Csigoto_suki_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Csigoto_suki_sippai == 2"]
[call target="*Csigoto_suki_sippai3"]

;日常会話_仕事の話（好き状態）
;その他

[elsif exp="f.love >= 100"]
[call target="*Csigoto_suki_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_suki_seikou == 0"]
[call target="*Csigoto_suki_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_suki_seikou == 1"]
[call target="*Csigoto_suki_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Csigoto_suki_seikou == 2"]
[call target="*Csigoto_suki_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*Csigoto_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_nigate_sippai+=1"  name="Csigoto_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_nigate_sippai+=1"  name="Csigoto_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_nigate_sippai=0"  name="Csigoto_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_nigate_seikou+=1"  name="Csigoto_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_nigate_seikou+=1"  name="Csigoto_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_nigate_seikou=0"  name="Csigoto_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_hutuu_sippai+=1"  name="Csigoto_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_hutuu_sippai+=1"  name="Csigoto_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_hutuu_sippai=0"  name="Csigoto_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_hutuu_seikou+=1"  name="Csigoto_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_hutuu_seikou+=1"  name="Csigoto_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_hutuu_seikou=0"  name="Csigoto_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=9"  name="love"  cmd="+="  op="t"  val="9"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_yuukou_sippai+=1"  name="Csigoto_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_yuukou_sippai+=1"  name="Csigoto_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_yuukou_sippai=0"  name="Csigoto_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_yuukou_seikou+=1"  name="Csigoto_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_yuukou_seikou+=1"  name="Csigoto_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_yuukou_seikou=0"  name="Csigoto_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện công việc_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_suki_sippai1

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_suki_sippai+=1"  name="Csigoto_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_suki_sippai2

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_suki_sippai+=1"  name="Csigoto_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_suki_sippai3

[tb_start_text mode=1 ]
Chuyện công việc_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_suki_sippai=0"  name="Csigoto_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Csigoto_suki_seikou1

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_suki_seikou+=1"  name="Csigoto_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_suki_seikou2

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_suki_seikou+=1"  name="Csigoto_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_suki_seikou3

[tb_start_text mode=1 ]
Chuyện công việc_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Csigoto_suki_seikou=0"  name="Csigoto_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Csigoto_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện công việc_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*nitijyouD_nigate

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(4-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="4"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_趣味の話（嫌い、苦手状態）
;変数４/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_nigate_sippai == 0"]
[call target="*Dsyumi_nigate_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_nigate_sippai == 1"]
[call target="*Dsyumi_nigate_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_nigate_sippai == 2"]
[call target="*Dsyumi_nigate_sippai3"]

;日常会話_趣味の話（嫌い、苦手状態）
;その他

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_nigate_seikou == 0"]
[call target="*Dsyumi_nigate_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_nigate_seikou == 1"]
[call target="*Dsyumi_nigate_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_nigate_seikou == 2"]
[call target="*Dsyumi_nigate_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*nitijyouD_hutuu

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(5-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="5"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_趣味の話（普通状態）
;変数５/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_hutuu_sippai == 0"]
[call target="*Dsyumi_hutuu_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_hutuu_sippai == 1"]
[call target="*Dsyumi_hutuu_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_hutuu_sippai == 2"]
[call target="*Dsyumi_hutuu_sippai3"]

;日常会話_趣味の話（普通状態）
;その他

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_hutuu_seikou == 0"]
[call target="*Dsyumi_hutuu_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_hutuu_seikou == 1"]
[call target="*Dsyumi_hutuu_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_hutuu_seikou == 2"]
[call target="*Dsyumi_hutuu_seikou3"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*nitijyouD_yuukou

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(6-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="6"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_趣味の話（友好状態）
;変数６/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_yuukou_sippai == 0"]
[call target="*Dsyumi_yuukou_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_yuukou_sippai == 1"]
[call target="*Dsyumi_yuukou_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_yuukou_sippai == 2"]
[call target="*Dsyumi_yuukou_sippai3"]

;日常会話_趣味の話（友好状態）
;その他

[elsif exp="f.love >= 100"]
[call target="*Dsyumi_yuukou_tokimeki"]

[elsif exp="f.kaiwa_tokimeki_nagi >= 3"]
[call target="*Dsyumi_yuukou_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_yuukou_seikou == 0"]
[call target="*Dsyumi_yuukou_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_yuukou_seikou == 1"]
[call target="*Dsyumi_yuukou_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_yuukou_seikou == 2"]
[call target="*Dsyumi_yuukou_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*nitijyouD_suki

[tb_eval  exp="f.komyu_kaeru_ran=Math.floor(Math.random()*(7-1+1)+1)"  name="komyu_kaeru_ran"  cmd="="  op="r"  val="1"  val_2="7"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="6"  y="383"  size="30"  color="0xff0000"  time="0"  text="Số ngẫu nhiên (RNG)"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.komyu_kaeru_ran"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;日常会話_趣味の話（好き状態）
;変数7/1で失敗

[if exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_suki_sippai == 0"]
[call target="*Dsyumi_suki_sippai1"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_suki_sippai == 1"]
[call target="*Dsyumi_suki_sippai2"]

[elsif exp="f.komyu_kaeru_ran == 1 && f.Dsyumi_suki_sippai == 2"]
[call target="*Dsyumi_suki_sippai3"]

;日常会話_趣味の話（好き状態）
;その他

[elsif exp="f.love >= 100"]
[call target="*Dsyumi_suki_tokimeki"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_suki_seikou == 0"]
[call target="*Dsyumi_suki_seikou1"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_suki_seikou == 1"]
[call target="*Dsyumi_suki_seikou2"]

[elsif exp="f.komyu_kaeru_ran > 1 && f.Dsyumi_suki_seikou == 2"]
[call target="*Dsyumi_suki_seikou3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*Dsyumi_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_nigate_sippai+=1"  name="Dsyumi_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[return  ]
*Dsyumi_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_nigate_sippai+=1"  name="Dsyumi_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[return  ]
*Dsyumi_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_nigate_sippai=0"  name="Dsyumi_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_nigate_seikou+=1"  name="Dsyumi_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_nigate_seikou+=1"  name="Dsyumi_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_nigate_seikou=0"  name="Dsyumi_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_hutuu_sippai+=1"  name="Dsyumi_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_hutuu_sippai+=1"  name="Dsyumi_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_hutuu_sippai=0"  name="Dsyumi_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_hutuu_seikou+=1"  name="Dsyumi_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_hutuu_seikou+=1"  name="Dsyumi_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_hutuu_seikou=0"  name="Dsyumi_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_yuukou_sippai+=1"  name="Dsyumi_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_yuukou_sippai+=1"  name="Dsyumi_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_yuukou_sippai=0"  name="Dsyumi_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_yuukou_seikou+=1"  name="Dsyumi_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_yuukou_seikou+=1"  name="Dsyumi_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_yuukou_seikou=0"  name="Dsyumi_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện sở thích_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_suki_sippai1

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_suki_sippai+=1"  name="Dsyumi_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_suki_sippai2

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_suki_sippai+=1"  name="Dsyumi_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_suki_sippai3

[tb_start_text mode=1 ]
Chuyện sở thích_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_suki_sippai=0"  name="Dsyumi_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Dsyumi_suki_seikou1

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_suki_seikou+=1"  name="Dsyumi_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_suki_seikou2

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_suki_seikou+=1"  name="Dsyumi_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_suki_seikou3

[tb_start_text mode=1 ]
Chuyện sở thích_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Dsyumi_suki_seikou=0"  name="Dsyumi_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Dsyumi_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện sở thích_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=7"  name="love"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*kaiwa_seikou

[tb_eval  exp="f.kaiwa_point+=1"  name="kaiwa_point"  cmd="+="  op="t"  val="1"  val_2="2"  ]
[jump  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou2"  cond="f.kaiwa_point==3"  ]
[return  ]
*kaiwa_seikou2

[tb_start_text mode=1 ]
（Cuộc trò chuyện rất sôi nổi. Cảm giác như khoảng cách giữa hai đứa đã thu hẹp lại một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=20"  name="love"  cmd="+="  op="t"  val="20"  val_2="undefined"  ]
[playse  volume="50"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*kaiwa_max

[tb_start_text mode=1 ]
Nagi「Cứ như quay lại ngày xưa ấy. Vui quá đi mất.」[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="kaeri_nagi3.gif"  ]
[tb_eval  exp="f.kaiwa_hato_max=1"  name="kaiwa_hato_max"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  