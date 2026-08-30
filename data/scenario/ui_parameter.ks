

[_tb_system_call storage=system/_ui_parameter.ks]

*money_set

[tb_start_tyrano_code]
[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.money" x="1062" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="80" align="right" name="money"]

;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
; [width]ゲージの数値の横幅を指定できます。

[_tb_end_tyrano_code]

[return  ]
*money_update

[iscript]
let counter = setInterval(function() {
if (f.money == f.money_updated) {
clearInterval(counter);  // 金額が一致したら終了
} else if (f.money < f.money_updated) {
f.money++;
// 9999999以上にならないようにする
if (f.money > 9999999) {
f.money = 9999999;
}
} else {
f.money--;
// 0以下にならないようにする
if (f.money < 0) {
f.money = 0;
}
}
$('p.money').text(f.money);  // 画面更新
}, 1);
// 1秒後にスキップ処理を実行
setTimeout(function() {
clearInterval(counter);  // インターバルを停止
// 0以下にならないようにしつつ、9999999以上にならないようにする
if (f.money_updated > 9999999) {
f.money_updated = 9999999;
} else if (f.money_updated < 0) {
f.money_updated = 0;
}
f.money = f.money_updated;  // 金額を目標に一致させる
$('p.money').text(f.money);  // 画面更新
}, 1000);  // 1000ms（1秒）
[endscript]

[return  ]
[s  ]
[iscript]
let counter = setInterval(function() {
if (f.Hresult_kaihatuLV == f.Hresult_kaihatuLV_updated) {
clearInterval(counter);
TYRANO.kag.ftag.startTag("jump", {target: "*back"});
return false;
} else if (f.Hresult_kaihatuLV < f.Hresult_kaihatuLV_updated) {
f.Hresult_kaihatuLV++;
} else if (f.Hresult_kaihatuLV > f.Hresult_kaihatuLV_updated) {
f.Hresult_kaihatuLV--;
}
$('p.Hresult_kaihatuLV').text(f.Hresult_kaihatuLV);
}, 100);
[endscript]

*back

[return  ]
*tairyoku_set

[tb_start_tyrano_code]
;体力パラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_taityou_display" x="246" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_taityou_display"]
[_tb_end_tyrano_code]

[return  ]
*tairyoku_update

[iscript]
let counter = setInterval(function() {
if (f.para_taityou_display == f.para_taityou_updated) {
clearInterval(counter);
return false;
} else if (f.para_taityou_display < f.para_taityou_updated) {
f.para_taityou_display++;
// 999以上にならないようにする
if (f.para_taityou_display > 999) {
f.para_taityou_display = 999;
}
} else if (f.para_taityou_display > f.para_taityou_updated) {
f.para_taityou_display--;
// 0以下にならないようにする
if (f.para_taityou_display < 0) {
f.para_taityou_display = 0;
}
}
$('p.para_taityou_display').text(f.para_taityou_display);
}, 100);
[endscript]

[return  ]
[s  ]
*sutoresu_set

[tb_start_tyrano_code]
;ストレスパラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_sutoresu_display" x="366" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_sutoresu_display"]
[_tb_end_tyrano_code]

[return  ]
*sutoresu_update

[iscript]
let counter = setInterval(function() {
if (f.para_sutoresu_display == f.para_sutoresu_updated) {
clearInterval(counter);
return false;
} else if (f.para_sutoresu_display < f.para_sutoresu_updated) {
f.para_sutoresu_display++;
// 999以上にならないようにする
if (f.para_sutoresu_display > 999) {
f.para_sutoresu_display = 999;
}
} else if (f.para_sutoresu_display > f.para_sutoresu_updated) {
f.para_sutoresu_display--;
// 0以下にならないようにする
if (f.para_sutoresu_display < 0) {
f.para_sutoresu_display = 0;
}
}
$('p.para_sutoresu_display').text(f.para_sutoresu_display);
}, 100);
[endscript]

[return  ]
[s  ]
*yuuki_set

[tb_start_tyrano_code]
;勇気パラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_yuuki_display" x="486" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_yuuki_display"]

[_tb_end_tyrano_code]

[return  ]
*yuuki_update

[iscript]
let counter = setInterval(function() {
if (f.para_yuuki_display == f.para_yuuki_updated) {
clearInterval(counter);
return false;
} else if (f.para_yuuki_display < f.para_yuuki_updated) {
f.para_yuuki_display++;
// 999以上にならないようにする
if (f.para_yuuki_display > 999) {
f.para_yuuki_display = 999;
}
} else if (f.para_yuuki_display > f.para_yuuki_updated) {
f.para_yuuki_display--;
// 0以下にならないようにする
if (f.para_yuuki_display < 0) {
f.para_yuuki_display = 0;
}
}
$('p.para_yuuki_display').text(f.para_yuuki_display);
}, 100);
[endscript]

[return  ]
[s  ]
*kasikosa_set

[tb_start_tyrano_code]
;賢さパラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_kasikosa_display" x="606" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_kasikosa_display"]

[_tb_end_tyrano_code]

[return  ]
*kasikosa_update

[iscript]
let counter = setInterval(function() {
if (f.para_kasikosa_display == f.para_kasikosa_updated) {
clearInterval(counter);
return false;
} else if (f.para_kasikosa_display < f.para_kasikosa_updated) {
f.para_kasikosa_display++;
// 999以上にならないようにする
if (f.para_kasikosa_display > 999) {
f.para_kasikosa_display = 999;
}
} else if (f.para_kasikosa_display > f.para_kasikosa_updated) {
f.para_kasikosa_display--;
// 0以下にならないようにする
if (f.para_kasikosa_display < 0) {
f.para_kasikosa_display = 0;
}
}
$('p.para_kasikosa_display').text(f.para_kasikosa_display);
}, 100);
[endscript]

[return  ]
[s  ]
*komyu_set

[tb_start_tyrano_code]
;コミュ力パラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_komyu_display" x="726" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_komyu_display"]

[_tb_end_tyrano_code]

[return  ]
*komyu_update

[iscript]
let counter = setInterval(function() {
if (f.para_komyu_display == f.para_komyu_updated) {
clearInterval(counter);
return false;
} else if (f.para_komyu_display < f.para_komyu_updated) {
f.para_komyu_display++;
// 999以上にならないようにする
if (f.para_komyu_display > 999) {
f.para_komyu_display = 999;
}
} else if (f.para_komyu_display > f.para_komyu_updated) {
f.para_komyu_display--;
// 0以下にならないようにする
if (f.para_komyu_display < 0) {
f.para_komyu_display = 0;
}
}
$('p.para_komyu_display').text(f.para_komyu_display);
}, 100);
[endscript]

[return  ]
[s  ]
*kikubari_set

[tb_start_tyrano_code]
;気配りパラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_kikubari_display" x="846" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_kikubari_display"]

[_tb_end_tyrano_code]

[return  ]
*kikubari_update

[iscript]
let counter = setInterval(function() {
if (f.para_kikubari_display == f.para_kikubari_updated) {
clearInterval(counter);
return false;
} else if (f.para_kikubari_display < f.para_kikubari_updated) {
f.para_kikubari_display++;
// 999以上にならないようにする
if (f.para_kikubari_display > 999) {
f.para_kikubari_display = 999;
}
} else if (f.para_kikubari_display > f.para_kikubari_updated) {
f.para_kikubari_display--;
// 0以下にならないようにする
if (f.para_kikubari_display < 0) {
f.para_kikubari_display = 0;
}
}
$('p.para_kikubari_display').text(f.para_kikubari_display);
}, 100);
[endscript]

[return  ]
[s  ]
*kinryoku_set

[tb_start_tyrano_code]
;筋力パラの表記
;[align]ゲージの数値の横方向の位置を指定  left(左寄せ)、center(中央寄せ)、right（右寄せ)から指定
;[width]ゲージの数値の横幅を指定

[layopt layer="1" visible="true"]
[ptext layer="1" text="&f.para_kinryoku_display" x="966" y="16" size="19" color="white" face="fantasy" edge="undefined" shadow="undefined" width="50" align="right" name="para_kinryoku_display"]

[_tb_end_tyrano_code]

[return  ]
*kinryoku_update

[iscript]
let counter = setInterval(function() {
if (f.para_kinryoku_display == f.para_kinryoku_updated) {
clearInterval(counter);
return false;
} else if (f.para_kinryoku_display < f.para_kinryoku_updated) {
f.para_kinryoku_display++;
// 999以上にならないようにする
if (f.para_kinryoku_display > 999) {
f.para_kinryoku_display = 999;
}
} else if (f.para_kinryoku_display > f.para_kinryoku_updated) {
f.para_kinryoku_display--;
// 0以下にならないようにする
if (f.para_kinryoku_display < 0) {
f.para_kinryoku_display = 0;
}
}
$('p.para_kinryoku_display').text(f.para_kinryoku_display);
}, 100);
[endscript]

[return  ]
[s  