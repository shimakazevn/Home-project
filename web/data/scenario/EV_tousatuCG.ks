[_tb_system_call storage=system/_EV_tousatuCG.ks]

*tousatu_dounyu

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
──その夜[p]
[舜]（…カメラに何か映ってるな。ちょっと見てみよう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;盗撮画像をコール
;凪宅（リビング）火災報知器（飯）
[if exp="f.com_Living_high == 1 && f.cg_tou_Living_high == 0"]
[call storage="EV_tousatuCG.ks" target="*Living_high"]
[endif]

;凪宅（リビング）電話（飯）
[if exp="f.com_Living_denwa == 1 && f.cg_tou_Living_denwa == 0"]
[call storage="EV_tousatuCG.ks" target="*Living_denwa"]
[endif]

;凪宅（リビング）電話（飲み物）
[if exp="f.com_Living_denwa == 2 && f.cg_tou_Living_denwa2 == 0"]
[call storage="EV_tousatuCG.ks" target="*Living_denwa2"]
[endif]

;凪宅（凪部屋）コンセント①
[if exp="f.com_nagiroom_konsento == 1 && f.cg_tou_nagiroom_konsento == 0"]
[call storage="EV_tousatuCG.ks" target="*nagiroom_konsento"]
[endif]

;凪宅（凪部屋）PC
[if exp="f.com_nagiroom_pc == 1 && f.cg_tou_nagiroom_pc == 0"]
[call storage="EV_tousatuCG.ks" target="*nagiroom_pc"]
[endif]

;凪宅（凪部屋）火災報知器①
[if exp="f.com_nagiroom_tansu == 1 && f.cg_tou_nagiroom_tansu == 0"]
[call storage="EV_tousatuCG.ks" target="*nagiroom_tansu"]
[endif]

;凪宅（凪部屋）火災報知器②※凪大好き状態
[if exp="f.com_nagiroom_tansu == 2 && f.cg_tou_nagiroom_tansu2 == 0"]
[call storage="EV_tousatuCG.ks" target="*nagiroom_tansu2"]
[endif]

;凪宅（洗面所）鏡（脱衣中）
[if exp="f.com_senmenjyo_kagami == 1 && f.cg_tou_senmenjyo_kagami == 0"]
[call storage="EV_tousatuCG.ks" target="*senmenjyo_kagami"]
[endif]

;凪宅（洗面所）鏡②（アメニティ交換）
[if exp="f.com_senmenjyo_kagami == 1 && f.cg_tou_senmenjyo_kagami2 == 0"]
[call storage="EV_tousatuCG.ks" target="*senmenjyo_kagami2"]
[endif]

;凪宅（洗面所）コンセント（脱衣中）
[if exp="f.com_senmenjyo_konsento == 1 && f.cg_tou_senmenjyo_konsento == 0"]
[call storage="EV_tousatuCG.ks" target="*senmenjyo_konsento"]
[endif]

;凪宅（洗面所）コンセント②（アメニティ交換）
[if exp="f.com_senmenjyo_konsento == 1 && f.cg_tou_senmenjyo_konsento2 == 0"]
[call storage="EV_tousatuCG.ks" target="*senmenjyo_konsento2"]
[endif]

;凪宅（洗面所）洗濯機（脱衣中）
[if exp="f.com_senmenjyo_sentakuki == 1 && f.cg_tou_senmenjyo_sentakuki == 0"]
[call storage="EV_tousatuCG.ks" target="*senmenjyo_sentakuki"]
[endif]

;凪宅（洗面所）洗濯機②（アメニティ交換）
[if exp="f.com_senmenjyo_sentakuki == 1 && f.cg_tou_senmenjyo_sentakuki2 == 0"]
[call storage="EV_tousatuCG.ks" target="*senmenjyo_sentakuki2"]
[endif]

;凪宅（トイレ）ドア
[if exp="f.com_toilet_door == 1 && f.cg_tou_toilet_door == 0"]
[call storage="EV_tousatuCG.ks" target="*toilet_door"]
[endif]

;凪宅（トイレ）便器
[if exp="f.com_toilet_seat == 1 && f.cg_tou_toilet_seat == 0"]
[call storage="EV_tousatuCG.ks" target="*toilet_seat"]
[endif]

;凪宅（風呂）換気（洗い）
[if exp="f.com_huro_kanki == 1 && f.cg_tou_huro_kanki == 0"]
[call storage="EV_tousatuCG.ks" target="*huro_kanki"]
[endif]

;凪宅（風呂）換気②（浴槽）
[if exp="f.com_huro_kanki == 1 && f.cg_tou_huro_kanki2 == 0"]
[call storage="EV_tousatuCG.ks" target="*huro_kanki2"]
[endif]

;凪宅（風呂）窓（浴槽）
[if exp="f.com_huro_mado == 1 && f.cg_tou_huro_mado == 0"]
[call storage="EV_tousatuCG.ks" target="*huro_mado"]
[endif]

;凪宅（風呂）浴槽（洗い）
[if exp="f.com_huro_yokusou == 1 && f.cg_tou_huro_yokusou == 0"]
[call storage="EV_tousatuCG.ks" target="*huro_yokusou"]
[endif]

;凪宅（和室）
[if exp="f.com_wasitu_denki == 1"]
[call storage="EV_tousatuCG.ks" target="*wasitu_denki"]
[endif]



;盗撮画像をコール
;病院

;病院（裏）上
[if exp="f.com_hospital_high == 1 && f.cg_tou_hospital_high == 0"]
[call storage="EV_tousatuCG.ks" target="*hospital_high"]
[endif]

;病院（裏）下
[if exp="f.com_hospital_low == 1 && f.cg_tou_hospital_low == 0"]
[call storage="EV_tousatuCG.ks" target="*hospital_low"]
[endif]

;病院（裏）下2
[if exp="f.com_hospital_low == 1 && f.cg_tou_hospital_low2 == 0"]
[call storage="EV_tousatuCG.ks" target="*hospital_low2"]
[endif]

;病院（ロッカー）上
[if exp="f.com_hospitallocker_konsento == 1 && f.cg_tou_hospitallocker_high == 0"]
[call storage="EV_tousatuCG.ks" target="*hospitallocker_high"]
[endif]

;病院（ロッカー）下
[if exp="f.com_hospitallocker_low == 1 && f.cg_tou_hospitallocker_low == 0"]
[call storage="EV_tousatuCG.ks" target="*hospitallocker_low"]
[endif]

;病院（ロッカー）凪ロッカー
[if exp="f.com_hospitallocker_nagirocker == 1 && f.cg_tou_hospitallocker_nagirocker == 0"]
[call storage="EV_tousatuCG.ks" target="*hospitallocker_nagirocker"]
[endif]

;病院（トイレ）上
[if exp="f.com_hospitaltoilet_holder == 1 && f.cg_tou_hospitaltoilet_holder == 0"]
[call storage="EV_tousatuCG.ks" target="*hospitaltoilet_holder"]
[endif]

;病院（トイレ）下
[if exp="f.com_hospitaltoilet_seat == 1 && f.cg_tou_hospitaltoilet_seat == 0"]
[call storage="EV_tousatuCG.ks" target="*hospitaltoilet_seat"]
[endif]


;盗撮画像をコール
;マッサージ店

;マッサージ店（施術室）上
[if exp="f.com_massage_high == 1 && f.cg_tou_massage_high == 0"]
[call storage="EV_tousatuCG.ks" target="*massage_high"]
[endif]

;マッサージ店（施術室）タンス
[if exp="f.com_massage_tansu == 1 && f.cg_tou_massage_tansu == 0"]
[call storage="EV_tousatuCG.ks" target="*massage_tansu"]
[endif]

;マッサージ店（施術室）タンス2
[if exp="f.com_massage_tansu == 1 && f.cg_tou_massage_tansu2 == 0"]
[call storage="EV_tousatuCG.ks" target="*massage_tansu2"]
[endif]

;マッサージ店（洗面所）上
[if exp="f.com_massagepowder_high == 1 && f.cg_tou_massagepowder_high == 0"]
[call storage="EV_tousatuCG.ks" target="*massagepowder_high"]
[endif]

;マッサージ店（洗面所）下
[if exp="f.com_massagepowder_low == 1 && f.cg_tou_massagepowder_low == 0"]
[call storage="EV_tousatuCG.ks" target="*massagepowder_low"]
[endif]

;マッサージ店（シャワールーム）上
[if exp="f.com_massageshower_high == 1 && f.cg_tou_massageshower_high == 0"]
[call storage="EV_tousatuCG.ks" target="*massageshower_high"]
[endif]

;マッサージ店（シャワールーム）シャンプー
[if exp="f.com_massageshower_shampoo == 1 && f.cg_tou_massageshower_shampoo == 0"]
[call storage="EV_tousatuCG.ks" target="*massageshower_shampoo"]
[endif]



;盗撮画像をコール
;リフレ

;リフレ（控室）上
[if exp="f.com_rifure_high == 1 && f.cg_tou_rifure_high == 0"]
[call storage="EV_tousatuCG.ks" target="*rifure_high"]
[endif]

;リフレ（控室）下
[if exp="f.com_rifure_low == 1 && f.cg_tou_rifure_low == 0"]
[call storage="EV_tousatuCG.ks" target="*rifure_low"]
[endif]

;リフレ（更衣室）上
[if exp="f.com_rifurefitting_high == 1 && f.cg_tou_rifurefitting_high == 0"]
[call storage="EV_tousatuCG.ks" target="*rifurefitting_high"]
[endif]

;リフレ（更衣室）下
[if exp="f.com_rifurefitting_low == 1 && f.cg_tou_rifurefitting_low == 0"]
[call storage="EV_tousatuCG.ks" target="*rifurefitting_low"]
[endif]

;リフレ（接客室）上
[if exp="f.com_rifurereception_high == 1 && f.cg_tou_rifurereception_high == 0"]
[call storage="EV_tousatuCG.ks" target="*rifurereception_high"]
[endif]

;リフレ（接客室）上2
[if exp="f.com_rifurereception_high == 2 && f.cg_tou_rifurereception_high2 == 0"]
[call storage="EV_tousatuCG.ks" target="*rifurereception_high2"]
[endif]

;リフレ（接客室）下
[if exp="f.com_rifurereception_low == 1 && f.cg_tou_rifurereception_low == 0"]
[call storage="EV_tousatuCG.ks" target="*rifurereception_low"]
[endif]

;リフレ（接客室）下2
[if exp="f.com_rifurereception_low == 2 && f.cg_tou_rifurereception_low2 == 0"]
[call storage="EV_tousatuCG.ks" target="*rifurereception_low2"]
[endif]

;腕時計型カメラ（凪）
[if exp="f.itemEV_idoucam_nagi == 1"]
[call storage="EV_tousatuCG.ks" target="*idoucam_nagi"]
[endif]

;腕時計型カメラ（凛子）
[if exp="f.itemEV_idoucam_rinko == 1"]
[call storage="EV_tousatuCG.ks" target="*idoucam_rinko"]
[endif]

;腕時計型カメラ（蕾）
[if exp="f.itemEV_idoucam_tubomi == 1"]
[call storage="EV_tousatuCG.ks" target="*idoucam_tubomi"]
[endif]



[_tb_end_tyrano_code]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[jump  storage="room_yoru.ks"  target="*top"  ]
*hanbai

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="job_daiseikou.mp3"  ]
[tb_start_text mode=1 ]
[font color="yellow"]勇気が少し上昇した[resetfont][p]
[_tb_end_text]

[tb_eval  exp="f.kankei+=1"  name="kankei"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.para_yuuki_updated+=2"  name="para_yuuki_updated"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*yuuki_update"  ]
[tb_hide_message_window  ]
[return  ]
*Living_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_Living_high"]
[eval exp="sf.tou_Living_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_Living_high2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/Living_high2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（飯を食べてる。ちゃんと自炊してて偉いな…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_Living_high=2"  name="com_Living_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_Living_high=1"  name="tou_Living_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_Living_high=1"  name="cg_tou_Living_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*Living_denwa

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_Living_denwa"]
[eval exp="sf.tou_Living_denwa = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_Living_denwa"  ]
[bg  time="1000"  method="crossfade"  storage="tou/Living_denwa.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（背中…ゆるい服、だらしねぇけど、なんか安心するんだよな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_Living_denwa=2"  name="com_Living_denwa"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_Living_denwa=1"  name="tou_Living_denwa"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_Living_denwa=1"  name="cg_tou_Living_denwa"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*Living_denwa2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_Living_denwa2"]
[eval exp="sf.tou_Living_denwa2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_Living_denwa2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/Living_denwa2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（楽しそうに食ってるな。動画でも見てるのか？…可愛い）[p]
[_tb_end_text]

[tb_eval  exp="f.cg_tou_Living_denwa2=1"  name="cg_tou_Living_denwa2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_Living_denwa2=1"  name="tou_Living_denwa2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*nagiroom_konsento

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_nagiroom_konsento"]
[eval exp="sf.tou_nagiroom_konsento = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_nagiroom_konsento2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/nagiroom_konsento2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（寝落ちしてるみたいだ…だらしないなぁ。でもなかなかいいアングルだ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_nagiroom_konsento=2"  name="com_nagiroom_konsento"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_nagiroom_konsento=1"  name="tou_nagiroom_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_nagiroom_konsento=1"  name="cg_tou_nagiroom_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*nagiroom_pc

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_nagiroom_pc"]
[eval exp="sf.tou_nagiroom_pc = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_nagiroom_pc"  ]
[bg  time="1000"  method="crossfade"  storage="tou/nagiroom_pc.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（家だと、ほんと表情柔らかいな。またゲームか？職場と違って子供っぽく見えるな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_nagiroom_pc=2"  name="com_nagiroom_pc"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_nagiroom_pc=1"  name="tou_nagiroom_pc"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_nagiroom_pc=1"  name="cg_tou_nagiroom_pc"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*nagiroom_tansu

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_nagiroom_tansu"]
[eval exp="sf.tou_nagiroom_tansu = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_nagiroom_tansu2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/nagiroom_tansu2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（無防備だなぁ…職場とは随分印象が違って見えるな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_nagiroom_tansu=2"  name="com_nagiroom_tansu"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_nagiroom_tansu=1"  name="tou_nagiroom_tansu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_nagiroom_tansu=1"  name="cg_tou_nagiroom_tansu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*nagiroom_tansu2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_nagiroom_tansu2"]
[eval exp="sf.tou_nagiroom_tansu2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_nagiroom_tansu3"  ]
[bg  time="1000"  method="crossfade"  storage="tou/nagiroom_tansu3.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（可愛い…デートの日が楽しみだ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_nagiroom_tansu=2"  name="com_nagiroom_tansu"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_nagiroom_tansu2=1"  name="tou_nagiroom_tansu2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_nagiroom_tansu2=1"  name="cg_tou_nagiroom_tansu2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*senmenjyo_kagami

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_senmenjyo_kagami"]
[eval exp="sf.tou_senmenjyo_kagami = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_senmenjyo_kagami"  ]
[bg  time="1000"  method="crossfade"  storage="tou/senmenjyo_kagami.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（おおっ、風呂今から入るのか…躊躇なく脱ぐ姿が無警戒だな…まぁ、一人だとそうなんだけどさ）[p]
[_tb_end_text]

[tb_eval  exp="sf.tou_senmenjyo_kagami=1"  name="tou_senmenjyo_kagami"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_senmenjyo_kagami=1"  name="cg_tou_senmenjyo_kagami"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*senmenjyo_kagami2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_senmenjyo_kagami2"]
[eval exp="sf.tou_senmenjyo_kagami2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_senmenjyo_kagami2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/senmenjyo_kagami2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（洗濯物か…生活感出てるな。こんなところまで無防備とは思わなかったけど…まぁ、部屋だと普通か）[p]
[_tb_end_text]

[tb_eval  exp="f.com_senmenjyo_kagami=2"  name="com_senmenjyo_kagami"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_senmenjyo_kagami2=1"  name="tou_senmenjyo_kagami2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_senmenjyo_kagami2=1"  name="cg_tou_senmenjyo_kagami2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*senmenjyo_konsento

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_senmenjyo_konsento"]
[eval exp="sf.tou_senmenjyo_konsento = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_senmenjyo_konsento"  ]
[bg  time="1000"  method="crossfade"  storage="tou/senmenjyo_konsento.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（完全にオフモードだな…誰かいるなんて微塵も思ってないよな。…にしても綺麗な肌だ…）[p]
[_tb_end_text]

[tb_eval  exp="sf.tou_senmenjyo_konsento=1"  name="tou_senmenjyo_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_senmenjyo_konsento=1"  name="cg_tou_senmenjyo_konsento"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*senmenjyo_konsento2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_senmenjyo_konsento2"]
[eval exp="sf.tou_senmenjyo_konsento2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_senmenjyo_konsento2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/senmenjyo_konsento2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（下着だけ室内に干すのって防犯とかそういうの？意外と警戒心あるじゃん）[p]
[_tb_end_text]

[tb_eval  exp="f.com_senmenjyo_konsento=2"  name="com_senmenjyo_konsento"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_senmenjyo_konsento2=1"  name="tou_senmenjyo_konsento2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_senmenjyo_konsento2=1"  name="cg_tou_senmenjyo_konsento2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*senmenjyo_sentakuki

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_senmenjyo_sentakuki"]
[eval exp="sf.tou_senmenjyo_sentakuki = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_senmenjyo_sentakuki"  ]
[bg  time="1000"  method="crossfade"  storage="tou/senmenjyo_sentakuki.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（…落ち着け。これは日常だ、生活の一コマだ。…にしても、めちゃくちゃぷにぷにして柔らかそうなまんこだな…）[p]
[_tb_end_text]

[tb_eval  exp="sf.tou_senmenjyo_sentakuki=1"  name="tou_senmenjyo_sentakuki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_senmenjyo_sentakuki=1"  name="cg_tou_senmenjyo_sentakuki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*senmenjyo_sentakuki2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_senmenjyo_sentakuki2"]
[eval exp="sf.tou_senmenjyo_sentakuki2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_senmenjyo_sentakuki2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/senmenjyo_sentakuki2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（パンツの食い込みまで全部丸見えだ。…無防備な奴だな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_senmenjyo_sentakuki=2"  name="com_senmenjyo_sentakuki"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_senmenjyo_sentakuki2=1"  name="tou_senmenjyo_sentakuki2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_senmenjyo_sentakuki2=1"  name="cg_tou_senmenjyo_sentakuki2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*toilet_door

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_toilet_door"]
[eval exp="sf.tou_toilet_door = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_toilet_door"  ]
[bg  time="1000"  method="crossfade"  storage="tou/toilet_door.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（可愛い。…凪の毎日、ちゃんと見守ってるからな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_toilet_door=2"  name="com_toilet_door"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_toilet_door=1"  name="tou_toilet_door"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_toilet_door=1"  name="cg_tou_toilet_door"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*toilet_seat

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_toilet_seat"]
[eval exp="sf.tou_toilet_seat = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_toilet_seat"  ]
[bg  time="1000"  method="crossfade"  storage="tou/toilet_seat.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（うおぉ…目のやり場に困るな。って、別に遠慮する事ないのか。すげぇ…丸見えだ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_toilet_seat=2"  name="com_toilet_seat"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_toilet_seat=1"  name="tou_toilet_seat"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_toilet_seat=1"  name="cg_tou_toilet_seat"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*huro_kanki

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_huro_kanki"]
[eval exp="sf.tou_huro_kanki = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_huro_kanki"  ]
[bg  time="1000"  method="crossfade"  storage="tou/huro_kanki.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（昔は当たり前に一緒に入ってたのに。時間が経つのは早いな…）[p]
[_tb_end_text]

[tb_eval  exp="sf.tou_huro_kanki=1"  name="tou_huro_kanki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_huro_kanki=1"  name="tou_huro_kanki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_huro_kanki=1"  name="cg_tou_huro_kanki"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*huro_kanki2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_huro_kanki2"]
[eval exp="sf.tou_huro_kanki2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_huro_kanki2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/huro_kanki2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（今でも二人で入れるかな？いや、大人二人はさすがに無理か）[p]
[_tb_end_text]

[tb_eval  exp="f.com_huro_kanki=2"  name="com_huro_kanki"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_huro_kanki2=1"  name="tou_huro_kanki2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_huro_kanki2=1"  name="cg_tou_huro_kanki2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*huro_mado

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_huro_mado"]
[eval exp="sf.tou_huro_mado = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_huro_mado2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/huro_mado2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（…肌すべすべだな。胸の形も綺麗だ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_huro_mado=2"  name="com_huro_mado"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_huro_mado=1"  name="tou_huro_mado"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_huro_mado=1"  name="cg_tou_huro_mado"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*huro_yokusou

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_huro_yokusou"]
[eval exp="sf.tou_huro_yokusou = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_huro_yokusou"  ]
[bg  time="1000"  method="crossfade"  storage="tou/huro_yokusou.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（うわっ…、これは…見ちゃっていいのか？いや、大丈夫、バレなきゃ無かった事と同じだからな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_huro_yokusou=2"  name="com_huro_yokusou"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_huro_yokusou=1"  name="tou_huro_yokusou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_huro_yokusou=1"  name="cg_tou_huro_yokusou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospital_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospital_high"]
[eval exp="sf.tou_hospital_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospital_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospital_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（知らない看護師が品出しをしている。誰も見ていないのに、少しくらいサボろうなんて気にはならないんだろうか）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospital_high=2"  name="com_hospital_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospital_high=1"  name="tou_hospital_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospital_high=1"  name="cg_tou_hospital_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospital_low

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospital_low"]
[eval exp="sf.tou_hospital_low = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospital_low"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospital_low.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（看護師の足が映ってる。もう少し下からのアングルだったらなぁ）[p]
[_tb_end_text]

[tb_eval  exp="sf.tou_hospital_low=1"  name="tou_hospital_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospital_low=1"  name="cg_tou_hospital_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospital_low2

[tb_cg  id="tou_hospital_low2"  ]
[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospital_low2"]
[eval exp="sf.tou_hospital_low2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="tou/hospital_low2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（パンツ発見。ここから覗かれてるなんて思いもしないだろうな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospital_low=2"  name="com_hospital_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospital_low2=1"  name="tou_hospital_low2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospital_low2=1"  name="cg_tou_hospital_low2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospitallocker_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospitallocker_high"]
[eval exp="sf.tou_hospitallocker_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospitallocker_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospitallocker_konsento.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（凪が他の看護師たちと話している。[r]昔は人見知りだったのに…意外と社交的なんだな。無理して合わせてるだけなんだろうか）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospitallocker_konsento=2"  name="com_hospitallocker_konsento"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospitallocker_high=1"  name="tou_hospitallocker_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospitallocker_high=1"  name="cg_tou_hospitallocker_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospitallocker_low

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospitallocker_low"]
[eval exp="sf.tou_hospitallocker_low = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospitallocker_low"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospitallocker_low.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（うぉぉ…良いアングル！我ながらナイス判断）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospitallocker_low=2"  name="com_hospitallocker_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospitallocker_low=1"  name="tou_hospitallocker_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospitallocker_low=1"  name="cg_tou_hospitallocker_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospitallocker_nagirocker

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospitallocker_nagirocker"]
[eval exp="sf.tou_hospitallocker_nagirocker = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospitallocker_nagirocker"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospitallocker_nagirocker.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（凪と他の看護師たちが着替えている……。やっぱり凪、かわいいな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospitallocker_nagirocker=2"  name="com_hospitallocker_nagirocker"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospitallocker_nagirocker=1"  name="tou_hospitallocker_nagirocker"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospitallocker_nagirocker=1"  name="cg_tou_hospitallocker_nagirocker"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospitaltoilet_holder

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospitaltoilet_holder"]
[eval exp="sf.tou_hospitaltoilet_holder = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospitaltoilet_holder"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospitaltoilet_holder.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（丸見えじゃん。いつどこで見られてるか分からないんだから、トイレでも気を抜いたら駄目だろ…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospitaltoilet_holder=2"  name="com_hospitaltoilet_holder"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospitaltoilet_holder=1"  name="tou_hospitaltoilet_holder"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospitaltoilet_holder=1"  name="cg_tou_hospitaltoilet_holder"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*hospitaltoilet_seat

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_hospitaltoilet_seat"]
[eval exp="sf.tou_hospitaltoilet_seat = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_hospitaltoilet_seat"  ]
[bg  time="1000"  method="crossfade"  storage="tou/hospitaltoilet_seat.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（おぉっ、ベストショット！まさかスタッフ専用のトイレまで覗かれてるとは思わないだろうなぁ…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_hospitaltoilet_seat=2"  name="com_hospitaltoilet_seat"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_hospitaltoilet_seat=1"  name="tou_hospitaltoilet_seat"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_hospitaltoilet_seat=1"  name="cg_tou_hospitaltoilet_seat"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massage_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massage_high"]
[eval exp="sf.tou_massage_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massage_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massage_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（凛子さんが働いてる。裸の男と個室に二人きりって…普通に考えて危ないよな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_massage_high=2"  name="com_massage_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_massage_high=1"  name="tou_massage_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massage_high=1"  name="cg_tou_massage_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massage_tansu

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massage_tansu"]
[eval exp="sf.tou_massage_tansu = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massage_tansu"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massage_tansu.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（凛子さん、綺麗だな…。[r]仕事だって分かってるのに、他の男と触れ合っているのを見ると嫉妬心が湧いて来るな…）[p]
[_tb_end_text]

[tb_eval  exp="sf.tou_massage_tansu=1"  name="tou_massage_tansu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massage_tansu=1"  name="cg_tou_massage_tansu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massage_tansu2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massage_tansu2"]
[eval exp="sf.tou_massage_tansu2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massage_tansu2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massage_tansu2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（げ…凛子さんがセクハラされてる！またあの芋おやじ…今度見つけたら警察に通報してやるからな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_massage_tansu=2"  name="com_massage_tansu"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_massage_tansu2=1"  name="tou_massage_tansu2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massage_tansu2=1"  name="cg_tou_massage_tansu2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massagepowder_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massagepowder_high"]
[eval exp="sf.tou_massagepowder_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massagepowder_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massagepowder_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（洗面台を掃除してるみたいだ。こうして見てみると、凛子さんてずっと働いてるよな…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_massagepowder_high=2"  name="com_massagepowder_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_massagepowder_high=1"  name="tou_massagepowder_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massagepowder_high=1"  name="cg_tou_massagepowder_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massagepowder_low

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massagepowder_low"]
[eval exp="sf.tou_massagepowder_low = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massagepowder_low"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massagepowder_low.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（ぉおお…っ、丸見え。普通のパンチラよりエロいんだよなぁ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_massagepowder_low=2"  name="com_massagepowder_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_massagepowder_low=1"  name="tou_massagepowder_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massagepowder_low=1"  name="cg_tou_massagepowder_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massageshower_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massageshower_high"]
[eval exp="sf.tou_massageshower_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massageshower_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massageshower_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（ん！？客専用シャワーだと思ってたけど凛子さんも利用するんだな。良い事知ったぜ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_massageshower_high=2"  name="com_massageshower_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_massageshower_high=1"  name="tou_massageshower_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massageshower_high=1"  name="cg_tou_massageshower_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*massageshower_shampoo

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_massageshower_shampoo"]
[eval exp="sf.tou_massageshower_shampoo = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_massageshower_shampoo"  ]
[bg  time="1000"  method="crossfade"  storage="tou/massageshower_shampoo.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（うわ、肉付きエロ…。こんな良い身体してたらセクハラされても仕方ない…よなぁ…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_massageshower_shampoo=2"  name="com_massageshower_shampoo"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_massageshower_shampoo=1"  name="tou_massageshower_shampoo"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_massageshower_shampoo=1"  name="cg_tou_massageshower_shampoo"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifure_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifure_high"]
[eval exp="sf.tou_rifure_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_rifure_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifure_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（メイドリフレの控室だ。生意気な子ばかりだけど、こうやって見ると…みんな可愛いな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifure_high=2"  name="com_rifure_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifure_high=1"  name="tou_rifure_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifure_high=1"  name="cg_tou_rifure_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifure_low

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifure_low"]
[eval exp="sf.tou_rifure_low = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_rifure_low"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifure_low.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（メイド達がくつろいでるな。はぁ、普段散々こき使いやがって…今日はお前らで抜いてやるからな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifure_low=2"  name="com_rifure_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifure_low=1"  name="tou_rifure_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifure_low=1"  name="cg_tou_rifure_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifurefitting_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifurefitting_high"]
[eval exp="sf.tou_rifurefitting_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_rifurefitting_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifurefitting_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（蕾が着替えてるようだ。こいつの事は基本褒めたくないんだけど…まぁ、おっぱいは良いよな…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifurefitting_high=2"  name="com_rifurefitting_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifurefitting_high=1"  name="tou_rifurefitting_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifurefitting_high=1"  name="cg_tou_rifurefitting_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifurefitting_low

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifurefitting_low"]
[eval exp="sf.tou_rifurefitting_low = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_rifurefitting_low"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifurefitting_low.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（蕾が着替えてる。性格は置いておいても、やっぱ顔とスタイルは良いんだよな…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifurefitting_low=2"  name="com_rifurefitting_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifurefitting_low=1"  name="tou_rifurefitting_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifurefitting_low=1"  name="cg_tou_rifurefitting_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifurereception_high

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifurereception_high"]
[eval exp="sf.tou_rifurereception_high = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_rifurereception_high"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifurereception_high.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（メイドが接客してるようだ。蕾か…？いや、他のメイドみたいだな）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifurereception_high=2"  name="com_rifurereception_high"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifurereception_high=1"  name="tou_rifurereception_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifurereception_high=1"  name="cg_tou_rifurereception_high"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifurereception_high2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifurereception_high2"]
[eval exp="sf.tou_rifurereception_high2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="rifurereception_high2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifurereception_high2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（げっ…！接客室でセックスしてたのこいつらかよ！誰が掃除してると思ってるんだよクソが…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifurereception_high2=2"  name="com_rifurereception_high2"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifurereception_high2=1"  name="tou_rifurereception_high2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifurereception_high2=1"  name="cg_tou_rifurereception_high2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifurereception_low

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifurereception_low"]
[eval exp="sf.tou_rifurereception_low = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="tou_rifurereception_low"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifurereception_low.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（しかし、こんなにベタベタとメイドに触れられて理性を保てるって凄いよな…俺なら無理だ）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifurereception_low=2"  name="com_rifurereception_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifurereception_low=1"  name="tou_rifurereception_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifurereception_low=1"  name="cg_tou_rifurereception_low"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*rifurereception_low2

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_rifurereception_low2"]
[eval exp="sf.tou_rifurereception_low2 = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="rifurereception_low2"  ]
[bg  time="1000"  method="crossfade"  storage="tou/rifurereception_low2.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（くそ…！リフレはそういう店じゃねぇんだよ…こいつは出禁にしてやるからな…）[p]
[_tb_end_text]

[tb_eval  exp="f.com_rifurereception_low=2"  name="com_rifurereception_low"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_rifurereception_low2=1"  name="tou_rifurereception_low2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_rifurereception_low2=1"  name="cg_tou_rifurereception_low2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*idoucam_nagi

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_pan_nagi"]
[eval exp="sf.tou_pan_nagi = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="pan_nagi"  ]
[bg  time="1000"  method="crossfade"  storage="tou/pan_nagi.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「これは…腕時計に付けたカメラだな…」[p]
[舜]「…一緒に食事したときの写真か。相変わらず隙があるというか…[r]いつどこで見られてるか分からないんだから、こんな短いスカートはやめてほしいよな」[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_idoucam_nagi=2"  name="itemEV_idoucam_nagi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_pan_nagi=1"  name="tou_pan_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_pan_nagi=1"  name="cg_tou_pan_nagi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*idoucam_rinko

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_pan_rinko"]
[eval exp="sf.tou_pan_rinko = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="pan_rinko"  ]
[bg  time="1000"  method="crossfade"  storage="tou/pan_rinko.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「これは…腕時計に付けたカメラだな…」[p]
[舜]「…一緒に食事したときの写真か。座り姿からも気品を感じるよな[r]でも、しっかり見えてるよ…ふともも柔らかそうだな…」[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_idoucam_rinko=2"  name="itemEV_idoucam_rinko"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_pan_rinko=1"  name="tou_pan_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_pan_rinko=1"  name="cg_tou_pan_rinko"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
*idoucam_tubomi

[tb_start_tyrano_code]
;回収率集計（解放時のみ）
[if exp="!sf.tou_pan_tubomi"]
[eval exp="sf.tou_pan_tubomi = true"]
[eval exp="sf.cg_count = sf.cg_count + 1"]
[eval exp="sf.cg_rate = Math.floor(sf.cg_count / 45 * 100)"]
[endif]

[_tb_end_tyrano_code]

[tb_cg  id="pan_tubomi"  ]
[bg  time="1000"  method="crossfade"  storage="tou/pan_tubomi.gif"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「これは…腕時計に付けたカメラだな…」[p]
[舜]「…一緒に食事したときの写真か。相変わらずというか、座り方まで偉そうだな[r]はっきり映ってるからな。しっかり性的搾取してやるよ」[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_idoucam_tubomi=2"  name="itemEV_idoucam_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_pan_tubomi=1"  name="tou_pan_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_pan_tubomi=1"  name="cg_tou_pan_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
