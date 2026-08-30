]
[_tb_system_call storage=system/_H_rinko_cam.ks]

[tb_show_message_window  ]
*J1_cam1_yukkuri

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*J1_yukkuri_cam1"  ]
[return  ]
*J1_cam1_hagesiku

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*J1_hagesiku_cam1"  ]
[return  ]
*J1_cam2_yukkuri

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*J1_yukkuri_cam2"  ]
[return  ]
*J1_cam2_hagesiku

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gazou.ks"  target="*J1_hagesiku_cam2"  ]
[return  ]
*J2_cam1_yukkuri

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*J2_yukkuri_cam1"  ]
[return  ]
*J2_cam1_hagesiku

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  ]
[call  storage="H_rinko_gazou.ks"  target="*J2_hagesiku_cam1"  ]
[return  ]
*J2_cam2_yukkuri

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*J2_yukkuri_cam2"  ]
[return  ]
*J2_cam2_hagesiku

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gazou.ks"  target="*J2_hagesiku_cam2"  ]
[return  ]
*R1_cam1_yukkuri

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*R1_yukkuri_cam1"  ]
[return  ]
*R1_cam1_hagesiku

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  ]
[call  storage="H_rinko_gazou.ks"  target="*R1_hagesiku_cam1"  ]
[return  ]
*R1_cam2_yukkuri

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*R1_yukkuri_cam2"  ]
[return  ]
*R1_cam2_hagesiku

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gazou.ks"  target="*R1_hagesiku_cam2"  ]
[return  ]
*R2_cam1_yukkuri

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*R2_yukkuri_cam1"  ]
[return  ]
*R2_cam1_hagesiku

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  ]
[call  storage="H_rinko_gazou.ks"  target="*R2_hagesiku_cam1"  ]
[return  ]
*R2_cam2_yukkuri

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*R2_yukkuri_cam2"  ]
[return  ]
*R2_cam2_hagesiku

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gazou.ks"  target="*R2_hagesiku_cam2"  ]
[return  ]
*supiritasu_cam1_yukkuri

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*supiritasu_yukkuri_cam1"  ]
[return  ]
*supiritasu_cam1_hagesiku

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  ]
[call  storage="H_rinko_gazou.ks"  target="*supiritasu_hagesiku_cam1"  ]
[return  ]
*supiritasu_cam2_yukkuri

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*supiritasu_yukkuri_cam2"  ]
[return  ]
*supiritasu_cam2_hagesiku

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gazou.ks"  target="*supiritasu_hagesiku_cam2"  ]
[return  ]
*H1_cam1_yukkuri

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*H1_yukkuri_cam1"  ]
[return  ]
*H1_cam1_hagesiku

[tb_eval  exp="f.H_cam1_on=1"  name="H_cam1_on"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_cam2_on=0"  name="H_cam2_on"  cmd="="  op="t"  val="0"  ]
[call  storage="H_rinko_gazou.ks"  target="*H1_hagesiku_cam1"  ]
[return  ]
*H1_cam2_yukkuri

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="H_rinko_gazou.ks"  target="*H1_yukkuri_cam2"  ]
[return  ]
*H1_cam2_hagesiku

[tb_eval  exp="f.H_cam1_on=0"  name="H_cam1_on"  cmd="="  op="t"  val="0"  ]
[tb_eval  exp="f.H_cam2_on=1"  name="H_cam2_on"  cmd="="  op="t"  val="1"  ]
[call  storage="H_rinko_gazou.ks"  target="*H1_hagesiku_cam2"  ]
[return  