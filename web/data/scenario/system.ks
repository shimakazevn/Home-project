[_tb_system_call storage=system/_system.ks]

[tb_start_tyrano_code]
*fade_in

[stop_keyconfig]
[eval exp="TYRANO.kag.stat.is_skip=false"]
[eval exp="TYRANO.kag.stat.is_auto=false"]
[eval exp="f.transition_lock=true"]

[mask time=500]
[wait time=700 canskip=false]

[return]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
*fade_out

[mask_off time=500]
[wait time=700 canskip=false]

[eval exp="f.transition_lock=false"]
[start_keyconfig]

[return]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
*fade_in_effect

[stop_keyconfig]
[eval exp="TYRANO.kag.stat.is_skip=false"]
[eval exp="TYRANO.kag.stat.is_auto=false"]
[eval exp="f.transition_lock=true"]

[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[wait time=510 canskip=false]

[return]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
*fade_out_effect

[mask_off  time="500"  effect="slideOutRight"  ]
[wait time=550 canskip=false]

[eval exp="f.transition_lock=false"]
[start_keyconfig]

[return]
[_tb_end_tyrano_code]

*stop_keyconfig

[tb_start_tyrano_code]
[stop_keyconfig]

[iscript]
$("<div id='input_blocker'></div>").css({
position: "absolute",
left: 0,
top: 0,
width: "100%",
height: "100%",
zIndex: 999999,
background: "transparent"
}).appendTo("#tyrano_base");
[endscript]
[_tb_end_tyrano_code]

[return  ]
*start_keyconfig

[tb_start_tyrano_code]
[iscript]
$("#input_blocker").remove();
[endscript]

[start_keyconfig]
[_tb_end_tyrano_code]

[return  ]
*job_start

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[tb_keyconfig  flag="0"  ]
[tb_start_tyrano_code]
; 強制スキップ開始
[skipstart]

; キーコンフィグ操作を停止
[stop_keyconfig]

; 画面全体に透明な操作ブロッカーを設置
[iscript]

$("#input_blocker").remove();

$("<div id='input_blocker'></div>").css({
position: "absolute",
left: 0,
top: 0,
width: "100%",
height: "100%",
zIndex: 999999,
background: "transparent"
}).appendTo("#tyrano_base");

[endscript]
[_tb_end_tyrano_code]

[return  ]
*job_end

[tb_keyconfig  flag="1"  ]
[tb_start_tyrano_code]
; 強制スキップ終了
[skipstop]

; 操作ブロッカーを削除
[iscript]
$("#input_blocker").remove();
[endscript]

; キーコンフィグを再開
[start_keyconfig]
[_tb_end_tyrano_code]

[return  ]
