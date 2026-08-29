[_tb_system_call storage=system/_H_kandocheck.ks]

*top_4

[tb_start_tyrano_code]
;ポイントを消す
[anim name="point" opacity=0 time=0]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high1=0"  name="H_high1"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_high2=0"  name="H_high2"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_high3=0"  name="H_high3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_high4=0"  name="H_high4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low1=0"  name="H_low1"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low2=0"  name="H_low2"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low3=0"  name="H_low3"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low4=0"  name="H_low4"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.ran=Math.floor(Math.random()*(4-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="4"  ]
[tb_start_tyrano_code]
;青チェックをコール
[if exp="f.ran==1"]
[call target="*no_1"]

[elsif exp="f.ran==2"]
[call target="*no_2"]

[elsif exp="f.ran==3"]
[call target="*no_3"]

[elsif exp="f.ran==4"]
[call target="*no_4"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ran=Math.floor(Math.random()*(4-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="4"  ]
[tb_start_tyrano_code]
;赤チェックをコール
[if exp="f.ran==1"]
[call target="*yes_1"]

[elsif exp="f.ran==2"]
[call target="*yes_2"]

[elsif exp="f.ran==3"]
[call target="*yes_3"]

[elsif exp="f.ran==4"]
[call target="*yes_4"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*top_5

[tb_start_tyrano_code]
;ポイントを消す
[anim name="point" opacity=0 time=0]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high1=0"  name="H_high1"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high2=0"  name="H_high2"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high3=0"  name="H_high3"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high4=0"  name="H_high4"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high5=0"  name="H_high5"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low1=0"  name="H_low1"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low2=0"  name="H_low2"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low3=0"  name="H_low3"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low4=0"  name="H_low4"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low5=0"  name="H_low5"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ran=Math.floor(Math.random()*(5-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="5"  ]
[tb_start_tyrano_code]
;青チェックをコール
[if exp="f.ran == 1"]
[call target="*no_1"]

[elsif exp="f.ran == 2"]
[call target="*no_2"]

[elsif exp="f.ran == 3"]
[call target="*no_3"]

[elsif exp="f.ran == 4"]
[call target="*no_4"]

[elsif exp="f.ran == 5"]
[call target="*no_5"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ran=Math.floor(Math.random()*(5-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="5"  ]
[tb_start_tyrano_code]
;赤チェックをコール
[if exp="f.ran == 1"]
[call target="*yes_1"]

[elsif exp="f.ran == 2"]
[call target="*yes_2"]

[elsif exp="f.ran == 3"]
[call target="*yes_3"]

[elsif exp="f.ran == 4"]
[call target="*yes_4"]

[elsif exp="f.ran == 5"]
[call target="*yes_5"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*top_6

[tb_start_tyrano_code]
;ポイントを消す
[anim name="point" opacity=0 time=0]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high1=0"  name="H_high1"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high2=0"  name="H_high2"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high3=0"  name="H_high3"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high4=0"  name="H_high4"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high5=0"  name="H_high5"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high6=0"  name="H_high6"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low1=0"  name="H_low1"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low2=0"  name="H_low2"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low3=0"  name="H_low3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low4=0"  name="H_low4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low5=0"  name="H_low5"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low6=0"  name="H_low6"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ran=Math.floor(Math.random()*(6-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="6"  ]
[tb_start_tyrano_code]
;青チェックをコール
[if exp="f.ran == 1"]
[call target="*no_1"]

[elsif exp="f.ran == 2"]
[call target="*no_2"]

[elsif exp="f.ran == 3"]
[call target="*no_3"]

[elsif exp="f.ran == 4"]
[call target="*no_4"]

[elsif exp="f.ran == 5"]
[call target="*no_5"]

[elsif exp="f.ran == 6"]
[call target="*no_6"]

[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ran=Math.floor(Math.random()*(6-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="6"  ]
[tb_start_tyrano_code]
;赤チェックをコール
[if exp="f.ran == 1"]
[call target="*yes_1"]

[elsif exp="f.ran == 2"]
[call target="*yes_2"]

[elsif exp="f.ran == 3"]
[call target="*yes_3"]

[elsif exp="f.ran == 4"]
[call target="*yes_4"]

[elsif exp="f.ran == 5"]
[call target="*yes_5"]

[elsif exp="f.ran == 6"]
[call target="*yes_6"]

[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;赤と青が同じ場合は赤を優先させる

[if exp="f.H_high1 == 1 && f.H_low1 == 1"]
[eval exp="f.H_low1 = 0"]
[endif]

[if exp="f.H_high2 == 1 && f.H_low2 == 1"]
[eval exp="f.H_low2 = 0"]
[endif]

[if exp="f.H_high3 == 1 && f.H_low3 == 1"]
[eval exp="f.H_low3 = 0"]
[endif]

[if exp="f.H_high4 == 1 && f.H_low4 == 1"]
[eval exp="f.H_low4 = 0"]
[endif]

[if exp="f.H_high5 == 1 && f.H_low5 == 1"]
[eval exp="f.H_low5 = 0"]
[endif]

[if exp="f.H_high6 == 1 && f.H_low6 == 1"]
[eval exp="f.H_low6 = 0"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*yes_1

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="1224" y="0" storage="default/H_point_hit.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high1=1"  name="H_high1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yes_2

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="1136" y="0" storage="default/H_point_hit.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high2=1"  name="H_high2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yes_3

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="1048" y="0" storage="default/H_point_hit.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high3=1"  name="H_high3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yes_4

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="960" y="0" storage="default/H_point_hit.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high4=1"  name="H_high4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yes_5

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="872" y="0" storage="default/H_point_hit.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high5=1"  name="H_high5"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yes_6

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="784" y="0" storage="default/H_point_hit.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high6=1"  name="H_high6"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_1

[tb_start_tyrano_code]
;青ポイント
[image layer="2" x="1224" y="0" storage="default/H_point_miss.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_low1=1"  name="H_low1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_2

[tb_start_tyrano_code]
;青ポイント
[image layer="2" x="1136" y="0" storage="default/H_point_miss.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_low2=1"  name="H_low2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_3

[tb_start_tyrano_code]
;青ポイント
[image layer="2" x="1048" y="0" storage="default/H_point_miss.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_low3=1"  name="H_low3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_4

[tb_start_tyrano_code]
;青ポイント
[image layer="2" x="960" y="0" storage="default/H_point_miss.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_low4=1"  name="H_low4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_5

[tb_start_tyrano_code]
;青ポイント
[image layer="2" x="872" y="0" storage="default/H_point_miss.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_low5=1"  name="H_low5"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*no_6

[tb_start_tyrano_code]
;青ポイント
[image layer="2" x="784" y="0" storage="default/H_point_miss.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_low6=1"  name="H_low6"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*sounyu_top

[tb_start_tyrano_code]
;ポイントを消す
[anim name="point" opacity=0 time=0]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high1=0"  name="H_high1"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high2=0"  name="H_high2"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high3=0"  name="H_high3"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high4=0"  name="H_high4"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high5=0"  name="H_high5"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_high6=0"  name="H_high6"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_low1=0"  name="H_low1"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low2=0"  name="H_low2"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low3=0"  name="H_low3"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low4=0"  name="H_low4"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low5=0"  name="H_low5"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_low6=0"  name="H_low6"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.ran=Math.floor(Math.random()*(2-1+1)+1)"  name="ran"  cmd="="  op="r"  val="1"  val_2="2"  ]
[tb_start_tyrano_code]
;赤チェックをコール
[if exp="f.ran == 1"]
[call target="*yes_sounyu1"]

[elsif exp="f.ran == 2"]
[call target="*yes_sounyu2"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*yes_sounyu1

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="1088" y="336" storage="default/HUI_pisto_L_yes.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high1=1"  name="H_high1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*yes_sounyu2

[tb_start_tyrano_code]
;赤ポイント
[image layer="2" x="1088" y="336" storage="default/HUI_pisto_R_yes.png" time="0"  name="point" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_high2=1"  name="H_high2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[return  