[_tb_system_call storage=system/_H_suimingauge.ks]

*set

[tb_start_tyrano_code]
[layopt layer="0" visible="true"]
[image storage="default/suimin_base.png" layer="0" left="0" top="0" name="suimin_base"]
[image storage="default/suimin_active.png" layer="0" left="48" top="16" name="suimin_active"]
[_tb_end_tyrano_code]

*update

[iscript]
f.percent = (100 - (f.suimin / f.suimin_max * 100)) + '%';
$('.suimin_active').css({
'clip-path': 'inset(0 ' + f.percent + ' 0 0)'
});
[endscript]

[return  ]
