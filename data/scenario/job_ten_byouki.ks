[_tb_system_call storage=system/_job_ten_byouki.ks]

[tb_start_tyrano_code]
<<バックアップ>>
;体力-
;1 を para_taityou に減算
[eval exp="f.para_taityou -= 1"]
; 変数がマイナスになった場合に0を代入
[if exp="f.para_taityou < 0"]
[eval exp="f.para_taityou = 0"]
[endif]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_taityou_display = parseInt(f.para_taityou)"]

; ストレス+
; 1 を para_sutoresu に加算
[eval exp="f.para_sutoresu += 1"]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_sutoresu_display = parseInt(f.para_sutoresu)"]

; 勇気-
; 1 を para_yuuki に減算
[eval exp="f.para_yuuki -= 1"]
; 変数がマイナスになった場合に0を代入
[if exp="f.para_yuuki < 0"]
[eval exp="f.para_yuuki = 0"]
[endif]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_yuuki_display = parseInt(f.para_yuuki)"]

; 賢さ-
; 1 を para_kasikosa に減算
[eval exp="f.para_kasikosa -= 1"]
; 変数がマイナスになった場合に0を代入
[if exp="f.para_kasikosa < 0"]
[eval exp="f.para_kasikosa = 0"]
[endif]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_kasikosa_display = parseInt(f.para_kasikosa)"]

; コミュ力-
; 1 を para_komyu に減算
[eval exp="f.para_komyu -= 1"]
; 変数がマイナスになった場合に0を代入
[if exp="f.para_komyu < 0"]
[eval exp="f.para_komyu = 0"]
[endif]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_komyu_display = parseInt(f.para_komyu)"]

; 気配り-
; 1 を para_kikubari に減算
[eval exp="f.para_kikubari -= 1"]
; 変数がマイナスになった場合に0を代入
[if exp="f.para_kikubari < 0"]
[eval exp="f.para_kikubari = 0"]
[endif]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_kikubari_display = parseInt(f.para_kikubari)"]

; 筋力-
; 1 を para_kinryoku に減算
[eval exp="f.para_kinryoku -= 1"]
; 変数がマイナスになった場合に0を代入
[if exp="f.para_kinryoku < 0"]
[eval exp="f.para_kinryoku = 0"]
[endif]
; 小数点以下を切り捨てた整数部分を取得
[eval exp="f.para_kinryoku_display = parseInt(f.para_kinryoku)"]


[_tb_end_tyrano_code]

*byouki

[tb_start_tyrano_code]
;体力-
[if exp="f.para_taityou_display < 1"]
[jump target="*sutoresu"]
[endif]

[eval exp="f.para_taityou_updated = Math.max(0, f.para_taityou_updated - 1)"]
[call storage="ui_parameter.ks" target="*tairyoku_update"]


*sutoresu
;ストレス+
[if exp="f.para_sutoresu_display >= 999"]
[jump target="*yuuki"]
[endif]

[eval exp="f.para_sutoresu_updated = Math.min(999, f.para_sutoresu_updated + 1)"]
[call storage="ui_parameter.ks" target="*sutoresu_update"]


*yuuki
;勇気-
[if exp="f.para_yuuki_display < 1"]
[jump target="*kasikosa"]
[endif]

[eval exp="f.para_yuuki_updated = Math.max(0, f.para_yuuki_updated - 1)"]
[call storage="ui_parameter.ks" target="*yuuki_update"]


*kasikosa
;賢さ-
[if exp="f.para_kasikosa_display < 1"]
[jump target="*komyu"]
[endif]

[eval exp="f.para_kasikosa_updated = Math.max(0, f.para_kasikosa_updated - 1)"]
[call storage="ui_parameter.ks" target="*kasikosa_update"]


*komyu
;コミュ力-
[if exp="f.para_komyu_display < 1"]
[jump target="*kikubari"]
[endif]

[eval exp="f.para_komyu_updated = Math.max(0, f.para_komyu_updated - 1)"]
[call storage="ui_parameter.ks" target="*komyu_update"]


*kikubari
;気配り-
[if exp="f.para_kikubari_display < 1"]
[jump target="*kinryoku"]
[endif]

[eval exp="f.para_kikubari_updated = Math.max(0, f.para_kikubari_updated - 1)"]
[call storage="ui_parameter.ks" target="*kikubari_update"]


*kinryoku
;筋力-
[if exp="f.para_kinryoku_display < 1"]
[jump target="*end"]
[endif]

[eval exp="f.para_kinryoku_updated = Math.max(0, f.para_kinryoku_updated - 1)"]
[call storage="ui_parameter.ks" target="*kinryoku_update"]


*end
[_tb_end_tyrano_code]

[return  