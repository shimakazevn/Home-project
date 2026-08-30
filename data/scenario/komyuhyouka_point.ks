
[_tb_system_call storage=system/_komyuhyouka_point.ks]

[bg  time="0"  method="crossfade"  storage="komyu_insyou.png"  ]
*top

[chara_hide  name="komyu_hyouka"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;コミュグラフ＿好き値（縦）＿凪

[if exp="f.komyu_insyou_suki_nagi == 0 "]
[call target="*sukiti_0"]

[elsif exp="f.komyu_insyou_suki_nagi == 1 "]
[call target="*sukiti_1"]

[elsif exp="f.komyu_insyou_suki_nagi == 2 "]
[call target="*sukiti_2"]

[elsif exp="f.komyu_insyou_suki_nagi == 3 "]
[call target="*sukiti_3"]

[elsif exp="f.komyu_insyou_suki_nagi == 4 "]
[call target="*sukiti_4"]

[elsif exp="f.komyu_insyou_suki_nagi == 5 "]
[call target="*sukiti_5"]

[elsif exp="f.komyu_insyou_suki_nagi == 6 "]
[call target="*sukiti_6"]

[elsif exp="f.komyu_insyou_suki_nagi == 7 "]
[call target="*sukiti_7"]

[elsif exp="f.komyu_insyou_suki_nagi == 8 "]
[call target="*sukiti_8"]

[elsif exp="f.komyu_insyou_suki_nagi == 9 "]
[call target="*sukiti_9"]

[elsif exp="f.komyu_insyou_suki_nagi == 10 "]
[call target="*sukiti_10"]

[elsif exp="f.komyu_insyou_suki_nagi == 11 "]
[call target="*sukiti_11"]

[elsif exp="f.komyu_insyou_suki_nagi >= 12 "]
[call target="*sukiti_12"]

[elsif exp="f.komyu_insyou_suki_nagi == -1 "]
[call target="*sukiti_m1"]

[elsif exp="f.komyu_insyou_suki_nagi == -2 "]
[call target="*sukiti_m2"]

[elsif exp="f.komyu_insyou_suki_nagi == -3 "]
[call target="*sukiti_m3"]

[elsif exp="f.komyu_insyou_suki_nagi == -4 "]
[call target="*sukiti_m4"]

[elsif exp="f.komyu_insyou_suki_nagi == -5 "]
[call target="*sukiti_m5"]

[elsif exp="f.komyu_insyou_suki_nagi == -6 "]
[call target="*sukiti_m6"]

[elsif exp="f.komyu_insyou_suki_nagi == -7 "]
[call target="*sukiti_m7"]

[elsif exp="f.komyu_insyou_suki_nagi == -8 "]
[call target="*sukiti_m8"]

[elsif exp="f.komyu_insyou_suki_nagi == -9 "]
[call target="*sukiti_m9"]

[elsif exp="f.komyu_insyou_suki_nagi == -10 "]
[call target="*sukiti_m10"]

[elsif exp="f.komyu_insyou_suki_nagi == -11 "]
[call target="*sukiti_m11"]

[elsif exp="f.komyu_insyou_suki_nagi <= -12 "]
[call target="*sukiti_m12"]

[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;コミュグラフ＿純粋値（横）＿凪

[if exp="f.komyu_insyou_jyunsui_nagi == 0 "]
[call target="*jyunsuiti_0"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 1 "]
[call target="*jyunsuiti_1"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 2 "]
[call target="*jyunsuiti_2"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 3 "]
[call target="*jyunsuiti_3"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 4 "]
[call target="*jyunsuiti_4"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 5 "]
[call target="*jyunsuiti_5"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 6 "]
[call target="*jyunsuiti_6"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 7 "]
[call target="*jyunsuiti_7"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 8 "]
[call target="*jyunsuiti_8"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 9 "]
[call target="*jyunsuiti_9"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 10 "]
[call target="*jyunsuiti_10"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == 11 "]
[call target="*jyunsuiti_11"]

[elsif exp="f.komyu_insyou_jyunsui_nagi >= 12 "]
[call target="*jyunsuiti_12"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -1 "]
[call target="*jyunsuiti_m1"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -2 "]
[call target="*jyunsuiti_m2"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -3 "]
[call target="*jyunsuiti_m3"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -4 "]
[call target="*jyunsuiti_m4"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -5 "]
[call target="*jyunsuiti_m5"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -6 "]
[call target="*jyunsuiti_m6"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -7 "]
[call target="*jyunsuiti_m7"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -8 "]
[call target="*jyunsuiti_m8"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -9 "]
[call target="*jyunsuiti_m9"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -10 "]
[call target="*jyunsuiti_m10"]

[elsif exp="f.komyu_insyou_jyunsui_nagi == -11 "]
[call target="*jyunsuiti_m11"]

[elsif exp="f.komyu_insyou_jyunsui_nagi <= -12 "]
[call target="*jyunsuiti_m12"]

[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;凪への印象を表示する

;運命の人
[if exp="f.komyu_insyou_suki_nagi>= 9 && f.komyu_insyou_jyunsui_nagi>= 9 "]
[call target="*unmeinohito"]

;狂愛
[elsif exp="f.komyu_insyou_suki_nagi >= 9 && f.komyu_insyou_jyunsui_nagi <= -9"]
[call target="*kyouai"]

;軽蔑
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi >= 9 "]
[call target="*keibetu"]

;肉便器
[elsif exp="f.komyu_insyou_suki_nagi <= -9 && f.komyu_insyou_jyunsui_nagi <= -9 "]
[call target="*nikubenki"]

;気になる存在
[elsif exp="f.komyu_insyou_suki_nagi>= 4 && f.komyu_insyou_jyunsui_nagi>= 4 "]
[call target="*kininaru"]

;洗脳相手
[elsif exp="f.komyu_insyou_suki_nagi >= 4 && f.komyu_insyou_jyunsui_nagi <= -4"]
[call target="*sennou"]

;苦手な相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi >= 4 "]
[call target="*nigate"]

;復讐相手
[elsif exp="f.komyu_insyou_suki_nagi <= -4 && f.komyu_insyou_jyunsui_nagi <= -4 "]
[call target="*hukusyuu"]

;寝取られ相手
[elsif exp="f.komyu_insyou_suki_nagi>= 7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call target="*netorare"]

;ストーカー
[elsif exp="f.komyu_insyou_jyunsui_nagi<= -7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call target="*sutoka"]

;無関心
[elsif exp="f.komyu_insyou_suki_nagi<= -7 && f.komyu_insyou_jyunsui_nagi>= -3 && f.komyu_insyou_jyunsui_nagi<= 3 "]
[call target="*mukansin"]

;友達
[elsif exp="f.komyu_insyou_jyunsui_nagi>= 7 && f.komyu_insyou_suki_nagi>= -3 && f.komyu_insyou_suki_nagi<= 3 "]
[call target="*tomodati"]


;それ以外は以下を表示
;ただの幼馴染み
[else]
[call target="*osananajimi"]

[endif]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*sukiti_0

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="862"  top="344"  reflect="false"  ]
[return  ]
*sukiti_1

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="328"  ]
[return  ]
*sukiti_2

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="312"  ]
[return  ]
*sukiti_3

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="296"  ]
[return  ]
*sukiti_4

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="280"  ]
[return  ]
*sukiti_5

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="264"  ]
[return  ]
*sukiti_6

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="248"  ]
[return  ]
*sukiti_7

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="232"  ]
[return  ]
*sukiti_8

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="216"  ]
[return  ]
*sukiti_9

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="200"  ]
[return  ]
*sukiti_10

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="184"  ]
[return  ]
*sukiti_11

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="168"  ]
[return  ]
*sukiti_12

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="152"  ]
[tb_eval  exp="f.komyu_insyou_suki_nagi=12"  name="komyu_insyou_suki_nagi"  cmd="="  op="t"  val="12"  val_2="undefined"  ]
[return  ]
*sukiti_m1

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="360"  ]
[return  ]
*sukiti_m2

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="376"  ]
[return  ]
*sukiti_m3

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="392"  ]
[return  ]
*sukiti_m4

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="408"  ]
[return  ]
*sukiti_m5

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="424"  ]
[return  ]
*sukiti_m6

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="440"  ]
[return  ]
*sukiti_m7

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="456"  ]
[return  ]
*sukiti_m8

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="472"  ]
[return  ]
*sukiti_m9

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="488"  ]
[return  ]
*sukiti_m10

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="504"  ]
[return  ]
*sukiti_m11

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="520"  ]
[return  ]
*sukiti_m12

[chara_show  name="komyu_hyouka"  time="0"  wait="true"  storage="chara/165/komyu_p.gif"  width="16"  height="16"  left="864"  top="536"  ]
[tb_eval  exp="f.komyu_insyou_suki_nagi='-12'"  name="komyu_insyou_suki_nagi"  cmd="="  op="t"  val="-12"  val_2="undefined"  ]
[return  ]
*jyunsuiti_0

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=864]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_1

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=880]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_2

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=896]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_3

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=912]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_4

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=928]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_5

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=944]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_6

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=960]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_7

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=976]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_8

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=992]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_9

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=1008]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_10

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=1024]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_11

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=1040]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_12

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=1056]
[_tb_end_tyrano_code]

[tb_eval  exp="f.komyu_insyou_jyunsui_nagi=12"  name="komyu_insyou_jyunsui_nagi"  cmd="="  op="t"  val="12"  val_2="undefined"  ]
[return  ]
*jyunsuiti_m1

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=848]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m2

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=832]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m3

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=816]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m4

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=800]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m5

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=784]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m6

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=768]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m7

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=752]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m8

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=736]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m9

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=720]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m10

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=704]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m11

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=688]
[_tb_end_tyrano_code]

[return  ]
*jyunsuiti_m12

[tb_start_tyrano_code]
;純粋値（横）の移動
[chara_move name="komyu_hyouka" time="0" left=672]
[_tb_end_tyrano_code]

[tb_eval  exp="f.komyu_insyou_jyunsui_nagi='-12'"  name="komyu_insyou_jyunsui_nagi"  cmd="="  op="t"  val="-12"  val_2="undefined"  ]
[return  ]
*osananajimi

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_tadanoosananajimi.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=1"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_sennouaite_nagi=0"  name="kan_sennouaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_netorareganbou_nagi=0"  name="kan_netorareganbou_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_kininaruaite_nagi=0"  name="kan_kininaruaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_tomodati_nagi=0"  name="kan_tomodati_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_nigatenaaite_nagi=0"  name="kan_nigatenaaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_mukansin_nagi=0"  name="kan_mukansin_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_hukusyuaite_nagi=0"  name="kan_hukusyuaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_sutoka_nagi=0"  name="kan_sutoka_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*unmeinohito

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_unmeinohito.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_unmeinohito_nagi=1"  name="kan_unmeinohito_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_kininaruaite_nagi=0"  name="kan_kininaruaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*kyouai

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_kyouai.png"  width="304"  height="144"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_kyouai_nagi=1"  name="kan_kyouai_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_sennouaite_nagi=0"  name="kan_sennouaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*keibetu

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_keibetu.png"  width="304"  height="144"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_keibetu_nagi=1"  name="kan_keibetu_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_nigatenaaite_nagi=0"  name="kan_nigatenaaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*nikubenki

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_nikubenki.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_nikubenki_nagi=1"  name="kan_nikubenki_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_hukusyuaite_nagi=0"  name="kan_hukusyuaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*kininaru

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_kininaruaite.png"  width="304"  height="144"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_kininaruaite_nagi=1"  name="kan_kininaruaite_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_netorareganbou_nagi=0"  name="kan_netorareganbou_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_tomodati_nagi=0"  name="kan_tomodati_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_unmeinohito_nagi=0"  name="kan_unmeinohito_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*sennou

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_sennouaite.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_sennouaite_nagi=1"  name="kan_sennouaite_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_netorareganbou_nagi=0"  name="kan_netorareganbou_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_sutoka_nagi=0"  name="kan_sutoka_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_kyouai_nagi=0"  name="kan_kyouai_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*nigate

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_nigatenaaite.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_nigatenaaite_nagi=1"  name="kan_nigatenaaite_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_tomodati_nagi=0"  name="kan_tomodati_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_mukansin_nagi=0"  name="kan_mukansin_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_keibetu_nagi=0"  name="kan_keibetu_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*hukusyuu

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_hukusyuaite.png"  width="304"  height="144"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_hukusyuaite_nagi=1"  name="kan_hukusyuaite_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_sutoka_nagi=0"  name="kan_sutoka_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_mukansin_nagi=0"  name="kan_mukansin_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_nikubenki_nagi=0"  name="kan_nikubenki_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*netorare

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_netorareaite.png"  width="304"  height="144"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_netorareganbou_nagi=1"  name="kan_netorareganbou_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_sennouaite_nagi=0"  name="kan_sennouaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_kininaruaite_nagi=0"  name="kan_kininaruaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*sutoka

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_sutoka.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_sutoka_nagi=1"  name="kan_sutoka_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_sennouaite_nagi=0"  name="kan_sennouaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_hukusyuaite_nagi=0"  name="kan_hukusyuaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*mukansin

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_mukansin.png"  width="304"  height="144"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_mukansin_nagi=1"  name="kan_mukansin_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_hukusyuaite_nagi=0"  name="kan_hukusyuaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_nigatenaaite_nagi=0"  name="kan_nigatenaaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*tomodati

[chara_hide  name="komyu_insyou"  time="0"  wait="true"  pos_mode="false"  ]
[chara_show  name="komyu_insyou"  time="0"  wait="true"  storage="chara/166/komyu_s_tomodati.png"  width="311"  height="146"  left="947"  top="10"  reflect="false"  ]
[tb_eval  exp="f.kan_tomodati_nagi=1"  name="kan_tomodati_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.kan_osananajimi_nagi=0"  name="kan_osananajimi_nagi"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.kan_kininaruaite_nagi=0"  name="kan_kininaruaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.kan_nigatenaaite_nagi=0"  name="kan_nigatenaaite_nagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
