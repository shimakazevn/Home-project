[_tb_system_call storage=system/_sansaku_kaimono1.ks]

[tb_start_tyrano_code]
[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[call  storage="ui_onoff.ks"  target="*UI_on"  ]
[tb_eval  exp="f.money_updated+=100000"  name="money_updated"  cmd="+="  op="t"  val="100000"  val_2="undefined"  ]
[call  storage="ui_parameter.ks"  target="*money_update"  ]
*top

[call  storage="system.ks"  target="*fade_in"  ]
[chara_hide  name="sansaku_nagi"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_hayato"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_rinko"  time="0"  wait="false"  pos_mode="false"  ]
[chara_hide  name="sansaku_tubomi"  time="0"  wait="false"  pos_mode="false"  ]
[bg  time="0"  method="crossfade"  storage="back_kaimono1.png"  ]
[tb_show_message_window  ]
[call  storage="system.ks"  target="*fade_out"  ]
[tb_start_text mode=1 ]
[舜]「Chà, mát mẻ thật. Giờ thì đi dạo loanh quanh một chút xem sao.」[p]
[_tb_end_text]

*kaden

[call  storage="system.ks"  target="*fade_in_effect"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_kaimono1.png"  ]
[tb_start_tyrano_code]
;ベース表示
[freeimage layer="2" time="0"]
[image layer="2" x="64" y="56" storage="default/shop_base_kaden.png" time="0" ]

;Sold outの表示
;カメラ
[if exp="f.item_com_s== 25 "]
[image layer="2" x="120" y="152" storage="default/soldout.png" time="0" ]
[endif]
;防水カメラ
[if exp="f.item_com_bousui_s== 7 "]
[image layer="2" x="384" y="152" storage="default/soldout.png" time="0" ]
[endif]
;移動用小型カメラ
[if exp="f.item_com_idou_s== 1 "]
[image layer="2" x="648" y="152" storage="default/soldout.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;所持数_家電
;盗撮用小型カメラ
[tb_ptext_show  x="288"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_com"  edge="undefined"  shadow="undefined"  ]

;防水小型カメラ
[tb_ptext_show  x="550"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="607"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_com_bousui"  edge="undefined"  shadow="undefined"  ]

;移動用小型カメラ
[tb_ptext_show  x="817"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="874"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_com_idou"  edge="undefined"  shadow="undefined"  ]
[_tb_end_tyrano_code]

[call  storage="system.ks"  target="*fade_out_effect"  ]
[tb_start_text mode=4 ]
[舜]（Nên mua gì đây nhỉ.）
[_tb_end_text]

[tb_start_tyrano_code]
;■切り替えタブ（家電）
;書籍
[button target=*book enterimg=../fgimage/default/shop_book_ON.png clickimg=../fgimage/default/shop_book_ON.png x=128 y=56 graphic=../fgimage/default/shop_book_OFF.png]
;薬品
[button target=*medicine enterimg=../fgimage/default/shop_medicine_ON.png clickimg=../fgimage/default/shop_medicine_ON.png x=352 y=56 graphic=../fgimage/default/shop_medicine_OFF.png]
;家電
[button target=*kaden enterimg=../fgimage/default/shop_kaden_ON.png clickimg=../fgimage/default/shop_kaden_ON.png x=576 y=56 graphic=../fgimage/default/shop_kaden_ON.png]
;ギフト
[button target=*gift enterimg=../fgimage/default/shop_gift_ON.png clickimg=../fgimage/default/shop_gift_ON.png x=800 y=56 graphic=../fgimage/default/shop_gift_OFF.png]
;R18
[button target=*R18 enterimg=../fgimage/default/shop_R18_ON.png clickimg=../fgimage/default/shop_R18_ON.png x=1024 y=56 graphic=../fgimage/default/shop_R18_OFF.png]
;Đi về
[button target=*kaeru enterimg=../fgimage/default/shop_back_ON.png clickimg=../fgimage/default/shop_back_ON.png x=1160 y=448 graphic=../fgimage/default/shop_back_OFF.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;購入可能アイテムの呼び出し
;カメラ
[if exp="f.item_com_s< 25 "]
[call storage="sansaku_kaimono_item.ks" target="*cam"]
[endif]
;防水カメラ
[if exp="f.item_com_bousui_s< 7 "]
[call storage="sansaku_kaimono_item.ks" target="*cam_bousui"]
[endif]
;移動用小型カメラ
[if exp="f.item_com_idou_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*cam_idou"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*book

[mask  time="600"  effect="slideInLeft"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_kaimono1.png"  ]
[tb_start_tyrano_code]
;ベース表示
[freeimage layer="2" time="0"]
[image layer="2" x="64" y="56" storage="default/shop_base_book.png" time="0" ]
;Sold outの表示
;活力の道
[if exp="f.item_book_katuryoku_s== 1 "]
[image layer="2" x="120" y="152" storage="default/soldout.png" time="0" ]
[endif]
;活力の道2
[if exp="f.item_book_katuryoku2_s== 1 "]
[image layer="2" x="384" y="152" storage="default/soldout.png" time="0" ]
[endif]
;社会力の極意
[if exp="f.item_book_syakairyoku_s== 1 "]
[image layer="2" x="648" y="152" storage="default/soldout.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;所持数_書籍
;活力の道・上巻
[tb_ptext_show  x="288"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_book_katuryoku_s"  edge="undefined"  shadow="undefined"  ]

;Thuốc kích dục
;活力の道・下巻
[tb_ptext_show  x="550"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="607"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_book_katuryoku2_s"  edge="undefined"  shadow="undefined"  ]

;社会力の極意
[tb_ptext_show  x="817"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="874"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_book_syakairyoku_s"  edge="undefined"  shadow="undefined"  ]
[_tb_end_tyrano_code]

[mask_off  time="600"  effect="slideOutRight"  ]
[tb_start_text mode=4 ]
[舜]（Nên mua gì đây nhỉ.）
[_tb_end_text]

[tb_start_tyrano_code]
;■切り替えタブ（家電）
;書籍
[button target=*book enterimg=../fgimage/default/shop_book_ON.png clickimg=../fgimage/default/shop_book_ON.png x=128 y=56 graphic=../fgimage/default/shop_book_ON.png]
;薬品
[button target=*medicine enterimg=../fgimage/default/shop_medicine_ON.png clickimg=../fgimage/default/shop_medicine_ON.png x=352 y=56 graphic=../fgimage/default/shop_medicine_OFF.png]
;家電
[button target=*kaden enterimg=../fgimage/default/shop_kaden_ON.png clickimg=../fgimage/default/shop_kaden_ON.png x=576 y=56 graphic=../fgimage/default/shop_kaden_OFF.png]
;ギフト
[button target=*gift enterimg=../fgimage/default/shop_gift_ON.png clickimg=../fgimage/default/shop_gift_ON.png x=800 y=56 graphic=../fgimage/default/shop_gift_OFF.png]
;R18
[button target=*R18 enterimg=../fgimage/default/shop_R18_ON.png clickimg=../fgimage/default/shop_R18_ON.png x=1024 y=56 graphic=../fgimage/default/shop_R18_OFF.png]
;Đi về
[button target=*kaeru enterimg=../fgimage/default/shop_back_ON.png clickimg=../fgimage/default/shop_back_ON.png x=1160 y=448 graphic=../fgimage/default/shop_back_OFF.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;購入可能アイテムの呼び出し
;活力の道
[if exp="f.item_book_katuryoku_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*book1"]
[endif]
;活力の道2
[if exp="f.item_book_katuryoku2_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*book2"]
[endif]
;社会力の極意
[if exp="f.item_book_syakairyoku_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*book3"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*medicine

[mask  time="600"  effect="slideInLeft"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_kaimono1.png"  ]
[tb_start_tyrano_code]
;ベース表示
[freeimage layer="2" time="0"]
[image layer="2" x="64" y="56" storage="default/shop_base_drug.png" time="0" ]

;Sold outの表示
;Thuốc ngủ
[if exp="f.item_4_s== 1 "]
[image layer="2" x="120" y="152" storage="default/soldout.png" time="0" ]
[endif]
;Thuốc kích dục
[if exp="f.item_1_s== 1 "]
[image layer="2" x="384" y="152" storage="default/soldout.png" time="0" ]
[endif]
;Thuốc kích dụcプレミアム
[if exp="f.item_2_s== 1 "]
[image layer="2" x="648" y="152" storage="default/soldout.png" time="0" ]
[endif]
;Thuốc kích dụcクリーム
[if exp="f.item_3_s== 1 "]
[image layer="2" x="912" y="152" storage="default/soldout.png" time="0" ]
[endif]
;スピリタスカプセル
[if exp="f.item_supiritasu_s== 3 "]
[image layer="2" x="120" y="312" storage="default/soldout.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;所持数_薬品
;Thuốc ngủ
[tb_ptext_show  x="288"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_4"  edge="undefined"  shadow="undefined"  ]

;Thuốc kích dục
[tb_ptext_show  x="550"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="607"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_1"  edge="undefined"  shadow="undefined"  ]

;Thuốc kích dụcプレミアム
[tb_ptext_show  x="817"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="874"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_2"  edge="undefined"  shadow="undefined"  ]

;Thuốc kích dụcクリーム
[tb_ptext_show  x="1079"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1136"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_3"  edge="undefined"  shadow="undefined"  ]

;スピリタスカプセル
[tb_ptext_show  x="288"  y="453"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="453"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_supiritasu"  edge="undefined"  shadow="undefined"  ]
[_tb_end_tyrano_code]

[mask_off  time="600"  effect="slideOutRight"  ]
[tb_start_text mode=4 ]
[舜]（Nên mua gì đây nhỉ.）
[_tb_end_text]

[tb_start_tyrano_code]
;■切り替えタブ（家電）
;書籍
[button target=*book enterimg=../fgimage/default/shop_book_ON.png clickimg=../fgimage/default/shop_book_ON.png x=128 y=56 graphic=../fgimage/default/shop_book_OFF.png]
;薬品
[button target=*medicine enterimg=../fgimage/default/shop_medicine_ON.png clickimg=../fgimage/default/shop_medicine_ON.png x=352 y=56 graphic=../fgimage/default/shop_medicine_ON.png]
;家電
[button target=*kaden enterimg=../fgimage/default/shop_kaden_ON.png clickimg=../fgimage/default/shop_kaden_ON.png x=576 y=56 graphic=../fgimage/default/shop_kaden_OFF.png]
;ギフト
[button target=*gift enterimg=../fgimage/default/shop_gift_ON.png clickimg=../fgimage/default/shop_gift_ON.png x=800 y=56 graphic=../fgimage/default/shop_gift_OFF.png]
;R18
[button target=*R18 enterimg=../fgimage/default/shop_R18_ON.png clickimg=../fgimage/default/shop_R18_ON.png x=1024 y=56 graphic=../fgimage/default/shop_R18_OFF.png]
;Đi về
[button target=*kaeru enterimg=../fgimage/default/shop_back_ON.png clickimg=../fgimage/default/shop_back_ON.png x=1160 y=448 graphic=../fgimage/default/shop_back_OFF.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;購入可能アイテムの呼び出し
;Thuốc ngủ
[if exp="f.item_4_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*suimin"]
[endif]
;Thuốc kích dục
[if exp="f.item_1_s== 0"]
[call storage="sansaku_kaimono_item.ks" target="*biyaku"]
[endif]
;Thuốc kích dụcプレミアム
[if exp="f.item_2_s== 0"]
[call storage="sansaku_kaimono_item.ks" target="*biyaku2"]
[endif]
;Thuốc kích dụcクリーム
[if exp="f.item_3_s== 0"]
[call storage="sansaku_kaimono_item.ks" target="*biyaku3"]
[endif]
;スピリタスカプセル
[if exp="f.item_supiritasu_s< 3 "]
[call storage="sansaku_kaimono_item.ks" target="*supiritasu"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*gift

[mask  time="600"  effect="slideInLeft"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_kaimono1.png"  ]
[tb_start_tyrano_code]
;ベース表示
[freeimage layer="2" time="0"]
[image layer="2" x="64" y="56" storage="default/shop_base_gift.png" time="0" ]

;Sold outの表示
;コーヒーギフト
[if exp="f.pure_coffee_s== 1 "]
[image layer="2" x="120" y="152" storage="default/soldout.png" time="0" ]
[endif]
;レトロゲーム
[if exp="f.pure_game_s== 1 "]
[image layer="2" x="384" y="152" storage="default/soldout.png" time="0" ]
[endif]
;化粧品
[if exp="f.pure_konpakuto_s== 1 "]
[image layer="2" x="648" y="152" storage="default/soldout.png" time="0" ]
[endif]
;花束
[if exp="f.pure_hana_s== 1 "]
[image layer="2" x="912" y="152" storage="default/soldout.png" time="0" ]
[endif]
;プラチナアクセサリー
[if exp="f.pure_akuse_s== 1 "]
[image layer="2" x="120" y="312" storage="default/soldout.png" time="0" ]
[endif]
;お菓子ギフト
[if exp="f.pure_wagasi_s== 1 "]
[image layer="2" x="384" y="312" storage="default/soldout.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;所持数_プレゼント
;コーヒーギフト
[tb_ptext_show  x="288"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.pure_coffee"  edge="undefined"  shadow="undefined"  ]

;レトロゲーム
[tb_ptext_show  x="550"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="607"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.pure_game"  edge="undefined"  shadow="undefined"  ]

;化粧品
[tb_ptext_show  x="817"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="874"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.pure_konpakuto"  edge="undefined"  shadow="undefined"  ]

;花束
[tb_ptext_show  x="1079"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1136"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.pure_hana"  edge="undefined"  shadow="undefined"  ]

;プラチナアクセ
[tb_ptext_show  x="288"  y="453"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="453"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.pure_akuse"  edge="undefined"  shadow="undefined"  ]

;お菓子ギフトセット
[tb_ptext_show  x="550"  y="453"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="607"  y="453"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.pure_wagasi"  edge="undefined"  shadow="undefined"  ]

[_tb_end_tyrano_code]

[mask_off  time="600"  effect="slideOutRight"  ]
[tb_start_text mode=4 ]
[舜]（Nên mua gì đây nhỉ.）
[_tb_end_text]

[tb_start_tyrano_code]
;■切り替えタブ（家電）
;書籍
[button target=*book enterimg=../fgimage/default/shop_book_ON.png clickimg=../fgimage/default/shop_book_ON.png x=128 y=56 graphic=../fgimage/default/shop_book_OFF.png]
;薬品
[button target=*medicine enterimg=../fgimage/default/shop_medicine_ON.png clickimg=../fgimage/default/shop_medicine_ON.png x=352 y=56 graphic=../fgimage/default/shop_medicine_OFF.png]
;家電
[button target=*kaden enterimg=../fgimage/default/shop_kaden_ON.png clickimg=../fgimage/default/shop_kaden_ON.png x=576 y=56 graphic=../fgimage/default/shop_kaden_OFF.png]
;ギフト
[button target=*gift enterimg=../fgimage/default/shop_gift_ON.png clickimg=../fgimage/default/shop_gift_ON.png x=800 y=56 graphic=../fgimage/default/shop_gift_ON.png]
;R18
[button target=*R18 enterimg=../fgimage/default/shop_R18_ON.png clickimg=../fgimage/default/shop_R18_ON.png x=1024 y=56 graphic=../fgimage/default/shop_R18_OFF.png]
;Đi về
[button target=*kaeru enterimg=../fgimage/default/shop_back_ON.png clickimg=../fgimage/default/shop_back_ON.png x=1160 y=448 graphic=../fgimage/default/shop_back_OFF.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;購入可能アイテムの呼び出し
;コーヒーギフト
[if exp="f.pure_coffee_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*coffee"]
[endif]
;レトロゲーム
[if exp="f.pure_game_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*game"]
[endif]
;化粧品
[if exp="f.pure_konpakuto_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*konpakuto"]
[endif]
;花束
[if exp="f.pure_hana_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*hana"]
[endif]
;プラチナアクセサリー
[if exp="f.pure_akuse_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*akuse"]
[endif]
;お菓子ギフト
[if exp="f.pure_wagasi_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*wagasi"]
[endif]
;婚約指輪
[if exp="f.omoide_para== 16 "]
[call storage="sansaku_kaimono_item.ks" target="*yubiwa"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*R18

[mask  time="600"  effect="slideInLeft"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="back_kaimono1.png"  ]
[tb_start_tyrano_code]
;ベース表示
[freeimage layer="2" time="0"]
[image layer="2" x="64" y="56" storage="default/shop_base_R18.png" time="0" ]

;Sold outの表示
;高級ボディーオイル
[if exp="f.item_oil_s== 1 "]
[image layer="2" x="120" y="152" storage="default/soldout.png" time="0" ]
[endif]
;SM拘束具
[if exp="f.item_sm_s== 1 "]
[image layer="2" x="384" y="152" storage="default/soldout.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;R18
;高級ボディーオイル
[tb_ptext_show  x="288"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="345"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_oil_s"  edge="undefined"  shadow="undefined"  ]

;SM拘束具
[tb_ptext_show  x="550"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="Đang có: "  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="607"  y="293"  size="13"  color="0xffffff"  time="0"  anim="false"  face="undefined"  text="&f.item_sm_s"  edge="undefined"  shadow="undefined"  ]
[_tb_end_tyrano_code]

[mask_off  time="600"  effect="slideOutRight"  ]
[tb_start_text mode=4 ]
[舜]（Nên mua gì đây nhỉ.）
[_tb_end_text]

[tb_start_tyrano_code]
;■切り替えタブ（家電）
;書籍
[button target=*book enterimg=../fgimage/default/shop_book_ON.png clickimg=../fgimage/default/shop_book_ON.png x=128 y=56 graphic=../fgimage/default/shop_book_OFF.png]
;薬品
[button target=*medicine enterimg=../fgimage/default/shop_medicine_ON.png clickimg=../fgimage/default/shop_medicine_ON.png x=352 y=56 graphic=../fgimage/default/shop_medicine_OFF.png]
;家電
[button target=*kaden enterimg=../fgimage/default/shop_kaden_ON.png clickimg=../fgimage/default/shop_kaden_ON.png x=576 y=56 graphic=../fgimage/default/shop_kaden_OFF.png]
;ギフト
[button target=*gift enterimg=../fgimage/default/shop_gift_ON.png clickimg=../fgimage/default/shop_gift_ON.png x=800 y=56 graphic=../fgimage/default/shop_gift_OFF.png]
;R18
[button target=*R18 enterimg=../fgimage/default/shop_R18_ON.png clickimg=../fgimage/default/shop_R18_ON.png x=1024 y=56 graphic=../fgimage/default/shop_R18_ON.png]
;Đi về
[button target=*kaeru enterimg=../fgimage/default/shop_back_ON.png clickimg=../fgimage/default/shop_back_ON.png x=1160 y=448 graphic=../fgimage/default/shop_back_OFF.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;購入可能アイテムの呼び出し
;高級ボディーオイル
[if exp="f.item_oil_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*oil"]
[endif]
;SM拘束具
[if exp="f.item_sm_s== 0 "]
[call storage="sansaku_kaimono_item.ks" target="*sm"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*kaeru

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="0"]
[_tb_end_tyrano_code]

[bg  time="500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
[舜]「Được rồi, chắc thế này là đủ.」[p]
[_tb_end_text]

[jump  storage="sansaku.ks"  target="*end"  