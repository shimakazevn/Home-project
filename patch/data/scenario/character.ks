 
[_tb_system_call storage=system/_character.ks]

*nagi_heyagi

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（凪）

[if exp="f.koukando_nagi >= 30 "]
[jump target="*nagi_suki"]

[elsif exp="f.koukando_nagi == 0 "]
[jump target="*nagi_kirai"]

[elsif exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9 "]
[jump target="*nagi_nigate"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19 "]
[jump target="*nagi_hutuu"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29 "]
[jump target="*nagi_yuukou"]

[endif]
[_tb_end_tyrano_code]

*nagi_kirai

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_00_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun"  time="0"  wait="false"  storage="chara/178/ADV_nagi_00_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_nigate

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_00_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun"  time="0"  wait="false"  storage="chara/178/ADV_nagi_00_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_hutuu

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_00_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun"  time="0"  wait="false"  storage="chara/178/ADV_nagi_00_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_yuukou

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_00_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun"  time="0"  wait="false"  storage="chara/178/ADV_nagi_00_01c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_suki

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_00_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun"  time="0"  wait="false"  storage="chara/178/ADV_nagi_00_04c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sotogi

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（凪）

[if exp="f.koukando_nagi >= 30 "]
[jump target="*nagi_sotogi_suki"]

[elsif exp="f.koukando_nagi == 0 "]
[jump target="*nagi_sotogi_kirai"]

[elsif exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9 "]
[jump target="*nagi_sotogi_nigate"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19 "]
[jump target="*nagi_sotogi_hutuu"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29 "]
[jump target="*nagi_sotogi_yuukou"]

[endif]
[_tb_end_tyrano_code]

*nagi_sotogi_kirai

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_02_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sotogi_nigate

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_02_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sotogi_hutuu

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_02_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sotogi_yuukou

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_02_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_01c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sotogi_suki

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_02_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_04c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sigotogi

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（凪）

[if exp="f.koukando_nagi >= 30 "]
[jump target="*nagi_sigotogi_suki"]

[elsif exp="f.koukando_nagi == 0 "]
[jump target="*nagi_sigotogi_kirai"]

[elsif exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9 "]
[jump target="*nagi_sigotogi_nigate"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19 "]
[jump target="*nagi_sigotogi_hutuu"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29 "]
[jump target="*nagi_sigotogi_yuukou"]

[endif]
[_tb_end_tyrano_code]

*nagi_sigotogi_kirai

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_01_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sigotogi_nigate

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_01_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sigotogi_hutuu

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_01_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sigotogi_yuukou

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_01_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_01c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_sigotogi_suki

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_01_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_04c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_date

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（凪）

[if exp="f.koukando_nagi >= 30 "]
[jump target="*nagi_date_suki"]

[elsif exp="f.koukando_nagi == 0 "]
[jump target="*nagi_date_kirai"]

[elsif exp="f.koukando_nagi >= 0 && f.koukando_nagi <= 9 "]
[jump target="*nagi_date_nigate"]

[elsif exp="f.koukando_nagi >= 10 && f.koukando_nagi <= 19 "]
[jump target="*nagi_date_hutuu"]

[elsif exp="f.koukando_nagi >= 20 && f.koukando_nagi <= 29 "]
[jump target="*nagi_date_yuukou"]

[endif]
[_tb_end_tyrano_code]

*nagi_date_hutuu

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_03_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_date_yuukou

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_03_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_01c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*nagi_date_suki

[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_03_base.png"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_04c.gif"  width="832"  height="832"  left="260"  top="32"  reflect="false"  ]
[return  ]
*tubomi_hudangi

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（蕾）

[if exp="f.koukando_tubomi >= 30 "]
[jump target="*tubomi_hudangi_suki"]

[elsif exp="f.koukando_tubomi == 0 "]
[jump target="*tubomi_hudangi_kirai"]

[elsif exp="f.koukando_tubomi >= 0 && f.koukando_tubomi <= 9 "]
[jump target="*tubomi_hudangi_nigate"]

[elsif exp="f.koukando_tubomi >= 10 && f.koukando_tubomi <= 19 "]
[jump target="*tubomi_hudangi_hutuu"]

[elsif exp="f.koukando_tubomi >= 20 && f.koukando_tubomi <= 29 "]
[jump target="*tubomi_hudangi_yuukou"]

[endif]
[_tb_end_tyrano_code]

*tubomi_hudangi_kirai

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_02c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_hudangi_nigate

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_hudangi_hutuu

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_hudangi_yuukou

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_01c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_hudangi_suki

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_04c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_meido

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（蕾）

[if exp="f.koukando_tubomi >= 30 "]
[jump target="*tubomi_meido_suki"]

[elsif exp="f.koukando_tubomi == 0 "]
[jump target="*tubomi_meido_kirai"]

[elsif exp="f.koukando_tubomi >= 0 && f.koukando_tubomi <= 9 "]
[jump target="*tubomi_meido_nigate"]

[elsif exp="f.koukando_tubomi >= 10 && f.koukando_tubomi <= 19 "]
[jump target="*tubomi_meido_hutuu"]

[elsif exp="f.koukando_tubomi >= 20 && f.koukando_tubomi <= 29 "]
[jump target="*tubomi_meido_yuukou"]

[endif]
[_tb_end_tyrano_code]

*tubomi_meido_kirai

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_01_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_02c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_meido_nigate

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_01_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_meido_hutuu

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_01_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_meido_yuukou

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_01_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_01c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*tubomi_meido_suki

[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_01_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_04c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*rinko_sigotogi

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（凛子）

[if exp="f.koukando_rinko >= 30 "]
[jump target="*rinko_sigotogi_suki"]

[elsif exp="f.koukando_rinko == 0 "]
[jump target="*rinko_sigotogi_kirai"]

[elsif exp="f.koukando_rinko >= 0 && f.koukando_rinko <= 9 "]
[jump target="*rinko_sigotogi_nigate"]

[elsif exp="f.koukando_rinko >= 10 && f.koukando_rinko <= 19 "]
[jump target="*rinko_sigotogi_hutuu"]

[elsif exp="f.koukando_rinko >= 20 && f.koukando_rinko <= 29 "]
[jump target="*rinko_sigotogi_yuukou"]

[endif]
[_tb_end_tyrano_code]

*rinko_sigotogi_kirai

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*rinko_sigotogi_nigate

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*rinko_sigotogi_hutuu

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*rinko_sigotogi_yuukou

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*rinko_sigotogi_suki

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_04c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*rinko_mohuku_hutuu

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_01_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*rinko_mohuku_suki

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_01_base.png"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_04c.gif"  width="808"  height="808"  left="254"  top="48"  reflect="false"  ]
[return  ]
*hayato_hudangi

[tb_start_tyrano_code]
;好感度によって立ち絵が変化（隼人）

[if exp="f.koukando_hayato >= 30 "]
[jump target="*hayato_hudangi_suki"]

[elsif exp="f.koukando_hayato == 0 "]
[jump target="*hayato_hudangi_kirai"]

[elsif exp="f.koukando_hayato >= 0 && f.koukando_hayato <= 9 "]
[jump target="*hayato_hudangi_nigate"]

[elsif exp="f.koukando_hayato >= 10 && f.koukando_hayato <= 19 "]
[jump target="*hayato_hudangi_hutuu"]

[elsif exp="f.koukando_hayato >= 20 && f.koukando_hayato <= 29 "]
[jump target="*hayato_hudangi_yuukou"]

[endif]
[_tb_end_tyrano_code]

*hayato_hudangi_kirai

[chara_show  name="kyara_hayato"  time="500"  wait="true"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[return  ]
*hayato_hudangi_nigate

[chara_show  name="kyara_hayato"  time="500"  wait="true"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[return  ]
*hayato_hudangi_hutuu

[chara_show  name="kyara_hayato"  time="500"  wait="true"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[return  ]
*hayato_hudangi_yuukou

[chara_show  name="kyara_hayato"  time="500"  wait="true"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[return  ]
*hayato_hudangi_suki

[chara_show  name="kyara_hayato"  time="500"  wait="true"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_01c.gif"  width="776"  height="808"  left="260"  top="24"  reflect="false"  ]
[return  ]
*2kyara_hayatorinko

[chara_show  name="kyara_hayato"  time="500"  wait="false"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="-29"  top="24"  reflect="false"  ]
[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="515"  top="48"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="-29"  top="24"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="515"  top="48"  reflect="false"  ]
[return  ]
*2kyara_hayatonagi

[chara_show  name="kyara_hayato"  time="500"  wait="false"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="-20"  top="24"  reflect="false"  ]
[chara_show  name="kyara_nagi"  time="500"  wait="true"  storage="chara/153/ADV_nagi_01_base.png"  width="832"  height="832"  left="500"  top="32"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="-20"  top="24"  reflect="false"  ]
[chara_show  name="kyara_nagi_sabun2"  time="0"  wait="false"  storage="chara/179/ADV_nagi_01_00c.gif"  width="832"  height="832"  left="500"  top="32"  reflect="false"  ]
[return  ]
*2kyara_hayatotubomi

[chara_show  name="kyara_hayato"  time="500"  wait="false"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="-20"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="500"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="-20"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="500"  top="24"  reflect="false"  ]
[return  ]
*3kyara_hayatorinkotubomi

[chara_show  name="kyara_hayato"  time="1000"  wait="false"  storage="chara/154/ADV_haayto_base.png"  width="776"  height="808"  left="-133"  top="24"  reflect="false"  ]
[chara_show  name="kyara_rinko"  time="1000"  wait="false"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="648"  top="48"  reflect="false"  ]
[chara_show  name="kyara_tubomi"  time="1000"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[chara_show  name="kyara_hayato_sabun"  time="0"  wait="false"  storage="chara/177/ADV_hayato_00c.gif"  width="776"  height="808"  left="-133"  top="24"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="648"  top="48"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="242"  top="24"  reflect="false"  ]
[return  ]
*2kyara_rinkotubomi

[chara_show  name="kyara_rinko"  time="500"  wait="true"  storage="chara/155/ADV_rinko_00_base.png"  width="808"  height="808"  left="474"  top="48"  reflect="false"  ]
[chara_show  name="kyara_rinko_sabun"  time="0"  wait="false"  storage="chara/180/ADV_rinko_00_00c.gif"  width="808"  height="808"  left="474"  top="48"  reflect="false"  ]
[chara_show  name="kyara_tubomi"  time="500"  wait="true"  storage="chara/156/ADV_tubomi_00_base.png"  width="832"  height="832"  left="22"  top="24"  reflect="false"  ]
[chara_show  name="kyara_tubomi_sabun"  time="0"  wait="false"  storage="chara/181/ADV_tubomi_00_00c.gif"  width="832"  height="832"  left="22"  top="24"  reflect="false"  ]
[return  ]
*taijyou

[chara_hide  name="kyara_nagi"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_nagi_sabun"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_nagi_sabun2"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_hayato_sabun"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_hayato"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_tubomi_sabun"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_tubomi"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_rinko_sabun"  time="500"  wait="false"  pos_mode="false"  ]
[chara_hide  name="kyara_rinko"  time="500"  wait="false"  pos_mode="false"  ]
[wait  time="500"  