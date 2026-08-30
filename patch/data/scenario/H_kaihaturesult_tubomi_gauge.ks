
[_tb_system_call storage=system/_H_kaihaturesult_tubomi_gauge.ks]

*set

[tb_start_tyrano_code]
[layopt layer="0" visible="true"]
[image storage="default/kaihatu_base.png" layer="1" left="850" top="254" name="kaihatu_base"]
[image storage="default/kaihatu_active.png" layer="1" left="850" top="254" name="kaihatu_active"]
[_tb_end_tyrano_code]

*update

[iscript]
f.percent = (100 - (f.Hresult_kaihatuLV0_tubomi / f.Hresult_kaihatuLV0max_tubomi * 100)) + '%';
$('.kaihatu_active').css({
'clip-path': 'inset(0 ' + f.percent + ' 0 0)'
});
[endscript]

[return  ]
