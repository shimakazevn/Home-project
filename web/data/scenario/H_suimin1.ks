[_tb_system_call storage=system/_H_suimin1.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*top

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_eval  exp="f.suimin=0"  name="suimin"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_suimingauge.ks"  target="*set"  ]
[bg  time="0"  method="crossfade"  storage="manual_H.png"  ]
[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1000"  ]
[l  ]
[bg  time="1000"  method="crossfade"  storage="H/H01_00_00_00.gif"  ]
[tb_show_message_window  ]
*top2

[jump  storage="H_suimin1.ks"  target="*mezame_end"  cond="f.suimin>99"  ]
[call  storage="H_suimin1.ks"  target="*mezame"  cond="f.suimin>80"  ]
[tb_start_tyrano_code]
;待機ボイスコール
[if exp="f.suimin < 80"]
[call target="*vo1"]
[else]
[call target="*vo2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;H_睡眠姦
;右１　マンコキ
[button target=*matazuri enterimg=/H/HUI_matazuri_off.png clickimg=/H/HUI_matazuri_on.png x=1192 y=0 graphic=/H/HUI_matazuri_on.png name="ui"]

;右２　股間触り
[button target=*mataijiri enterimg=/H/HUI_mataijiri_off.png clickimg=/H/HUI_mataijiri_on.png x=1104 y=0 graphic=/H/HUI_mataijiri_on.png name="ui"]

;右３　胸揉み
[button target=*muneijiri enterimg=/H/HUI_munemomi_off.png clickimg=/H/HUI_munemomi_on.png x=1016 y=0 graphic=/H/HUI_munemomi_on.png name="ui"]

;右４　キス
[button target=*kiss enterimg=/H/HUI_kiss_off.png clickimg=/H/HUI_kiss_on.png x=928 y=0 graphic=/H/HUI_kiss_on.png name="ui"]

;右5   秘部観察
[button target=*syojyomaku enterimg=/H/HUI_syojyomaku_off.png clickimg=/H/HUI_syojyomaku_on.png x=848 y=0 graphic=/H/HUI_syojyomaku_on.png name="ui"]

;右6  視姦
[button target=*sikan enterimg=/H/HUI_sikan_off.png clickimg=/H/HUI_sikan_on.png x=776 y=0 graphic=/H/HUI_sikan_on.png name="ui"]

;終了
[button target=*end enterimg=/H/HUI_end_off.png clickimg=/H/HUI_end_on.png x=0 y=440 graphic=/H/HUI_end_on.png name="ui"]

;射精
[if exp="f.suimin >= 50"]
[button target=*syasei enterimg=/H/HUI_otokzetcho_off.png clickimg=/H/HUI_otokzetcho_on.png x=1184 y=416 graphic=/H/HUI_otokzetcho_on.png name="ui"]
[endif]

[anim name="ui" opacity=0 time=0]
[anim name="ui" opacity=255 time=500]
[_tb_end_tyrano_code]

[s  ]
*vo1

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_s_taiki1.mp3"  loop="true"  ]
[return  ]
*vo2

[playse  volume="100"  time="1000"  buf="0"  storage="nagi/voice_s_taiki2.mp3"  loop="true"  ]
[return  ]
*kiss

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_s_kiss.mp3"  loop="true"  clear="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="H/H01_00_02_00.gif"  ]
[tb_eval  exp="f.H_keikenti_nagi+=3"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.suimin+=Math.floor(Math.random()*(15-10+1)+10)"  name="suimin"  cmd="+="  op="r"  val="10"  val_2="15"  ]
[call  storage="H_suimingauge.ks"  target="*update"  ]
[tb_start_tyrano_code]
;キス＿ループパターン

[if exp="f.H_suimin_kiss == 0 "]
[call storage=H_suimin_serihu.ks target="*kiss1"]

[elsif exp="f.H_suimin_kiss == 1 "]
[call storage=H_suimin_serihu.ks target="*kiss2"]

[elsif exp="f.H_suimin_kiss == 2 "]
[call storage=H_suimin_serihu.ks target="*kiss3"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="H_suimin1.ks"  target="*top2"  ]
*muneijiri

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_s_touch1.mp3"  loop="false"  clear="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="H/H01_00_03_00.gif"  ]
[tb_eval  exp="sf.Hresult_muneseme_nagi+=1"  name="Hresult_muneseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=3"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.suimin+=Math.floor(Math.random()*(15-8+1)+8)"  name="suimin"  cmd="+="  op="r"  val="8"  val_2="15"  ]
[call  storage="H_suimingauge.ks"  target="*update"  ]
[tb_start_tyrano_code]
;胸揉み＿ループパターン

[if exp="f.H_suimin_muneijiri == 0 "]
[call storage=H_suimin_serihu.ks target="*muneijiri1"]

[elsif exp="f.H_suimin_muneijiri == 1 "]
[call storage=H_suimin_serihu.ks target="*muneijiri2"]

[elsif exp="f.H_suimin_muneijiri == 2 "]
[call storage=H_suimin_serihu.ks target="*muneijiri3"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="H_suimin1.ks"  target="*top2"  ]
*mataijiri

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_s_touch3.mp3"  loop="false"  clear="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="H/H01_00_04_00.gif"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=4"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.suimin+=Math.floor(Math.random()*(15-5+1)+5)"  name="suimin"  cmd="+="  op="r"  val="5"  val_2="15"  ]
[call  storage="H_suimingauge.ks"  target="*update"  ]
[cm  ]
[tb_start_tyrano_code]
;股弄り＿ループパターン

[if exp="f.H_suimin_mataijiri == 0 "]
[call storage=H_suimin_serihu.ks target="*mataijiri1"]

[elsif exp="f.H_suimin_mataijiri == 1 "]
[call storage=H_suimin_serihu.ks target="*mataijiri2"]

[elsif exp="f.H_suimin_mataijiri == 2 "]
[call storage=H_suimin_serihu.ks target="*mataijiri3"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="H_suimin1.ks"  target="*top2"  ]
*matazuri

[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_s_touch2.mp3"  loop="false"  clear="true"  ]
[cm  ]
[tb_start_tyrano_code]
;パンツめくり（notloop）
[tb_image_show  time="1000"  storage="default/H/H01_00_01_03.gif"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="H/H01_00_05_00.gif"  ]
[tb_image_hide  time="300"  ]
[tb_eval  exp="sf.Hresult_kokanseme_nagi+=1"  name="Hresult_kokanseme_nagi"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_keikenti_nagi+=4"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.suimin+=Math.floor(Math.random()*(25-10+1)+10)"  name="suimin"  cmd="+="  op="r"  val="10"  val_2="25"  ]
[call  storage="H_suimingauge.ks"  target="*update"  ]
[cm  ]
[tb_start_tyrano_code]
;股ズリ＿ループパターン

[if exp="f.H_suimin_matazuri == 0 "]
[call storage=H_suimin_serihu.ks target="*matazuri1"]

[elsif exp="f.H_suimin_matazuri == 1 "]
[call storage=H_suimin_serihu.ks target="*matazuri2"]

[elsif exp="f.H_suimin_matazuri == 2 "]
[call storage=H_suimin_serihu.ks target="*matazuri3"]

[endif]
[_tb_end_tyrano_code]

[jump  storage="H_suimin1.ks"  target="*top2"  ]
*syojyomaku

[stopse  time="500"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
;膣確認（notloop）
[tb_image_show  time="1000"  storage="default/H/H01_00_01_00.gif"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="H/H01_00_00_00.gif"  ]
[cm  ]
[tb_eval  exp="sf.Hresult_kansatu_nagi+=1"  name="Hresult_kansatu_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_keikenti_nagi+=1"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.suimin+=Math.floor(Math.random()*(10-1+1)+1)"  name="suimin"  cmd="+="  op="r"  val="1"  val_2="10"  ]
[call  storage="H_suimingauge.ks"  target="*update"  ]
[camera  time="2000"  zoom="1.3"  wait="false"  x="0"  y="0"  layer="layer_camera"  ease_type="ease"  rotate="0"  ]
[cm  ]
[tb_start_tyrano_code]
;処女膜観察＿ループパターン

[if exp="f.H_suimin_syojyomaku == 0 "]
[call storage=H_suimin_serihu.ks target="*syojyomaku1"]

[elsif exp="f.H_suimin_syojyomaku == 1 "]
[call storage=H_suimin_serihu.ks target="*syojyomaku2"]

[elsif exp="f.H_suimin_syojyomaku == 2 "]
[call storage=H_suimin_serihu.ks target="*syojyomaku3"]

[endif]
[_tb_end_tyrano_code]

[reset_camera  time="1000"  wait="false"  layer="layer_camera"  ease_type="ease"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="H_suimin1.ks"  target="*top2"  ]
*sikan

[stopse  time="500"  buf="1"  fadeout="true"  ]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="H/H01_00_00_00.gif"  ]
[tb_eval  exp="sf.Hresult_kansatu_nagi+=1"  name="Hresult_kansatu_nagi"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.H_keikenti_nagi+=1"  name="H_keikenti_nagi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.suimin-=8"  name="suimin"  cmd="-="  op="t"  val="8"  val_2="10"  ]
[call  storage="H_suimingauge.ks"  target="*update"  ]
[cm  ]
[camera  time="1500"  zoom="1.4"  wait="false"  x="0"  y="-70"  layer="base"  ease_type="ease"  ]
[tb_start_tyrano_code]
;視姦＿ループパターン

[if exp="f.H_suimin_sikan == 0 "]
[call storage=H_suimin_serihu.ks target="*sikan1"]

[elsif exp="f.H_suimin_sikan == 1 "]
[call storage=H_suimin_serihu.ks target="*sikan2"]

[elsif exp="f.H_suimin_sikan == 2 "]
[call storage=H_suimin_serihu.ks target="*sikan3"]

[endif]
[_tb_end_tyrano_code]

[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[jump  storage="H_suimin1.ks"  target="*top2"  ]
*syasei

[cm  ]
[tb_start_tyrano_code]
;戻る
[button target=*modoru enterimg=/H/HUI_modoru_off.png clickimg=/H/HUI_modoru_on.png x=1184 y=416 graphic=/H/HUI_modoru_on.png]

;身体
[button storage="H_suimin_serihu.ks" target=*syasei_karada enterimg=/H/HUI_syasei_karada_off.png clickimg=/H/HUI_syasei_karada_on.png x=1144 y=344 graphic=/H/HUI_syasei_karada_on.png]

;股間
[button storage="H_suimin_serihu.ks" target=*syasei_kokan enterimg=/H/HUI_syasei_kokan_off.png clickimg=/H/HUI_syasei_kokan_on.png x=1088 y=408 graphic=/H/HUI_syasei_kokan_on.png]

[_tb_end_tyrano_code]

[s  ]
*modoru

[cm  ]
[jump  storage="H_suimin1.ks"  target="*top2"  ]
*syasei_karada

[cm  ]
[call  storage="H_suimin_serihu.ks"  target="*syasei_karada"  ]
[jump  storage="H_suimin1.ks"  target="*end2"  ]
*syasei_kokan

[cm  ]
[call  storage="H_suimin_serihu.ks"  target="*syasei_kokan"  ]
[jump  storage="H_suimin1.ks"  target="*end2"  ]
*mezame

[cm  ]
[tb_start_text mode=1 ]
[舜]（…そろそろ起きそうだ…このまま続けていいのか…？）[p]
[_tb_end_text]

[return  ]
*mezame_end

[stopse  time="500"  buf="0"  fadeout="true"  ]
[cm  ]
[playse  volume="100"  time="1000"  buf="1"  storage="nagi/voice_s_touch3.mp3"  clear="true"  ]
[tb_start_text mode=1 ]
凪「ぅんん…………」[p]
[_tb_end_text]

[jump  storage="EV_BADEND_suimin.ks"  target="*top"  ]
*end

[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[cm  ]
*end2

[stopse  time="500"  buf="0"  fadeout="true"  ]
[stopse  time="500"  buf="1"  fadeout="true"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_item_suimin"  ]
[jump  storage="EV_item_suimin.ks"  target="*kaeru"  ]
[call  storage="H_kaihaturesult_nagi.ks"  target="*top"  ]
