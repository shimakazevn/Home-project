[_tb_system_call storage=system/_ui_onoff.ks]

*UI_on0

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[return  ]
*UI_on

[tb_start_tyrano_code]
;キーコンフィグOFF
[stop_keyconfig]
;UIを表示
[layopt layer="1" visible="true"]
[_tb_end_tyrano_code]

[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
[tb_start_tyrano_code]
;キーコンフィグON
[start_keyconfig]
[_tb_end_tyrano_code]

[return  ]
*UI_off

[tb_start_tyrano_code]
;キーコンフィグOFF
[stop_keyconfig]

[free layer="1" name="money"]
[free layer="1" name="para_taityou_display"]
[free layer="1" name="para_sutoresu_display"]
[free layer="1" name="para_yuuki_display"]
[free layer="1" name="para_kasikosa_display"]
[free layer="1" name="para_komyu_display"]
[free layer="1" name="para_kikubari_display"]
[free layer="1" name="para_kinryoku_display"]
[layopt layer="1" visible="false"]
[chara_hide  name="month"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="month2"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="base"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="base_para"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_taityou_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_sutoresu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_tension"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="week"  time="0"  wait="false"  pos_mode="false"  ]
[_tb_end_tyrano_code]

[chara_hide  name="UI_youbi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="UI_calendar"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="UI_week"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="UI_month"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;キーコンフィグON
[start_keyconfig]
[_tb_end_tyrano_code]

[return  ]
*rank_on

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top2"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[return  ]
[tb_start_tyrano_code]
;古いの
[layopt layer="1" visible="false"]
[chara_hide  name="month"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="month2"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="base"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="base_para"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_taityou_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_sutoresu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_tension"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="week"  time="0"  wait="false"  pos_mode="false"  ]
[_tb_end_tyrano_code]

*tension_reset

[chara_hide  name="para_tension"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_base.ks"  target="*reset"  ]
[return  ]
*tension_UP

[tb_start_tyrano_code]
;アップエフェクト
[layermode time="0" graphic="../fgimage/default/tension_meimetu.gif" mode="screen"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.tension+=2"  name="tension"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*tension_reset"  ]
[wait  time="2000"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
*tension_UP2

[tb_start_tyrano_code]
;アップエフェクト
[layermode time="0" graphic="../fgimage/default/tension_meimetu.gif" mode="screen"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[tb_eval  exp="f.tension+=3"  name="tension"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*tension_reset"  ]
[wait  time="2000"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[return  ]
