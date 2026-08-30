
[_tb_system_call storage=system/_sinnyu_comhaiti.ks]

[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
*setti

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_comhaiti.ks"  target="*nasi"  cond="f.item_com==0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
(Được rồi, đặt ở đây vậy.)[p]
Đã tiêu hao 1 Camera siêu nhỏ[p]
[_tb_end_text]

[tb_eval  exp="f.item_com-=1"  name="item_com"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_koudou_count-=1"  name="sinnyu_koudou_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*setti_bousui

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[jump  storage="sinnyu_comhaiti.ks"  target="*nasi"  cond="f.item_com_bousui==0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
(Được rồi, đặt ở đây vậy.)[p]
Đã tiêu hao 1 Camera chống nước[p]
[_tb_end_text]

[tb_eval  exp="f.item_com_bousui-=1"  name="item_com_bousui"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.sinnyu_koudou_count-=1"  name="sinnyu_koudou_count"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*nasi

[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="500"]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
(Mình không mang camera. Phải đi kiếm mới được.)[p]
[_tb_end_text]

[return  ]
*com_Living_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_Living_kasai.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*com_Living_denwa

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_Living_denwa.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*com_nagiroom_konsento

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_nagiroom_konsento.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_nagiroom.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_nagiroom.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*com_kakunin_nagiroom_pc

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_nagiroom_pc.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_nagiroom.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_nagiroom.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_nagiroom_tansu

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_nagiroom_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_nagiroom.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_3_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_nagiroom.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*com_senmenjyo_kagami

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_senmenjyo_kagami.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_datui.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_datui.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*com_senmenjyo_konsento

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_senmenjyo_konsento.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_datui.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_datui.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*com_senmenjyo_sentakuki

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_senmenjyo_sentakuki.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_datui.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_3_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_datui.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_toilet_door

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_toilet_door.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_toilet.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_toilet.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_toilet_seat

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_toilet_seat.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_toilet.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_toilet.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_huro_kanki

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_huro_kanki.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_huro.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_huro.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_huro_mado

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_huro_mado.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_huro.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_huro.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_huro_yokusou

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_huro_yokusou.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_huro.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_3_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_huro.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_wasitu_denki

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_wasitu_denki.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti_wasitu.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti_wasitu.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospital_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospital_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospital_low

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospital_low.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospitallocker_konsento

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospitallocker_konsento.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospitallocker_konsento2

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospitallocker_konsento.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospitallocker_low

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospitallocker_low.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospitallocker_nagirocker

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospitallocker_nagirocker.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_3_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_rokka_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospitaltoilet_holder

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospitaltoilet_holder.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_toire_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_toire_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_hospitaltoilet_seat

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_hospitaltoilet_seat.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_byouin_toire_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_byouin_toire_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_massage_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_massage_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_massaji_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_massaji_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_massage_tansu

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_massage_tansu.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_massaji_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_massaji_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_massagepowder_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_massagepowder_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_massaji_pauda_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_massaji_pauda_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_massagepowder_low

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_massagepowder_low.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_massaji_pauda_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_massaji_pauda_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_massageshower_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_massageshower_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_massaji_syawa_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_massaji_syawa_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_massageshower_shampoo

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_massageshower_shampoo.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_massaji_syawa_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_massaji_syawa_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifure_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifure_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_rihure_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_rihure_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifure_low

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifure_low.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_rihure_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_rihure_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifure_low2

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifure_low2.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_nagi_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_nagi_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifurefitting_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifurefitting_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_rihure_kouisitu_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_rihure_kouisitu_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifurefitting_low

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifurefitting_low.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_rihure_kouisitu_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_rihure_kouisitu_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifurereception_high

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifurereception_high.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_rihure_sekkyaku_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_1_setti"  ]
[glink  color="ts09"  storage="sinnyu_rihure_sekkyaku_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  ]
*kakunin_rifurereception_low

[chara_hide  name="sinnyu_count"  time="0"  wait="false"  pos_mode="false"  ]
[tb_start_tyrano_code]
;エフェクト消す
[free_layermode time="0"]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/kakunin_rifurereception_low.png" time="500" ]
[_tb_end_tyrano_code]

[glink  color="ts09"  storage="sinnyu_rihure_sekkyaku_haiti.ks"  size="20"  text="Lắp đặt / Đặt bẫy"  x="470"  y="460"  width="85"  height="20"  _clickable_img=""  target="*com_2_setti"  ]
[glink  color="ts09"  storage="sinnyu_rihure_sekkyaku_haiti.ks"  size="20"  text="Thôi, dừng lại"  x="680"  y="460"  width="85"  height="20"  _clickable_img=""  target="*setti_yameru"  ]
[s  