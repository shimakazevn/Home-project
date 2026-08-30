[_tb_system_call storage=system/_ui_para.ks]

*top

[call  storage="ui_parameter.ks"  target="*money_set"  ]
[call  storage="ui_parameter.ks"  target="*tairyoku_set"  ]
[call  storage="ui_parameter.ks"  target="*sutoresu_set"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_set"  ]
[call  storage="ui_parameter.ks"  target="*kasikosa_set"  ]
[call  storage="ui_parameter.ks"  target="*komyu_set"  ]
[call  storage="ui_parameter.ks"  target="*kikubari_set"  ]
[call  storage="ui_parameter.ks"  target="*kinryoku_set"  ]
*top2

[chara_show  name="base_para"  time="0"  wait="false"  storage="chara/137/ui_para.png"  width="960"  height="24"  left="200"  top="16"  ]
[tb_start_tyrano_code]
;筋力の表示（0～24「E」25～49「D」50～74「C」75～99「B」100～119「A」120～「S」）

[if exp="f.para_kinryoku_display >= 120"]
[jump target="*kinryoku_s"]

[elsif exp="f.para_kinryoku_display >= 100"]
[jump target="*kinryoku_a"]

[elsif exp="f.para_kinryoku_display >= 75"]
[jump target="*kinryoku_b"]

[elsif exp="f.para_kinryoku_display >= 50"]
[jump target="*kinryoku_c"]

[elsif exp="f.para_kinryoku_display >= 25"]
[jump target="*kinryoku_d"]

[elsif exp="f.para_kinryoku_display >= 0"]
[jump target="*kinryoku_e"]

[endif]
[_tb_end_tyrano_code]

*kinryoku_e

[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kinryoku_rank"  time="0"  wait="false"  storage="chara/162/para_rank_E.png"  width="48"  height="24"  left="952"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kikubari"  ]
*kinryoku_d

[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kinryoku_rank"  time="0"  wait="false"  storage="chara/162/para_rank_D.png"  width="48"  height="24"  left="952"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kikubari"  ]
*kinryoku_c

[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kinryoku_rank"  time="0"  wait="false"  storage="chara/162/para_rank_C.png"  width="48"  height="24"  left="952"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*komyu"  ]
*kinryoku_b

[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kinryoku_rank"  time="0"  wait="false"  storage="chara/162/para_rank_B.png"  width="48"  height="24"  left="952"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kikubari"  ]
*kinryoku_a

[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kinryoku_rank"  time="0"  wait="false"  storage="chara/162/para_rank_A.png"  width="48"  height="24"  left="952"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kikubari"  ]
*kinryoku_s

[chara_hide  name="para_kinryoku_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kinryoku_rank"  time="0"  wait="false"  storage="chara/162/para_rank_S.png"  width="48"  height="24"  left="952"  top="0"  reflect="false"  ]
*kikubari

[tb_start_tyrano_code]
; 気配りの表示（0～24「E」25～49「D」50～74「C」75～99「B」100～119「A」120～「S」）

[if exp="f.para_kikubari_display >= 120"]
[jump target="*kikubari_s"]

[elsif exp="f.para_kikubari_display >= 100"]
[jump target="*kikubari_a"]

[elsif exp="f.para_kikubari_display >= 75"]
[jump target="*kikubari_b"]

[elsif exp="f.para_kikubari_display >= 50"]
[jump target="*kikubari_c"]

[elsif exp="f.para_kikubari_display >= 25"]
[jump target="*kikubari_d"]

[elsif exp="f.para_kikubari_display >= 0"]
[jump target="*kikubari_e"]

[endif]
[_tb_end_tyrano_code]

*kikubari_e

[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kikubari_rank"  time="0"  wait="false"  storage="chara/162/para_rank_E.png"  width="48"  height="24"  left="832"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*komyu"  ]
*kikubari_d

[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kikubari_rank"  time="0"  wait="false"  storage="chara/141/para_rank_D.png"  width="48"  height="24"  left="832"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*komyu"  ]
*kikubari_c

[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kikubari_rank"  time="0"  wait="false"  storage="chara/141/para_rank_C.png"  width="48"  height="24"  left="832"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*komyu"  ]
*kikubari_b

[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kikubari_rank"  time="0"  wait="false"  storage="chara/141/para_rank_B.png"  width="48"  height="24"  left="832"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*komyu"  ]
*kikubari_a

[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kikubari_rank"  time="0"  wait="false"  storage="chara/141/para_rank_A.png"  width="48"  height="24"  left="832"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*komyu"  ]
*kikubari_s

[chara_hide  name="para_kikubari_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kikubari_rank"  time="0"  wait="false"  storage="chara/141/para_rank_S.png"  width="48"  height="24"  left="832"  top="0"  reflect="false"  ]
*komyu

[tb_start_tyrano_code]
; コミュ力の表示（0～24「E」25～49「D」50～74「C」75～99「B」100～119「A」120～「S」）

[if exp="f.para_komyu_display >= 120"]
[jump target="*komyu_s"]

[elsif exp="f.para_komyu_display >= 100"]
[jump target="*komyu_a"]

[elsif exp="f.para_komyu_display >= 75"]
[jump target="*komyu_b"]

[elsif exp="f.para_komyu_display >= 50"]
[jump target="*komyu_c"]

[elsif exp="f.para_komyu_display >= 25"]
[jump target="*komyu_d"]

[elsif exp="f.para_komyu_display >= 0"]
[jump target="*komyu_e"]

[endif]
[_tb_end_tyrano_code]

*komyu_e

[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_komyu_rank"  time="0"  wait="false"  storage="chara/140/para_rank_E.png"  width="48"  height="24"  left="712"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kasikosa"  ]
*komyu_d

[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_komyu_rank"  time="0"  wait="false"  storage="chara/140/para_rank_D.png"  width="48"  height="24"  left="712"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kasikosa"  ]
*komyu_c

[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_komyu_rank"  time="0"  wait="false"  storage="chara/140/para_rank_C.png"  width="48"  height="24"  left="712"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kasikosa"  ]
*komyu_b

[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_komyu_rank"  time="0"  wait="false"  storage="chara/140/para_rank_B.png"  width="48"  height="24"  left="712"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kasikosa"  ]
*komyu_a

[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_komyu_rank"  time="0"  wait="false"  storage="chara/140/para_rank_A.png"  width="48"  height="24"  left="712"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*kasikosa"  ]
*komyu_s

[chara_hide  name="para_komyu_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_komyu_rank"  time="0"  wait="false"  storage="chara/140/para_rank_S.png"  width="48"  height="24"  left="712"  top="0"  reflect="false"  ]
*kasikosa

[tb_start_tyrano_code]
; 賢さの表示（0～24「E」25～49「D」50～74「C」75～99「B」100～119「A」120～「S」）

[if exp="f.para_kasikosa_display >= 120"]
[jump target="*kasikosa_s"]

[elsif exp="f.para_kasikosa_display >= 100"]
[jump target="*kasikosa_a"]

[elsif exp="f.para_kasikosa_display >= 75"]
[jump target="*kasikosa_b"]

[elsif exp="f.para_kasikosa_display >= 50"]
[jump target="*kasikosa_c"]

[elsif exp="f.para_kasikosa_display >= 25"]
[jump target="*kasikosa_d"]

[elsif exp="f.para_kasikosa_display >= 0"]
[jump target="*kasikosa_e"]

[endif]
[_tb_end_tyrano_code]

*kasikosa_e

[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kasikosa_rank"  time="0"  wait="false"  storage="chara/140/para_rank_E.png"  width="48"  height="24"  left="592"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*yuuki"  ]
*kasikosa_d

[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kasikosa_rank"  time="0"  wait="false"  storage="chara/139/para_rank_D.png"  width="48"  height="24"  left="592"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*yuuki"  ]
*kasikosa_c

[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kasikosa_rank"  time="0"  wait="false"  storage="chara/139/para_rank_C.png"  width="48"  height="24"  left="592"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*yuuki"  ]
*kasikosa_b

[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kasikosa_rank"  time="0"  wait="false"  storage="chara/139/para_rank_B.png"  width="48"  height="24"  left="592"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*yuuki"  ]
*kasikosa_a

[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kasikosa_rank"  time="0"  wait="false"  storage="chara/139/para_rank_A.png"  width="48"  height="24"  left="592"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*yuuki"  ]
*kasikosa_s

[chara_hide  name="para_kasikosa_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_kasikosa_rank"  time="0"  wait="false"  storage="chara/139/para_rank_S.png"  width="48"  height="24"  left="592"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*yuuki"  ]
*yuuki

[tb_start_tyrano_code]
; 勇気の表示（0～24「E」25～49「D」50～74「C」75～99「B」100～119「A」120～「S」）

[if exp="f.para_yuuki_display >= 120"]
[jump target="*yuuki_s"]

[elsif exp="f.para_yuuki_display >= 100"]
[jump target="*yuuki_a"]

[elsif exp="f.para_yuuki_display >= 75"]
[jump target="*yuuki_b"]

[elsif exp="f.para_yuuki_display >= 50"]
[jump target="*yuuki_c"]

[elsif exp="f.para_yuuki_display >= 25"]
[jump target="*yuuki_d"]

[elsif exp="f.para_yuuki_display >= 0"]
[jump target="*yuuki_e"]

[endif]
[_tb_end_tyrano_code]

*yuuki_e

[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="false"  storage="chara/138/para_rank_E.png"  width="48"  height="24"  left="472"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*sutoresu"  ]
*yuuki_d

[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="false"  storage="chara/138/para_rank_D.png"  width="48"  height="24"  left="472"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*sutoresu"  ]
*yuuki_c

[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="false"  storage="chara/138/para_rank_C.png"  width="48"  height="24"  left="472"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*sutoresu"  ]
*yuuki_b

[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="false"  storage="chara/138/para_rank_B.png"  width="48"  height="24"  left="472"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*sutoresu"  ]
*yuuki_a

[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="false"  storage="chara/138/para_rank_A.png"  width="48"  height="24"  left="472"  top="0"  reflect="false"  ]
[jump  storage="ui_para.ks"  target="*sutoresu"  ]
*yuuki_s

[chara_hide  name="para_yuuki_rank"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="para_yuuki_rank"  time="0"  wait="false"  storage="chara/138/para_rank_S.png"  width="48"  height="24"  left="472"  top="0"  reflect="false"  ]
*sutoresu

[tb_start_tyrano_code]
;ストレスの表示（0～29「健康」30～59「疲れ」60～「病気」）

[if exp="f.para_sutoresu_display >= 60 "]
[jump target="*sutoresu_byouki"]

[elsif exp="f.para_sutoresu_display >= 30 "]
[jump target="*sutoresu_tukare"]

[elsif exp="f.para_sutoresu_display >= 0 "]
[jump target="*sutoresu_kenkou"]

[endif]
[_tb_end_tyrano_code]

*sutoresu_byouki

[chara_show  name="para_sutoresu_rank"  time="0"  wait="false"  storage="chara/143/para_t_byouki.png"  width="48"  height="24"  top="0"  left="352"  ]
[tb_eval  exp="f.byouki_sutoresu=2"  name="byouki_sutoresu"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="ui_para.ks"  target="*taityou"  ]
*sutoresu_tukare

[chara_show  name="para_sutoresu_rank"  time="0"  wait="false"  storage="chara/143/para_t_tukare.png"  width="48"  height="24"  top="0"  left="352"  ]
[tb_eval  exp="f.byouki_sutoresu=1"  name="byouki_sutoresu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="ui_para.ks"  target="*taityou"  ]
*sutoresu_kenkou

[chara_show  name="para_sutoresu_rank"  time="0"  wait="false"  storage="chara/143/para_t_kenkou.png"  width="48"  height="24"  top="0"  left="352"  ]
[tb_eval  exp="f.byouki_sutoresu=0"  name="byouki_sutoresu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="ui_para.ks"  target="*taityou"  ]
*taityou

[tb_start_tyrano_code]
;体調の表示（0～29「病気」30～59「疲れ」60～「健康」）

[if exp="f.para_taityou_display >= 60 "]
[jump target="*taityou_kenkou"]

[elsif exp="f.para_taityou_display >= 30 "]
[jump target="*taityou_tukare"]

[elsif exp="f.para_taityou_display >= 0 "]
[jump target="*taityou_byouki"]

[endif]
[_tb_end_tyrano_code]

*taityou_byouki

[chara_show  name="para_taityou_rank"  time="0"  wait="false"  storage="chara/143/para_t_byouki.png"  width="48"  height="24"  top="0"  left="232"  ]
[tb_eval  exp="f.byouki_taityou=2"  name="byouki_taityou"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="ui_para.ks"  target="*end"  ]
*taityou_tukare

[chara_show  name="para_taityou_rank"  time="0"  wait="false"  storage="chara/142/para_t_tukare.png"  width="48"  height="24"  top="0"  left="232"  ]
[tb_eval  exp="f.byouki_taityou=1"  name="byouki_taityou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="ui_para.ks"  target="*end"  ]
*taityou_kenkou

[chara_show  name="para_taityou_rank"  time="0"  wait="false"  storage="chara/142/para_t_kenkou.png"  width="48"  height="24"  top="0"  left="232"  ]
[tb_eval  exp="f.byouki_taityou=0"  name="byouki_taityou"  cmd="="  op="t"  val="0"  ]
*end

