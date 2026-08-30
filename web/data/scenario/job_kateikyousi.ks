[_tb_system_call storage=system/_job_kateikyousi.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[bg  time="0"  method="crossfade"  storage="back_rihure.png"  cross="false"  ]
[tb_show_message_window  ]
*top0

[tb_start_tyrano_code]
;EV_リフレでの出会い(蕾)
[if exp="f.EV_hatukinmu_tubomi == 0"]
[jump storage="EV_OP4.ks" target="*top"]

;EV_初勤務(蕾)
[elsif exp="f.EV_hatukinmu_tubomi == 1"]
[call storage="EV_sigoto.ks" target="*top_rihure"]

;EV_給料UPEV(侵入開放)
[elsif exp="f.job_rihure_count == 10 && f.sinnyu_rihure_on == 0"]
[call storage="EV_sigoto2.ks" target="*rihure_LVUP"]

;EV_社会性、好感度、仕事の実行回が一定以上で全員の好感度がUP
;蕾
[elsif exp="f.koukando_tubomi >= 20 && f.job_rihure_count >= 3 && f.syakaisei >= 15 && f.EV_syakaisei2 == 0"]
[call storage="EV_syakaisei.ks" target="*syakaisei_rihure"]

[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]（予約の管理に衣装の修繕…目が回るほど忙しいけどやるしかないよな）[p]
[_tb_end_text]

[tb_keyconfig  flag="0"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;SD枠表示（事務）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_jim.png" time="0"  name="waku" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p=0"  name="jobmoney_p"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.job_rihure_count+=1"  name="job_rihure_count"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
*top

[call  storage="system.ks"  target="*job_start"  ]
[tb_start_tyrano_code]
;テンション変数によって成功率が変化（病気、低い、普通、高い）

[if exp="f.ten_byouki == 1 "]
[jump target="*byouki"]

[elsif exp="f.ten_High == 1 "]
[jump target="*takai"]

[elsif exp="f.ten_Low == 1 "]
[jump target="*hikui"]

[elsif exp="f.ten_Middle == 1 "]
[jump target="*hutuu"]

[endif]
[_tb_end_tyrano_code]

*takai

[cm  ]
[tb_eval  exp="f.job_ransuu=Math.floor(Math.random()*(11-1+1)+1)"  name="job_ransuu"  cmd="="  op="r"  val="1"  val_2="11"  ]
[jump  storage="job_kateikyousi.ks"  target="*daiseikou"  cond="f.job_ransuu>9"  ]
[tb_start_tyrano_code]
;9/11で成功(テンション高い)
[if exp="f.job_ransuu <= 8"]
[jump target="*seikou"]
[endif]

[jump target="*sippai"]
[_tb_end_tyrano_code]

*hutuu

[cm  ]
[tb_eval  exp="f.job_ransuu=Math.floor(Math.random()*(11-1+1)+1)"  name="job_ransuu"  cmd="="  op="r"  val="1"  val_2="11"  ]
[jump  storage="job_kateikyousi.ks"  target="*daiseikou"  cond="f.job_ransuu==1"  ]
[tb_start_tyrano_code]
;7/11で成功(テンションふつう)
[if exp="f.job_ransuu <= 7"]
[jump target="*seikou"]
[endif]

[jump target="*sippai"]
[_tb_end_tyrano_code]

*hikui

[cm  ]
[tb_eval  exp="f.job_ransuu=Math.floor(Math.random()*(10-1+1)+1)"  name="job_ransuu"  cmd="="  op="r"  val="1"  val_2="10"  ]
[tb_start_tyrano_code]
;5/10で成功(テンション低)
[if exp="f.job_ransuu <= 5"]
[jump target="*seikou"]
[endif]

[jump target="*sippai"]
[_tb_end_tyrano_code]

[s  ]
*byouki

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示（病気）
[free layer="0" name="UP" time="0"]
;UPエフェクト表示（体力大down）
[image layer="0" x="264" y="-8" storage="default/r_down.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス大up）
[image layer="0" x="386" y="-8" storage="default/r_up.gif" time="0"  name="UP" ]
;UPエフェクト表示（勇気小down）
[image layer="0" x="508" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（賢さ小down）
[image layer="0" x="628" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（コミュ力小down）
[image layer="0" x="748" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（気配り小down）
[image layer="0" x="868" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（筋力小down）
[image layer="0" x="988" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p-=1"  name="jobmoney_p"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  ]
[jump  storage="job_kateikyousi.ks"  target="*byouki_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*jim1"  ]
*byouki_skip

[call  storage="job_ten_byouki.ks"  target="*byouki"  ]
[jump  storage="job_kateikyousi.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_kateikyousi.ks"  target="*top"  ]
[jump  storage="job_kateikyousi.ks"  target="*seikou"  cond="f.job_ransuu==0"  ]
[jump  storage="job_kateikyousi.ks"  target="*sippai"  cond=""  ]
*daiseikou

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示
[free layer="0" name="UP" time="0"]

;UPエフェクト表示（体力小down）
[image layer="0" x="268" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス小up）
[image layer="0" x="388" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（賢さ大up）
[image layer="0" x="628" y="-8" storage="default/r_up.gif" time="0"  name="UP" ]
;UPエフェクト表示（コミュ力小up）
[image layer="0" x="748" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p+=2"  name="jobmoney_p"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="job_kateikyousi.ks"  target="*daiseikou_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*jim3"  ]
*daiseikou_return

[call  storage="job_ten_daiseikou.ks"  target="*kateikyousi_daiseikou"  ]
[jump  storage="job_kateikyousi.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_kateikyousi.ks"  target="*top"  ]
*seikou

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示
[free layer="0" name="UP" time="0"]

;UPエフェクト表示（体力小down）
[image layer="0" x="268" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス小up）
[image layer="0" x="388" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（賢さ小up）
[image layer="0" x="628" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（コミュ力小up）
[image layer="0" x="748" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p+=1"  name="jobmoney_p"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  ]
[jump  storage="job_kateikyousi.ks"  target="*seikou_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*jim2"  ]
*seikou_return

[call  storage="job_ten_hikui.ks"  target="*kateikyousi_seikou"  ]
[jump  storage="job_kateikyousi.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_kateikyousi.ks"  target="*top"  ]
*sippai

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示
[free layer="0" name="UP" time="0"]

;UPエフェクト表示（体力小down）
[image layer="0" x="268" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス小up）
[image layer="0" x="388" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（勇気小down）
[image layer="0" x="508" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p-=1"  name="jobmoney_p"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  ]
[jump  storage="job_kateikyousi.ks"  target="*sippai_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*jim1"  ]
*sippai_return

[call  storage="job_ten_hikui.ks"  target="*kateikyousi_sippai"  ]
[jump  storage="job_kateikyousi.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_kateikyousi.ks"  target="*top"  ]
*end

[tb_eval  exp="f.job_count=5"  name="job_count"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[cm  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;SD非表示
;SD枠非表示
[free layer="1" name="effect1" time="0" wait="false"]
[free layer="2" name="waku" time="0" wait="false"]

;アップダウン非表示
[free layer="0" name="UP" time="0"]

[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*rank_on"  ]
[wait  time="500"  ]
[tb_start_tyrano_code]
;好感度UP
[eval exp="f.koukando_tubomi = Number((f.koukando_tubomi + 0.3).toFixed(1))"]
[_tb_end_tyrano_code]

[jump  storage="job_moneyget.ks"  target="*money_2"  cond="f.sinnyu_rihure_on==1"  ]
[jump  storage="job_moneyget.ks"  target="*money_1"  cond=""  ]
[s  ]
*daiseikou_skip

[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_jimu3.png"  width="496"  height="280"  left="368"  top="165"  ]
[wait  time="500"  ]
[jump  storage="job_kateikyousi.ks"  target="*daiseikou_return"  ]
*seikou_skip

[playse  volume="100"  time="0"  buf="0"  storage="job_seikou.mp3"  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_jimu2.png"  width="496"  height="280"  left="368"  top="165"  ]
[wait  time="500"  ]
[jump  storage="job_kateikyousi.ks"  target="*seikou_return"  ]
*sippai_skip

[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_jimu1.png"  width="496"  height="280"  left="368"  top="165"  ]
[wait  time="500"  ]
[jump  storage="job_kateikyousi.ks"  target="*sippai_return"  ]
