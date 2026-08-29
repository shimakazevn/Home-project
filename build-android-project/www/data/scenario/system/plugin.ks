

;プラグイン。ボタンオーバーで画像表示
[plugin name=button_ex]

;プラグイン。テーマ読み込み

[plugin name="theme_kopanda_09_2" font_color="0xf1f1f1" name_color="0xf1f1f1" opacity="255" ]

;コンフィグ改変用
[call storage="volume.ks" ]

[mask time=10]
[add_theme_button]
[tb_hide_message_window]
[mask_off time=10]

[loadjs storage=save_thumbnail.js]

;プラグイン。コンフィグ画面を閉じる時のフェード
[plugin name=awakegame_ex