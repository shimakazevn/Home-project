;=================================================================================
; theme_kopanda_09_2 plugin initialization
;=================================================================================
[chara_config ptext="chara_name_area"]

; Font color
[font color="&mp.font_color"]
[deffont color="&mp.font_color"]

;===========================
; UI Buttons Macro
;===========================
[macro name="add_theme_button"]

[hidemenubutton]

[button name="role_button" role="quicksave" graphic="../others/plugin/theme_kopanda_09_2/image/button/qsave.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/qsave2.png" x="625" y="693" clickse="sistem_start.mp3"]
[button name="role_button" role="quickload" graphic="../others/plugin/theme_kopanda_09_2/image/button/qload.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/qload2.png" x="698" y="693" clickse="lvup.mp3"]
[button name="role_button" role="load" graphic="../others/plugin/theme_kopanda_09_2/image/button/load.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/load2.png" x="768" y="693"]
[button name="role_button" role="auto" graphic="../others/plugin/theme_kopanda_09_2/image/button/auto.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/auto2.png" x="830" y="693"]
[button name="role_button" role="skip" graphic="../others/plugin/theme_kopanda_09_2/image/button/skip.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/skip2.png" x="888" y="693"]
[button name="role_button" role="backlog" graphic="../others/plugin/theme_kopanda_09_2/image/button/log.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/log2.png" x="940" y="693"]
[button name="role_button" role="fullscreen" graphic="../others/plugin/theme_kopanda_09_2/image/button/screen.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/screen2.png" x="1002" y="693"]
[button name="role_button" role="sleepgame" graphic="../others/plugin/theme_kopanda_09_2/image/button/config.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/config2.png" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1075" y="693"]
[button name="role_button" role="window" graphic="../others/plugin/theme_kopanda_09_2/image/button/close.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/close2.png" x="1142" y="693"]
[button name="role_button" role="title" graphic="../others/plugin/theme_kopanda_09_2/image/button/title.png" enterimg="../others/plugin/theme_kopanda_09_2/image/button/title2.png" x="1200" y="693"]

[endmacro]

;===========================
; System HTML, CSS
;===========================
[sysview type="save" storage="./data/others/plugin/theme_kopanda_09_2/html/save.html"]
[sysview type="load" storage="./data/others/plugin/theme_kopanda_09_2/html/load.html"]
[sysview type="backlog" storage="./data/others/plugin/theme_kopanda_09_2/html/backlog.html"]
[sysview type="menu" storage="./data/others/plugin/theme_kopanda_09_2/html/menu.html"]
[loadcss file="./data/others/plugin/theme_kopanda_09_2/ts09.css"]

;===========================
; Preload Images
;===========================
[iscript]
f.theme_img_list = [
'./data/others/plugin/theme_kopanda_09_2/image/system/arrow_down.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/arrow_next.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/arrow_prev.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/arrow_up.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_bg.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_close.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_close2.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_load.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_load2.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_save.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_save2.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_skip.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_skip2.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_title.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_button_title2.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_load_bg.jpg',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_log_bg.jpg',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_message_close.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_message_close2.png',
'./data/others/plugin/theme_kopanda_09_2/image/system/menu_save_bg.jpg',
'./data/others/plugin/theme_kopanda_09_2/image/button/auto.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/auto2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/close.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/close2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/load.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/load2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/log.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/log2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/menu.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/menu2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/qload.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/qload2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/qsave.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/qsave2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/save.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/save2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/screen.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/screen2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/skip.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/skip2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/sleep.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/sleep2.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/title.png',
'./data/others/plugin/theme_kopanda_09_2/image/button/title2.png',
'./data/others/plugin/theme_kopanda_09_2/image/frame_message.png'
];
[endscript]

[preload storage="&f.theme_img_list" wait="false"]

;=================================================================================
; testMessagePlus Plugin Loading
;=================================================================================
[loadjs storage="plugin/theme_kopanda_09_2/testMessagePlus/gMessageTester.js"]
[loadcss file="./data/others/plugin/theme_kopanda_09_2/testMessagePlus/style.css"]

[macro name="test_message_start"]
[eval exp="if (window.gMessageTester && gMessageTester.create) gMessageTester.create()"]
[endmacro]

[macro name="test_message_end"]
[eval exp="if (window.gMessageTester && gMessageTester.destroy) gMessageTester.destroy()"]
[endmacro]

[macro name="test_message_reset"]
[eval exp="if (window.gMessageTester && gMessageTester.next) { gMessageTester.currentTextNumber=0; gMessageTester.next(true); }"]
[endmacro]

[return]