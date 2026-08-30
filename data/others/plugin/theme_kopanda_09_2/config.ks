; 2018/09/29 @ko10panda edit
;=========================================

; コンフィグ モード　画面作成

;=========================================
	[layopt layer="message0" visible="false"]
	[clearfix]
	[stop_keyconfig]
	[free_layermode time="100" wait="true"]
	[reset_camera time="100" wait="true"]

	[plugin name="uiparts_set" ]

	[iscript]
	$(".layer_camera").empty();
	[endscript]

	[hidemenubutton]

	[iscript]

// TG.config.autoRecordLabel = "true";

	tf.current_bgm_vol = parseInt(sf._system_config_bgm_volume !== undefined ? sf._system_config_bgm_volume : (TG.config.defaultBgmVolume || 80));
	tf.current_se_vol = parseInt(sf._system_config_se_volume !== undefined ? sf._system_config_se_volume : (TG.config.defaultSeVolume || 80));
	tf.current_voice_1_vol = parseInt((sf._skskpnt_volume && sf._skskpnt_volume[1] !== undefined) ? sf._skskpnt_volume[1] : ((TYRANO.kag.stat.map_se_volume && TYRANO.kag.stat.map_se_volume[1]) || 80));
	tf.current_voice_2_vol = parseInt((sf._skskpnt_volume && sf._skskpnt_volume[2] !== undefined) ? sf._skskpnt_volume[2] : ((TYRANO.kag.stat.map_se_volume && TYRANO.kag.stat.map_se_volume[2]) || 80));
	tf.current_voice_3_vol = parseInt((sf._skskpnt_volume && sf._skskpnt_volume[3] !== undefined) ? sf._skskpnt_volume[3] : ((TYRANO.kag.stat.map_se_volume && TYRANO.kag.stat.map_se_volume[3]) || 80));

    if (isNaN(tf.current_bgm_vol)) tf.current_bgm_vol = 80;
    if (isNaN(tf.current_se_vol)) tf.current_se_vol = 80;
    if (isNaN(tf.current_voice_1_vol)) tf.current_voice_1_vol = 80;
    if (isNaN(tf.current_voice_2_vol)) tf.current_voice_2_vol = 80;
    if (isNaN(tf.current_voice_3_vol)) tf.current_voice_3_vol = 80;

	tf.current_ch_speed = parseInt(sf._system_config_ch_speed !== undefined ? sf._system_config_ch_speed : (TG.config.chSpeed || 50));
	tf.current_auto_speed = parseInt(sf._system_config_auto_speed !== undefined ? sf._system_config_auto_speed : (TG.config.autoSpeed || 2500));

if (sf.config_default_set !== true) {
    tf.current_bgm_vol = 80;
    tf.current_se_vol = 80;
    tf.current_voice_1_vol = 80;
    tf.current_voice_2_vol = 80;
    tf.current_voice_3_vol = 80;
    tf.current_ch_speed = 50;
    tf.current_auto_speed = 2500;

    TG.config.defaultBgmVolume = 80;
    TG.config.defaultSeVolume = 80;
    TG.config.chSpeed = 50;
    TG.config.autoSpeed = 2500;

    sf._system_config_bgm_volume = 80;
    sf._system_config_se_volume = 80;
    sf._skskpnt_volume = [80, 80, 80, 80];
    sf._system_config_ch_speed = 50;
    sf._system_config_auto_speed = 2500;

    if (!TYRANO.kag.stat.map_bgm_volume || typeof TYRANO.kag.stat.map_bgm_volume !== 'object') TYRANO.kag.stat.map_bgm_volume = {};
    TYRANO.kag.stat.map_bgm_volume[0] = 80;

    if (!TYRANO.kag.stat.map_se_volume || typeof TYRANO.kag.stat.map_se_volume !== 'object') TYRANO.kag.stat.map_se_volume = {};
    TYRANO.kag.stat.map_se_volume[0] = 80;
    TYRANO.kag.stat.map_se_volume[1] = 80;
    TYRANO.kag.stat.map_se_volume[2] = 80;
    TYRANO.kag.stat.map_se_volume[3] = 80;

    sf.config_default_set = true;
    TYRANO.kag.saveSystemVariable();
}

	tf.text_skip ="ON";
        	tf.slider_ch_speed = 101 - tf.current_ch_speed;
	tf.slider_auto_speed = 5001 - tf.current_auto_speed;

	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	if(f.workanime === undefined){
		f.workanime = 1
	}
	tf.current_workanime = f.workanime

	tf._old_setting_value = {
    current_bgm_vol: 50,
    current_se_vol: 50,
    current_voice_1_vol: 70,
    current_voice_2_vol: 70,
    current_voice_3_vol: 70,
    current_ch_speed: 50,
    current_auto_speed: 2500,
    current_workanime: 1,
}

	[endscript]

	[iscript]

	tf.img_path = '../others/plugin/theme_kopanda_09_2/image/config/';
	tf.btn_path_off = tf.img_path + 'off.gif';
	tf.btn_path_on  = tf.img_path + 'on.png';
	tf.img_check    = tf.img_path + 'check.png';
	tf.config_x = [1074, 375, 425, 475, 525, 575, 625, 675, 725, 775, 825];
	tf.config_num_bgm;
	tf.config_num_se;
	tf.config_num_voice;
	tf.config_num_ch;
	tf.config_num_auto;

	switch(tf.current_bgm_vol){
		case   0: tf.config_num_bgm =  0; break;
		case  10: tf.config_num_bgm =  1; break;
		case  20: tf.config_num_bgm =  2; break;
		case  30: tf.config_num_bgm =  3; break;
		case  40: tf.config_num_bgm =  4; break;
		case  50: tf.config_num_bgm =  5; break;
		case  60: tf.config_num_bgm =  6; break;
		case  70: tf.config_num_bgm =  7; break;
		case  80: tf.config_num_bgm =  8; break;
		case  90: tf.config_num_bgm =  9; break;
		case 100: tf.config_num_bgm = 10; break;

		default: break;
	};

	switch(tf.current_se_vol){
		case   0: tf.config_num_se =  0; break;
		case  10: tf.config_num_se =  1; break;
		case  20: tf.config_num_se =  2; break;
		case  30: tf.config_num_se =  3; break;
		case  40: tf.config_num_se =  4; break;
		case  50: tf.config_num_se =  5; break;
		case  60: tf.config_num_se =  6; break;
		case  70: tf.config_num_se =  7; break;
		case  80: tf.config_num_se =  8; break;
		case  90: tf.config_num_se =  9; break;
		case 100: tf.config_num_se = 10; break;

		default: break;
	};

	switch(tf.current_voice_vol){
		case   0: tf.config_num_voice =  0; break;
		case  10: tf.config_num_voice =  1; break;
		case  20: tf.config_num_voice =  2; break;
		case  30: tf.config_num_voice =  3; break;
		case  40: tf.config_num_voice =  4; break;
		case  50: tf.config_num_voice =  5; break;
		case  60: tf.config_num_voice =  6; break;
		case  70: tf.config_num_voice =  7; break;
		case  80: tf.config_num_voice =  8; break;
		case  90: tf.config_num_voice =  9; break;
		case 100: tf.config_num_voice = 10; break;

		default: break;
	};

	switch(tf.current_ch_speed){
		case 100: tf.config_num_ch =  0; break;
		case  80: tf.config_num_ch =  1; break;
		case  50: tf.config_num_ch =  2; break;
		case  40: tf.config_num_ch =  3; break;
		case  30: tf.config_num_ch =  4; break;
		case  25: tf.config_num_ch =  5; break;
		case  20: tf.config_num_ch =  6; break;
		case  11: tf.config_num_ch =  7; break;
		case   8: tf.config_num_ch =  8; break;
		case   5: tf.config_num_ch =  9; break;
		case   1: tf.config_num_ch = 10; break;

		default: break;
	};

	switch(tf.current_auto_speed){
		case 5000: tf.config_num_auto =  0; break;
		case 4500: tf.config_num_auto =  1; break;
		case 4000: tf.config_num_auto =  2; break;
		case 3500: tf.config_num_auto =  3; break;
		case 3000: tf.config_num_auto =  4; break;
		case 2500: tf.config_num_auto =  5; break;
		case 2000: tf.config_num_auto =  6; break;
		case 1300: tf.config_num_auto =  7; break;
		case  800: tf.config_num_auto =  8; break;
		case  500: tf.config_num_auto =  9; break;

		default: break;
	};

	// ミュート用のBGM、SE音量管理
	if( typeof f.prev_vol_list === 'undefined'){
		f.prev_vol_list = {//[tf.current_bgm_vol, tf.config_num_bgm, tf.current_se_vol, tf.config_num_se, tf.current_voice_vol, tf.config_num_voice, tf.current_ch_speed, tf.config_num_ch];
			bgm: tf.current_bgm_vol,
			se: tf.current_se_vol,
			voice: [
				tf.current_voice_1_vol,
				tf.current_voice_2_vol,
				tf.current_voice_3_vol
			],
			text: tf.current_ch_speed,
			auto: tf.current_auto_speed,
		}
	}

	tf.change_bgm = function(){
		let vol = parseInt(tf.current_bgm_vol);
		if (isNaN(vol)) vol = 80;
		TYRANO.kag.config.defaultBgmVolume = vol;
		if (!TYRANO.kag.stat.map_bgm_volume || typeof TYRANO.kag.stat.map_bgm_volume !== 'object') {
			TYRANO.kag.stat.map_bgm_volume = {};
		}
		TYRANO.kag.stat.map_bgm_volume["0"] = vol;
		TYRANO.kag.ftag.startTag("bgmopt", {
			volume: vol,
		});
	};

	tf.change_se = function(){
		let vol = parseInt(tf.current_se_vol);
		if (isNaN(vol)) vol = 80;
		TYRANO.kag.config.defaultSeVolume = vol;
		if (!TYRANO.kag.stat.map_se_volume || typeof TYRANO.kag.stat.map_se_volume !== 'object') {
			TYRANO.kag.stat.map_se_volume = {};
		}
		TYRANO.kag.stat.map_se_volume["0"] = vol;
		if (sf._skskpnt_volume) sf._skskpnt_volume[0] = vol;
		TYRANO.kag.ftag.startTag("seopt", {
			buf: "0",
			volume: vol,
		});
	};

	tf.change_voice_1 = function(){
		let vol = parseInt(tf.current_voice_1_vol);
		if (isNaN(vol)) vol = 80;
		if (!TYRANO.kag.stat.map_se_volume || typeof TYRANO.kag.stat.map_se_volume !== 'object') {
			TYRANO.kag.stat.map_se_volume = {};
		}
		TYRANO.kag.stat.map_se_volume["1"] = vol;
		if (sf._skskpnt_volume) sf._skskpnt_volume[1] = vol;
		TYRANO.kag.ftag.startTag("seopt", {
			buf: "1",
			volume: vol,
		});
	};

	tf.change_voice_2 = function(){
		let vol = parseInt(tf.current_voice_2_vol);
		if (isNaN(vol)) vol = 80;
		if (!TYRANO.kag.stat.map_se_volume || typeof TYRANO.kag.stat.map_se_volume !== 'object') {
			TYRANO.kag.stat.map_se_volume = {};
		}
		TYRANO.kag.stat.map_se_volume["2"] = vol;
		if (sf._skskpnt_volume) sf._skskpnt_volume[2] = vol;
		TYRANO.kag.ftag.startTag("seopt", {
			buf: "2",
			volume: vol,
		});
	};

	tf.change_voice_3 = function(){
		let vol = parseInt(tf.current_voice_3_vol);
		if (isNaN(vol)) vol = 80;
		if (!TYRANO.kag.stat.map_se_volume || typeof TYRANO.kag.stat.map_se_volume !== 'object') {
			TYRANO.kag.stat.map_se_volume = {};
		}
		TYRANO.kag.stat.map_se_volume["3"] = vol;
		if (sf._skskpnt_volume) sf._skskpnt_volume[3] = vol;
		TYRANO.kag.ftag.startTag("seopt", {
			buf: "3",
			volume: vol,
		});
	};

	tf.change_ch_speed = function(){
		let speed = 101 - parseInt(tf.slider_ch_speed || 51);
		if (isNaN(speed) || speed < 1) speed = 50;
		tf.current_ch_speed = speed;
		TYRANO.kag.config.chSpeed = speed;
		sf._system_config_ch_speed = speed;
		TYRANO.kag.saveSystemVariable();
		if (TYRANO.kag.ftag && TYRANO.kag.ftag.startTag) {
			TYRANO.kag.ftag.startTag("configdelay", { speed: speed });
			TYRANO.kag.ftag.startTag("test_message_reset", {});
		}
	};

	tf.change_auto_speed = function(){
		let speed = 5001 - parseInt(tf.slider_auto_speed || 2501);
		if (isNaN(speed) || speed < 1) speed = 2500;
		tf.current_auto_speed = speed;
		TYRANO.kag.config.autoSpeed = speed;
		sf._system_config_auto_speed = speed;
		TYRANO.kag.saveSystemVariable();
		if (TYRANO.kag.ftag && TYRANO.kag.ftag.startTag) {
			TYRANO.kag.ftag.startTag("autoconfig", { speed: speed });
			TYRANO.kag.ftag.startTag("test_message_reset", {});
		}
	};
	[endscript]

[cm]

	[bg storage="&tf.img_path +'bg_config.jpg'" time="286"]
	[button fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" graphic="&tf.img_path + 'c_btn_back.png'" enterimg="&tf.img_path + 'c_btn_back2.png'" target="*backtitle" x="1208" y="7"]
	[button fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" graphic="&tf.img_path + 'config_reset_off.png'" enterimg="&tf.img_path + 'config_reset_on.png'" target="*reset" x="1064" y="680" ]
[jump storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*config_page"]


*config_page
[clearstack]
;------------------------------------------------------------------------------------------------------
; BGM音量
;------------------------------------------------------------------------------------------------------
[slider name="bgm" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.current_bgm_vol" x="219" y="161" width="290" height="8" min="0" max="100" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*vol_bgm_change" exp="tf.change_bgm()"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_bgm_button" ]

;------------------------------------------------------------------------------------------------------
; SE音量
;------------------------------------------------------------------------------------------------------
[slider name="se" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.current_se_vol" x="219" y="233" width="290" height="8" min="0" max="100" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*vol_se_change" exp="tf.change_se()"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_se_button" ]

;------------------------------------------------------------------------------------------------------
; ボイス音量
;------------------------------------------------------------------------------------------------------
[slider name="voice_1" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.current_voice_1_vol" x="883" y="161" width="249" height="8" min="0" max="100" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*vol_voice_change" exp="tf.change_voice_1()"]
[slider name="voice_2" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.current_voice_2_vol" x="883" y="233" width="249" height="8" min="0" max="100" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*vol_voice_change" exp="tf.change_voice_2()"]
[slider name="voice_3" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.current_voice_3_vol" x="883" y="305" width="249" height="8" min="0" max="100" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*vol_voice_change" exp="tf.change_voice_3()"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_voice_button" ]

;------------------------------------------------------------------------------------------------------
; テキスト速度
;------------------------------------------------------------------------------------------------------
[slider name="text" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.slider_ch_speed" x="219" y="377" width="290" height="8" min="1" max="100" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*ch_speed_skip" exp="tf.change_ch_speed()"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_text_button" ]

;------------------------------------------------------------------------------------------------------
; オート速度
;------------------------------------------------------------------------------------------------------
[slider name="auto" storage="../others/plugin/theme_kopanda_09_2/config.ks" var="tf.slider_auto_speed" x="219" y="449" width="290" height="8" min="1" max="5000" step="1" thumb_img="&tf.img_path + 'bar_button.png'" thumb_width="24" thumb_height="24" base_color="transparent" active_color="transparent" target="*auto_speed_change" exp="tf.change_auto_speed()"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_auto_button" ]

;------------------------------------------------------------------------------------------------------
; アニメーション
;------------------------------------------------------------------------------------------------------
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*anime_button" ]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------

[layopt layer="0" visible="true"]
[test_message_start]
[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backtitle
[cm]
[iscript]
TYRANO.kag.saveSystemVariable();
[endscript]

[layopt layer="message1" visible="false"]
[clearfix]
[start_keyconfig]
[clearstack]

[awakegame_ex bgm_over="false"]
[s]


;--------------------------------------------------------------------------------
; 初期値に戻す
;--------------------------------------------------------------------------------
*reset
[iscript]

f.workanime = 1
tf.current_workanime = 1

tf.current_bgm_vol = 80
tf.current_se_vol = 80

TG.config.defaultBgmVolume = 80
TG.config.defaultSeVolume = 80

tf.current_voice_1_vol = 80
tf.current_voice_2_vol = 80
tf.current_voice_3_vol = 80

if (!sf._skskpnt_volume) sf._skskpnt_volume = [80, 80, 80, 80];
sf._skskpnt_volume[0] = 80
sf._skskpnt_volume[1] = 80
sf._skskpnt_volume[2] = 80
sf._skskpnt_volume[3] = 80

sf._system_config_bgm_volume = 80
sf._system_config_se_volume = 80
sf._system_config_ch_speed = 50
sf._system_config_auto_speed = 2500

tf.current_ch_speed = 50
tf.current_auto_speed = 2500

tf.slider_ch_speed = 51
tf.slider_auto_speed = 2501

tf.change_bgm();
tf.change_se();
tf.change_voice_1();
tf.change_voice_2();
tf.change_voice_3();
TYRANO.kag.saveSystemVariable();

[endscript]

[configdelay speed="50"]
[autoconfig speed="2500"]

[jump storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*config_page"]
[s]

;================================================================================

; ボタンクリック時の処理

;================================================================================
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_mute
[iscript]
	// ミュート
	if( tf.isMute_bgm ){
		f.prev_vol_list.bgm = tf.current_bgm_vol || 80;
		tf.current_bgm_vol = 0;
	// 解除
	} else {
		tf.current_bgm_vol = f.prev_vol_list.bgm || 80;
	}
	tf.change_bgm();
[endscript]

*vol_bgm_change
	[free layer="0" name="bgmvol" time="0" wait="true"]
	[bgmopt volume="&tf.current_bgm_vol"]
	[iscript]
	tf.change_bgm();
	[endscript]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_bgm_button" ]

[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_mute

[iscript]
	// ミュート
	if( tf.isMute_se ){
		f.prev_vol_list.se = tf.current_se_vol || 80;
		tf.current_se_vol = 0;
	// 解除
	} else {
		tf.current_se_vol = f.prev_vol_list.se || 80;
	}
	tf.change_se();
[endscript]

*vol_se_change
	[iscript ]
		sf._skskpnt_volume[0] = tf.current_se_vol;
		tf.change_se();
	[endscript ]
	[free layer="0" name="sevol" time="0" wait="true"]
	[seopt buf="0" volume="&tf.current_se_vol"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_se_button" ]

[return]

;--------------------------------------------------------------------------------
; ボイス音量
;--------------------------------------------------------------------------------
*vol_voice_mute

[iscript]
	if (!f.prev_vol_list.voice) f.prev_vol_list.voice = [80, 80, 80];
	// ミュート
	if( tf.isMute ){
		f.prev_vol_list.voice[tf.isMuteNum] = tf["current_voice_" + (tf.isMuteNum + 1) + "_vol"] || 80;
		tf["current_voice_" + (tf.isMuteNum + 1) + "_vol"] = 0;
	// 解除
	} else {
		tf["current_voice_" + (tf.isMuteNum + 1)+ "_vol"] = f.prev_vol_list.voice[tf.isMuteNum] || 80;
	}
	if (tf.isMuteNum === 0) tf.change_voice_1();
	else if (tf.isMuteNum === 1) tf.change_voice_2();
	else if (tf.isMuteNum === 2) tf.change_voice_3();
[endscript]

*vol_voice_change
[iscript ]
	sf._skskpnt_volume[1] = tf.current_voice_1_vol;
	sf._skskpnt_volume[2] = tf.current_voice_2_vol;
	sf._skskpnt_volume[3] = tf.current_voice_3_vol;
	tf.change_voice_1();
	tf.change_voice_2();
	tf.change_voice_3();
[endscript ]
[seopt buf="1" volume="&tf.current_voice_1_vol"]
[seopt buf="2" volume="&tf.current_voice_2_vol"]
[seopt buf="3" volume="&tf.current_voice_3_vol"]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_voice_button" ]

[return]


;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------

*vol_text_mute
[iscript]
	// 一括表示
	if( tf.isMute_text ){
		f.prev_vol_list.text = tf.current_ch_speed;
		//f.prev_vol_list[7] = tf.config_num_ch;
		tf.current_ch_speed = 1;
		//tf.config_num_ch  = 10;

	// 解除
	} else {
		tf.current_ch_speed = f.prev_vol_list.text;
		//tf.config_num_ch  = f.prev_vol_list[7];
	}
[endscript]
*ch_speed_skip
*ch_speed_change
[iscript]
tf.change_ch_speed();
[endscript]
[configdelay speed="&tf.current_ch_speed"]
[test_message_reset]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_text_button"]
[return]
;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*vol_auto_mute
[iscript]
	// 一括表示
	if( tf.isMute_auto ){
		f.prev_vol_list.auto = tf.current_auto_speed;
		tf.current_auto_speed = 1;
	// 解除
	} else {
		tf.current_auto_speed = f.prev_vol_list.auto;
	}
	tf.change_auto_speed();
[endscript]

*auto_speed_change
[iscript]
tf.change_auto_speed();
[endscript]
[autoconfig speed="&tf.current_auto_speed"]
[test_message_reset]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*mute_auto_button"]
[return]

;--------------------------------------------------------------------------------
; スキップ処理
;--------------------------------------------------------------------------------
*skip_on

	[if exp="tf.text_skip == 'ON'"]
	[free layer="0" name="skip" time="0" wait="true"]
	[eval exp="tf.text_skip = 'OFF'"]
	[config_record_label skip="false"]
	[else]
	[image name="skip" layer="0" storage="&tf.img_check" x="956" y="360" width="32" height="32"]
	[eval exp="tf.text_skip = 'ON'"]
	[config_record_label skip="true"]
	[endif]

[return]

;--------------------------------------------------------------------------------
; アニメON/OFF処理
;--------------------------------------------------------------------------------
*anime_on
[iscript ]
f.workanime = tf.current_workanime;
sf._system_config_workanime = f.workanime;
TYRANO.kag.saveSystemVariable();
[endscript ]
[call storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*anime_button" ]
[return]




;--------------------------------------------------------------------------------
; ボタン系更新処理
;--------------------------------------------------------------------------------
*mute_bgm_button
[clearfix name="bgm_mute" ]
[button name="bgm_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="152" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_bgm_mute"  exp="tf.isMute_bgm = true"  cond="tf.current_bgm_vol > 0"   ]
[button name="bgm_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="152" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_bgm_mute"  exp="tf.isMute_bgm = false" cond="tf.current_bgm_vol == 0"   ]
[return ]


*mute_se_button
[clearfix name="se_mute" ]
[button name="se_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="224" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_se_mute"  exp="tf.isMute_se = true"  cond="tf.current_se_vol > 0"    ]
[button name="se_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="224" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_se_mute"  exp="tf.isMute_se = false" cond="tf.current_se_vol == 0"   ]
[return ]


*mute_voice_button
[clearfix name="voice_mute" ]
[button name="voice_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1168" y="152" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_voice_mute" exp="tf.isMute = true;  tf.isMuteNum = 0"  cond="tf.current_voice_1_vol > 0"    ]
[button name="voice_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1168" y="152" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_voice_mute" exp="tf.isMute = false; tf.isMuteNum = 0"  cond="tf.current_voice_1_vol == 0"   ]
[button name="voice_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1168" y="224" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_voice_mute" exp="tf.isMute = true;  tf.isMuteNum = 1"  cond="tf.current_voice_2_vol > 0"    ]
[button name="voice_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1168" y="224" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_voice_mute" exp="tf.isMute = false; tf.isMuteNum = 1"  cond="tf.current_voice_2_vol == 0"   ]
[button name="voice_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1168" y="296" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_voice_mute" exp="tf.isMute = true;  tf.isMuteNum = 2"  cond="tf.current_voice_3_vol > 0"    ]
[button name="voice_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="1168" y="296" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_voice_mute" exp="tf.isMute = false; tf.isMuteNum = 2"  cond="tf.current_voice_3_vol == 0"   ]
[return ]


*mute_text_button
[clearfix name="text_mute" ]
[button name="text_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="368" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_text_mute"  exp="tf.isMute_text = true"  cond="tf.current_ch_speed > 1"    ]
[button name="text_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="368" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_text_mute"  exp="tf.isMute_text = false" cond="tf.current_ch_speed < 2"   ]
[return ]


*mute_auto_button
[clearfix name="auto_mute" ]
[button name="auto_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="440" graphic="&tf.img_path + 'off.gif'" width="24" height="24" target="*vol_auto_mute"  exp="tf.isMute_auto = true"  cond="tf.current_auto_speed > 1"    ]
[button name="auto_mute" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" x="544" y="440" graphic="&tf.img_path + 'on.png'"  width="24" height="24" target="*vol_auto_mute"  exp="tf.isMute_auto = false" cond="tf.current_auto_speed < 2"   ]
[return ]

*anime_button
[clearfix name="anime_on" ]
[button name="anime_on" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*anime_on"  graphic="&tf.img_path + 'anime2.png'" x="920" y="440" exp="tf.current_workanime = 1" cond="tf.current_workanime == 0" ]
[button name="anime_on" fix="true" storage="../others/plugin/theme_kopanda_09_2/config.ks" target="*anime_on"  graphic="&tf.img_path + 'anime.png'"  x="920" y="440" exp="tf.current_workanime = 0" cond="tf.current_workanime == 1" ]
[return ]

