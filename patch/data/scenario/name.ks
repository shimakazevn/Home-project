


[_tb_system_call storage=system/_name.ks]

[tb_image_show  time="0"  storage="default/title_logo_trial.png"  width="560"  height="240"  x=""  y=""  _clickable_img=""  name="img_1"  ]
*top

[call  storage="a_taikenban.ks"  target="*top"  cond="f.taikenban==1"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
Hãy nhập họ và tên của nhân vật chính (Mặc định: Hidaka Shun).
[_tb_end_text]

[tb_keyconfig  flag="1"  ]
[edit  left="430"  top="392"  width="190"  height="42"  size="24"  maxchars="20"  name="f.familyname"  reflect="false"  ]
[edit  left="640"  top="392"  width="190"  height="42"  size="24"  maxchars="20"  name="f.name"  reflect="false"  ]
[iscript]
if(!f.familyname || f.familyname == "日高") f.familyname = "Hidaka";
if(!f.name || f.name == "舜") f.name = "Shun";
$(".text_box").eq(0).val(f.familyname);
$(".text_box").eq(1).val(f.name);
[endscript]

[tb_start_tyrano_code]
[button target=*kettei enterimg=kettei_on.png clickimg=kettei_off.png x=560 y=456 graphic=kettei_off.png enterse=sistem_starton.mp3]
[_tb_end_tyrano_code]

[s  ]
*kettei

[playse  volume="100"  time="1000"  buf="1"  storage="sistem_up.mp3"  ]
[commit  ]
[cm  ]
[tb_start_text mode=4 ]
Tên của bạn là [emb exp="f.familyname"] [emb exp="f.name"] phải không?
[_tb_end_text]

[glink  color="btn_05_black"  storage="name.ks"  size="20"  text="Đồng ý"  x="430"  y="260"  width="471"  height="50"  _clickable_img=""  target="*yes"  ]
[glink  color="btn_05_black"  storage="name.ks"  size="20"  text="Không"  x="430"  y="370"  width="471"  height="50"  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_start_tyrano_code]
[eval exp="f.familyname='Hidaka'"]
[eval exp="f.name='Shun'"]
[_tb_end_tyrano_code]

[jump  storage="name.ks"  target="*top"  ]
*yes

[playse  volume="100"  time="1000"  buf="1"  storage="sistem_up.mp3"  ]
[cm  ]
[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;リプレイからジャンプしてきた場合はここで戻る（EventReplay）
[if exp="f.NameChange_END == 1"]
[eval exp="f.NameChange_END = 0"]
[jump storage="title_screen.ks" target="EventReplay"]
[endif]

;リプレイからジャンプしてきた場合はここで戻る（HReplay）
[if exp="f.NameChange_H == 1"]
[eval exp="f.NameChange_H = 0"]
[jump storage="title_screen.ks" target="HReplay"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[font color="yellow"]Bạn có muốn bỏ qua phần mở đầu không?[font color="yellow"]
[_tb_end_text]

[glink  color="btn_05_blue"  storage="name.ks"  size="20"  text="Xem đoạn mở đầu (Opening)"  x="430"  y="260"  width="471"  height="50"  _clickable_img=""  target="*noskip"  ]
[glink  color="btn_05_black"  storage="name.ks"  size="20"  text="Bỏ qua Opening"  x="430"  y="370"  width="471"  height="50"  _clickable_img=""  target="*skip"  ]
[s  ]
*noskip

[playse  volume="100"  time="1000"  buf="1"  storage="sistem_up.mp3"  ]
[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_tubomi_on=1"  name="chara_tubomi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_hadaka=0"  name="puro_nagi_hadaka"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_heyagi=0"  name="puro_nagi_heyagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_sigoto=0"  name="puro_nagi_sigoto"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_deto=0"  name="puro_nagi_deto"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_rinko_hadaka=0"  name="puro_rinko_hadaka"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="sf.puro_rinko_mohuku=0"  name="puro_rinko_mohuku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_tubomi_hadaka=0"  name="puro_tubomi_hadaka"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_tubomi_sigoto=0"  name="puro_tubomi_sigoto"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="EV_OP.ks"  target="*top"  ]
*skip

[playse  volume="100"  time="1000"  buf="1"  storage="sistem_up.mp3"  ]
[tb_eval  exp="sf.puro_nagi_tuukin=1"  name="puro_nagi_tuukin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_hadaka=0"  name="puro_nagi_hadaka"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_heyagi=0"  name="puro_nagi_heyagi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_sigoto=0"  name="puro_nagi_sigoto"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_nagi_deto=0"  name="puro_nagi_deto"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_rinko_hadaka=0"  name="puro_rinko_hadaka"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="sf.puro_rinko_mohuku=0"  name="puro_rinko_mohuku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_tubomi_hadaka=0"  name="puro_tubomi_hadaka"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="sf.puro_tubomi_sigoto=0"  name="puro_tubomi_sigoto"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.month=6"  name="month"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.week=1"  name="week"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.mon=1"  name="mon"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_rinko_on=1"  name="chara_rinko_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_nagi_on=1"  name="chara_nagi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.chara_tubomi_on=1"  name="chara_tubomi_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="komyuhyouka_nagi.ks"  target="*top"  ]
[call  storage="komyuhyouka_hayato.ks"  target="*top"  ]
[call  storage="komyuhyouka_rinko.ks"  target="*top"  ]
[call  storage="komyuhyouka_tubomi.ks"  target="*top"  ]
[jump  storage="EV_OP3.ks"  target="*skip"  ]