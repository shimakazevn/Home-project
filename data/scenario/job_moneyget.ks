
[_tb_system_call storage=system/_job_moneyget.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_eval  exp="f.para_taityou_display=59"  name="para_taityou_display"  cmd="="  op="t"  val="59"  val_2="undefined"  ]
[tb_eval  exp="f.para_taityou=59"  name="para_taityou"  cmd="="  op="t"  val="59"  val_2="undefined"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="ui_onoff.ks"  target="*rank_on"  ]
*money_1

[jump  storage="job_moneyget.ks"  target="*money_tukare"  cond="f.byouki_sutoresu==1"  ]
[jump  storage="job_moneyget.ks"  target="*money_tukare"  cond="f.byouki_taityou==1"  ]
[jump  storage="job_moneyget.ks"  target="*money_byouki"  cond="f.byouki_sutoresu==2"  ]
[jump  storage="job_moneyget.ks"  target="*money_byouki"  cond="f.byouki_taityou==2"  ]
[tb_eval  exp="f.value=4000"  name="value"  cmd="="  op="t"  val="4000"  val_2="4000"  ]
[call  storage="system.ks"  target="*fade_in"  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
;SD枠非表示
[free layer="2" name="waku" time="0"]
;アップダウン非表示
[free layer="0" name="UP" time="0"]


[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;メモ：+4000
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
Đã nhận được [emb exp="f.value"] Yên tiền thưởng
[_tb_end_text]

[tb_start_tyrano_code]
;お金ゲット
[eval exp="f.money_updated += f.value"]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[eval exp="f.value == 0"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[cm  ]
[jump  storage="job_moneyget_mesi.ks"  target="*top"  ]
*money_2

[call  storage="ui_onoff.ks"  target="*rank_on"  ]
[jump  storage="job_moneyget.ks"  target="*money_tukare"  cond="f.byouki_sutoresu==1"  ]
[jump  storage="job_moneyget.ks"  target="*money_tukare"  cond="f.byouki_taityou==1"  ]
[jump  storage="job_moneyget.ks"  target="*money_byouki"  cond="f.byouki_sutoresu==2"  ]
[jump  storage="job_moneyget.ks"  target="*money_byouki"  cond="f.byouki_taityou==2"  ]
[tb_eval  exp="f.value=7000"  name="value"  cmd="="  op="t"  val="7000"  val_2="4000"  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
;SD枠非表示
[free layer="2" name="waku" time="0"]
;アップダウン非表示
[free layer="0" name="UP" time="0"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[stop_bgmovie  time="0"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;メモ：+7000
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
Đã nhận được [emb exp="f.value"] Yên tiền thưởng
[_tb_end_text]

[tb_start_tyrano_code]
;お金ゲット
[eval exp="f.money_updated += f.value"]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[eval exp="f.value == 0"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[cm  ]
[jump  storage="job_moneyget_mesi.ks"  target="*top"  ]
*money_FX_seikou

[tb_eval  exp="f.ran=Math.floor(Math.random()*(8000-3000+1)+3000)"  name="ran"  cmd="="  op="r"  val="3000"  val_2="8000"  ]
[tb_start_tyrano_code]
[iscript]
// f.value に四捨五入したい値を格納
f.value = Math.round(f.ran / 1000) * 1000;
[endscript]

[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*fade_in"  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
;SD枠非表示
[free layer="2" name="waku" time="0"]
;アップダウン非表示
[free layer="0" name="UP" time="0"]


[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_room.png"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;メモ：+3000~7000
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
Đã nhận được [emb exp="f.value"] Yên tiền thưởng
[_tb_end_text]

[tb_start_tyrano_code]
;お金ゲット
[eval exp="f.money_updated += f.value"]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[eval exp="f.value == 0"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[cm  ]
[jump  storage="job_moneyget_mesi.ks"  target="*top"  ]
*money_FX_sippai

[tb_eval  exp="f.ran=Math.floor(Math.random()*(3000-0+1)+0)"  name="ran"  cmd="="  op="r"  val="0"  val_2="3000"  ]
[tb_start_tyrano_code]
[iscript]
// f.value に四捨五入したい値を格納
f.value = Math.round(f.ran / 1000) * 1000;
[endscript]

[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*fade_in"  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
;SD枠非表示
[free layer="2" name="waku" time="0"]
;アップダウン非表示
[free layer="0" name="UP" time="0"]


[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_room.png"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;メモ：+3000~7000
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_text mode=4 ]
Đã nhận được [emb exp="f.value"] Yên tiền thưởng
[_tb_end_text]

[tb_start_tyrano_code]
;お金ゲット
[eval exp="f.money_updated += f.value"]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[eval exp="f.value == 0"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[cm  ]
[jump  storage="job_moneyget_mesi.ks"  target="*top"  ]
*money_tukare

[tb_eval  exp="f.value=3000"  name="value"  cmd="="  op="t"  val="3000"  val_2="4000"  ]
[call  storage="system.ks"  target="*fade_in"  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
;SD枠非表示
[free layer="2" name="waku" time="0"]
;アップダウン非表示
[free layer="0" name="UP" time="0"]


[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;メモ：+2000
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_text mode=4 ]
Đã nhận được [emb exp="f.value"] Yên tiền thưởng[r]
[舜]（Sức khỏe không tốt nên làm việc kém hiệu quả sao... Phải nghỉ ngơi một chút thôi.）
[_tb_end_text]

[tb_start_tyrano_code]
;お金ゲット
[eval exp="f.money_updated += f.value"]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[eval exp="f.value == 0"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[cm  ]
[jump  storage="job_moneyget_mesi.ks"  target="*top"  ]
*money_byouki

[tb_eval  exp="f.value=1000"  name="value"  cmd="="  op="t"  val="1000"  val_2="4000"  ]
[call  storage="system.ks"  target="*fade_in"  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
;SD枠非表示
[free layer="2" name="waku" time="0"]
;アップダウン非表示
[free layer="0" name="UP" time="0"]


[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="money.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
;メモ：+1000
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_text mode=4 ]
Đã nhận được [emb exp="f.value"] Yên tiền thưởng[r]
[舜]（Sức khỏe không tốt nên làm việc kém hiệu quả sao... Phải nghỉ ngơi một chút thôi.）
[_tb_end_text]

[tb_start_tyrano_code]
;お金ゲット
[eval exp="f.money_updated += f.value"]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
[eval exp="f.value == 0"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[cm  ]
[jump  storage="job_moneyget_mesi.ks"  target="*top"  