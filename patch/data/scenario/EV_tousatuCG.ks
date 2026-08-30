
[_tb_system_call storage=system/_EV_tousatuCG.ks]

*tousatu_dounyu

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（...Đây là ảnh chụp lúc đang bấm chuông gọi y tá à. Vẫn mất cảnh giác như mọi khi...）[p]
[舜]（...Ngủ với cái tư thế hớ hênh thế này thì có bị ai làm gì cũng chẳng cãi vào đâu được）[p]
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
[舜]（Ồ, bức này...! Chụp được góc đẹp thật. Biểu cảm này của Nagi, mình muốn được ngắm nhiều hơn nữa ghê）[p]
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
[舜]（...Quả nhiên Nagi dễ thương thật đấy. Để cho thằng Hayato đúng là phí của giời）[p]
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
[舜]（...Dáng vẻ ngủ say không chút phòng bị này đúng là không cưỡng lại nổi. Chỉ muốn lao vào ngay lập tức thôi）[p]
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
[舜]（Ồ, bức này...! Tuyệt phẩm! Dáng vẻ xấu hổ này của Nagi là của riêng một mình mình thôi nhé）[p]
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
[舜]（Hình như ngủ gật mất rồi... Lôi thôi thật đấy. Nhưng góc chụp này lại chuẩn phết）[p]
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
[舜]（...Phòng của Nagi mang lại cảm giác bình yên ghê. Cứ ngắm ảnh thế này thôi cũng thấy nhẹ nhõm rồi）[p]
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
[舜]（...Bức ảnh này xứng đáng lưu trữ vĩnh viễn luôn. Dáng vẻ hớ hênh của Nagi đúng là đỉnh của chóp）[p]
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
[舜]（Dễ thương quá... Mong chờ đến ngày hẹn hò ghê）[p]
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
[舜]（...Nụ cười của Nagi, quả nhiên mình thích nhất. Mình muốn biến nó thành của riêng mình）[p]
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
[舜]（...Góc này trông gợi cảm thật. Đùi của Nagi trông mềm mại ghê）[p]
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
[舜]（...Khuôn mặt khi ngủ của Nagi, mình có thể ngắm mãi không chán. Tuyệt đối không cho thằng Hayato thấy đâu）[p]
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
[舜]（...Ồ, bức này...! Biểu cảm đẹp thật. Góc khuất này của Nagi chỉ có mỗi mình biết thôi đấy）[p]
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
[舜]（...Đặt camera trong phòng Nagi đúng là quyết định chuẩn xác. Ngày nào cũng có cái để hóng）[p]
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
[舜]（...Cứ mỗi lần xem bức ảnh này là lại thấy rạo rực. Mình muốn khám phá cơ thể Nagi nhiều hơn nữa）[p]
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
[舜]（...Được độc chiếm dáng vẻ sơ hở của Nagi thế này đúng là sướng nhất trần đời. Phải sưu tập thêm thật nhiều ảnh nữa mới được）[p]
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
[舜]（Uầy... Không biết nên nhìn đi đâu nữa đây. Mà khoan, đâu việc gì phải ngại ngùng chứ. Tuyệt thật... Lộ hết toàn bộ rồi）[p]
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
[舜]（...Phòng Nagi đúng là thích thật. Chỉ cần nhìn trộm thế này thôi cũng có cảm giác như đang ở bên nhau rồi）[p]
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
[舜]（...Bức ảnh này đúng là báu vật. Dáng vẻ không chút phòng bị của Nagi, mình tuyệt đối không nhường cho ai đâu）[p]
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
[舜]（...Da dẻ mịn màng thật. Dáng ngực cũng đẹp nữa）[p]
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
[舜]（Uầy..., thế này... nhìn có được không ta? Không sao, không bị lộ thì cũng như chưa từng có chuyện gì thôi mà）[p]
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
[舜]（Một cô y tá lạ mặt đang xếp đồ. Chẳng có ai nhìn mà không thèm trốn việc một chút nào sao）[p]
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
[舜]（Chân của y tá đang lọt vào khung hình. Giá mà góc quay thấp hơn một chút nữa thì ngon）[p]
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
[舜]（Phát hiện quần lót rồi nhé. Chắc không ngờ là đang bị nhìn trộm từ góc này đâu nhỉ）[p]
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
[舜]（Nagi đang nói chuyện với các y tá khác.[r]Hồi xưa con bé này nhút nhát lắm cơ mà... Giờ cũng hòa đồng ghê. Hay là chỉ đang cố gượng ép để hòa nhập thôi nhỉ）[p]
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
[舜]（Uầy... Góc quay đẹp quá! Mình tự phục tài phán đoán của mình luôn đấy）[p]
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
[舜]（Nagi và các y tá khác đang thay đồ... Quả nhiên Nagi vẫn là dễ thương nhất）[p]
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
[舜]（Lộ hết rồi còn gì. Chẳng biết lúc nào ở đâu có người nhìn trộm đâu, đi vệ sinh mà mất cảnh giác thế này là không được rồi...）[p]
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
[舜]（Ồ, bức ảnh tuyệt nhất luôn! Chắc chẳng ai ngờ đến cả nhà vệ sinh của nhân viên cũng bị nhìn trộm thế này đâu nhỉ...）[p]
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
[舜]（Cô Rinko đang làm việc. Ở riêng một phòng kín với một gã đàn ông cởi trần... tính ra nguy hiểm thật đấy chứ）[p]
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
[舜]（Cô Rinko đẹp thật đấy...[r]Biết là công việc rồi nhưng nhìn cô ấy tiếp xúc cơ thể với người đàn ông khác lại thấy ghen tuông trào dâng...）[p]
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
[舜]（Ặc... Cô Rinko đang bị quấy rối tình dục kìa! Lại là lão già quê mùa đó... Lần tới mà bắt gặp là tôi báo cảnh sát cho xem）[p]
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
[舜]（Hình như đang dọn dẹp bồn rửa mặt. Nhìn thế này mới thấy cô Rinko làm việc quần quật suốt ngày...）[p]
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
[舜]（Ồ... Lộ hết rồi. Trông còn kích thích hơn cả mấy pha lộ quần lót thông thường nữa chứ）[p]
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
[舜]（Hử!? Cứ tưởng là vòi sen chỉ dành cho khách, hóa ra cô Rinko cũng dùng à. Biết được tin hời rồi nhé）[p]
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
[舜]（Uầy, body gợi tình dã man... Thân hình đẫy đà quyến rũ thế này bị người ta quấy rối cũng chẳng trách được...）[p]
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
[舜]（Phòng nghỉ của tiệm Maid Refre đây rồi. Toàn mấy đứa nhóc xấc xược nhưng nhìn kỹ thế này thì... đứa nào cũng dễ thương ghê）[p]
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
[舜]（Mấy em maid đang nghỉ ngơi thư giãn kìa. Hừ, bình thường đày đọa sai bảo tao cho lắm vào... Tối nay tao sẽ dùng hình ảnh của tụi mày để sóc lọ cho coi）[p]
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
[舜]（Hình như Tsubomi đang thay đồ. Bình thường chẳng muốn khen con bé này đâu nhưng mà... công nhận ngực em nó đẹp thật...）[p]
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
[舜]（Tsubomi đang thay đồ. Tạm gác cái tính khí sang một bên thì khuôn mặt với vóc dáng của em ấy đúng là đỉnh thật...）[p]
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
[舜]（Có em maid đang tiếp khách kìa. Tsubomi sao...? Không, hình như là bạn maid khác）[p]
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
[舜]（Ặc...! Làm tình ngay trong phòng tiếp khách là tụi này đấy à! Có biết ai là người phải dọn dẹp không hả lũ khốn nạn...）[p]
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
[舜]（Nhưng mà, bị gái maid sờ soạng đụng chạm dính người thế này mà vẫn giữ được lý trí thì cũng nể thật... Là mình thì chịu chết）[p]
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
[舜]（Chết tiệt...! Tiệm Refre đâu phải là cái loại quán đó đâu... Thằng này tao phải cấm cửa vĩnh viễn mới được...）[p]
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
[舜]「Đây là... máy quay gắn trên đồng hồ đeo tay nhỉ...」[p]
[舜]「...Bức ảnh chụp lúc đi ăn cùng nhau à. Vẫn sơ hở như mọi khi... Chẳng biết sẽ bị nhìn trộm ở đâu và lúc nào đâu, nên tốt nhất là đừng mặc váy ngắn thế này nữa chứ」[p]
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
[舜]「Đây là... máy quay gắn trên đồng hồ đeo tay nhỉ...」[p]
[舜]「...Bức ảnh chụp lúc đi ăn cùng nhau à. Dáng ngồi toát lên vẻ quý phái ghê[r]Nhưng mà nhìn rõ mồn một luôn này... Cặp đùi trông mềm mại quyến rũ thật...」[p]
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
[舜]「Đây là... máy quay gắn trên đồng hồ đeo tay nhỉ...」[p]
[舜]「...Bức ảnh chụp lúc đi ăn cùng nhau à. Đúng là cái tính không đổi, đến cả tướng ngồi cũng ra vẻ kênh kiệu thế này[r]Hiện lên rõ nét thế này thì tha hồ mà thưởng thức nhé」[p]
[_tb_end_text]

[tb_eval  exp="f.itemEV_idoucam_tubomi=2"  name="itemEV_idoucam_tubomi"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="sf.tou_pan_tubomi=1"  name="tou_pan_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.cg_tou_pan_tubomi=1"  name="cg_tou_pan_tubomi"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="EV_tousatuCG.ks"  target="*hanbai"  ]
