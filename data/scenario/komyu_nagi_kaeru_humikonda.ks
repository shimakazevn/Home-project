
[_tb_system_call storage=system/_komyu_nagi_kaeru_humikonda.ks]

[bg  time="0"  method="crossfade"  storage="kaeri_nagi.png"  ]
[tb_show_message_window  ]
*komyuP

[tb_start_tyrano_code]
;コミュ力別で乱数代入komyuP。会話の成功率に影響する）para_komyu
;コミュ力の表示（0～29「E」30～59「D」60～89「C」90～119「B」120～149「A」150～「S」）

[if exp="f.para_komyu >= 150 "]
[call target="*komyuP_S"]

[elsif exp="f.para_komyu >= 120 && f.para_komyu < 150 "]
[call target="*komyuP_A"]

[elsif exp="f.para_komyu >= 90 && f.para_komyu < 120 "]
[call target="*komyuP_B"]

[elsif exp="f.para_komyu >= 60 && f.para_komyu < 90 "]
[call target="*komyuP_C"]

[elsif exp="f.para_komyu >= 30 && f.para_komyu < 60 "]
[call target="*komyuP_D"]

[elsif exp="f.para_komyu >= 0 && f.para_komyu < 29 "]
[call target="*komyuP_D"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*komyuP_E

[tb_eval  exp="f.humikonda_komyuP+=Math.floor(Math.random()*(2-1+1)+1)"  name="humikonda_komyuP"  cmd="+="  op="r"  val="1"  val_2="2"  ]
[return  ]
*komyuP_D

[tb_eval  exp="f.humikonda_komyuP+=Math.floor(Math.random()*(3-1+1)+1)"  name="humikonda_komyuP"  cmd="+="  op="r"  val="1"  val_2="3"  ]
[return  ]
*komyuP_C

[tb_eval  exp="f.humikonda_komyuP+=Math.floor(Math.random()*(4-1+1)+1)"  name="humikonda_komyuP"  cmd="+="  op="r"  val="1"  val_2="4"  ]
[return  ]
*komyuP_B

[tb_eval  exp="f.humikonda_komyuP+=Math.floor(Math.random()*(6-1+1)+1)"  name="humikonda_komyuP"  cmd="+="  op="r"  val="1"  val_2="6"  ]
[return  ]
*komyuP_A

[tb_eval  exp="f.humikonda_komyuP+=Math.floor(Math.random()*(7-1+1)+1)"  name="humikonda_komyuP"  cmd="+="  op="r"  val="1"  val_2="7"  ]
[return  ]
*komyuP_S

[tb_eval  exp="f.humikonda_komyuP=Math.floor(Math.random()*(15-1+1)+1)"  name="humikonda_komyuP"  cmd="="  op="r"  val="1"  val_2="15"  ]
[return  ]
*omoideA_nigate

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_A思い出の話（苦手＿成功）
;コミュ力S(150)以上で成功確定
;好感度苦手以下

[if exp="f.para_komyu >= 150 && f.Aomoide_nigate_seikou == 0"]
[call target="*Aomoide_nigate_seikou1"]

[elsif exp="f.para_komyu >= 150 && f.Aomoide_nigate_seikou == 1"]
[call target="*Aomoide_nigate_seikou2"]

[elsif exp="f.para_komyu >= 150 && f.Aomoide_nigate_seikou == 2"]
[call target="*Aomoide_nigate_seikou3"]
[endif]

[if exp="f.para_komyu >= 150"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Aomoide_nigate_seikou == 0"]
[call target="*Aomoide_nigate_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Aomoide_nigate_seikou == 1"]
[call target="*Aomoide_nigate_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Aomoide_nigate_seikou == 2"]
[call target="*Aomoide_nigate_seikou3"]

;踏み込んだ会話_A思い出の話（失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Aomoide_nigate_sippai == 0"]
[call target="*Aomoide_nigate_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Aomoide_nigate_sippai == 1"]
[call target="*Aomoide_nigate_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Aomoide_nigate_sippai == 2"]
[call target="*Aomoide_nigate_sippai3"]

[endif]

*end
[_tb_end_tyrano_code]

[return  ]
*omoideA_hutuu

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_A思い出の話（普通＿成功）
;コミュ力A(120)以上で成功確定
;好感度普通

[if exp="f.para_komyu >= 120 && f.Aomoide_hutuu_seikou == 0"]
[call target="*Aomoide_hutuu_seikou1"]

[elsif exp="f.para_komyu >= 120 && f.Aomoide_hutuu_seikou == 1"]
[call target="*Aomoide_hutuu_seikou2"]

[elsif exp="f.para_komyu >= 120 && f.Aomoide_hutuu_seikou == 2"]
[call target="*Aomoide_hutuu_seikou3"]
[endif]

[if exp="f.para_komyu >= 120"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Aomoide_hutuu_seikou == 0"]
[call target="*Aomoide_hutuu_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Aomoide_hutuu_seikou == 1"]
[call target="*Aomoide_hutuu_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Aomoide_hutuu_seikou == 2"]
[call target="*Aomoide_hutuu_seikou3"]

;踏み込んだ会話_A思い出の話（失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Aomoide_hutuu_sippai == 0"]
[call target="*Aomoide_hutuu_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Aomoide_hutuu_sippai == 1"]
[call target="*Aomoide_hutuu_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Aomoide_hutuu_sippai == 2"]
[call target="*Aomoide_hutuu_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*omoideA_yuukou

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_A思い出の話（友好＿成功）
;コミュ力B(90)以上で成功確定

[if exp="f.para_komyu >= 90 && f.Aomoide_yuukou_seikou == 0"]
[call target="*Aomoide_yuukou_seikou1"]

[elsif exp="f.para_komyu >= 90 && f.Aomoide_yuukou_seikou == 1"]
[call target="*Aomoide_yuukou_seikou2"]

[elsif exp="f.para_komyu >= 90 && f.Aomoide_yuukou_seikou == 2"]
[call target="*Aomoide_yuukou_seikou3"]
[endif]

[if exp="f.para_komyu >= 90"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Aomoide_yuukou_seikou == 0"]
[call target="*Aomoide_yuukou_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Aomoide_yuukou_seikou == 1"]
[call target="*Aomoide_yuukou_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Aomoide_yuukou_seikou == 2"]
[call target="*Aomoide_yuukou_seikou3"]

;踏み込んだ会話_A思い出の話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Aomoide_yuukou_sippai == 0"]
[call target="*Aomoide_yuukou_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Aomoide_yuukou_sippai == 1"]
[call target="*Aomoide_yuukou_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Aomoide_yuukou_sippai == 2"]
[call target="*Aomoide_yuukou_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*omoideA_suki

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_A思い出の話（好き＿成功）
;コミュ力C(60)以上で成功確定

[if exp="f.para_komyu >= 60 && f.Aomoide_suki_seikou == 0"]
[call target="*Aomoide_suki_seikou1"]

[elsif exp="f.para_komyu >= 60 && f.Aomoide_suki_seikou == 1"]
[call target="*Aomoide_suki_seikou2"]

[elsif exp="f.para_komyu >= 60 && f.Aomoide_suki_seikou == 2"]
[call target="*Aomoide_suki_seikou3"]
[endif]

[if exp="f.para_komyu >= 60"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Aomoide_suki_seikou == 0"]
[call target="*Aomoide_suki_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Aomoide_suki_seikou == 1"]
[call target="*Aomoide_suki_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Aomoide_suki_seikou == 2"]
[call target="*Aomoide_suki_seikou3"]

;踏み込んだ会話_A思い出の話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Aomoide_suki_sippai == 0"]
[call target="*Aomoide_suki_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Aomoide_suki_sippai == 1"]
[call target="*Aomoide_suki_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Aomoide_suki_sippai == 2"]
[call target="*Aomoide_suki_sippai3"]

[endif]


[_tb_end_tyrano_code]

[return  ]
*Aomoide_nigate_sippai1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_nigate_sippai+=1"  name="Aomoide_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_nigate_sippai2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_nigate_sippai+=1"  name="Aomoide_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_nigate_sippai3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_nigate_sippai=0"  name="Aomoide_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_nigate_seikou1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 1 (Nagi trạng thái Không thích)[p]
（Khuôn mặt cô ấy trông rất rạng rỡ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_nigate_seikou+=1"  name="Aomoide_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_nigate_seikou2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 2 (Nagi trạng thái Không thích)[p]
（Khuôn mặt cô ấy trông rất rạng rỡ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_nigate_seikou+=1"  name="Aomoide_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_nigate_seikou3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 3 (Nagi trạng thái Không thích)[p]
（Khuôn mặt cô ấy trông rất rạng rỡ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_nigate_seikou=0"  name="Aomoide_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_hutuu_sippai1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_hutuu_sippai+=1"  name="Aomoide_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_hutuu_sippai2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_hutuu_sippai+=1"  name="Aomoide_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_hutuu_sippai3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_hutuu_sippai=0"  name="Aomoide_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_hutuu_seikou1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_hutuu_seikou+=1"  name="Aomoide_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_hutuu_seikou2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_hutuu_seikou+=1"  name="Aomoide_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_hutuu_seikou3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_hutuu_seikou=0"  name="Aomoide_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=8"  name="love"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_yuukou_sippai1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_yuukou_sippai+=1"  name="Aomoide_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_yuukou_sippai2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_yuukou_sippai+=1"  name="Aomoide_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_yuukou_sippai3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_yuukou_sippai=0"  name="Aomoide_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_yuukou_seikou1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_yuukou_seikou+=1"  name="Aomoide_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_yuukou_seikou2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_yuukou_seikou+=1"  name="Aomoide_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_yuukou_seikou3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_yuukou_seikou=0"  name="Aomoide_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_yuukou_tokimeki

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_suki_sippai1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_suki_sippai+=1"  name="Aomoide_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_suki_sippai2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_suki_sippai+=1"  name="Aomoide_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_suki_sippai3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_suki_sippai=0"  name="Aomoide_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Aomoide_suki_seikou1

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_suki_seikou+=1"  name="Aomoide_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_suki_seikou2

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_suki_seikou+=1"  name="Aomoide_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_suki_seikou3

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Aomoide_suki_seikou=0"  name="Aomoide_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Aomoide_suki_tokimeki

[tb_start_text mode=1 ]
Kể chuyện ngày xưa_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*sukinahitoB_nigate

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_B好きな人の話（苦手＿成功）
;コミュ力S(150)以上で成功確定

[if exp="f.para_komyu >= 150 && f.Bsukinahito_nigate_seikou == 0"]
[call target="*Bsukinahito_nigate_seikou1"]

[elsif exp="f.para_komyu >= 150 && f.Bsukinahito_nigate_seikou == 1"]
[call target="*Bsukinahito_nigate_seikou2"]

[elsif exp="f.para_komyu >= 150 && f.Bsukinahito_nigate_seikou == 2"]
[call target="*Bsukinahito_nigate_seikou3"]
[endif]

[if exp="f.para_komyu >= 150"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Bsukinahito_nigate_seikou == 0"]
[call target="*Bsukinahito_nigate_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Bsukinahito_nigate_seikou == 1"]
[call target="*Bsukinahito_nigate_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Bsukinahito_nigate_seikou == 2"]
[call target="*Bsukinahito_nigate_seikou3"]

;踏み込んだ会話_B好きな人の話（苦手＿失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Bsukinahito_nigate_sippai == 0"]
[call target="*Bsukinahito_nigate_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Bsukinahito_nigate_sippai == 1"]
[call target="*Bsukinahito_nigate_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Bsukinahito_nigate_sippai == 2"]
[call target="*Bsukinahito_nigate_sippai3"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*sukinahitoB_hutuu

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_B好きな人の話（普通＿成功）
;コミュ力A(120)以上で成功確定

[if exp="f.para_komyu >= 120 && f.Bsukinahito_nigate_seikou == 0"]
[call target="*Bsukinahito_hutuu_seikou1"]

[elsif exp="f.para_komyu >= 120 && f.Bsukinahito_nigate_seikou == 1"]
[call target="*Bsukinahito_hutuu_seikou2"]

[elsif exp="f.para_komyu >= 120 && f.Bsukinahito_nigate_seikou == 2"]
[call target="*Bsukinahito_hutuu_seikou3"]
[endif]

[if exp="f.para_komyu >= 120"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Bsukinahito_hutuu_seikou == 0"]
[call target="*Bsukinahito_hutuu_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Bsukinahito_hutuu_seikou == 1"]
[call target="*Bsukinahito_hutuu_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Bsukinahito_hutuu_seikou == 2"]
[call target="*Bsukinahito_hutuu_seikou3"]

;踏み込んだ会話_B好きな人の話（普通＿失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Bsukinahito_hutuu_sippai == 0"]
[call target="*Bsukinahito_hutuu_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Bsukinahito_hutuu_sippai == 1"]
[call target="*Bsukinahito_hutuu_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Bsukinahito_hutuu_sippai == 2"]
[call target="*Bsukinahito_hutuu_sippai3"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*sukinahitoB_yuukou

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_B好きな人の話（友好＿成功）
;コミュ力B(90)以上で成功確定

[if exp="f.para_komyu >= 90 && f.Bsukinahito_yuukou_seikou == 0"]
[call target="*Bsukinahito_yuukou_seikou1"]

[elsif exp="f.para_komyu >= 90 && f.Bsukinahito_yuukou_seikou == 1"]
[call target="*Bsukinahito_yuukou_seikou2"]

[elsif exp="f.para_komyu >= 90 && f.Bsukinahito_yuukou_seikou == 2"]
[call target="*Bsukinahito_yuukou_seikou3"]
[endif]

[if exp="f.para_komyu >= 90"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Bsukinahito_yuukou_seikou == 0"]
[call target="*Bsukinahito_yuukou_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Bsukinahito_yuukou_seikou == 1"]
[call target="*Bsukinahito_yuukou_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Bsukinahito_yuukou_seikou == 2"]
[call target="*Bsukinahito_yuukou_seikou3"]

;踏み込んだ会話_B好きな人の話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Bsukinahito_yuukou_sippai == 0"]
[call target="*Bsukinahito_yuukou_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Bsukinahito_yuukou_sippai == 1"]
[call target="*Bsukinahito_yuukou_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Bsukinahito_yuukou_sippai == 2"]
[call target="*Bsukinahito_yuukou_sippai3"]

[endif]

[_tb_end_tyrano_code]

[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*Bdanti_yuukou_tokimeki"  cond="f.kaiwa_tokimeki_nagi>3"  ]
[return  ]
*sukinahitoB_suki

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_B好きな人の話（好き＿成功）
;コミュ力C(60)以上で成功確定

[if exp="f.para_komyu >= 60 && f.Bsukinahito_suki_seikou == 0"]
[call target="*Bsukinahito_suki_seikou1"]

[elsif exp="f.para_komyu >= 60 && f.Bsukinahito_suki_seikou == 1"]
[call target="*Bsukinahito_suki_seikou2"]

[elsif exp="f.para_komyu >= 60 && f.Bsukinahito_suki_seikou == 2"]
[call target="*Bsukinahito_suki_seikou3"]
[endif]

[if exp="f.para_komyu >= 60"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Bsukinahito_suki_seikou == 0"]
[call target="*Bsukinahito_suki_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Bsukinahito_suki_seikou == 1"]
[call target="*Bsukinahito_suki_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Bsukinahito_suki_seikou == 2"]
[call target="*Bsukinahito_suki_seikou3"]

;踏み込んだ会話_B好きな人の話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Bsukinahito_suki_sippai == 0"]
[call target="*Bsukinahito_suki_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Bsukinahito_suki_sippai == 1"]
[call target="*Bsukinahito_suki_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Bsukinahito_suki_sippai == 2"]
[call target="*Bsukinahito_suki_sippai3"]

[endif]

[_tb_end_tyrano_code]

[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*Bdanti_suki_tokimeki"  cond="f.kaiwa_tokimeki_nagi>3"  ]
[return  ]
*Bsukinahito_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_nigate_sippai+=1"  name="Bsukinahito_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_nigate_sippai+=1"  name="Bsukinahito_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_nigate_sippai=0"  name="Bsukinahito_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_nigate_seikou+=1"  name="Bsukinahito_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_nigate_seikou+=1"  name="Bsukinahito_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_nigate_seikou=0"  name="Bsukinahito_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_hutuu_sippai+=1"  name="Bsukinahito_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_hutuu_sippai+=1"  name="Bsukinahito_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_hutuu_sippai=0"  name="Bsukinahito_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_hutuu_seikou+=1"  name="Bsukinahito_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_hutuu_seikou+=1"  name="Bsukinahito_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_hutuu_seikou=0"  name="Bsukinahito_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=10"  name="love"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_yuukou_sippai+=1"  name="Bsukinahito_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_yuukou_sippai+=1"  name="Bsukinahito_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_yuukou_sippai=0"  name="Bsukinahito_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_yuukou_seikou+=1"  name="Bsukinahito_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=13"  name="love"  cmd="+="  op="t"  val="13"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_yuukou_seikou+=1"  name="Bsukinahito_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=13"  name="love"  cmd="+="  op="t"  val="13"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_yuukou_seikou=0"  name="Bsukinahito_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=13"  name="love"  cmd="+="  op="t"  val="13"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_suki_sippai1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_suki_sippai+=1"  name="Bsukinahito_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_suki_sippai2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_suki_sippai+=1"  name="Bsukinahito_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_suki_sippai3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_suki_sippai=0"  name="Bsukinahito_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Bsukinahito_suki_seikou1

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_suki_seikou+=1"  name="Bsukinahito_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_suki_seikou2

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_suki_seikou+=1"  name="Bsukinahito_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_suki_seikou3

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Bsukinahito_suki_seikou=0"  name="Bsukinahito_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Bsukinahito_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện người trong mộng_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*kekkonC_nigate

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Ckekkonの話（苦手＿成功）
;コミュ力S(150)以上で成功確定

[if exp="f.para_komyu >= 150 && f.Ckekkon_nigate_seikou == 0"]
[call target="*Ckekkon_nigate_seikou1"]

[elsif exp="f.para_komyu >= 150 && f.Ckekkon_nigate_seikou == 1"]
[call target="*Ckekkon_nigate_seikou2"]

[elsif exp="f.para_komyu >= 150 && f.Ckekkon_nigate_seikou == 2"]
[call target="*Ckekkon_nigate_seikou3"]
[endif]

[if exp="f.para_komyu >= 150"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Ckekkon_nigate_seikou == 0"]
[call target="*Ckekkon_nigate_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Ckekkon_nigate_seikou == 1"]
[call target="*Ckekkon_nigate_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Ckekkon_nigate_seikou == 2"]
[call target="*Ckekkon_nigate_seikou3"]

;踏み込んだ会話_Ckekkonの話（苦手＿失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Ckekkon_nigate_sippai == 0"]
[call target="*Ckekkon_nigate_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Ckekkon_nigate_sippai == 1"]
[call target="*Ckekkon_nigate_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Ckekkon_nigate_sippai == 2"]
[call target="*Ckekkon_nigate_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*kekkonC_hutuu

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_C結婚の話（普通＿成功）
;コミュ力A(120)以上で成功確定

[if exp="f.para_komyu >= 120 && f.Ckekkon_nigate_seikou == 0"]
[call target="*Ckekkon_hutuu_seikou1"]

[elsif exp="f.para_komyu >= 120 && f.Ckekkon_nigate_seikou == 1"]
[call target="*Ckekkon_hutuu_seikou2"]

[elsif exp="f.para_komyu >= 120 && f.Ckekkon_nigate_seikou == 2"]
[call target="*Ckekkon_hutuu_seikou3"]
[endif]

[if exp="f.para_komyu >= 120"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Ckekkon_hutuu_seikou == 0"]
[call target="*Ckekkon_hutuu_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Ckekkon_hutuu_seikou == 1"]
[call target="*Ckekkon_hutuu_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Ckekkon_hutuu_seikou == 2"]
[call target="*Ckekkon_hutuu_seikou3"]

;踏み込んだ会話_C結婚の話（普通＿失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Ckekkon_hutuu_sippai == 0"]
[call target="*Ckekkon_hutuu_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Ckekkon_hutuu_sippai == 1"]
[call target="*Ckekkon_hutuu_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Ckekkon_hutuu_sippai == 2"]
[call target="*Ckekkon_hutuu_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*kekkonC_yuukou

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Ckekkonの話（友好＿成功）
;コミュ力B(90)以上で成功確定

[if exp="f.para_komyu >= 90 && f.Ckekkon_yuukou_seikou == 0"]
[call target="*Ckekkon_yuukou_seikou1"]

[elsif exp="f.para_komyu >= 90 && f.Ckekkon_yuukou_seikou == 1"]
[call target="*Ckekkon_yuukou_seikou2"]

[elsif exp="f.para_komyu >= 90 && f.Ckekkon_yuukou_seikou == 2"]
[call target="*Ckekkon_yuukou_seikou3"]
[endif]

[if exp="f.para_komyu >= 90"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Ckekkon_yuukou_seikou == 0"]
[call target="*Ckekkon_yuukou_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Ckekkon_yuukou_seikou == 1"]
[call target="*Ckekkon_yuukou_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Ckekkon_yuukou_seikou == 2"]
[call target="*Ckekkon_yuukou_seikou3"]

;踏み込んだ会話_Ckekkonの話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Ckekkon_yuukou_sippai == 0"]
[call target="*Ckekkon_yuukou_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Ckekkon_yuukou_sippai == 1"]
[call target="*Ckekkon_yuukou_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Ckekkon_yuukou_sippai == 2"]
[call target="*Ckekkon_yuukou_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*kekkonC_suki

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Ckekkonの話（好き＿成功）
;コミュ力C(60)以上で成功確定

[if exp="f.para_komyu >= 60 && f.Ckekkon_suki_seikou == 0"]
[call target="*Ckekkon_suki_seikou1"]

[elsif exp="f.para_komyu >= 60 && f.Ckekkon_suki_seikou == 1"]
[call target="*Ckekkon_suki_seikou2"]

[elsif exp="f.para_komyu >= 60 && f.Ckekkon_suki_seikou == 2"]
[call target="*Ckekkon_suki_seikou3"]
[endif]

[if exp="f.para_komyu >= 60"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Ckekkon_suki_seikou == 0"]
[call target="*Ckekkon_suki_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Ckekkon_suki_seikou == 1"]
[call target="*Ckekkon_suki_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Ckekkon_suki_seikou == 2"]
[call target="*Ckekkon_suki_seikou3"]

;踏み込んだ会話_Ckekkonの話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Ckekkon_suki_sippai == 0"]
[call target="*Ckekkon_suki_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Ckekkon_suki_sippai == 1"]
[call target="*Ckekkon_suki_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Ckekkon_suki_sippai == 2"]
[call target="*Ckekkon_suki_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*Ckekkon_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_nigate_sippai+=1"  name="Ckekkon_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_nigate_sippai+=1"  name="Ckekkon_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_nigate_sippai=0"  name="Ckekkon_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_nigate_seikou+=1"  name="Ckekkon_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_nigate_seikou+=1"  name="Ckekkon_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí căng thẳng đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_nigate_seikou=0"  name="Ckekkon_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_hutuu_sippai+=1"  name="Ckekkon_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_hutuu_sippai+=1"  name="Ckekkon_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_hutuu_sippai=0"  name="Ckekkon_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_hutuu_seikou+=1"  name="Ckekkon_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_hutuu_seikou+=1"  name="Ckekkon_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí đã dịu đi một chút.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_hutuu_seikou=0"  name="Ckekkon_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=12"  name="love"  cmd="+="  op="t"  val="12"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_yuukou_sippai+=1"  name="Ckekkon_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_yuukou_sippai+=1"  name="Ckekkon_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_yuukou_sippai=0"  name="Ckekkon_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_yuukou_seikou+=1"  name="Ckekkon_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_yuukou_seikou+=1"  name="Ckekkon_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ rất vui.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_yuukou_seikou=0"  name="Ckekkon_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện kết hôn_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_suki_sippai1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_suki_sippai+=1"  name="Ckekkon_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_suki_sippai2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_suki_sippai+=1"  name="Ckekkon_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_suki_sippai3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_suki_sippai=0"  name="Ckekkon_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Ckekkon_suki_seikou1

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_suki_seikou+=1"  name="Ckekkon_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=17"  name="love"  cmd="+="  op="t"  val="17"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_suki_seikou2

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_suki_seikou+=1"  name="Ckekkon_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=17"  name="love"  cmd="+="  op="t"  val="17"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_suki_seikou3

[tb_start_text mode=1 ]
Chuyện kết hôn_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Ckekkon_suki_seikou=0"  name="Ckekkon_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=17"  name="love"  cmd="+="  op="t"  val="17"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Ckekkon_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện kết hôn_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*ettiD_nigate

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Dettiの話（苦手＿成功）
;コミュ力S(150)以上で成功確定

[if exp="f.para_komyu >= 150 && f.Detti_nigate_seikou == 0"]
[call target="*Detti_nigate_seikou1"]

[elsif exp="f.para_komyu >= 150 && f.Detti_nigate_seikou == 1"]
[call target="*Detti_nigate_seikou2"]

[elsif exp="f.para_komyu >= 150 && f.Detti_nigate_seikou == 2"]
[call target="*Detti_nigate_seikou3"]
[endif]

[if exp="f.para_komyu >= 150"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Detti_nigate_seikou == 0"]
[call target="*Detti_nigate_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Detti_nigate_seikou == 1"]
[call target="*Detti_nigate_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Detti_nigate_seikou == 2"]
[call target="*Detti_nigate_seikou3"]

;踏み込んだ会話_Dettiの話（苦手＿失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Detti_nigate_sippai == 0"]
[call target="*Detti_nigate_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Detti_nigate_sippai == 1"]
[call target="*Detti_nigate_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Detti_nigate_sippai == 2"]
[call target="*Detti_nigate_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*ettiD_hutuu

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Dえっちな話（普通＿成功）
;コミュ力A(120)以上で成功確定

[if exp="f.para_komyu >= 120 && f.Detti_nigate_seikou == 0"]
[call target="*Detti_hutuu_seikou1"]

[elsif exp="f.para_komyu >= 120 && f.Detti_nigate_seikou == 1"]
[call target="*Detti_hutuu_seikou2"]

[elsif exp="f.para_komyu >= 120 && f.Detti_nigate_seikou == 2"]
[call target="*Detti_hutuu_seikou3"]
[endif]

[if exp="f.para_komyu >= 120"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 2 && f.Detti_hutuu_seikou == 0"]
[call target="*Detti_hutuu_seikou1"]

[elsif exp="f.humikonda_komyuP > 2 && f.Detti_hutuu_seikou == 1"]
[call target="*Detti_hutuu_seikou2"]

[elsif exp="f.humikonda_komyuP > 2 && f.Detti_hutuu_seikou == 2"]
[call target="*Detti_hutuu_seikou3"]

;踏み込んだ会話_Dえっちな話（普通＿失敗）

[elsif exp="f.humikonda_komyuP <= 2 && f.Detti_hutuu_sippai == 0"]
[call target="*Detti_hutuu_sippai1"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Detti_hutuu_sippai == 1"]
[call target="*Detti_hutuu_sippai2"]

[elsif exp="f.humikonda_komyuP <= 2 && f.Detti_hutuu_sippai == 2"]
[call target="*Detti_hutuu_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*ettiD_yuukou

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Dettiの話（友好＿成功）
;コミュ力B(90)以上で成功確定

[if exp="f.para_komyu >= 90 && f.Detti_yuukou_seikou == 0"]
[call target="*Detti_yuukou_seikou1"]

[elsif exp="f.para_komyu >= 90 && f.Detti_yuukou_seikou == 1"]
[call target="*Detti_yuukou_seikou2"]

[elsif exp="f.para_komyu >= 90 && f.Detti_yuukou_seikou == 2"]
[call target="*Detti_yuukou_seikou3"]
[endif]

[if exp="f.para_komyu >= 90"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Detti_yuukou_seikou == 0"]
[call target="*Detti_yuukou_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Detti_yuukou_seikou == 1"]
[call target="*Detti_yuukou_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Detti_yuukou_seikou == 2"]
[call target="*Detti_yuukou_seikou3"]

;踏み込んだ会話_Dettiの話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Detti_yuukou_sippai == 0"]
[call target="*Detti_yuukou_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Detti_yuukou_sippai == 1"]
[call target="*Detti_yuukou_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Detti_yuukou_sippai == 2"]
[call target="*Detti_yuukou_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*ettiD_suki

[call  storage="komyu_nagi_kaeru_humikonda.ks"  target="*komyuP"  ]
[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="9"  y="309"  size="30"  color="0xff0000"  time="0"  text="Điểm Komyu Point"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="88"  y="386"  size="30"  color="0xff0000"  time="0"  text="&f.humikonda_komyuP"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
;踏み込んだ会話_Dettiの話（好き＿成功）
;コミュ力C(60)以上で成功確定

[if exp="f.para_komyu >= 60 && f.Detti_suki_seikou == 0"]
[call target="*Detti_suki_seikou1"]

[elsif exp="f.para_komyu >= 60 && f.Detti_suki_seikou == 1"]
[call target="*Detti_suki_seikou2"]

[elsif exp="f.para_komyu >= 60 && f.Detti_suki_seikou == 2"]
[call target="*Detti_suki_seikou3"]
[endif]

[if exp="f.para_komyu >= 60"]
[jump target="*end"]
[endif]

[if exp="f.humikonda_komyuP > 1 && f.Detti_suki_seikou == 0"]
[call target="*Detti_suki_seikou1"]

[elsif exp="f.humikonda_komyuP > 1 && f.Detti_suki_seikou == 1"]
[call target="*Detti_suki_seikou2"]

[elsif exp="f.humikonda_komyuP > 1 && f.Detti_suki_seikou == 2"]
[call target="*Detti_suki_seikou3"]

;踏み込んだ会話_Dettiの話（失敗）

[elsif exp="f.humikonda_komyuP <= 1 && f.Detti_suki_sippai == 0"]
[call target="*Detti_suki_sippai1"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Detti_suki_sippai == 1"]
[call target="*Detti_suki_sippai2"]

[elsif exp="f.humikonda_komyuP <= 1 && f.Detti_suki_sippai == 2"]
[call target="*Detti_suki_sippai3"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*Detti_nigate_sippai1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 1 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_nigate_sippai+=1"  name="Detti_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[return  ]
*Detti_nigate_sippai2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 2 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_nigate_sippai+=1"  name="Detti_nigate_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[return  ]
*Detti_nigate_sippai3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 3 (Nagi trạng thái Không thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_nigate_sippai=0"  name="Detti_nigate_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_nigate_seikou1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 1 (Nagi trạng thái Không thích)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_nigate_seikou+=1"  name="Detti_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_nigate_seikou2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 2 (Nagi trạng thái Không thích)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_nigate_seikou+=1"  name="Detti_nigate_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_nigate_seikou3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 3 (Nagi trạng thái Không thích)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_nigate_seikou=0"  name="Detti_nigate_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_hutuu_sippai1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 1 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_hutuu_sippai+=1"  name="Detti_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_hutuu_sippai2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 2 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_hutuu_sippai+=1"  name="Detti_hutuu_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_hutuu_sippai3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 3 (Nagi trạng thái Bình thường)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_hutuu_sippai=0"  name="Detti_hutuu_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_hutuu_seikou1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 1 (Nagi trạng thái Bình thường)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_hutuu_seikou+=1"  name="Detti_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=11"  name="love"  cmd="+="  op="t"  val="11"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_hutuu_seikou2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 2 (Nagi trạng thái Bình thường)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_hutuu_seikou+=1"  name="Detti_hutuu_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_hutuu_seikou3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 3 (Nagi trạng thái Bình thường)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_hutuu_seikou=0"  name="Detti_hutuu_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=14"  name="love"  cmd="+="  op="t"  val="14"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_yuukou_sippai1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 1 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_yuukou_sippai+=1"  name="Detti_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_yuukou_sippai2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 2 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_yuukou_sippai+=1"  name="Detti_yuukou_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_yuukou_sippai3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 3 (Nagi trạng thái Thân thiện)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_yuukou_sippai=0"  name="Detti_yuukou_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_yuukou_seikou1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 1 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_yuukou_seikou+=1"  name="Detti_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_yuukou_seikou2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 2 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_yuukou_seikou+=1"  name="Detti_yuukou_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_yuukou_seikou3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 3 (Nagi trạng thái Thân thiện)[p]
（Trông cô ấy có vẻ đang xấu hổ.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_yuukou_seikou=0"  name="Detti_yuukou_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=15"  name="love"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_yuukou_tokimeki

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thân thiện (Nagi trạng thái Xao xuyến)[p]
（Mặt cô ấy đỏ bừng rồi, đáng yêu quá đi mất.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=20"  name="love"  cmd="+="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_suki_sippai1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 1 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_suki_sippai+=1"  name="Detti_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_suki_sippai2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 2 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_suki_sippai+=1"  name="Detti_suki_sippai"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_suki_sippai3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thất bại 3 (Nagi trạng thái Thích)[p]
（Bầu không khí trở nên gượng gạo mất rồi.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_suki_sippai=0"  name="Detti_suki_sippai"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love-=5"  name="love"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.kaiwa_point=0"  name="kaiwa_point"  cmd="="  op="t"  val="0"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
*Detti_suki_seikou1

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 1 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_suki_seikou+=1"  name="Detti_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=18"  name="love"  cmd="+="  op="t"  val="18"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_suki_seikou2

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 2 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_suki_seikou+=1"  name="Detti_suki_seikou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.love+=18"  name="love"  cmd="+="  op="t"  val="18"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_suki_seikou3

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thành công 3 (Nagi trạng thái Thích)[p]
（Cảm nhận được ánh nhìn say đắm từ cô ấy.）[p]
[_tb_end_text]

[tb_eval  exp="f.Detti_suki_seikou=0"  name="Detti_suki_seikou"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.love+=18"  name="love"  cmd="+="  op="t"  val="18"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[call  storage="komyu_nagi_kaeru_nitijyoukaiwa.ks"  target="*kaiwa_seikou"  ]
[return  ]
*Detti_suki_tokimeki

[tb_start_text mode=1 ]
Chuyện nhạy cảm_Thích (Nagi trạng thái Xao xuyến)[p]
（Trông cô ấy vui vẻ hơn hẳn bình thường.）[p]
[_tb_end_text]

[tb_eval  exp="f.love+=20"  name="love"  cmd="+="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="komyu_nagi_kaeru_hato.ks"  target="*update"  ]
[return  ]
