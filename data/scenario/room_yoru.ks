[_tb_system_call storage=system/_room_yoru.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_eval  exp="f.money_updated+=5000"  name="money_updated"  cmd="+="  op="t"  val="5000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;宝くじEV（日曜の夜限定）
[if exp="f.sun == 1 && f.takarakuji >= 1"]
[call storage="room_Sunday.ks" target="*takarakuji"]
[endif]

;EV_鍵を複製する(OP)
[if exp="f.EV_hatukinmu_nagi == 2"]
[call storage="EV_sigoto.ks" target="*top_byouin2"]

;EV_ステータスの試練2(隼人)
[elsif exp="f.EV_status_hayato == 1"]
[call storage="EV_status.ks" target="*hayato2"]
[endif]

;アイテムイベントの発生★
;Thuốc ngủ
[if exp="f.itemEV_suimin == 1"]
[jump storage="EV_item_suimin.ks" target="*top"]

;Thuốc kích dục1
[elsif exp="f.itemEV_biyaku == 1"]
[call storage="EV_item_biyaku.ks" target="*top"]

;Thuốc kích dục2
[elsif exp="f.itemEV_biyaku2 == 1"]
[call storage="EV_item_biyaku2.ks" target="*top"]

;Thuốc kích dục3
[elsif exp="f.itemEV_biyakucream3 == 1"]
[call storage="EV_item_biyaku3.ks" target="*top"]

;隼人から宣戦布告
[elsif exp="f.EV_kenka == 2 && f.hayato_sensenhukoku == 0"]
[call storage="EV_nagi3.ks" target="*TOP_hayato"]

;凪_隼人からプロポーズされる（EV4）
[elsif exp="f.koukando_nagi >= 25 && f.EV_nagi3 == 0 && f.kankei >= 20"]
[jump storage="EV_nagi3.ks" target="*top"]

;EV_告白（蕾）土曜日に発生
[elsif exp="f.koukando_tubomi >= 30 && f.koukando_tubomi_koibito == 0 && f.koukando_tubomi_huru == 0 && f.sat == 1"]
[jump storage="EV_kokuhaku_tubomi.ks" target="*top"]
;EV_告白（蕾）土曜日に発生※既にハーレム状態の場合好感度25以上で発生
[elsif exp="f.koukando_tubomi >= 25 && f.koukando_tubomi_koibito == 0 && f.koukando_tubomi_huru == 0 && f.sat == 1 && f.koukando_nagi_koibito == 1  && f.koukando_rinko_koibito == 1"]
[jump storage="EV_kokuhaku_tubomi.ks" target="*top"]
[endif]

; EV_凪＿復讐（メンヘラ）END
; 凪の告白を断っている、コミュ評価が「軽蔑」
[if exp="f.menheraBAD == 1 && f.kan_keibetu_nagi == 1"]
[jump storage="EV_hukusyuEND_nagi.ks" target="*top"]
[endif]

; EV_復讐（隼人）
; 隼人と「親友」状態以外で発生、凪が恋人状態、8月の最後の日に発生
[if exp="f.kan_sinyuu_hayato == 0 && f.koukando_nagi_koibito == 1 && f.month == 8 && f.week == 4 && f.sun == 1"]
[call storage="EV_hukusyu_hayato.ks" target="*top"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;EV_盗撮★
;凪宅_リビング（天井）
[if exp="f.com_Living_high == 1 && f.cg_tou_Living_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（リビング）電話（飯）
[if exp="f.com_Living_denwa == 1 && f.cg_tou_Living_denwa == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（リビング）電話（飲み物）
[if exp="f.com_Living_denwa == 1 && f.cg_tou_Living_denwa2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（凪部屋）コンセント①
[if exp="f.com_nagiroom_konsento == 1 && f.cg_tou_nagiroom_konsento == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（凪部屋）PC
[if exp="f.com_nagiroom_pc == 1 && f.cg_tou_nagiroom_pc == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（凪部屋）火災報知器①
[if exp="f.com_nagiroom_tansu == 1 && f.cg_tou_nagiroom_tansu == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（凪部屋）火災報知器②※凪好感度25以上
[if exp="f.com_nagiroom_tansu == 2 && f.cg_tou_nagiroom_tansu2 == 0 && f.koukando_nagi >= 2"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（洗面所）鏡（脱衣中）
[if exp="f.com_senmenjyo_kagami == 1 && f.cg_tou_senmenjyo_kagami == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（洗面所）鏡②（アメニティ交換）
[if exp="f.com_senmenjyo_kagami == 1 && f.cg_tou_senmenjyo_kagami2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（洗面所）コンセント（脱衣中）
[if exp="f.com_senmenjyo_konsento == 1 && f.cg_tou_senmenjyo_konsento == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（洗面所）コンセント②（アメニティ交換）
[if exp="f.com_senmenjyo_konsento == 1 && f.cg_tou_senmenjyo_konsento2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（洗面所）洗濯機（脱衣中）
[if exp="f.com_senmenjyo_sentakuki == 1 && f.cg_tou_senmenjyo_sentakuki == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（洗面所）洗濯機②（アメニティ交換）
[if exp="f.com_senmenjyo_sentakuki == 1 && f.cg_tou_senmenjyo_sentakuki2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（トイレ）ドア
[if exp="f.com_toilet_door == 1 && f.cg_tou_toilet_door == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（トイレ）便器
[if exp="f.com_toilet_seat == 1 && f.cg_tou_toilet_seat == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（風呂）換気（洗い）
[if exp="f.com_huro_kanki == 1 && f.cg_tou_huro_kanki == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（風呂）換気②（浴槽）
[if exp="f.com_huro_kanki == 1 && f.cg_tou_huro_kanki2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（風呂）窓（浴槽）
[if exp="f.com_huro_mado == 1 && f.cg_tou_huro_mado == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（風呂）浴槽（洗い）
[if exp="f.com_huro_yokusou == 1 && f.cg_tou_huro_yokusou == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;凪宅（和室）
[if exp="f.com_wasitu_denki == 1"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院
;病院（裏）上
[if exp="f.com_hospital_high == 1 && f.cg_tou_hospital_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（裏）下
[if exp="f.com_hospital_low == 1 && f.cg_tou_hospital_low == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（裏）下2
[if exp="f.com_hospital_low == 1 && f.cg_tou_hospital_low2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（ロッカー）上
[if exp="f.com_hospitallocker_high == 1 && f.cg_tou_hospitallocker_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（ロッカー）下
[if exp="f.com_hospitallocker_low == 1 && f.cg_tou_hospitallocker_low == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（ロッカー）凪ロッカー
[if exp="f.com_hospitallocker_nagirocker == 1 && f.cg_tou_hospitallocker_nagirocker == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（トイレ）上
[if exp="f.com_hospitaltoilet_holder == 1 && f.cg_tou_hospitaltoilet_holder == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;病院（トイレ）下
[if exp="f.com_hospitaltoilet_seat == 1 && f.cg_tou_hospitaltoilet_seat == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店
;マッサージ店（施術室）上
[if exp="f.com_massage_high == 1 && f.cg_tou_massage_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店（施術室）タンス
[if exp="f.com_massage_tansu == 1 && f.cg_tou_massage_tansu == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店（施術室）タンス2
[if exp="f.com_massage_tansu == 1 && f.cg_tou_massage_tansu2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店（洗面所）上
[if exp="f.com_massagepowder_high == 1 && f.cg_tou_massagepowder_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店（洗面所）下
[if exp="f.com_massagepowder_low == 1 && f.cg_tou_massagepowder_low == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店（シャワールーム）上
[if exp="f.com_massageshower_high == 1 && f.cg_tou_massageshower_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;マッサージ店（シャワールーム）シャンプー
[if exp="f.com_massageshower_shampoo == 1 && f.cg_tou_massageshower_shampoo == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ
;リフレ（控室）上
[if exp="f.com_rifure_high == 1 && f.cg_tou_rifure_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（控室）下
[if exp="f.com_rifure_low == 1 && f.cg_tou_rifure_low == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（更衣室）上
[if exp="f.com_rifurefitting_high == 1 && f.cg_tou_rifurefitting_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（更衣室）下
[if exp="f.com_rifurefitting_low == 1 && f.cg_tou_rifurefitting_low == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（接客室）上
[if exp="f.com_rifurereception_high == 1 && f.cg_tou_rifurereception_high == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（接客室）上2
[if exp="f.com_rifurereception_high == 2 && f.cg_tou_rifurereception_high2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（接客室）下
[if exp="f.com_rifurereception_low == 1 && f.cg_tou_rifurereception_low == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;リフレ（接客室）下2
[if exp="f.com_rifurereception_low == 2 && f.cg_tou_rifurereception_low2 == 0"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;腕時計型カメラ（凪）
[if exp="f.itemEV_idoucam_nagi == 1"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;腕時計型カメラ（凛子）
[if exp="f.itemEV_idoucam_rinko == 1"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

;腕時計型カメラ（蕾）
[if exp="f.itemEV_idoucam_tubomi == 1"]
[jump storage="EV_tousatuCG.ks" target="*tousatu_dounyu"]
[endif]

[_tb_end_tyrano_code]

*pro_back

[call  storage="system.ks"  target="*fade_in"  ]
[stopbgm  time="500"  fadeout="true"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[cm  ]
[tb_hide_message_window  ]
[bg  time="0"  method="crossfade"  storage="UI_menu_BG.png"  ]
[call  storage="room_yoru_kankei.ks"  target="*top"  ]
[playbgm  volume="100"  time="3000"  loop="true"  storage="yoru.mp3"  fadein="true"  ]
[call  storage="system.ks"  target="*fade_out"  ]
*top2

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;ボタン表示
;録画の確認
[button target=*rokuga enterimg="../fgimage/default/UI_menu_rokuga.png" clickimg="../fgimage/default/UI_menu_rokuga.png" x=0 y=144 graphic="../fgimage/default/UI_menu_rokuga_off.png" name="yoru_icon"]

;プロフィール
[button target=*profile enterimg="../fgimage/default/UI_menu_rprofile.png" clickimg="../fgimage/default/UI_menu_rprofile.png" x=0 y=224 graphic="../fgimage/default/UI_menu_rprofile_off.png" name="yoru_icon"]

;セーブ
[button target=*save enterimg="../fgimage/default/UI_menu_save.png" clickimg="../fgimage/default/UI_menu_save.png" x=0 y=296 graphic="../fgimage/default/UI_menu_save_off.png" name="yoru_icon"]

;休む
[button target=*yasumu enterimg="../fgimage/default/UI_menu_rest.png" clickimg="../fgimage/default/UI_menu_rest.png" x=0 y=376 graphic="../fgimage/default/UI_menu_rest_off.png" name="yoru_icon"]


[anim name="yoru_icon" opacity=0 time=0]
[anim name="yoru_icon" opacity=255 time=300]

[_tb_end_tyrano_code]

[s  ]
*rokuga

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[chara_hide  name="kankei"  time="0"  wait="true"  pos_mode="false"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[call  storage="CG_tou_complete.ks"  target="*top"  ]
[jump  storage="CG_tou.ks"  target=""  ]
*rokuga_back

[call  storage="system.ks"  target="*fade_in"  ]
[tb_clear_images]

[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="UI_menu_BG.png"  ]
[call  storage="room_yoru_kankei.ks"  target="*top"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[jump  storage="room_yoru.ks"  target="*top2"  ]
*profile

[cm  ]
[jump  storage="profile_nagi.ks"  target="*top"  ]
[jump  storage="room_yoru.ks"  target="*top2"  ]
*save

[jump  storage="room_yoru_save.ks"  target="*top"  ]
*yasumu

[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「Chuẩn bị đi ngủ thôi.」[p]
[font color="yellow"]Chỉ số hưng phấn đã giảm nhẹ[resetfont][p]

[_tb_end_text]

[call  storage="system.ks"  target="*stop_keyconfig"  ]
[tb_start_tyrano_code]
;テンションが10以上の場合10に固定する
[if exp="f.tension > 10 "]
[eval exp="f.tension = 10 "]
[endif]

;テンションを1下げる
[eval exp="f.tension = f.tension - 1 "]

;テンションが0かマイナスの場合は0に固定する
[if exp="f.tension <= 0"]
[eval exp="f.tension = 0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*tension_reset"  ]
[call  storage="system.ks"  target="*start_keyconfig"  ]
[tb_start_tyrano_code]
;トラップリアクション
;リビング（冷蔵庫）
[if exp="f.trap_reizouko == 1"]
[call storage="EV_trap_reaction.ks" target="*milk"]

;凪の部屋（タンス）
[elsif exp="f.trap_tansu == 1"]
[call storage="EV_trap_reaction.ks" target="*tansu"]

;凪の部屋（枕）
[elsif exp="f.trap_makura == 1"]
[call storage="EV_trap_reaction.ks" target="*makura"]

;凪の部屋（洗濯機）
[elsif exp="f.trap_sentaku == 1"]
[call storage="EV_trap_reaction.ks" target="*sentakuki_sitagi"]

;凪の部屋（洗濯かご機）
[elsif exp="f.trap_sentakukago == 1"]
[call storage="EV_trap_reaction.ks" target="*sentakukago_pansuto"]

;凪の部屋（風呂）
[elsif exp="f.trap_huro == 1"]
[call storage="EV_trap_reaction.ks" target="*huro_isu"]

;凪の部屋（和室_隼人の服）
[elsif exp="f.trap_hayatohuku == 1"]
[call storage="EV_trap_reaction.ks" target="*hoodie"]

;凪の部屋（和室_隼人の私物＿レシート）
[elsif exp="f.trap_hayatosibutu == 1"]
[call storage="EV_trap_reaction.ks" target="*gomibako"]

;凪の部屋（和室_ゴミ箱＿コンドーム）
[elsif exp="f.trap_gomibako == 1"]
[call storage="EV_trap_reaction.ks" target="*gomibako2"]

[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;凪と隼人の喧嘩
;2回目
[if exp="f.EV_kenka == 1 && f.kankei >= 20"]
[call storage="EV_trap_reaction_kenka.ks" target="*kenka1"]
[endif]

;3回目
[if exp="f.EV_kenka == 2 && f.kankei >= 30"]
[call storage="EV_trap_reaction_kenka.ks" target="*kenka2"]
[endif]

;思い出のかけら(8こ以上で発生
[if exp="f.omoide_para >= 8 && f.omoideEV == 0"]
[call storage="EV_omoidenokakera.ks" target="*top1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*fade_in"  ]
[tb_start_tyrano_code]
;週変更
;日曜日にweek＋１
[if exp="f.sun == 1"]
[eval exp="f.week += 1"]
[endif]

;weekが5の場合は月変更、weekに1を代入
[if exp="f.week == 5"]
[eval exp="f.month += 1"]
[eval exp="f.week = 1"]
[endif]

;曜日変更
;月⇒火
[if exp="f.mon == 1"]
[eval exp="f.mon = 0"]
[eval exp="f.tue = 1"]
[jump target="*end"]
[endif]

;火⇒水
[if exp="f.tue == 1"]
[eval exp="f.tue = 0"]
[eval exp="f.wed = 1"]
[jump target="*end"]
[endif]

;水⇒木
[if exp="f.wed == 1"]
[eval exp="f.wed = 0"]
[eval exp="f.thu = 1"]
[jump target="*end"]
[endif]

;木⇒金
[if exp="f.thu == 1"]
[eval exp="f.thu = 0"]
[eval exp="f.fri = 1"]
[jump target="*end"]
[endif]

;金⇒土
[if exp="f.fri == 1"]
[eval exp="f.fri = 0"]
[eval exp="f.sat = 1"]
[jump target="*end"]
[endif]

;土⇒日
[if exp="f.sat == 1"]
[eval exp="f.sat = 0"]
[eval exp="f.sun = 1"]
[jump target="*end"]
[endif]

;日⇒月
[if exp="f.sun == 1"]
[eval exp="f.sun = 0"]
[eval exp="f.mon = 1"]
[jump target="*end"]
[endif]

*end
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[call  storage="ui_base.ks"  target="*top"  ]
[call  storage="ui_month.ks"  target="*top"  ]
[chara_hide  name="kankei"  time="0"  wait="true"  pos_mode="false"  ]
[tb_clear_images]

[bg  time="0"  method="crossfade"  storage="back_room.png"  ]
[tb_start_tyrano_code]
;体験版/6月末まで/EV3まで
[if exp="f.month == 6 && f.week == 3 && f.taikenban == 1 "]
[jump storage="a_taikenban.ks" target="*END_taikenban"]
[endif]

;9月1日にエンディングにジャンプ
[if exp="f.month == 9 && f.week == 1 && f.mon == 1"]
[jump target="*END"]
[endif]
[_tb_end_tyrano_code]

[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[舜]「Tốt rồi, mình đã ngủ một giấc thật ngon.」[p]
[_tb_end_text]

[tb_start_tyrano_code]
;一カ月前告知(8月1週月曜日に発生)
[if exp="f.month == 8 && f.week == 1 && f.mon == 1"]
[call target="*1month_left"]
[endif]

;凪と隼人の喧嘩
;1回目
[if exp="f.EV_kenka == 0 && f.kankei >= 10"]
[call storage="EV_trap_reaction_kenka.ks" target="*husin"]

;EV_スピリタスカプセル追加EV（凪）
[elsif exp="f.itemEV_supiritasu_nagi == 1"]
[call storage="EV_item_Spirytus_nagi.ks" target="*top2"]

;EV_スピリタスカプセル追加EV（凛子）
[elsif exp="f.itemEV_supiritasu_rinko == 1"]
[call storage="EV_item_Spirytus_rinko.ks" target="*top2"]

;EV_スピリタスカプセル追加EV（蕾）
[elsif exp="f.itemEV_supiritasu_tubomi == 1"]
[call storage="EV_item_Spirytus_tubomi.ks" target="*top2"]

;EV_告白（凪）土曜日に発生
[elsif exp="f.koukando_nagi >= 30 && f.koukando_nagi_koibito == 0 && f.kankei >= 30 && f.EV_nagi3 == 1 && f.koukando_nagi_huru == 0 && f.sat == 1"]
[jump storage="EV_kokuhaku_nagi.ks" target="*top"]
;EV_告白（凪）土曜日に発生※既にハーレム状態の場合好感度25以上で発生
[elsif exp="f.koukando_nagi >= 25 && f.koukando_nagi_koibito == 0 && f.kankei >= 30 && f.EV_nagi3 == 1 && f.koukando_nagi_huru == 0 && f.sat == 1 && f.koukando_tubomi_koibito == 1 && f.koukando_rinko_koibito == 1"]
[jump storage="EV_kokuhaku_nagi.ks" target="*top"]

;EV_告白（凛子）土曜日に発生
[elsif exp="f.koukando_rinko >= 30 && f.koukando_rinko_koibito == 0 && f.koukando_rinko_huru == 0 && f.sat == 1"]
[jump storage="EV_kokuhaku_rinko.ks" target="*top"]
;EV_告白（凛子）土曜日に発生※既にハーレム状態の場合好感度25以上で発生
[elsif exp="f.koukando_rinko >= 25 && f.koukando_rinko_koibito == 0 && f.koukando_rinko_huru == 0 && f.sat == 1 && f.koukando_nagi_koibito == 1 && f.koukando_tubomi_koibito == 1"]
[jump storage="EV_kokuhaku_rinko.ks" target="*top"]

;EV_ステータスの試練1(隼人)6月2週金曜日に発生
[elsif exp="f.month == 6 && f.week == 2 && f.fri == 1 && f.EV_status_hayato == 0"]
[call storage="EV_status.ks" target="*hayato"]

;EV_ステータスの試練2(蕾)7月1週金曜日に発生※リフレに一度も勤務していない場合は発生しない
[elsif exp="f.month == 7 && f.week == 1 && f.fri == 1 && f.EV_status_tubomi == 0 && f.EV_hatukinmu_tubomi == 2"]
[jump storage="EV_status.ks" target="*tubomi"]

;EV_ステータスの試練3(凛子)7月4週水曜日に発生
[elsif exp="f.month == 7 && f.week == 4 && f.wed == 1 && f.EV_status_rinko == 0"]
[jump storage="EV_status.ks" target="*rinko"]

;EV_ステータスの試練4(凪)8月1週月曜日に発生
[elsif exp="f.month == 8 && f.week == 1 && f.mon == 1 && f.EV_status_nagi == 0"]
[jump storage="EV_status.ks" target="*nagi"]

[endif]

;EV_初勤務(凪)未発生の場合自動発生(6月2週月曜日に発生)
[if exp="f.month == 6 && f.week == 2 && f.mon == 1 && f.EV_hatukinmu_nagi == 0"]
[jump storage="job_seisou.ks" target="*top0"]
[endif]

;EV_鍵の発見(凪)未発生の場合自動発生(6月3週火曜日に発生)
[if exp="f.month == 6 && f.week == 3 && f.tue == 1 && f.EV_hatukinmu_nagi == 1"]
[eval exp="f.job_seisou_count = 3"]
[jump storage="job_seisou.ks" target="*top0"]
[endif]

;EV_初侵入未発生の場合自動発生(6月4週火曜日に発生)
[if exp="f.month == 6 && f.week == 4 && f.tue == 1 && f.sinnyu_hajimete == 1"]
[jump storage="sinnyu.ks" target="*top"]
[endif]

;EV_リフレでの出会い(蕾)未発生の場合自動発生(6月1週土曜日に発生)
[if exp="f.month == 6 && f.week == 1 && f.sat == 1 && f.EV_hatukinmu_tubomi == 0"]
[jump storage="job_kateikyousi.ks" target="*top0"]
[endif]

;EV_初勤務(凛子)未発生の場合自動発生(6月2週土曜日に発生)
[if exp="f.month == 6 && f.week == 2 && f.sat == 1 && f.EV_hatukinmu_rinko == 0"]
[jump storage="job_massaji.ks" target="*top0"]
[endif]



[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;BADEND【訪問者】
;警戒度が20以上でジャンプ
[if exp="f.keikaido >= 20"]
[jump storage="EV_BADEND_houmon.ks" target="*top"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;日曜日の場合room_sundayにジャンプ
[if exp="f.sun == 1 "]
[jump storage="room_Sunday.ks" target="*top"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="room_asa.ks"  target="*top"  ]
[s  ]
*1month_left

[tb_start_text mode=1 ]
[舜]「Nhắc mới nhớ, hôm nay đã là tháng 8 rồi à.」[p]
[舜]「[font color="yellow"]Để đạt được mục tiêu thì chỉ còn khoảng 1 tháng nữa thôi.[resetfont][r]Phải cố gắng để không phải hối tiếc mới được.」[p]
[_tb_end_text]

[return  ]
*END

[call  storage="system.ks"  target="*fade_in"  ]
[call  storage="ui_onoff.ks"  target="*UI_off"  ]
[bg  time="0"  method="crossfade"  storage="sora.jpg"  ]
[call  storage="system.ks"  target="*fade_out"  ]
[tb_start_text mode=1 ]
[舜]「......Vậy là hôm nay đã hết tháng 8 rồi sao......」[p]
Qua lớp cửa lưới, cơn gió đêm vẫn còn vương chút hơi nóng của ban ngày khẽ mơn trớn đôi má tôi.[p]
Nghĩ lại thì, mùa hè này đã xảy ra biết bao nhiêu chuyện.[p]
Có những chuyện suôn sẻ, cũng có những ngày tôi chỉ muốn vứt bỏ tất cả.[r]Cũng không ít lần tôi nhận ra sự non nớt của bản thân.[p]
Dù vậy, tôi cảm thấy mình đã tiến bộ hơn đôi chút so với bản thân trước đây.[r]Chỉ cần nghĩ được như vậy thì chắc chắn những gì tôi đã làm không hề vô ích.[p]
Trong lúc miên man suy nghĩ, tôi từ từ nhắm mắt lại.[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="2000"  ]
[tb_start_text mode=1 ]
―――Vài tháng sau[p]
[_tb_end_text]

[tb_start_tyrano_code]
;スキップを停止する
[cancelskip]

;■凪■=========================================================
;凪＿純愛トゥルーEND
;隼人との関係が険悪、凪と恋人、勇気と気配りが100以上、凪が本命、コミュ評価が「運命の人」、指輪を所持している
[if exp="f.kankei >= 30 && f.koukando_nagi_koibito == 1 && f.para_yuuki_display >= 100 && f.para_kikubari_display >= 100 && f.puro_kuria_nagi4 == 1 && f.kan_unmeinohito_nagi == 1 && f.item_yubiwa == 1"]
[jump storage="EV_TrueEND_nagi.ks"  target="*top" ]
[endif]

;凪＿純愛END
;隼人との関係が険悪、凪と恋人、勇気と気配りが100以上、凪が本命、コミュ評価が「運命の人」
[if exp="f.kankei >= 30 && f.koukando_nagi_koibito == 1 && f.para_yuuki_display >= 100 && f.para_kikubari_display >= 100 && f.puro_kuria_nagi4 == 1 && f.kan_unmeinohito_nagi == 1"]
[jump storage="EV_jyunaiEND_nagi.ks"  target="*top" ]
[endif]

;凪＿狂愛END
;凪と恋人、勇気と気配りが100以上、凪が本命、コミュ評価が「狂愛」
[if exp="f.koukando_nagi_koibito == 1 && f.para_yuuki_display >= 100 && f.para_kikubari_display >= 100 && f.puro_kuria_nagi4 == 1 && f.kan_kyouai_nagi == 1"]
[jump storage="EV_kyouaiEND_nagi.ks"  target="*top" ]
[endif]

;凪＿肉便器END
;隼人との関係が険悪、凪と恋人、勇気と気配りが100以上、凪が本命、コミュ評価が「肉便器」
[if exp="f.kankei >= 30 && f.koukando_nagi_koibito == 1 && f.para_yuuki_display >= 100 && f.para_kikubari_display >= 100 && f.puro_kuria_nagi4 == 1 && f.kan_nikubenki_nagi == 1"]
[jump storage="EV_nikubenkiEND_nagi.ks"  target="*top" ]
[endif]

;ハーレムEND
;凪と恋人、凛子と恋人、蕾と恋人、勇気と気配りとコミュ力と賢さと筋力と体力が120以上、誰も本命ではない
[if exp="f.koukando_nagi_koibito == 1 && f.koukando_rinko_koibito == 1 && f.koukando_tubomi_koibito == 1 && f.para_yuuki_display >= 120 && f.para_kikubari_display >= 120 && f.para_komyu_display >= 120 && f.para_kasikosa_display >= 120 && f.para_kinryoku_display >= 120 && f.para_taityou_display >= 120 && f.puro_kuria_nagi4 == 0 && f.puro_kuria_rinko3 == 0 && f.puro_kuria_tubomi3 == 0"]
[jump storage="EV_haremEND.ks"  target="*top" ]
[endif]

;■凛子＆蕾■=========================================================
;凛子&蕾＿肉便器END
;親子丼３Pをしている、誰も本命ではない、凛子のコミュ評価が「肉便器」、蕾のコミュ評価が「肉便器」
[if exp="f.EV_3P == 1 && f.puro_kuria_nagi4 == 0 && f.puro_kuria_rinko3 == 0 && f.puro_kuria_tubomi3 == 0 && f.kan_nikubenki_rinko == 1 && f.kan_nikubenki_tubomi == 1"]
[jump storage="EV_nikubenkiEND_rinko_tubomi.ks"  target="*top" ]
[endif]

;■凛子■=========================================================
;凛子＿純愛END
;凛子と恋人、筋力と気配りが100以上、凛子が本命、コミュ評価が「運命の人」
[if exp="f.koukando_rinko_koibito == 1 && f.para_kinryoku_display >= 100 && f.para_kikubari_display >= 100 && f.puro_kuria_rinko3 == 1 && f.kan_unmeinohito_rinko == 1"]
[jump storage="EV_jyunaiEND_rinko.ks"  target="*top" ]
[endif]

;凛子＿狂愛END
;凛子と恋人、筋力と気配りが100以上、凛子が本命、コミュ評価が「狂愛」
[if exp="f.koukando_rinko_koibito == 1 && f.para_kinryoku_display >= 100 && f.para_kikubari_display >= 100 && f.puro_kuria_rinko3 == 1 && f.kan_kyouai_rinko == 1"]
[jump storage="EV_kyouaiEND_rinko.ks"  target="*top" ]
[endif]

;■蕾■=========================================================
;蕾＿純愛END
;蕾と恋人、賢さとコミュ力が100以上、蕾が本命、コミュ評価が「運命の人」
[if exp="f.koukando_tubomi_koibito == 1 && f.para_kasikosa_display >= 100 && f.para_komyu_display >= 100 && f.puro_kuria_tubomi3 == 1 && f.kan_unmeinohito_tubomi == 1"]
[jump storage="EV_jyunaiEND_tubomi.ks"  target="*top" ]
[endif]

;蕾＿狂愛END
;蕾と恋人、賢さとコミュ力が100以上、蕾が本命、コミュ評価が「狂愛」
[if exp="f.koukando_tubomi_koibito == 1 && f.para_kasikosa_display >= 100 && f.para_komyu_display >= 100 && f.puro_kuria_tubomi3 == 1 && f.kan_kyouai_tubomi == 1"]
[jump storage="EV_kyouaiEND_tubomi.ks"  target="*top" ]
[endif]

;■隼人■=========================================================
;隼人＿友情END
;隼人と親友、誰とも恋人状態ではない
[if exp="f.kan_sinyuu_hayato == 1 && f.koukando_nagi_koibito == 0 && f.koukando_rinko_koibito == 0 && f.koukando_tubomi_koibito == 0"]
[jump storage="EV_yuujyouEND_hayato.ks"  target="*top" ]
[endif]

;■BADEND■=========================================================
;複数と付き合っているがクリア条件を満たしていない
[if exp="(f.koukando_nagi_koibito + f.koukando_rinko_koibito + f.koukando_tubomi_koibito) >= 2"]
[jump storage="EV_BADEND_nagi.ks" target="*top2"]
[endif]

;凪＿BADEND
;凪と恋人or凪が本命で、クリア条件を満たしていない
[if exp="f.koukando_nagi_koibito == 1 || f.puro_kuria_nagi4 == 1"]
[jump storage="EV_BADEND_nagi.ks"  target="*top" ]
[endif]

;凛子＿BADEND
;凛子と恋人or凛子が本命で、クリア条件を満たしていない
[if exp="f.koukando_rinko_koibito == 1 || f.puro_kuria_rinko3 == 1"]
[jump storage="EV_BADEND_rinko.ks"  target="*top" ]
[endif]

;蕾＿BADEND
;蕾と恋人or蕾が本命で、クリア条件を満たしていない
[if exp="f.koukando_tubomi_koibito == 1 || f.puro_kuria_tubomi3 == 1"]
[jump storage="EV_BADEND_tubomi.ks"  target="*top" ]
[endif]

;隼人＿寝取られBADEND
;いずれの条件も満たさない
[jump storage="EV_BADEND_hayato.ks"  target="*top" ]

[_tb_end_tyrano_code]