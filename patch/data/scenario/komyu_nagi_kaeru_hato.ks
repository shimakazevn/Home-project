
[_tb_system_call storage=system/_komyu_nagi_kaeru_hato.ks]

*set

[tb_start_tyrano_code]
[layopt layer="0" visible="true"]
[image storage="default/heart_base.png" layer="0" left="10" top="10" name="heart_base"]
[image storage="default/heart_active.png" layer="0" left="10" top="10" name="heart_active"]
[_tb_end_tyrano_code]

*update

[iscript]
f.percent = (100 - (f.love / f.love_max * 100)) + '%';
$('.heart_active').css({
'clip-path':'inset(' + f.percent + ' 0 0)'
});
[endscript]

[return  