]
[_tb_system_call storage=system/_job_fx.ks]

[bg  time="0"  method="crossfade"  storage="back_room1.png"  ]
[tb_show_message_window  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top0

[tb_start_text mode=1 ]
[舜]（誰にも会わずに仕事ができるのは俺の性分には合ってるんだよな。今日も頑張るか…）[p]
[_tb_end_text]

[tb_keyconfig  flag="0"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
;SD枠表示（fx）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_fx.png" time="0"  name="waku" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p=0"  name="jobmoney_p"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
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
[jump  storage="job_fx.ks"  target="*daiseikou"  cond="f.job_ransuu>9"  ]
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
[jump  storage="job_fx.ks"  target="*daiseikou"  cond="f.job_ransuu==1"  ]
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

[cm  ]
[tb_eval  exp="f.jobmoney_p-=1"  name="jobmoney_p"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  ]
[call  storage="job_ten_byouki.ks"  target="*byouki"  ]
[jump  storage="job_fx.ks"  target="*byouki_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*fx1"  ]
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

*byouki_skip

[jump  storage="job_fx.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_fx.ks"  target="*top"  ]
[jump  storage="job_fx.ks"  target="*seikou"  cond="f.job_ransuu==0"  ]
[jump  storage="job_fx.ks"  target="*sippai"  cond=""  ]
*daiseikou

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示（病気）
[free layer="0" name="UP" time="0"]
;UPエフェクト表示（体力小down）
[image layer="0" x="268" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス小up）
[image layer="0" x="388" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（勇気大up）
[image layer="0" x="508" y="-8" storage="default/r_up.gif" time="0"  name="UP" ]
;UPエフェクト表示（賢さ小up）
[image layer="0" x="628" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p+=2"  name="jobmoney_p"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="job_fx.ks"  target="*daiseikou_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*fx3"  ]
*daiseikou_return

[call  storage="job_ten_daiseikou.ks"  target="*FX_daiseikou"  ]
[jump  storage="job_fx.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_fx.ks"  target="*top"  ]
*seikou

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示（病気）
[free layer="0" name="UP" time="0"]
;UPエフェクト表示（体力小down）
[image layer="0" x="268" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス小up）
[image layer="0" x="388" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（勇気小up）
[image layer="0" x="508" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（賢さ小up）
[image layer="0" x="628" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p+=1"  name="jobmoney_p"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  ]
[jump  storage="job_fx.ks"  target="*seikou_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*fx2"  ]
*seikou_return

[call  storage="job_ten_hikui.ks"  target="*FX_seikou"  ]
[jump  storage="job_fx.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_fx.ks"  target="*top"  ]
*sippai

[call  storage="system.ks"  target="*job_end"  ]
[tb_start_tyrano_code]
;アップダウン非表示（病気）
[free layer="0" name="UP" time="0"]
;UPエフェクト表示（体力小down）
[image layer="0" x="268" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレス小up）
[image layer="0" x="388" y="-16" storage="default/r_up2.gif" time="0"  name="UP" ]
;UPエフェクト表示（筋力小down）
[image layer="0" x="988" y="-0" storage="default/r_down2.gif" time="0"  name="UP" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p-=1"  name="jobmoney_p"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  ]
[jump  storage="job_fx.ks"  target="*sippai_skip"  cond="f.workanime==1"  ]
[call  storage="job_sd.ks"  target="*fx1"  ]
*sippai_return

[call  storage="job_ten_hikui.ks"  target="*FX_sippai"  ]
[jump  storage="job_fx.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_fx.ks"  target="*top"  ]
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
[jump  storage="job_moneyget.ks"  target="*money_FX_seikou"  cond="f.jobmoney_p>2"  ]
[jump  storage="job_moneyget.ks"  target="*money_FX_sippai"  cond=""  ]
[s  ]
*daiseikou_skip

[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_f3.png"  width="496"  height="280"  left="368"  top="165"  ]
[wait  time="500"  ]
[jump  storage="job_fx.ks"  target="*daiseikou_return"  ]
*seikou_skip

[playse  volume="100"  time="0"  buf="0"  storage="job_seikou.mp3"  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_f2.png"  width="496"  height="280"  left="368"  top="165"  ]
[wait  time="500"  ]
[jump  storage="job_fx.ks"  target="*seikou_return"  ]
*sippai_skip

[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_f1.png"  width="496"  height="280"  left="368"  top="165"  ]
[wait  time="500"  ]
[jump  storage="job_fx.ks"  target="*sippai_return"  