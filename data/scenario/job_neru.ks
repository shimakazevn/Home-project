
[_tb_system_call storage=system/_job_neru.ks]

[tb_show_message_window  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[call  storage="ui_para.ks"  target="*top"  ]
*top0

[tb_start_text mode=1 ]
[舜]（Việc bồi dưỡng sức khỏe cũng quan trọng lắm. Hôm nay cứ thong thả nghỉ ngơi cả ngày vậy.）[p]
[_tb_end_text]

[wait  time="1000"  ]
[tb_start_tyrano_code]
;SD枠表示（寝る）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_neru.png" time="0"  name="waku" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.jobmoney_p=0"  name="jobmoney_p"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
*top

[call  storage="system.ks"  target="*job_start"  ]
[cm  ]
*daiseikou

[tb_start_tyrano_code]
;UPエフェクト表示（体力up）
[image layer="0" x="264" y="-8" storage="default/r_up.gif" time="0"  name="UP" ]
;UPエフェクト表示（ストレスdown）
[image layer="0" x="390" y="-8" storage="default/r_down.gif" time="0"  name="UP" ]
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

*top_skip

[tb_eval  exp="f.job_count-=1"  name="job_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="job_neru.ks"  target="*daiseikou_skip"  cond="f.workanime==1"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_tyrano_code]
;SD表示（寝る）
[image layer="1"  time="0"  storage="default/job_neru.gif"  width="496"  height="280"  x="368"  y="165"  _clickable_img=""  name="effect1" ]
[_tb_end_tyrano_code]

[wait  time="500"  ]
[call  storage="system.ks"  target="*job_end"  ]
[tb_start_text mode=4 ]
Ngủ một giấc thật say, thể lực và tinh thần đã được hồi phục.
[_tb_end_text]

*daiseikou_return

[call  storage="job_ten_daiseikou.ks"  target="*neru_daiseikou"  ]
[jump  storage="job_neru.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_neru.ks"  target="*top"  ]
*end

[call  storage="system.ks"  target="*job_end"  ]
[tb_eval  exp="f.job_count=5"  name="job_count"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[cm  ]
[chara_hide  name="job"  time="0"  wait="false"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*rank_on"  ]
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
[jump  storage="job_moneyget_mesi.ks"  target="*top"  ]
[s  ]
*daiseikou_skip

[call  storage="job_ten_daiseikou.ks"  target="*neru_daiseikou"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[chara_show  name="job"  time="0"  wait="true"  storage="chara/169/job_neru.png"  width="496"  height="280"  left="368"  top="165"  reflect="false"  ]
[wait  time="500"  ]
[jump  storage="job_neru.ks"  target="*end"  cond="f.job_count==0"  ]
[jump  storage="job_neru.ks"  target="*top_skip"  ]
