]
[_tb_system_call storage=system/_room_asa.ks]

[tb_eval  exp="f.month=6"  name="month"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.EV_hatukinmu_nagi=3"  name="EV_hatukinmu_nagi"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.EV_hatukinmu_rinko=1"  name="EV_hatukinmu_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.EV_hatukinmu_tubomi=2"  name="EV_hatukinmu_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_nagi_on=1"  name="chara_nagi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_tubomi_on=1"  name="chara_tubomi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.para_taityou_updated-=40"  name="para_taityou_updated"  cmd="-="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_update"  ]
*top0

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[ptext current layer=message0 name="fx_select,select_text" text="【自宅で働く】<br>自室でチャートとにらめっこ。<br>テンションの影響は受けないけど、収益は不安定。勇気が上がる。" x=140 y=580 size=19 time=0]
[anim name="fx_select" opacity=0 time=0]

[ptext current layer=message0 name="hospital_select,select_text" text="【病院清掃】<br>病院で清掃のバイトができる。<br>報酬がもらえて、気配りが上がる。凪とも少し仲良くなれる。" x=140 y=580 size=19 time=0]
[anim name="hospital_select" opacity=0 time=0]

[ptext current layer=message0 name="kintore_select,select_text" text="【筋トレ】<br>トレーニングで心身を鍛える。<br>筋力が上がる。" x=140 y=580 size=19 time=0]
[anim name="kintore_select" opacity=0 time=0]

[ptext current layer=message0 name="soto_select,select_text" text="【外出】<br>街を散策する。" x=140 y=580 size=19 time=0]
[anim name="soto_select" opacity=0 time=0]

[ptext current layer=message0 name="massa_select,select_text" text="【マッサージ店】<br>凛子のマッサージ店でバイトができる。<br>報酬がもらえて、コミュ力が上がる。凛子とも少し仲良くなれる。" x=140 y=580 size=19 time=0]
[anim name="massa_select" opacity=0 time=0]

[ptext current layer=message0 name="drug_select,select_text" text="【事務作業】<br>メイドリフレで事務作業のバイトができる。<br>報酬がもらえて、賢さが上がる。蕾とも少し仲良くなれる。" x=140 y=580 size=19 time=0]
[anim name="drug_select" opacity=0 time=0]

[ptext current layer=message0 name="neru_select,select_text" text="【寝る】<br>しっかり休んで体力とストレスを大きく回復させる。<br>" x=140 y=580 size=19 time=0]
[anim name="neru_select" opacity=0 time=0]

[ptext current layer=message0 name="sinnyu_select,select_text" text="【侵入】<br>凪の部屋やバイト先のバックヤードへ侵入する。<br>盗撮をしたり、物色で凪と隼人の関係を壊す工作活動が出来る。勇気が上がる。<br>" x=140 y=580 size=19 time=0]
[anim name="sinnyu_select" opacity=0 time=0]

[ptext current layer=message0 name="syusyu_select,select_text" text="【情報収集】<br>外出して情報を集める。<br>" x=140 y=580 size=19 time=0]
[anim name="syusyu_select" opacity=0 time=0]


[_tb_end_tyrano_code]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="manual.png"  ]
[tb_hide_message_window  ]
[mask_off  time="500"  effect="fadeOut"  ]
[wait  time="1500"  ]
[l  ]
[bg  time="1000"  method="crossfade"  storage="back_room1.png"  ]
[tb_show_message_window  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[call  storage="BGM.ks"  target="*jisitu"  ]
[tb_start_text mode=1 ]
[舜]（Hôm nay nên làm gì đây nhỉ.）[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="back_room1.png"  ]
[tb_start_tyrano_code]
[hidemenubutton]
[stop_keyconfig]

;ボタンの表示(自宅で働く)
[button graphic="../fgimage/default/workring_fx_off.png" enterimg="../fgimage/default/workring_fx_on.png" clickimg=../fgimage/default/workring_fx_on.png target="*fx" name="job_icon,fx_icon" x=440 y=192 ]

;ボタンの表示(病院で働く)
[button graphic="../fgimage/default/workring_seisou_off.png" enterimg="../fgimage/default/workring_seisou_on.png" clickimg=../fgimage/default/workring_seisou_on.png target="*hospital" name="job_icon,hospital_icon,on_icon" x=536 y=408 cond="f.chara_nagi_on != 0"  ]
[button graphic="../fgimage/default/workring_seisou0_off.png" enterimg="../fgimage/default/workring_seisou0_on.png" clickimg=../fgimage/default/workring_seisou0_on.png target="*hospital" name="job_icon,hospital_icon,syusyu_icon" x=536 y=408  cond="f.chara_nagi_on == 0"]

;ボタンの表示(マッサージ店で働く)
[button graphic="../fgimage/default/workring_massa_off.png" enterimg="../fgimage/default/workring_massa_on.png" clickimg=../fgimage/default/workring_massa_on.png target="*massa" name="job_icon,massa_icon,on_icon" x=680 y=336 cond="f.chara_rinko_on != 0"]
[button graphic="../fgimage/default/workring_massa0_off.png" enterimg="../fgimage/default/workring_massa0_on.png" clickimg=../fgimage/default/workring_massa0_on.png target="*massa" name="job_icon,massa_icon,syusyu_icon" x=680 y=336 cond="f.chara_rinko_on == 0"]

;ボタンの表示(家庭教師のアルバイト)
[button graphic="../fgimage/default/workring_jim_off.png" enterimg="../fgimage/default/workring_jim_on.png" clickimg=../fgimage/default/workring_jim_on.png target="*drug" name="job_icon,drug_icon,on_icon" x=440 y=336 cond="f.chara_tubomi_on != 0" ]
[button graphic="../fgimage/default/workring_jim0_off.png" enterimg="../fgimage/default/workring_jim0_on.png" clickimg=../fgimage/default/workring_jim0_on.png target="*drug" name="job_icon,drug_icon,syusyu_icon" x=440 y=336 cond="f.chara_tubomi_on == 0"]

;ボタンの表示(休む)
[button graphic="../fgimage/default/workring_neru_off.png" enterimg="../fgimage/default/workring_neru_on.png" clickimg=../fgimage/default/workring_neru_on.png target="*neru" name="job_icon,neru_icon" x=680 y=192 ]

;ボタンの表示(筋トレ)
[button graphic="../fgimage/default/workring_kintore_off.png" enterimg="../fgimage/default/workring_kintore_on.png" clickimg=../fgimage/default/workring_kintore_on.png target="*kintore" name="job_icon,kintore_icon" x=552 y=168 ]

;ボタンの表示(侵入)
[button graphic="../fgimage/default/shinnyu_off.png" enterimg="../fgimage/default/shinnyu_on.png" clickimg=../fgimage/default/shinnyu_on.png target="*sinnyu" name="job_icon,sinnyu_icon" x=1168 y=424 cond="f.EV_hatukinmu_nagi == 3" ]


;中央表示
[image layer="1" x="560" y="264" storage="default/workring_en.png" name="job_icon" ]

[anim name="job_icon" opacity=0 time=0]
[anim name="job_icon" opacity=255 time=500]

;マウスONで画像表示
[button_ex name="fx_icon" tip="icon_up.gif" tip_pos="static" tip_x="508" tip_y="-16"]
[button_ex name="massa_icon" tip="icon_up.gif" tip_pos="static" tip_x="748" tip_y="-16"]
[button_ex name="drug_icon" tip="icon_up.gif" tip_pos="static" tip_x="628" tip_y="-16"]
[button_ex name="neru_icon" tip="icon_up.gif" tip_pos="static" tip_x="268" tip_y="-16"]
[button_ex name="kintore_icon" tip="icon_up.gif" tip_pos="static" tip_x="988" tip_y="-16"]
[button_ex name="hospital_icon" tip="icon_up.gif" tip_pos="static" tip_x="868" tip_y="-16"]

[layopt current layer="message0" visible=true]


[iscript]

$(".fx_icon").hover(
function(e) {
$(".fx_select").css("opacity","1")
},
function(e) {
$(".fx_select").css("opacity","0")
}
);

$(".konbini_icon").hover(
function(e) {
$(".konbini_select").css("opacity","1")
},
function(e) {
$(".konbini_select").css("opacity","0")
}
);

$(".soto_icon").hover(
function(e) {
$(".soto_select").css("opacity","1")
},
function(e) {
$(".soto_select").css("opacity","0")
}
);

$(".massa_icon.on_icon").hover(
function(e) {
$(".massa_select").css("opacity","1")
},
function(e) {
$(".massa_select").css("opacity","0")
}
);

$(".drug_icon.on_icon").hover(
function(e) {
$(".drug_select").css("opacity","1")
},
function(e) {
$(".drug_select").css("opacity","0")
}
);

$(".neru_icon").hover(
function(e) {
$(".neru_select").css("opacity","1")
},
function(e) {
$(".neru_select").css("opacity","0")
}
);

$(".sinnyu_icon").hover(
function(e) {
$(".sinnyu_select").css("opacity","1")
},
function(e) {
$(".sinnyu_select").css("opacity","0")
}
);

$(".syusyu_icon").hover(
function(e) {
$(".syusyu_select").css("opacity","1")
},
function(e) {
$(".syusyu_select").css("opacity","0")
}
);

$(".kintore_icon").hover(
function(e) {
$(".kintore_select").css("opacity","1")
},
function(e) {
$(".kintore_select").css("opacity","0")
}
);

$(".hospital_icon.on_icon").hover(
function(e) {
$(".hospital_select").css("opacity","1")
},
function(e) {
$(".hospital_select").css("opacity","0")
}
);

$(".hatena1_icon").hover(
function(e) {
$(".hatena1_select").css("opacity","1")
},
function(e) {
$(".hatena1_select").css("opacity","0")
}
);

[endscript]
[s]

*character_select
[return]



[_tb_end_tyrano_code]

[s  ]
*hospital

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_byouin.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[wait  time="300"  ]
[start_keyconfig ]

[jump  storage="job_seisou.ks"  target="*top0"  ]
*kintore

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[wait  time="300"  ]
[start_keyconfig ]

[jump  storage="job_kintore.ks"  target="*top0"  ]
*fx

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[wait  time="300"  ]
[start_keyconfig ]

[jump  storage="job_fx.ks"  target="*top0"  ]
*massa

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_massajiten.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[wait  time="300"  ]
[start_keyconfig ]

[jump  storage="job_massaji.ks"  target="*top0"  ]
*drug

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure.png"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[wait  time="300"  ]
[start_keyconfig ]

[jump  storage="job_kateikyousi.ks"  target="*top0"  ]
*neru

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[mask  time="500"  effect="slideInLeft"  color="0x000000"  ]
[mask_off  time="1000"  effect="slideOutRight"  ]
[wait  time="300"  ]
[start_keyconfig ]

[jump  storage="job_neru.ks"  target="*top0"  ]
*sinnyu

[tb_start_tyrano_code]
[anim name="kintore_select" opacity=0 time=0]
[anim name="fx_select" opacity=0 time=0]
[anim name="soto_select" opacity=0 time=0]
[anim name="massa_select" opacity=0 time=0]
[anim name="drug_select" opacity=0 time=0]
[anim name="neru_select" opacity=0 time=0]
[anim name="sinnyu_select" opacity=0 time=0]
[anim name="hospital_select" opacity=0 time=0]
[free layer="1" name="job_icon" time="0"]



[_tb_end_tyrano_code]

[cm  ]
[start_keyconfig ]

[jump  storage="sinnyu.ks"  target="*top"  ]
*workring_0

[tb_start_tyrano_code]
;ボタンの表示(自宅で働く)
[button graphic="../fgimage/default/workring_fx_off.png" enterimg="../fgimage/default/workring_fx_on.png" clickimg=../fgimage/default/workring_fx_on.png target="*fx" name="job_icon,fx_icon" x=440 y=192 ]

;ボタンの表示(病院/？)
[button graphic="../fgimage/default/workring_seisou0_off.png" enterimg="../fgimage/default/workring_seisou0_on.png" clickimg=../fgimage/default/workring_seisou0_on.png target="*hospital" name="job_icon,hatena1_icon" x=536 y=408 ]

;ボタンの表示(マッサージ店/？)
[button graphic="../fgimage/default/workring_massa0_off.png" enterimg="../fgimage/default/workring_massa0_on.png" clickimg=../fgimage/default/workring_massa0_on.png target="*massa" name="job_icon,hatena2_icon" x=680 y=336 ]

;ボタンの表示(リフレ/？)
[button graphic="../fgimage/default/workring_jim0_off.png" enterimg="../fgimage/default/workring_jim0_on.png" clickimg=../fgimage/default/workring_jim0_on.png target="*drug" name="job_icon,hatena3_icon" x=440 y=336 ]

;ボタンの表示(休む)
[button graphic="../fgimage/default/workring_neru_off.png" enterimg="../fgimage/default/workring_neru_on.png" clickimg=../fgimage/default/workring_neru_on.png target="*neru" name="job_icon,neru_icon" x=680 y=192 ]

;ボタンの表示(筋トレ)
[button graphic="../fgimage/default/workring_kintore_off.png" enterimg="../fgimage/default/workring_kintore_on.png" clickimg=../fgimage/default/workring_kintore_on.png target="*kintore" name="job_icon,kintore_icon" x=552 y=168 ]

;ボタンの表示(侵入)
[button graphic="../fgimage/default/shinnyu_off.png" enterimg="../fgimage/default/shinnyu_on.png" clickimg=../fgimage/default/shinnyu_on.png target="*sinnyu" name="job_icon,sinnyu_icon" x=1168 y=424 ]


[_tb_end_tyrano_code]

[jump  storage="room_asa.ks"  target="*mission"  