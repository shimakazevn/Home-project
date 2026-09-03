;メッセージレイヤの定義

		[position width=1280 height=275 top=447 left=0 ]

		[position page=fore margint=110 marginl=140 marginr=150 marginb=10 vertical=false frame="../others/plugin/theme_kopanda_09_2/image/frame_message.png" opacity="255" ]

		[ptext name="chara_name_area" layer="message0" color=0xFFFFFF size=0 x=0 y=0 bold="" edge="undefined" shadow="undefined"]

		;キャラクターの表示モードに関する定義
		[chara_config ptext="chara_name_area" pos_mode=true time="600" memory="false" anim="true" effect="easeInQuad" pos_change_time="600" ]

		;キャラクターフォーカスなど
		[chara_config  talk_focus="none" ]

		;クリック待ちボタンについて
		[glyph fix="false" left="0" top="0" ]

		;CG・回想用の共通項目
		[eval exp="sf._tb_cg_noimage='button/Noimage.png'" ]
		[eval exp="sf._tb_replay_noimage='kaisou_H/Noimage2.png'" ]
