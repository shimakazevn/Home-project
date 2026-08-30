
[_tb_system_call storage=system/_job_ten_hikui.ks]

*FX_seikou

[tb_eval  exp="f.para_yuuki_updated+=3"  name="para_yuuki_updated"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_eval  exp="f.para_kasikosa_updated+=1"  name="para_kasikosa_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kasikosa_update"  ]
[tb_start_tyrano_code]
;ストレス+0.6
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.6).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-0.7
[eval exp="f.para_taityou = Number((f.para_taityou - 0.7).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*kateikyousi_seikou

[tb_eval  exp="f.para_kasikosa_updated+=3"  name="para_kasikosa_updated"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kasikosa_update"  ]
[tb_eval  exp="f.para_komyu_updated+=1"  name="para_komyu_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*komyu_update"  ]
[tb_start_tyrano_code]
;ストレス+0.6
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.6).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-0.8
[eval exp="f.para_taityou = Number((f.para_taityou - 0.8).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*massaji_seikou

[tb_eval  exp="f.para_komyu_updated+=3"  name="para_komyu_updated"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*komyu_update"  ]
[tb_eval  exp="f.para_kikubari_updated+=1"  name="para_kikubari_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kikubari_update"  ]
[tb_start_tyrano_code]
;ストレス+0.3
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.3).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-0.8
[eval exp="f.para_taityou = Number((f.para_taityou - 0.8).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*byouin_seikou

[tb_eval  exp="f.para_kikubari_updated+=3"  name="para_kikubari_updated"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kikubari_update"  ]
[tb_eval  exp="f.para_kinryoku_updated+=1"  name="para_kinryoku_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kinryoku_update"  ]
[tb_start_tyrano_code]
;ストレス+0.3
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.3).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-0.8
[eval exp="f.para_taityou = Number((f.para_taityou - 0.8).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]


[_tb_end_tyrano_code]

[return  ]
*kintore_seikou

[tb_eval  exp="f.para_kinryoku_updated+=3"  name="para_kinryoku_updated"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kinryoku_update"  ]
[tb_eval  exp="f.para_yuuki_updated+=1"  name="para_yuuki_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_start_tyrano_code]
;ストレス+0.3
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.3).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-0.7
[eval exp="f.para_taityou = Number((f.para_taityou - 0.7).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
[wait  time="0"  ]
*FX_sippai

[tb_start_tyrano_code]
;筋力-
[if exp="f.para_kinryoku_update >= 1"]
[eval exp="f.para_kinryoku_update -= 1"]
[call storage="ui_parameter.ks" target="*kinryoku_update"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ストレス+1.5
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 1.5).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-0.5
[eval exp="f.para_taityou = Number((f.para_taityou - 0.5).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*kateikyousi_sippai

[tb_start_tyrano_code]
;勇気-
[eval exp="f.para_yuuki_update = Math.max(0, f.para_yuuki_update - 1)"]
[call storage="ui_parameter.ks" target="*yuuki_update"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ストレス+1.5
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 1.5).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-1
[eval exp="f.para_taityou = Number((f.para_taityou - 1).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*massaji_sippai

[tb_start_tyrano_code]
;賢さ-
; 0の場合はスルーする
[if exp="f.para_kasikosa_update >= 1"]
[eval exp="f.para_kasikosa_update -= 1"]
[call storage="ui_parameter.ks" target="*kasikosa_update"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ストレス+0.6
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.6).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-1.5
[eval exp="f.para_taityou = Number((f.para_taityou - 1.5).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*byouin_sippai

[tb_start_tyrano_code]
;コミュ-
; 0の場合はスルーする
[if exp="f.para_komyu_update >= 1"]
[eval exp="f.para_komyu_update -= 1"]
[call storage="ui_parameter.ks" target="*komyu_update"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ストレス+0.6
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.6).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-1.5
[eval exp="f.para_taityou = Number((f.para_taityou - 1.5).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*kintore_sippai

[tb_start_tyrano_code]
;気配り-
; 0の場合はスルーする
[if exp="f.para_kikubari_update >= 1"]
[eval exp="f.para_kikubari_update -= 1"]
[call storage="ui_parameter.ks" target="*kikubari_update"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ストレス+0.6
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.6).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]

[eval exp="f.para_sutoresu_updated += 1"]

; ストレスは0未満にしない
[if exp="f.para_sutoresu_updated < 0"]
[eval exp="f.para_sutoresu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*sutoresu_update"]

[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]

[endif]


;体力-1.5
[eval exp="f.para_taityou = Number((f.para_taityou - 1.5).toFixed(1))"]

[if exp="f.para_taityou <= -1"]

[eval exp="f.para_taityou_updated -= 1"]

; 体力は0未満にしない
[if exp="f.para_taityou_updated < 0"]
[eval exp="f.para_taityou_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*tairyoku_update"]

[eval exp="f.para_taityou = Number((f.para_taityou + 1).toFixed(1))"]

[endif]
[_tb_end_tyrano_code]

[return  