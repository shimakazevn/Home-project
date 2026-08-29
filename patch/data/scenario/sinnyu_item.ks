[_tb_system_call storage=system/_sinnyu_item.ks]

[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
*idoubutton

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_nagi_bussyoku.ks" target=*idou_top enterimg=idou_ribingu.png clickimg=idou_ribingu_on.png x=224 y=16 graphic=idou_ribingu_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_bussyoku_hayato.ks" target=*top enterimg=idou_wasitu.png clickimg=idou_wasitu_on.png x=360 y=16 graphic=idou_wasitu_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_bussyoku_nagiroom.ks" target=*top enterimg=idou_nagiroom.png clickimg=idou_nagiroom_on.png x=496 y=16 graphic=idou_nagiroom_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_bussyoku_datui.ks" target=*top enterimg=idou_datuijyo.png clickimg=idou_datuijyo_on.png x=632 y=16 graphic=idou_datuijyo_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_bussyoku_huro.ks" target=*top enterimg=idou_huro.png clickimg=idou_huro_on.png x=768 y=16 graphic=idou_huro_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_bussyoku_toire.ks" target=*top enterimg=idou_toire.png clickimg=idou_toire_on.png x=904 y=16 graphic=idou_toire_on.png name="sinnyubutton"]

;戻る
[button storage="sinnyu_nagi_bussyoku.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png name="sinnyubutton"]

[anim name="sinnyubutton" opacity=0 time=0]
[anim name="sinnyubutton" opacity=255 time=500]

[_tb_end_tyrano_code]

[return  ]
*idoubutton_com

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_nagi_haiti.ks" target=*idou_top enterimg=idou_ribingu.png clickimg=idou_ribingu_on.png x=224 y=16 graphic=idou_ribingu_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_haiti_wasitu.ks" target=*top enterimg=idou_wasitu.png clickimg=idou_wasitu_on.png x=360 y=16 graphic=idou_wasitu_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_haiti_nagiroom.ks" target=*top enterimg=idou_nagiroom.png clickimg=idou_nagiroom_on.png x=496 y=16 graphic=idou_nagiroom_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_haiti_datui.ks" target=*top enterimg=idou_datuijyo.png clickimg=idou_datuijyo_on.png x=632 y=16 graphic=idou_datuijyo_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_haiti_huro.ks" target=*top enterimg=idou_huro.png clickimg=idou_huro_on.png x=768 y=16 graphic=idou_huro_on.png name="sinnyubutton"]
[button storage="sinnyu_nagi_haiti_toilet.ks" target=*top enterimg=idou_toire.png clickimg=idou_toire_on.png x=904 y=16 graphic=idou_toire_on.png name="sinnyubutton"]

;戻る
[button storage="sinnyu_nagi_bussyoku.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png name="sinnyubutton"]

[anim name="sinnyubutton" opacity=0 time=0]
[anim name="sinnyubutton" opacity=255 time=500]


[_tb_end_tyrano_code]

[return  ]
*idoubutton_byouin

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_byouin_bussyoku.ks" target=*idou_top enterimg=idou_byouin_back.png clickimg=idou_byouin_back_on.png x=632 y=16 graphic=idou_byouin_back_on.png]
[button storage="sinnyu_byouin_bussyoku_rokka.ks" target=*top enterimg=idou_byouin_rokka.png clickimg=idou_byouin_rokka_on.png x=768 y=16 graphic=idou_byouin_rokka_on.png]
[button storage="sinnyu_byouin_bussyoku_toire.ks" target=*top enterimg=idou_toire.png clickimg=idou_toire_on.png x=904 y=16 graphic=idou_toire_on.png]
[button storage="sinnyu_byouin_bussyoku_rokka.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png]
[_tb_end_tyrano_code]

[return  ]
*idoubutton_byouin_com

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_byouin_haiti.ks" target=*idou_top enterimg=idou_byouin_back.png clickimg=idou_byouin_back_on.png x=632 y=16 graphic=idou_byouin_back_on.png]
[button storage="sinnyu_byouin_rokka_haiti.ks" target=*top enterimg=idou_byouin_rokka.png clickimg=idou_byouin_rokka_on.png x=768 y=16 graphic=idou_byouin_rokka_on.png]
[button storage="sinnyu_byouin_toire_haiti.ks" target=*top enterimg=idou_toire.png clickimg=idou_toire_on.png x=904 y=16 graphic=idou_toire_on.png]
[button storage="sinnyu_byouin_bussyoku_rokka.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png]
[_tb_end_tyrano_code]

[return  ]
*idoubutton_massaji

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_massaji_bussyoku.ks" target=*idou_top enterimg=idou_massa_sejyutu.png clickimg=idou_massa_sejyutu_on.png x=632 y=16 graphic=idou_massa_sejyutu_on.png]
[button storage="sinnyu_massaji_bussyoku_pauda.ks" target=*top enterimg=idou_massa_pauda.png clickimg=idou_massa_pauda_on.png x=768 y=16 graphic=idou_massa_pauda_on.png]
[button storage="sinnyu_massaji_bussyoku_syawa.ks" target=*top enterimg=idou_massa_syawa.png clickimg=idou_massa_syawa_on.png x=904 y=16 graphic=idou_massa_syawa_on.png]
[button storage="sinnyu_massaji_bussyoku.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png]
[_tb_end_tyrano_code]

[return  ]
*idoubutton_massaji_com

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_massaji_haiti.ks" target=*idou_top enterimg=idou_massa_sejyutu.png clickimg=idou_massa_sejyutu_on.png x=632 y=16 graphic=idou_massa_sejyutu_on.png]
[button storage="sinnyu_massaji_pauda_haiti.ks" target=*top enterimg=idou_massa_pauda.png clickimg=idou_massa_pauda_on.png x=768 y=16 graphic=idou_massa_pauda_on.png]
[button storage="sinnyu_massaji_syawa_haiti.ks" target=*top enterimg=idou_massa_syawa.png clickimg=idou_massa_syawa_on.png x=904 y=16 graphic=idou_massa_syawa_on.png]
[button storage="sinnyu_massaji_bussyoku.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png]
[_tb_end_tyrano_code]

[return  ]
*idoubutton_rihure

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_rihure_bussyoku.ks" target=*idou_top enterimg=idou_rihure_hikae.png clickimg=idou_rihure_hikae_on.png x=632 y=16 graphic=idou_rihure_hikae_on.png]
[button storage="sinnyu_rihure_bussyoku_kouisitu.ks" target=*top enterimg=idou_rihure_sityaku.png clickimg=idou_rihure_sityaku_on.png x=768 y=16 graphic=idou_rihure_sityaku_on.png]
[button storage="sinnyu_rihure_bussyoku_sekkyaku.ks" target=*top enterimg=idou_rihure_sekkyaku.png clickimg=idou_rihure_sekkyaku_on.png x=904 y=16 graphic=idou_rihure_sekkyaku_on.png]
[button storage="sinnyu_rihure_bussyoku.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png]
[_tb_end_tyrano_code]

[return  ]
*idoubutton_rihure_com

[tb_start_tyrano_code]
;移動ボタン表示
[button storage="sinnyu_rihure_haiti.ks" target=*idou_top enterimg=idou_rihure_hikae.png clickimg=idou_rihure_hikae_on.png x=632 y=16 graphic=idou_rihure_hikae_on.png]
[button storage="sinnyu_rihure_kouisitu_haiti.ks" target=*top enterimg=idou_rihure_sityaku.png clickimg=idou_rihure_sityaku_on.png x=768 y=16 graphic=idou_rihure_sityaku_on.png]
[button storage="sinnyu_rihure_sekkyaku_haiti.ks" target=*top enterimg=idou_rihure_sekkyaku.png clickimg=idou_rihure_sekkyaku_on.png x=904 y=16 graphic=idou_rihure_sekkyaku_on.png]
[button storage="sinnyu_rihure_bussyoku.ks" target=*modoru enterimg=idou_sinnyu_modoru.png clickimg=idou_sinnyu_modoru_on.png x=1160 y=16 graphic=idou_sinnyu_modoru_on.png]
[_tb_end_tyrano_code]

[return  ]
*off

[cm  ]
[chara_hide  name="com"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="com_bousui"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sinnyu_item_base"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[return  ]
*off_busssyokugo

[cm  ]
[chara_hide  name="sinnyu_count"  time="0"  wait="true"  pos_mode="false"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[return  ]
*com

[tb_start_tyrano_code]
;カメラアイコンの表示

[if exp="f.item_com == 0"]
[call target="*com0"]

[elsif exp="f.item_com == 1"]
[call target="*com1"]

[elsif exp="f.item_com == 2"]
[call target="*com2"]

[elsif exp="f.item_com == 3"]
[call target="*com3"]

[elsif exp="f.item_com == 4"]
[call target="*com4"]

[elsif exp="f.item_com == 5"]
[call target="*com5"]

[elsif exp="f.item_com == 6"]
[call target="*com6"]

[elsif exp="f.item_com == 7"]
[call target="*com7"]

[elsif exp="f.item_com == 8"]
[call target="*com8"]

[elsif exp="f.item_com == 9"]
[call target="*com9"]

[elsif exp="f.item_com == 10"]
[call target="*com10"]

[elsif exp="f.item_com == 11"]
[call target="*com11"]

[elsif exp="f.item_com == 12"]
[call target="*com12"]

[elsif exp="f.item_com == 13"]
[call target="*com13"]

[elsif exp="f.item_com == 14"]
[call target="*com14"]

[elsif exp="f.item_com == 15"]
[call target="*com15"]

[elsif exp="f.item_com == 16"]
[call target="*com16"]

[elsif exp="f.item_com == 17"]
[call target="*com17"]

[elsif exp="f.item_com == 18"]
[call target="*com18"]

[elsif exp="f.item_com == 19"]
[call target="*com19"]

[elsif exp="f.item_com == 20"]
[call target="*com20"]

[elsif exp="f.item_com == 21"]
[call target="*com21"]

[elsif exp="f.item_com == 22"]
[call target="*com22"]

[elsif exp="f.item_com == 23"]
[call target="*com23"]

[elsif exp="f.item_com == 24"]
[call target="*com24"]

[elsif exp="f.item_com == 25"]
[call target="*com25"]

[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;防水カメラアイコンの表示

[if exp="f.item_com_bousui == 0"]
[call target="*com_bousui0"]

[elsif exp="f.item_com_bousui == 1"]
[call target="*com_bousui1"]

[elsif exp="f.item_com_bousui == 2"]
[call target="*com_bousui2"]

[elsif exp="f.item_com_bousui == 3"]
[call target="*com_bousui3"]

[elsif exp="f.item_com_bousui == 4"]
[call target="*com_bousui4"]

[elsif exp="f.item_com_bousui == 5"]
[call target="*com_bousui5"]

[elsif exp="f.item_com_bousui == 6"]
[call target="*com_bousui6"]

[elsif exp="f.item_com_bousui == 7"]
[call target="*com_bousui7"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*com0

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera0.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com1

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera1.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com2

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera2.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com3

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera3.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com4

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera4.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com5

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera5.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com6

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera6.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com7

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera7.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com8

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera8.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com9

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera9.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com10

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera10.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com11

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera11.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com12

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera12.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com13

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera13.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com14

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera14.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com15

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera15.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com16

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera16.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com17

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera17.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com18

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera18.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com19

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera19.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com20

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera20.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com21

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera21.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com22

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera22.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com23

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera23.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com24

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera24.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com25

[chara_show  name="com"  time="400"  wait="false"  storage="chara/126/camera25.png"  width="56"  height="24"  left="1040"  top="16"  ]
[return  ]
*com_bousui0

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera0_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui1

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera1_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui2

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera2_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui3

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera3_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui4

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera4_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui5

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera5_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui6

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera6_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*com_bousui7

[chara_show  name="com_bousui"  time="400"  wait="false"  storage="chara/176/camera7_bou.png"  width="56"  height="24"  left="1096"  top="16"  ]
[return  ]
*turn

[tb_start_tyrano_code]
;ターン数の表示

[if exp="f.sinnyu_koudou_count == 5"]
[call target="*5turn"]

[elsif exp="f.sinnyu_koudou_count == 4"]
[call target="*4turn"]

[elsif exp="f.sinnyu_koudou_count == 3"]
[call target="*3turn"]

[elsif exp="f.sinnyu_koudou_count == 2"]
[call target="*2turn"]

[elsif exp="f.sinnyu_koudou_count == 1"]
[call target="*1turn"]

[elsif exp="f.sinnyu_koudou_count == 0"]
[call target="*0turn"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*0turn

[tb_start_tyrano_code]
[image layer="2" x=" 464" y=" 184" storage="default/shinnyu_actiongauge_0_5.png" name="sinnyu"]
[_tb_end_tyrano_code]

[return  ]
*1turn

[tb_start_tyrano_code]
[image layer="2" x=" 464" y=" 184" storage="default/shinnyu_actiongauge_1_5.png" name="sinnyu"]
[_tb_end_tyrano_code]

[return  ]
*2turn

[tb_start_tyrano_code]
[image layer="2" x=" 464" y=" 184" storage="default/shinnyu_actiongauge_2_5.png" name="sinnyu"]
[_tb_end_tyrano_code]

[return  ]
*3turn

[tb_start_tyrano_code]
[image layer="2" x=" 464" y=" 184" storage="default/shinnyu_actiongauge_3_5.png" name="sinnyu"]
[_tb_end_tyrano_code]

[return  ]
*4turn

[tb_start_tyrano_code]
[image layer="2" x=" 464" y=" 184" storage="default/shinnyu_actiongauge_4_5.png" name="sinnyu"]
[_tb_end_tyrano_code]

[return  ]
*5turn

[tb_start_tyrano_code]
[image layer="2" x=" 464" y=" 184" storage="default/shinnyu_actiongauge_5_5.png" name="sinnyu"]
[_tb_end_tyrano_code]

[return  ]
*turn_m

[tb_start_tyrano_code]
;ターン数の表示

[if exp="f.sinnyu_koudou_count == 5"]
[call target="*5turn_m"]

[elsif exp="f.sinnyu_koudou_count == 4"]
[call target="*4turn_m"]

[elsif exp="f.sinnyu_koudou_count == 3"]
[call target="*3turn_m"]

[elsif exp="f.sinnyu_koudou_count == 2"]
[call target="*2turn_m"]

[elsif exp="f.sinnyu_koudou_count == 1"]
[call target="*1turn_m"]

[elsif exp="f.sinnyu_koudou_count == 0"]
[call target="*0turn_m"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*0turn_m

[chara_show  name="sinnyu_count"  time="400"  wait="false"  storage="chara/168/ac_base.png"  width="216"  height="24"  top="16"  left="1"  ]
[return  ]
*1turn_m

[chara_show  name="sinnyu_count"  time="0"  wait="false"  storage="chara/168/ac_1.png"  width="216"  height="24"  top="16"  left="1"  ]
[return  ]
*2turn_m

[chara_show  name="sinnyu_count"  time="0"  wait="false"  storage="chara/168/ac_2.png"  width="216"  height="24"  top="16"  left="1"  ]
[return  ]
*3turn_m

[chara_show  name="sinnyu_count"  time="0"  wait="false"  storage="chara/168/ac_3.png"  width="216"  height="24"  top="16"  left="1"  ]
[return  ]
*4turn_m

[chara_show  name="sinnyu_count"  time="0"  wait="false"  storage="chara/168/ac_4.png"  width="216"  height="24"  top="16"  left="1"  ]
[return  ]
*5turn_m

[chara_show  name="sinnyu_count"  time="0"  wait="false"  storage="chara/168/ac_5.png"  width="216"  height="24"  top="16"  left="1"  ]
[return  ]
*item

[tb_start_tyrano_code]
;下地の表示
[image layer="2" x=" 995"  y=" 0" storage="default/UI_itembase.png" name="sinnyu"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アイテムのコール
[if exp="f.item_1 >= 1"]
[call target="*item_1"]
[endif]

[if exp="f.item_2 >= 1"]
[call target="*item_2"]
[endif]

[if exp="f.item_3 >= 1"]
[call target="*item_3"]
[endif]

[if exp="f.item_4 >= 1"]
[call target="*item_4"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*item_1

[tb_start_tyrano_code]
;item1ボタン
[button storage=sinnyu_item.ks target=*item_1_nagi_ev graphic=shinnyu_item1.png x=1088 y=8 name="sinnyu" hint=Thuốc kích dục]
[_tb_end_tyrano_code]

[return  ]
*item_2

[tb_start_tyrano_code]
;item2ボタン
[button storage=sinnyu_item.ks target=*item_2_nagi_ev graphic=shinnyu_item2.png x=1136 y=8 name="sinnyu" hint=Thuốc kích dụcプレミアム]
[_tb_end_tyrano_code]

[return  ]
*item_3

[tb_start_tyrano_code]
;item3ボタン
[button storage=sinnyu_item.ks target=*item_3_nagi_ev graphic=shinnyu_item3.png x=1184 y=8 name="sinnyu" hint=Thuốc kích dụcクリーム]
[_tb_end_tyrano_code]

[return  ]
*item_4

[tb_start_tyrano_code]
;item4ボタン
[button storage=sinnyu_item.ks target=*item_4_nagi_ev graphic=shinnyu_item4.png x=1232 y=8 name="sinnyu" hint=Thuốc ngủ]
[_tb_end_tyrano_code]

[return  ]
*item_1_nagi_ev

[jump  storage="sinnyu_item.ks"  target="*item_on"  cond="f.item_on==1"  ]
[cm  ]
[tb_start_tyrano_code]
[anim name="sinnyu" opacity=0 time=100]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
Có sử dụng Thuốc kích dục không?
[_tb_end_text]

[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="230"  width="425"  height="58"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*item_1_nagi_ev_yes"  ]
[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="330"  width="425"  height="58"  text="Không sử dụng"  _clickable_img=""  target="*item_ev_no"  ]
[s  ]
*biyaku_kameranasi

[tb_start_text mode=1 ]
[舜]「Nếu dùng cái này thì, [font color="yellow"]trước tiên phải đặt camera ở chỗ thích hợp nhất đã.[resetfont][r]Để xem... Quả nhiên là [font color="yellow"]trước máy tính[resetfont] nhỉ.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_1_nagi_ev_yes

[jump  storage="sinnyu_item.ks"  target="*biyaku_kameranasi"  cond="f.com_nagiroom_pc==0"  ]
[tb_eval  exp="f.item_1-=1"  name="item_1"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_biyaku=1"  name="itemEV_biyaku"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_on=1"  name="item_on"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
[舜]「...Được rồi, dùng thuốc kích dục thôi.」[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「...Thứ này thật sự có hiệu quả không đây?」[p]
[舜]（Bẻ viên nang ra, trộn vào nước trái cây... xong.）[p]
[舜]「Mà, cứ thử xem sao. Không bị phát hiện là được.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_2_nagi_ev

[jump  storage="sinnyu_item.ks"  target="*item_on"  cond="f.item_on==1"  ]
[cm  ]
[tb_start_tyrano_code]
[anim name="sinnyu" opacity=0 time=100]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
Có sử dụng Thuốc kích dục cao cấp không?
[_tb_end_text]

[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="230"  width="425"  height="58"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*item_2_nagi_ev_yes"  ]
[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="330"  width="425"  height="58"  text="Không sử dụng"  _clickable_img=""  target="*item_ev_no"  ]
[s  ]
*bitaku2_kameranasi

[tb_start_text mode=1 ]
[舜]「Nếu dùng cái này thì, [font color="yellow"]trước tiên phải đặt camera ở chỗ thích hợp nhất đã.[resetfont][r]Quả nhiên... là [font color="yellow"]phòng Nagi[resetfont] thì không sai vào đâu được.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_2_nagi_ev_yes

[jump  storage="sinnyu_item.ks"  target="*bitaku2_kameranasi"  cond="f.com_nagiroom_konsento==0"  ]
[tb_eval  exp="f.item_2-=1"  name="item_2"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_biyaku2=1"  name="itemEV_biyaku2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_on=1"  name="item_on"  cmd="="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「...Được rồi, dùng thuốc kích dục cao cấp thôi.」[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「...Giá cũng khá chát đấy, không biết có hiệu quả không...?」[p]
[舜]（Bẻ viên nang ra, lén lút trộn vào nước trái cây... xong.）[p]
[舜]「Không thể nào bị phát hiện được... Nếu suôn sẻ thì đúng là vớ bở.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_3_nagi_ev

[jump  storage="sinnyu_item.ks"  target="*item_on"  cond="f.item_on==1"  ]
[cm  ]
[tb_start_tyrano_code]
[anim name="sinnyu" opacity=0 time=100]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
Bạn có muốn sử dụng kem kích dục không?
[_tb_end_text]

[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="230"  width="425"  height="58"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*item_3_nagi_ev_yes"  ]
[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="330"  width="425"  height="58"  text="Không sử dụng"  _clickable_img=""  target="*item_ev_no"  ]
[s  ]
*biyaku3_kameranasi

[tb_start_text mode=1 ]
[舜]「Nếu dùng cái này thì [font color="yellow"]trước tiên phải lắp camera ở vị trí thích hợp đã.[resetfont][r]Tham lam một chút thì nếu được thấy cảnh cô ấy thủ dâm trong [font color="yellow"]nhà vệ sinh bệnh viện[resetfont] thì tuyệt vời nhất...」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_3_nagi_ev_yes

[jump  storage="sinnyu_item.ks"  target="*biyaku_kameranasi"  cond="f.com_hospitaltoilet_holder==0"  ]
[tb_eval  exp="f.item_3-=1"  name="item_3"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_biyakucream3=1"  name="itemEV_biyakucream3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_on=1"  name="item_on"  cmd="="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「...Được rồi, dùng kem kích dục thôi.」[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Cứ bôi đại vào đũng quần lót là được nhỉ?」[p]
[舜]「...Cái này có thực sự hiệu quả không đấy.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_4_nagi_ev

[jump  storage="sinnyu_item.ks"  target="*item_on"  cond="f.item_on==1"  ]
[cm  ]
[tb_start_tyrano_code]
[anim name="sinnyu" opacity=0 time=100]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
Bạn có muốn sử dụng thuốc ngủ không?
[_tb_end_text]

[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="230"  width="425"  height="58"  text="Sử dụng (Viên Spirytus)"  _clickable_img=""  target="*item_4_nagi_ev_yes"  ]
[glink  color="btn_05_black"  storage="sinnyu_item.ks"  size="20"  x="416"  y="330"  width="425"  height="58"  text="Không sử dụng"  _clickable_img=""  target="*item_ev_no"  ]
[s  ]
*item_4_nagi_ev_yes

[tb_eval  exp="f.item_4-=1"  name="item_4"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.itemEV_suimin=1"  name="itemEV_suimin"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.item_on=1"  name="item_on"  cmd="="  op="t"  val="1"  ]
[tb_start_text mode=1 ]
[舜]「...Được rồi, dùng thuốc ngủ thôi.」[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Nghiền nát 2, 3 viên ra... rồi. Cứ cho vào bình trà trong tủ lạnh vậy.」[p]
[舜]「Thế này thì tối nay cô ấy sẽ ngủ say như chết thôi. Hơi lo một chút nhưng... chắc là không sao đâu.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_EV_end

[bg  time="500"  method="fadeIn"  storage="sin_nagi_DK.png"  ]
[jump  storage="sinnyu_nagi.ks"  target="*top"  ]
*item_ev_no

[tb_start_text mode=1 ]
[舜]「...Cũng không cần phải vội vàng dùng ngay. Thôi bỏ đi.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end"  ]
*item_on

[cm  ]
[tb_start_tyrano_code]
[anim name="sinnyu" opacity=0 time=100]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
[舜]「Tạm thời hôm nay cứ thế này để xem tình hình đã. Tham lam quá mà bị lộ thì xôi hỏng bỏng không.」[p]
[_tb_end_text]

[jump  storage="sinnyu_item.ks"  target="*item_EV_end" ]
