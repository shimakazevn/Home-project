[_tb_system_call storage=system/_job_ten_daiseikou.ks]

*FX_daiseikou

[tb_eval  exp="f.para_yuuki_updated+=4"  name="para_yuuki_updated"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_eval  exp="f.para_kasikosa_updated+=1"  name="para_kasikosa_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kasikosa_update"  ]
[tb_start_tyrano_code]
;ストレス+0.4
[eval exp="f.para_sutoresu = Number((f.para_sutoresu + 0.4).toFixed(1))"]

[if exp="f.para_sutoresu >= 1"]
[eval exp="f.para_sutoresu_updated += 1"]
[call storage="ui_parameter.ks" target="*sutoresu_update"]
[eval exp="f.para_sutoresu = Number((f.para_sutoresu - 1).toFixed(1))"]
[endif]


;体力-0.4
[eval exp="f.para_taityou = Number((f.para_taityou - 0.4).toFixed(1))"]

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
*kateikyousi_daiseikou

[tb_eval  exp="f.para_kasikosa_updated+=4"  name="para_kasikosa_updated"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kasikosa_update"  ]
[tb_eval  exp="f.para_kasikosa_updated+=1"  name="para_kasikosa_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*kasikosa_update"  ]
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


;体力-0.4
[eval exp="f.para_taityou = Number((f.para_taityou - 0.4).toFixed(1))"]

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
*massaji_daiseikou

[tb_eval  exp="f.para_komyu_updated+=4"  name="para_komyu_updated"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*komyu_update"  ]
[tb_eval  exp="f.para_kasikosa_updated+=1"  name="para_kasikosa_updated"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
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


;体力-0.4
[eval exp="f.para_taityou = Number((f.para_taityou - 0.4).toFixed(1))"]

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
*byouin_daiseikou

[tb_eval  exp="f.para_kikubari_updated+=4"  name="para_kikubari_updated"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
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


;体力-0.4
[eval exp="f.para_taityou = Number((f.para_taityou - 0.4).toFixed(1))"]

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
*kintore_daiseikou

[tb_eval  exp="f.para_kinryoku_updated+=4"  name="para_kinryoku_updated"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
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


;体力-0.4
[eval exp="f.para_taityou = Number((f.para_taityou - 0.4).toFixed(1))"]

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
*neru_daiseikou

[tb_eval  exp="f.para_taityou_updated+=2"  name="para_taityou_updated"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
[tb_eval  exp="f.para_sutoresu_updated-=1"  name="para_sutoresu_updated"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*sutoresu_update"  ]
[tb_start_tyrano_code]
; 勇気-
[eval exp="f.para_yuuki = Number((f.para_yuuki + 0.5).toFixed(1))"]

[if exp="f.para_yuuki >= 1"]
[eval exp="f.para_yuuki_updated -= 1"]

[if exp="f.para_yuuki_updated < 0"]
[eval exp="f.para_yuuki_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*yuuki_update"]
[eval exp="f.para_yuuki = Number((f.para_yuuki - 1).toFixed(1))"]
[endif]


; 賢さ-
[eval exp="f.para_kasikosa = Number((f.para_kasikosa + 0.5).toFixed(1))"]

[if exp="f.para_kasikosa >= 1"]
[eval exp="f.para_kasikosa_updated -= 1"]

[if exp="f.para_kasikosa_updated < 0"]
[eval exp="f.para_kasikosa_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*kasikosa_update"]
[eval exp="f.para_kasikosa = Number((f.para_kasikosa - 1).toFixed(1))"]
[endif]


; コミュ-
[eval exp="f.para_komyu = Number((f.para_komyu + 0.5).toFixed(1))"]

[if exp="f.para_komyu >= 1"]
[eval exp="f.para_komyu_updated -= 1"]

[if exp="f.para_komyu_updated < 0"]
[eval exp="f.para_komyu_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*komyu_update"]
[eval exp="f.para_komyu = Number((f.para_komyu - 1).toFixed(1))"]
[endif]


; 気配り-
[eval exp="f.para_kikubari = Number((f.para_kikubari + 0.5).toFixed(1))"]

[if exp="f.para_kikubari >= 1"]
[eval exp="f.para_kikubari_updated -= 1"]

[if exp="f.para_kikubari_updated < 0"]
[eval exp="f.para_kikubari_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*kikubari_update"]
[eval exp="f.para_kikubari = Number((f.para_kikubari - 1).toFixed(1))"]
[endif]


; 筋力-
[eval exp="f.para_kinryoku = Number((f.para_kinryoku + 0.5).toFixed(1))"]

[if exp="f.para_kinryoku >= 1"]
[eval exp="f.para_kinryoku_updated -= 1"]

[if exp="f.para_kinryoku_updated < 0"]
[eval exp="f.para_kinryoku_updated = 0"]
[endif]

[call storage="ui_parameter.ks" target="*kinryoku_update"]
[eval exp="f.para_kinryoku = Number((f.para_kinryoku - 1).toFixed(1))"]
[endif]
[_tb_end_tyrano_code]

[return  