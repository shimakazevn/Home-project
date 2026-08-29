[_tb_system_call storage=system/_job_sd.ks]

[bg  time="0"  method="fadeIn"  storage="back_room.png"  cross="false"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;SD枠表示（清掃）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_seisou.png" time="0"  name="waku" ]
;SD枠表示（筋トレ）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_kintore.png" time="0"  name="waku" ]
;SD枠表示（マッサージ）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_massage.png" time="0"  name="waku" ]
;SD枠表示（事務）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_jim.png" time="0"  name="waku" ]
;SD枠表示（FX）
[image layer="2" x="368" y="165" width="496" height="280" storage="default/frame_fx.png" time="0"  name="waku" ]
[_tb_end_tyrano_code]

[jump  storage="job_sd.ks"  target="*massage3"  ]
*seisou1

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（清掃＿×）
[image storage="default/job_seisou1.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_seisou1.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái không tốt. Không thể hoàn thành công việc như ý muốn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou1"  ]
*seisou2

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（清掃＿〇）
[image storage="default/job_seisou2.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_seisou2.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Không có sai sót gì lớn, công việc hoàn thành ở mức tạm ổn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou2"  ]
*seisou3

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（清掃＿◎）
[image storage="default/job_reset.png" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_seisou3.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái rất tốt. Công việc được hoàn thành một cách hoàn hảo.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou3"  ]
*kintore1

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（筋トレ＿×）
[image storage="default/default/job_kintore1.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_kintore1.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái không tốt. Không thể hoàn thành buổi tập như ý muốn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*kintore1"  ]
*kintore2

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（筋トレ＿〇）
[image storage="default/default/job_kintore2.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_kintore2.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Không có gì đặc biệt, buổi tập được hoàn thành đúng như dự kiến.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou2"  ]
*kintore3

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（清掃＿◎）
[image storage="default/job_kintore3.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_kintore3.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Độ tập trung không hề giảm sút, một buổi tập hoàn hảo không có chỗ nào chê![r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou3"  ]
*massage1

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（マッサージ＿×）
[image storage="default/job_massage1.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_massage1.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái không tốt. Không thể hoàn thành công việc như ý muốn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*kintore1"  ]
*massage2

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（マッサージ＿〇）
[image storage="default/default/job_massage2.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_massage2.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Không có sai sót gì lớn, công việc hoàn thành ở mức tạm ổn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou2"  ]
*massage3

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（マッサージ＿◎）
[image storage="default/job_massage3.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_massage3.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái rất tốt. Công việc được hoàn thành một cách hoàn hảo.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou3"  ]
*jim1

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（事務＿×）
[image storage="default/job_jim1.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_jim1.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái không tốt. Không thể hoàn thành công việc như ý muốn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*kintore1"  ]
*jim2

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（事務＿〇）
[image storage="default/default/job_jim2.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_jim2.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Không có sai sót gì lớn, công việc hoàn thành ở mức tạm ổn.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou2"  ]
*jim3

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（事務＿◎）
[image storage="default/job_jim3.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_jim3.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái rất tốt. Công việc được hoàn thành một cách hoàn hảo.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou3"  ]
*fx1

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（fx＿×）
[image storage="default/job_fx1.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_fx1.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_sippai.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái không tốt. Mục tiêu không tồi nhưng lại chẳng ăn nhập chút nào.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*kintore1"  ]
*fx2

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（fx＿〇）
[image storage="default/job_fx2.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_fx2.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Không có sai sót gì lớn, một ngày bình thường không có gì đặc biệt.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou2"  ]
*fx3

[cm  ]
[tb_start_tyrano_code]
;SD非表示
[free layer="1" name="effect1" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;SD表示（fx＿◎）
[image storage="default/job_fx3.gif" layer="1" page="fore" visible="true" x="368" y="165" width="496" height="280" name="effect1" time="0"]
[_tb_end_tyrano_code]

[iscript]
let timestamp = new Date().getTime();
$('.effect1').attr('src', './data/fgimage/default/job_fx3.gif' + '?' + timestamp);
[endscript]

[wait  time="1400"  ]
[playse  volume="100"  time="0"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=4 ]
Trạng thái rất tốt. Một phiên giao dịch lý tưởng.[r]
[_tb_end_text]

[wait  time="500"  ]
[return  ]
[jump  storage="job_sd.ks"  target="*seisou3"  