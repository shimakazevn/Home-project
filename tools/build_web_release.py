# -*- coding: utf-8 -*-
"""
tools/build_web_release.py
===========================
Công cụ tự động hóa xây dựng và đóng gói phiên bản Web Visual Novel HOME [RJ01556529].
Nhánh phát triển Web độc lập tại thư mục: web/ -> Xuất bản tại: dist_web/ (~18MB).

Kiến trúc Web Game:
  - Web Audio Autoplay Unlocker & Pure JS Steganography PNG Audio Decoder
  - IndexedDB Save Engine (Lưu trữ không giới hạn, loại bỏ triệt để lỗi QuotaExceededError 5MB)
  - CDN Interceptor (Bảng định tuyến 2.709 files từ Blogger CDN)
  - Mobile Touch HUD & Responsive 16:9 Letterbox với màn hình nhắc xoay ngang
"""

import os
import sys
import json
import time
import sqlite3
import shutil
import subprocess
import http.server
import socketserver

sys.stdout.reconfigure(encoding='utf-8')

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WEB_SRC_DIR = os.path.join(ROOT_DIR, 'web')
WEB_DIST_DIR = os.path.join(ROOT_DIR, 'dist_web')
CACHE_DB_PATH = os.path.join(ROOT_DIR, 'upload_cache.db')
APP_SRC_DIR = os.path.join(ROOT_DIR, 'HOME_', 'resources', 'app')
TRANSLATION_DIR = os.path.join(ROOT_DIR, 'translation')


def step1_ensure_directories():
    """Tạo đầy đủ cấu trúc thư mục cho web/ và dist_web/"""
    print("\n[1/6] 📁 Khởi tạo cấu trúc thư mục nhánh Web độc lập (web/)...")
    for sub in ['css', 'js', 'data/system', 'data/scenario', 'data/image', 'data/others/font', 'data/others/plugin', 'tyrano']:
        os.makedirs(os.path.join(WEB_SRC_DIR, sub), exist_ok=True)
    print("  [OK] Đã cấu trúc xong thư mục web/.")


def step2_export_cdn_manifest():
    """Xuất bảng định tuyến CDN từ upload_cache.db sang web/data/asset_manifest.json (Kích hoạt WebP /s0-rw/)"""
    print("\n[2/6] 🌐 Xuất bảng định tuyến CDN & Tối ưu hóa WebP (/s0-rw/)...")
    if not os.path.exists(CACHE_DB_PATH):
        raise FileNotFoundError(f"Không tìm thấy upload_cache.db tại {CACHE_DB_PATH}!")
    
    with sqlite3.connect(CACHE_DB_PATH) as conn:
        cur = conn.cursor()
        cur.execute("SELECT file_path, cdn_url FROM uploads")
        raw_records = cur.fetchall()
    
    records = {}
    webp_count = 0
    audio_count = 0
    for file_path, cdn_url in raw_records:
        # Bật WebP (/s0-rw/) cho toàn bộ hình ảnh thị giác (bgimage, fgimage, image, tyrano)
        # TUYỆT ĐỐI GIỮ NGUYÊN /s0/ cho file âm thanh Steganography để không bị mất bit nhị phân
        is_audio = file_path.startswith(('data/sound/', 'data/bgm/', 'data/video/'))
        if not is_audio and ('/s0/' in cdn_url or '/s1600/' in cdn_url):
            cdn_url = cdn_url.replace('/s0/', '/s0-rw/').replace('/s1600/', '/s1600-rw/')
            webp_count += 1
        else:
            audio_count += 1
        records[file_path] = cdn_url
    
    manifest_path = os.path.join(WEB_SRC_DIR, 'data', 'asset_manifest.json')
    with open(manifest_path, 'w', encoding='utf-8') as f:
        json.dump(records, f, ensure_ascii=False, indent=2)
    
    print(f"  [OK] Đã xuất {len(records):,} đường dẫn ({webp_count:,} ảnh WebP /s0-rw/ + {audio_count:,} âm thanh bit-exact).")
    return records


def step3_sync_engine_and_scenarios():
    """Đồng bộ TyranoScript Engine, Plugins và kịch bản Việt hóa mới nhất (Loại bỏ font TTF nặng)"""
    print("\n[3/6] 📜 Đồng bộ Engine TyranoScript & 267 tệp kịch bản .ks Việt hóa...")
    
    # 1. Đồng bộ Tyrano Engine từ HOME_/resources/app/
    if os.path.exists(os.path.join(APP_SRC_DIR, 'tyrano')):
        shutil.copytree(os.path.join(APP_SRC_DIR, 'tyrano'), os.path.join(WEB_SRC_DIR, 'tyrano'), dirs_exist_ok=True)
    
    # Đồng bộ các template HTML của Theme kopanda (load.html, save.html, menu.html, backlog.html) vào web/tyrano/html/ và web/data/others/plugin/theme_kopanda_09_2/html/
    theme_html_dir = os.path.join(APP_SRC_DIR, 'data', 'others', 'plugin', 'theme_kopanda_09_2', 'html')
    if os.path.exists(theme_html_dir):
        shutil.copytree(theme_html_dir, os.path.join(WEB_SRC_DIR, 'tyrano', 'html'), dirs_exist_ok=True)
        shutil.copytree(theme_html_dir, os.path.join(WEB_SRC_DIR, 'data', 'others', 'plugin', 'theme_kopanda_09_2', 'html'), dirs_exist_ok=True)
    
    # 2. Đồng bộ TOÀN BỘ Plugins và scripts từ extracted_scripts và patch
    others_dst = os.path.join(WEB_SRC_DIR, 'data', 'others')
    plugin_dst = os.path.join(others_dst, 'plugin')
    os.makedirs(plugin_dst, exist_ok=True)
    
    orig_plugin_dir = os.path.join(ROOT_DIR, 'extracted_scripts', 'data', 'others', 'plugin')
    if os.path.exists(orig_plugin_dir):
        shutil.copytree(orig_plugin_dir, plugin_dst, dirs_exist_ok=True)
        
    patch_plugin_dir = os.path.join(ROOT_DIR, 'patch', 'data', 'others', 'plugin')
    if os.path.exists(patch_plugin_dir):
        shutil.copytree(patch_plugin_dir, plugin_dst, dirs_exist_ok=True)

    # Khắc phục triệt để lỗi corrupt của các plugin gốc (awakegame_ex, tb_save_img, waapi, uiparts_set)
    awakegame_init = '[loadjs storage="plugin/awakegame_ex/main.js"]\n\n[return]\n'
    awakegame_main = '''// awakegame_ex main.js
;(function(){
const _setLayerHtml = TYRANO.kag.layer.setLayerHtml;
TYRANO.kag.layer.setLayerHtml = function(layer, html){
    if(!html) return;
    try {
        _setLayerHtml.apply(this, arguments);
    } catch(e) {
        console.warn("[awakegame_ex] setLayerHtml suppressed error:", e);
    }
};

TYRANO.kag.tag.awakegame_ex = {
    pm: {
        variable_over: "true",
        bgm_over: "true",
        mask: "false",
        time: "500",
        graphic: "",
        color: "black",
    },
    start: function(pm){
        if (null == this.kag.tmp.sleep_game) this.kag.ftag.nextOrder();
        else {
            if(pm.mask == "true"){
                TYRANO.kag.variable.tf._awakegame_ex = 0;
            }else{
                TYRANO.kag.variable.tf._awakegame_ex = parseInt(pm.time);
            }
            var sleep_game = this.kag.tmp.sleep_game;
            "true" == pm.variable_over && (sleep_game.stat.f = this.kag.stat.f);
            var _pm = {
                bgm_over: pm.bgm_over
            };
            1 == this.kag.tmp.sleep_game_next && (_pm.auto_next = "yes");

            var a = {
                time: pm.time,
                effect: "fadeIn",
                color: pm.color,
                graphic: pm.graphic,
                folder: "",
            };
            if(pm.mask == "true"){
                var e = $("<div class='layer layer_mask' data-effect='" + a.effect + "' style='z-index:1000000000000;position:absolute;'>");
                e.css("animation-duration", parseInt(a.time) + "ms");
                var r = parseInt(TYRANO.kag.config.scWidth),
                    n = parseInt(TYRANO.kag.config.scHeight);
                if (e.css({
                    width: r,
                    height: n
                }), "none" == a.color ? e.css("background-color", "") : e.css("background-color", $.convertColor(a.color)), "" != a.graphic) {
                    "" != a.folder ? folder = a.folder : folder = "image";
                    var i = "";
                    "" != a.graphic && (i = "./data/" + folder + "/" + a.graphic, e.css("background-image", "url(" + i + ")"));
                }
                $(".tyrano_base").append(e);
            
                e.addClass("animated " + a.effect).one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
                    TYRANO.kag.menu.loadGameData($.extend(!0, {}, sleep_game), _pm);
                    var r = e.attr("data-effect");
                    e.removeClass("animated " + r);
                    e.css("animation-duration", parseInt(a.time) + "ms");
                    e.addClass("animated " + "fadeOut").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
                        e.remove();
                    });
                    TYRANO.kag.tmp.sleep_game = null;
                });
            }else{
                TYRANO.kag.menu.loadGameData($.extend(!0, {}, sleep_game), _pm);
                TYRANO.kag.tmp.sleep_game = null;
            }
        }
    }
};
TYRANO.kag.ftag.master_tag.awakegame_ex = TYRANO.kag.tag.awakegame_ex;
TYRANO.kag.ftag.master_tag.awakegame_ex.kag = TYRANO.kag;

})();
'''
    tb_save_img_init = '[macro name="tb_save_img"]\n[save_img  * ]\n[endmacro]\n\n[macro name="tb_save_img_reset"]\n[save_img  storage="default" ]\n[endmacro]\n\n[return]\n'
    uiparts_init = '[loadjs storage="plugin/uiparts_set/select.js" ]\n[loadjs storage="plugin/uiparts_set/slider.js" ]\n[loadcss file="./data/others/plugin/uiparts_set/select.css" ]\n[loadcss file="./data/others/plugin/uiparts_set/slider.css" ]\n\n[return]\n'
    waapi_init = '; Plugin waapi stub\n[return]\n'
    button_ex_init = '[loadjs storage="plugin/button_ex/main.js" ]\n[return]\n'
    button_ex_main = '''
// HOME Visual Novel - button_ex Web Enhanced Plugin
(function() {
const name2class = (name = "") => {
    return $.replaceAll(name, ",", ".");
};

window.str2var = function (str) {
    let ary = str.replace(/\\]/g, "").split(/\\.|\\[/g);
    let variable = window;
    if (ary[0] === "f") {
        variable = TYRANO.kag.stat;
    } else if (ary[0] === "sf" || ary[0] === "tf") {
        variable = TYRANO.kag.variable;
    } else if (ary[0] === "TG") {
        variable = TYRANO.kag;
    }
    ary.forEach(function (key) {
        key = key.replace(/"|'/g, "");
        if (variable) {
            variable = variable[key];
        }
    });
    return variable;
};

tyrano.plugin.kag.tag.button_ex = {
    vital: ["name"],
    pm: {
        name: "",
        enterimg: "",
        enter_fade: "0",
        clickimg: "",
        tip: "",
        tip_pos: "",
        tip_margin: "0",
        tip_fade: "0",
        tip_method: "fadeIn",
        tip_x: "0",
        tip_y: "0",
        disableimg: "",
        disable: "",
        alpha: "0",
    },

    start: function (pm) {
        var that = TYRANO;
        var self = this;
        var csscls = name2class(pm.name);
        var parent_button = $("img." + csscls + ":first");
        var j_button = $("<img />");

        if (parent_button.length == 0) {
            that.kag.ftag.nextOrder();
            return;
        }

        pm.p_top = parent_button.css("top");
        pm.p_left = parent_button.css("left");
        pm.src = parent_button.attr("src");

        const _absolute = "./data/others/plugin/button_ex/blank.png";
        j_button.attr("src", _absolute);

        let button_set = function (j_button, parent_button, pm) {
            j_button.css({
                position: "absolute",
                cursor: "pointer",
                "z-index": 99999999,
                top: pm.p_top,
                left: pm.p_left,
                width: pm.p_width + "px",
                height: pm.p_height + "px",
            });
            parent_button.css({
                "will-change": "background transition animation",
                "background-image": "url(" + pm.src + ")",
                "background-repeat": "no-repeat",
                "background-size": "100% 100%",
                width: pm.p_width + "px",
                height: pm.p_height + "px",
                transition: pm.enter_fade + "ms",
                opacity: 1,
            });
            parent_button.attr("src", _absolute);

            $.setName(j_button, pm.name);
            if (parent_button.hasClass("fixlayer")) {
                j_button.addClass("fixlayer");
            }
            that.kag.event.addEventElement({
                tag: "button_ex",
                j_target: j_button,
                pm: pm,
            });
            parent_button.after(j_button);
            self.setEvent(j_button, pm);
            that.kag.ftag.nextOrder();
        };

        const KNOWN_SIZES = {
            'workring_fx_off.png': { w: 160, h: 144 },
            'workring_fx_on.png': { w: 160, h: 144 },
            'workring_neru_off.png': { w: 160, h: 144 },
            'workring_neru_on.png': { w: 160, h: 144 },
            'workring_kintore_off.png': { w: 184, h: 104 },
            'workring_kintore_on.png': { w: 184, h: 104 },
            'workring_massa_off.png': { w: 160, h: 176 },
            'workring_massa0_off.png': { w: 160, h: 176 },
            'workring_massa_on.png': { w: 160, h: 176 },
            'workring_massa0_on.png': { w: 160, h: 176 },
            'workring_jim_off.png': { w: 160, h: 176 },
            'workring_jim0_off.png': { w: 160, h: 176 },
            'workring_jim_on.png': { w: 160, h: 176 },
            'workring_jim0_on.png': { w: 160, h: 176 },
            'workring_seisou_off.png': { w: 208, h: 128 },
            'workring_seisou0_off.png': { w: 208, h: 128 },
            'workring_seisou_on.png': { w: 208, h: 128 },
            'workring_seisou0_on.png': { w: 208, h: 128 },
            'workring_en.png': { w: 160, h: 160 },
            'shinnyu_off.png': { w: 80, h: 80 },
            'shinnyu_on.png': { w: 80, h: 80 }
        };

        const getKnownSize = (src) => {
            if (!src) return null;
            for (const [k, v] of Object.entries(KNOWN_SIZES)) {
                if (src.endsWith(k) || src.includes(k)) return v;
            }
            return null;
        };

        const known = getKnownSize(pm.src);
        if (known) {
            pm.p_width = known.w;
            pm.p_height = known.h;
            button_set(j_button, parent_button, pm);
            return;
        }

        const nw = parent_button[0] ? (parent_button[0].naturalWidth || parent_button[0].width) : 0;
        const nh = parent_button[0] ? (parent_button[0].naturalHeight || parent_button[0].height) : 0;
        const cw = parseInt(parent_button.css("width")) || 0;
        const ch = parseInt(parent_button.css("height")) || 0;
        pm.p_width = nw || cw || 160;
        pm.p_height = nh || ch || 144;
        button_set(j_button, parent_button, pm);
    },

    setEvent: function (j_button, pm) {
        var that = TYRANO;
        var self = this;
        var csscls = name2class(pm.name);
        var parent_button = $("img." + csscls + ":first");

        j_button.hover(
            function (ev) {
                TYRANO.kag.variable.tf._button_ex_tip = true;

                if (pm.disable && that.kag.embScript(pm.disable)) {
                    $("." + csscls).css({ cursor: "default" });
                    ev.stopPropagation();
                    return false;
                } else {
                    $("." + csscls).css({ cursor: "pointer" });
                }

                // 1. Mouseover Enter Image
                if (pm.enterimg && pm.enterimg != "") {
                    let fullEnter = (pm.enterimg.startsWith("data/") || pm.enterimg.startsWith("http")) ? pm.enterimg : "data/image/" + pm.enterimg;
                    let cdnEnter = window.resolveCDNUrl ? window.resolveCDNUrl(fullEnter) : fullEnter;
                    parent_button.css({
                        "background-image": "url(" + cdnEnter + ")",
                    });
                }

                // 2. Tooltip Icon/Image (tip)
                if (pm.tip && pm.tip != "") {
                    var p_top = parseInt(parent_button.css("top")) || 0;
                    var p_left = parseInt(parent_button.css("left")) || 0;
                    var p_width = parseInt(parent_button.css("width")) || parseInt(pm.p_width) || 160;
                    var p_height = parseInt(parent_button.css("height")) || parseInt(pm.p_height) || 144;

                    $(".__tip").remove();
                    var tip = $("<img />");
                    var fix = TYRANO.kag.layer.getLayer("fix");
                    if (!fix || fix.length === 0) fix = $("#tyrano_base");
                    fix.append(tip);

                    let fullTip = (pm.tip.startsWith("data/") || pm.tip.startsWith("http")) ? pm.tip : "data/image/" + pm.tip;
                    let cdnTip = window.resolveCDNUrl ? window.resolveCDNUrl(fullTip) : fullTip;
                    tip.attr("src", cdnTip);

                    var t_margin = parseInt(pm.tip_margin) || 0;
                    var opt = {
                        position: "absolute",
                        "z-index": 999999999,
                        "pointer-events": "none",
                        opacity: 1
                    };

                    if (pm.tip_pos == "top") {
                        opt.top = (p_top - 40 - t_margin) + "px";
                        opt.left = p_left + "px";
                    } else if (pm.tip_pos == "right") {
                        opt.top = p_top + "px";
                        opt.left = (p_left + p_width + t_margin) + "px";
                    } else if (pm.tip_pos == "bottom") {
                        opt.top = (p_top + p_height + t_margin) + "px";
                        opt.left = p_left + "px";
                    } else if (pm.tip_pos == "left") {
                        opt.top = p_top + "px";
                        opt.left = (p_left - 40 - t_margin) + "px";
                    } else if (pm.tip_pos == "static") {
                        opt.top = pm.tip_y + "px";
                        opt.left = pm.tip_x + "px";
                    }

                    tip.addClass("__tip");
                    tip.addClass("fixlayer");
                    tip.css(opt);
                }

                // 3. Trigger hover on parent & targets for scenario script handlers (e.g. $(".fx_select").css("opacity", "1"))
                parent_button.trigger("mouseenter").trigger("mouseover");
                $("." + csscls).not(j_button).trigger("mouseenter").trigger("mouseover");
            },
            function (ev) {
                if (pm.disable && that.kag.embScript(pm.disable)) {
                    ev.stopPropagation();
                    return false;
                }

                $("." + csscls).css({ cursor: "default" });
                TYRANO.kag.variable.tf._button_ex_tip = false;

                if (pm.enterimg) {
                    parent_button.css({
                        "background-image": "url(" + pm.src + ")",
                    });
                }
                $(".__tip").remove();

                // Trigger mouseleave on parent & targets
                parent_button.trigger("mouseleave").trigger("mouseout");
                $("." + csscls).not(j_button).trigger("mouseleave").trigger("mouseout");
            }
        );

        j_button.on("click", function (ev) {
            if (pm.disable && that.kag.embScript(pm.disable)) {
                ev.stopPropagation();
                return false;
            } else {
                $(".__tip").remove();
                if (pm.clickimg && pm.clickimg != "") {
                    let fullClick = (pm.clickimg.startsWith("data/") || pm.clickimg.startsWith("http")) ? pm.clickimg : "data/image/" + pm.clickimg;
                    let cdnClick = window.resolveCDNUrl ? window.resolveCDNUrl(fullClick) : fullClick;
                    parent_button.css({
                        "background-image": "url(" + cdnClick + ")",
                    });
                }
                parent_button.trigger("tap");
                parent_button.trigger("click");
                if (parent_button.length > 0 && parent_button[0].click) {
                    parent_button[0].click();
                }
            }
        });
    }
};

tyrano.plugin.kag.ftag.master_tag.button_ex = tyrano.plugin.kag.tag.button_ex;
tyrano.plugin.kag.ftag.master_tag.button_ex.kag = tyrano.plugin.kag;

tyrano.plugin.kag.tag.button_ex_restore = {
    vital: [],
    pm: {},
    start: function (pm) {
        $(".__tip").remove();
        TYRANO.kag.ftag.nextOrder();
    },
};

tyrano.plugin.kag.ftag.master_tag.button_ex_restore = tyrano.plugin.kag.tag.button_ex_restore;
tyrano.plugin.kag.ftag.master_tag.button_ex_restore.kag = tyrano.plugin.kag;
})();
'''

    plugin_overrides = {
        'awakegame_ex': {'init.ks': awakegame_init, 'main.js': awakegame_main},
        'tb_save_img': {'init.ks': tb_save_img_init},
        'uiparts_set': {'init.ks': uiparts_init},
        'waapi': {'init.ks': waapi_init},
        'button_ex': {'init.ks': button_ex_init, 'main.js': button_ex_main}
    }
    for p_name, files in plugin_overrides.items():
        p_dir = os.path.join(plugin_dst, p_name)
        os.makedirs(p_dir, exist_ok=True)
        for fname, content in files.items():
            with open(os.path.join(p_dir, fname), 'w', encoding='utf-8') as f:
                f.write(content)
    
    save_thumb_src = os.path.join(ROOT_DIR, 'patch', 'data', 'others', 'save_thumbnail.js')
    if os.path.exists(save_thumb_src):
        shutil.copy2(save_thumb_src, os.path.join(others_dst, 'save_thumbnail.js'))

    ico_src = os.path.join(ROOT_DIR, 'tools', 'tyrano.ico')
    if os.path.exists(ico_src):
        shutil.copy2(ico_src, os.path.join(WEB_SRC_DIR, 'favicon.ico'))
        
    # Đồng bộ video gốc (title_bg.mp4) vào web/data/video/
    video_src_dir = os.path.join(APP_SRC_DIR, 'data', 'video')
    video_dst_dir = os.path.join(WEB_SRC_DIR, 'data', 'video')
    os.makedirs(video_dst_dir, exist_ok=True)
    if os.path.exists(video_src_dir):
        for vf in os.listdir(video_src_dir):
            if vf.endswith('.mp4'):
                shutil.copy2(os.path.join(video_src_dir, vf), os.path.join(video_dst_dir, vf))
    
    # 3. Dọn dẹp font TTF nặng trong web/ (Sử dụng hệ thống Web Fonts CSS sắc nét)
    font_dir = os.path.join(WEB_SRC_DIR, 'data', 'others', 'font')
    if os.path.exists(font_dir):
        shutil.rmtree(font_dir, ignore_errors=True)
    os.makedirs(font_dir, exist_ok=True)
            
    # 4. Đồng bộ UI Images & Default/Special GIF Assets
    if os.path.exists(os.path.join(ROOT_DIR, 'patch', 'data', 'image')):
        shutil.copytree(os.path.join(ROOT_DIR, 'patch', 'data', 'image'), os.path.join(WEB_SRC_DIR, 'data', 'image'), dirs_exist_ok=True)

    for base_src in [os.path.join(ROOT_DIR, 'resources', 'app'), os.path.join(ROOT_DIR, 'HOME_', 'resources', 'app')]:
        fg_def_src = os.path.join(base_src, 'data', 'fgimage', 'default')
        if os.path.exists(fg_def_src):
            fg_def_dst = os.path.join(WEB_SRC_DIR, 'data', 'fgimage', 'default')
            os.makedirs(fg_def_dst, exist_ok=True)
            for item in os.listdir(fg_def_src):
                s_item = os.path.join(fg_def_src, item)
                d_item = os.path.join(fg_def_dst, item)
                if os.path.isfile(s_item):
                    shutil.copy2(s_item, d_item)

    # 5. Đồng bộ kịch bản .ks đã dịch (Lấy trực tiếp từ patch/data/scenario - bản dịch Tiếng Việt chuẩn SSOT)
    scenario_dst = os.path.join(WEB_SRC_DIR, 'data', 'scenario')
    patch_scenario_dir = os.path.join(ROOT_DIR, 'patch', 'data', 'scenario')
    if os.path.exists(patch_scenario_dir):
        shutil.copytree(patch_scenario_dir, scenario_dst, dirs_exist_ok=True)
        
    # Cấu hình Config.tjs cho Web (Dùng font hệ thống & webstorage)
    config_tjs_path = os.path.join(WEB_SRC_DIR, 'data', 'system', 'Config.tjs')
    if os.path.exists(config_tjs_path):
        with open(config_tjs_path, 'r', encoding='utf-8', errors='ignore') as f:
            cfg = f.read()
        cfg = cfg.replace(';configSave=file', ';configSave=webstorage')
        cfg = cfg.replace(';userFace=Quicksand, 游ゴシック体, Yu Gothic, YuGothic, ヒラギノ角ゴシック Pro, Hiragino Kaku Gothic Pro, メイリオ, Meiryo, Osaka, ＭＳ Ｐゴシック, MS PGothic, sans-serif, Arial', ';userFace=system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", "Noto Sans", Arial, sans-serif')
        with open(config_tjs_path, 'w', encoding='utf-8') as f:
            f.write(cfg)

    # Vá triệt để lỗi Autoplay Video và NotAllowedError trong kag.tag_ext.js
    tag_ext_path = os.path.join(WEB_SRC_DIR, 'tyrano', 'plugins', 'kag', 'kag.tag_ext.js')
    if os.path.exists(tag_ext_path):
        with open(tag_ext_path, 'r', encoding='utf-8', errors='ignore') as f:
            ext_code = f.read()
        if 'video.defaultMuted' not in ext_code:
            ext_code = ext_code.replace('video=document.createElement("video")', 'video=document.createElement("video");video.muted=true;video.defaultMuted=true')
            ext_code = ext_code.replace('video2=document.createElement("video")', 'video2=document.createElement("video");video2.muted=true;video2.defaultMuted=true')
        if 'video2.play();' in ext_code:
            ext_code = ext_code.replace('video2.play();', 'try{var _pr2=video2.play();if(_pr2&&_pr2.catch)_pr2.catch(function(){});}catch(e){};')
        if 'video.style.display="";video.play()' in ext_code:
            ext_code = ext_code.replace('video.style.display="";video.play()', 'video.style.display="";try{var _pr=video.play();if(_pr&&_pr.catch)_pr.catch(function(){});}catch(e){}')
        with open(tag_ext_path, 'w', encoding='utf-8') as f:
            f.write(ext_code)

    # Sửa lỗi layermode hỗ trợ CDN URL và đường dẫn tương đối trong kag.tag.js
    tag_js_path = os.path.join(WEB_SRC_DIR, 'tyrano', 'plugins', 'kag', 'kag.tag.js')
    if os.path.exists(tag_js_path):
        with open(tag_js_path, 'r', encoding='utf-8', errors='ignore') as f:
            tag_code = f.read()
        tag_code = tag_code.replace(
            'storage_url = "./data/" + folder + "/" + pm.graphic',
            'if ($.isHTTP(pm.graphic)) { storage_url = pm.graphic; } else if (pm.graphic.indexOf("../") == 0) { storage_url = "./data/" + pm.graphic.replace("../", ""); } else { storage_url = "./data/" + folder + "/" + pm.graphic; }'
        )
        with open(tag_js_path, 'w', encoding='utf-8') as f:
            f.write(tag_code)

    # Sửa triệt để lỗi Howler tạo lặp lại hàng chục AudioContext lúc boot
    howler_path = os.path.join(WEB_SRC_DIR, 'tyrano', 'libs', 'howler.js')
    if os.path.exists(howler_path):
        with open(howler_path, 'r', encoding='utf-8', errors='ignore') as f:
            howler_code = f.read()
        howler_code = howler_code.replace(
            'if (!Howler.usingWebAudio) {',
            'if (!Howler.usingWebAudio || Howler.ctx) {'
        )
        howler_code = howler_code.replace(
            'Howler.ctx = new AudioContext();',
            'Howler.ctx = (window.HOME_AudioEngine && window.HOME_AudioEngine.getAudioContext) ? window.HOME_AudioEngine.getAudioContext() : (Howler.ctx || new AudioContext());'
        )
        howler_code = howler_code.replace(
            'Howler.ctx = new webkitAudioContext();',
            'Howler.ctx = (window.HOME_AudioEngine && window.HOME_AudioEngine.getAudioContext) ? window.HOME_AudioEngine.getAudioContext() : (Howler.ctx || new webkitAudioContext());'
        )
        howler_code = howler_code.replace(
            'if (typeof self.ctx.resume === \'function\') {\n          self.ctx.resume();\n        }',
            'if (self.ctx && self.ctx.state !== \'closed\' && typeof self.ctx.resume === \'function\') { try { var _r = self.ctx.resume(); if (_r && _r.catch) _r.catch(function(){}); } catch(e){} }'
        )
        howler_code = howler_code.replace(
            'self.ctx.resume().then(function() {',
            'if (self.ctx && self.ctx.state !== \'closed\' && typeof self.ctx.resume === \'function\') { try { var _rp = self.ctx.resume(); if (_rp && _rp.then) _rp.then(function() {'
        )
        howler_code = howler_code.replace(
            'for (var i=0; i<self._howls.length; i++) {\n            self._howls[i]._emit(\'resume\');\n          }\n        });',
            'for (var i=0; i<self._howls.length; i++) {\n            self._howls[i]._emit(\'resume\');\n          }\n        }).catch(function(){}); } catch(e){} }'
        )
        howler_code = howler_code.replace(
            'self.ctx.suspend().then(function() {',
            'if (self.ctx && self.ctx.state !== \'closed\' && typeof self.ctx.suspend === \'function\') { try { var _sp = self.ctx.suspend(); if (_sp && _sp.then) _sp.then(function() {'
        )
        howler_code = howler_code.replace(
            'if (self._resumeAfterSuspend) {\n            delete self._resumeAfterSuspend;\n            self._autoResume();\n          }\n        });',
            'if (self._resumeAfterSuspend) {\n            delete self._resumeAfterSuspend;\n            self._autoResume();\n          }\n        }).catch(function(){}); } catch(e){} }'
        )
        howler_code = howler_code.replace(
            'if (self.usingWebAudio && self.ctx && typeof self.ctx.close !== \'undefined\') {\n        self.ctx.close();\n        self.ctx = null;\n        setupAudioContext();\n      }',
            'if (self.usingWebAudio && self.ctx && typeof self.ctx.close !== \'undefined\') {\n        try { if (self.ctx.state !== \'closed\') self.ctx.close(); } catch(e){}\n        self.ctx = null;\n        setupAudioContext();\n      }'
        )
        with open(howler_path, 'w', encoding='utf-8') as f:
            f.write(howler_code)

    # Đồng bộ AudioContext trong kag.js với HOME_AudioEngine
    kag_js_path = os.path.join(WEB_SRC_DIR, 'tyrano', 'plugins', 'kag', 'kag.js')
    if os.path.exists(kag_js_path):
        with open(kag_js_path, 'r', encoding='utf-8', errors='ignore') as f:
            kag_code = f.read()
        kag_code = kag_code.replace(
            'AudioContext && (this.tmp.audio_context = new AudioContext())',
            'AudioContext && (this.tmp.audio_context = (window.HOME_AudioEngine && window.HOME_AudioEngine.getAudioContext) ? window.HOME_AudioEngine.getAudioContext() : (this.tmp.audio_context || new AudioContext()))'
        )
        with open(kag_js_path, 'w', encoding='utf-8') as f:
            f.write(kag_code)

    # Tối ưu hóa $.loadText trong web/tyrano/libs.js: Không dùng Math.random(), ưu tiên RAM bundle
    libs_js_path = os.path.join(WEB_SRC_DIR, 'tyrano', 'libs.js')
    if os.path.exists(libs_js_path):
        with open(libs_js_path, 'r', encoding='utf-8', errors='ignore') as f:
            libs_code = f.read()
        
        load_text_replacement = '''
    $.loadText = function(file_path, callback) {
        if (!file_path) {
            if (callback) callback("");
            return;
        }
        var clean = file_path.split('?')[0];
        var norm = clean.replace(/^[.\\/\\\\]+/, '').replace(/\\\\/g, '/');
        var basename = norm.split('/').pop();

        if (window.__HOME_SCENARIO_BUNDLE) {
            var content = window.__HOME_SCENARIO_BUNDLE[file_path] ||
                          window.__HOME_SCENARIO_BUNDLE[clean] ||
                          window.__HOME_SCENARIO_BUNDLE[norm] ||
                          window.__HOME_SCENARIO_BUNDLE['data/scenario/' + basename] ||
                          window.__HOME_SCENARIO_BUNDLE['./data/scenario/' + basename] ||
                          window.__HOME_SCENARIO_BUNDLE[basename];
            if (content !== undefined) {
                if (callback) {
                    setTimeout(function() { callback(content); }, 0);
                }
                return;
            }
        }

        if (window.__DYNAMIC_TEXT_CACHE && window.__DYNAMIC_TEXT_CACHE[norm]) {
            if (callback) {
                setTimeout(function() { callback(window.__DYNAMIC_TEXT_CACHE[norm]); }, 0);
            }
            return;
        }

        $.ajax({
            url: file_path,
            cache: true,
            success: function(text) {
                if (!window.__DYNAMIC_TEXT_CACHE) window.__DYNAMIC_TEXT_CACHE = {};
                window.__DYNAMIC_TEXT_CACHE[norm] = text;
                if (callback) callback(text);
            },
            error: function() {
                console.warn("file not found:" + file_path);
                if (callback) callback("");
            }
        });
    };
'''
        target_pat = '$.loadText = function(file_path, callback) {'
        if target_pat in libs_code:
            idx = libs_code.find(target_pat)
            end_idx = libs_code.find('//クッキーを取得', idx)
            if end_idx != -1:
                libs_code = libs_code[:idx] + load_text_replacement.strip() + '\n\n    ' + libs_code[end_idx:]
                with open(libs_js_path, 'w', encoding='utf-8') as f:
                    f.write(libs_code)

    scenario_count = len([f for f in os.listdir(scenario_dst) if f.endswith('.ks')]) if os.path.exists(scenario_dst) else 0
    print(f"  [OK] Đã nạp thành công {scenario_count} tệp scenario .ks và cấu hình Web Engine.")


def step4_generate_web_core_modules(records=None):
    """Tạo bộ module Web hoàn chỉnh: Audio Engine, IndexedDB Save, CDN Interceptor, Mobile Touch HUD & CSS"""
    print("\n[4/6] ⚡ Xây dựng bộ ba Web Engine & Responsive UI Modules...")

    if records is None:
        manifest_path = os.path.join(WEB_SRC_DIR, 'data', 'asset_manifest.json')
        if os.path.exists(manifest_path):
            with open(manifest_path, 'r', encoding='utf-8') as f:
                records = json.load(f)
        else:
            records = {}

    # 0. Tạo scenario_bundle.js: Bundling toàn bộ 267 scenario .ks + Config.tjs + HTML templates vào RAM Cache
    scenario_bundle = {}
    scenario_dir = os.path.join(WEB_SRC_DIR, 'data', 'scenario')
    if os.path.exists(scenario_dir):
        for root, _, files in os.walk(scenario_dir):
            for file in files:
                if file.endswith('.ks'):
                    full_p = os.path.join(root, file)
                    rel_p = os.path.relpath(full_p, WEB_SRC_DIR).replace('\\', '/')
                    with open(full_p, 'r', encoding='utf-8', errors='ignore') as sf:
                        content = sf.read()
                    scenario_bundle[file] = content
                    scenario_bundle[rel_p] = content
                    scenario_bundle['./' + rel_p] = content
                    scenario_bundle[f"data/scenario/{file}"] = content
                    scenario_bundle[f"./data/scenario/{file}"] = content

    # Thêm Config.tjs
    config_tjs_path = os.path.join(WEB_SRC_DIR, 'data', 'system', 'Config.tjs')
    if os.path.exists(config_tjs_path):
        with open(config_tjs_path, 'r', encoding='utf-8', errors='ignore') as cf:
            c_text = cf.read()
        scenario_bundle['data/system/Config.tjs'] = c_text
        scenario_bundle['./data/system/Config.tjs'] = c_text
        scenario_bundle['Config.tjs'] = c_text

    # Thêm HTML templates
    html_dir = os.path.join(WEB_SRC_DIR, 'tyrano', 'html')
    if os.path.exists(html_dir):
        for hf in os.listdir(html_dir):
            if hf.endswith('.html'):
                with open(os.path.join(html_dir, hf), 'r', encoding='utf-8', errors='ignore') as hfile:
                    h_text = hfile.read()
                scenario_bundle[f"tyrano/html/{hf}"] = h_text
                scenario_bundle[f"./tyrano/html/{hf}"] = h_text
                scenario_bundle[f"data/others/plugin/theme_kopanda_09_2/html/{hf}"] = h_text
                scenario_bundle[f"./data/others/plugin/theme_kopanda_09_2/html/{hf}"] = h_text
                scenario_bundle[hf] = h_text

    bundle_json = json.dumps(scenario_bundle, ensure_ascii=False)
    bundle_js = f"""// HOME Visual Novel - In-Memory High-Speed Scenario & Script Bundle
// Preloads all 267 scenario scripts directly into browser RAM for 0ms transitions
window.__HOME_SCENARIO_BUNDLE = {bundle_json};
console.log("[ScenarioBundle] ✅ Đã nạp sẵn " + Object.keys(window.__HOME_SCENARIO_BUNDLE).length + " mục kịch bản & tài nguyên vào RAM Cache.");
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'scenario_bundle.js'), 'w', encoding='utf-8') as f:
        f.write(bundle_js)

    # 1. web/css/font.css (Tận dụng font hệ thống Tiếng Việt sắc nét, tương phản cao)
    font_css = """/* ==========================================================================
   CẤU HÌNH FONT TIẾNG VIỆT NOTO SANS & AUTO-WRAP CHO TYRANOSCRIPT
   ========================================================================== */

* {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-rendering: optimizeLegibility;
}

body, div, span, p, a, input, textarea, button,
.message_inner, .current_span, .glink_button, .button, 
.menu_item, .ptext, .log_body, .save_list_item_text, .layer_menu {
    font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Noto Sans", "Helvetica Neue", Arial, sans-serif !important;
}

/* Tự động ngắt dòng thông minh cho văn bản tiếng Việt */
.message_inner, .log_body, .current_span {
    word-break: break-word !important;
    overflow-wrap: break-word !important;
    white-space: normal !important;
}
"""
    with open(os.path.join(WEB_SRC_DIR, 'css', 'font.css'), 'w', encoding='utf-8') as f:
        f.write(font_css)
    with open(os.path.join(WEB_SRC_DIR, 'tyrano', 'css', 'font.css'), 'w', encoding='utf-8') as f:
        f.write(font_css)


    # 2. web/css/web_core.css
    web_core_css = """/* ══════════════════════════════════════════════════════════════════════════════
   HOME - WEB CORE RESPONSIVE STYLESHEET
   ══════════════════════════════════════════════════════════════════════════════ */

html, body {
    width: 100%;
    height: 100%;
    height: 100dvh;
    margin: 0;
    padding: 0;
    background-color: #000000;
    overflow: hidden;
    touch-action: manipulation;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    user-select: none;
    padding-top: env(safe-area-inset-top);
    padding-bottom: env(safe-area-inset-bottom);
    padding-left: env(safe-area-inset-left);
    padding-right: env(safe-area-inset-right);
}

#tyrano_base, .tyrano_base {
    background-color: #000000;
}

img[src*="workring_en.png"] {
    pointer-events: none !important;
}

#orientation_overlay {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    height: 100dvh;
    background: rgba(10, 10, 15, 0.96);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    z-index: 999999;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    text-align: center;
    padding: 24px;
    box-sizing: border-box;
}

@media screen and (orientation: portrait) and (max-width: 900px) {
    #orientation_overlay {
        display: flex !important;
    }
}

.orientation-icon {
    font-size: 54px;
    margin-bottom: 18px;
    animation: rotatePhone 2.2s infinite ease-in-out;
}

@keyframes rotatePhone {
    0%, 15% { transform: rotate(0deg); }
    50%, 65% { transform: rotate(-90deg); }
    100% { transform: rotate(0deg); }
}

.orientation-title {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 8px;
    color: #60a5fa;
    letter-spacing: 0.05em;
}

.orientation-desc {
    font-size: 14px;
    color: #94a3b8;
    max-width: 320px;
    line-height: 1.5;
}
"""
    with open(os.path.join(WEB_SRC_DIR, 'css', 'web_core.css'), 'w', encoding='utf-8') as f:
        f.write(web_core_css)

    # 3. web/js/web_audio_engine.js
    web_audio_engine_js = """/**
 * HOME - Web Audio Engine & Steganography Audio Decoder
 * =======================================================
 * - Web Audio Autoplay Unlocker
 * - Bit-Exact Stego PNG Decoder (Giải mã nhị phân trực tiếp, không biến dạng byte)
 * - Multi-Channel Audio Mixer & Anti-Pop Declick Envelope (0ms độ trễ)
 */

(function() {
    'use strict';

    let audioCtx = null;
    let isUnlocked = false;
    const audioBufferCache = new Map();
    const audioPromiseCache = new Map();

    let activeBgmSource = null;
    let activeBgmGainNode = null;
    const activeSeMap = new Map(); // bufIdx -> { source, gainNode }
    const MASTER_BGM_SCALE = 0.65;
    const MASTER_SE_SCALE = 0.85;

    function getAudioContext() {
        if (!audioCtx || audioCtx.state === 'closed') {
            const AudioContextClass = window.AudioContext || window.webkitAudioContext;
            if (AudioContextClass) {
                audioCtx = new AudioContextClass();
                if (window.Howler) Howler.ctx = audioCtx;
            }
        }
        return audioCtx;
    }

    function unlockAudioContext() {
        const ctx = getAudioContext();
        if (ctx && ctx.state === 'suspended') {
            ctx.resume().then(() => {
                isUnlocked = true;
            }).catch(() => {});
        } else if (ctx && ctx.state === 'running') {
            isUnlocked = true;
        }
    }

    ['pointerdown', 'touchstart', 'touchend', 'click', 'keydown'].forEach(evt => {
        window.addEventListener(evt, unlockAudioContext, { passive: true, once: false });
    });

    // ─── Giải mã Bit-Exact Pure JS PNG Stego ──────────────────────────────────
    async function extractStegoAudioBytes(arrayBuffer) {
        const buf = new Uint8Array(arrayBuffer);
        let offset = 8;
        const idatParts = [];
        let width = 0, height = 0;

        while (offset < buf.length) {
            const view = new DataView(buf.buffer, buf.byteOffset + offset, 8);
            const len = view.getUint32(0);
            const type = String.fromCharCode(buf[offset + 4], buf[offset + 5], buf[offset + 6], buf[offset + 7]);
            if (type === 'IHDR') {
                const ihdrView = new DataView(buf.buffer, buf.byteOffset + offset + 8, 8);
                width = ihdrView.getUint32(0);
                height = ihdrView.getUint32(4);
            } else if (type === 'IDAT') {
                idatParts.push(buf.subarray(offset + 8, offset + 8 + len));
            }
            offset += 8 + len + 4;
        }

        if (idatParts.length === 0 || width === 0 || height === 0) {
            throw new Error('Invalid PNG chunks in Stego Audio');
        }

        let totalLen = 0;
        for (let i = 0; i < idatParts.length; i++) totalLen += idatParts[i].length;
        const idat = new Uint8Array(totalLen);
        let p = 0;
        for (let i = 0; i < idatParts.length; i++) {
            idat.set(idatParts[i], p);
            p += idatParts[i].length;
        }

        // Decompress raw deflate payload
        const rawDeflate = idat.subarray(2, idat.length - 4);
        const ds = new DecompressionStream('deflate-raw');
        const writer = ds.writable.getWriter();
        writer.write(rawDeflate);
        writer.close();

        const reader = ds.readable.getReader();
        const chunks = [];
        while (true) {
            const { done, value } = await reader.read();
            if (done) break;
            chunks.push(value);
        }

        let decLen = 0;
        for (let i = 0; i < chunks.length; i++) decLen += chunks[i].length;
        const decompressed = new Uint8Array(decLen);
        p = 0;
        for (let i = 0; i < chunks.length; i++) {
            decompressed.set(chunks[i], p);
            p += chunks[i].length;
        }

        const stride = width * 3;
        const rawPixels = new Uint8Array(width * height * 3);
        let prevRow = new Uint8Array(stride);

        function paeth(a, b, c) {
            const pa = Math.abs(b - c);
            const pb = Math.abs(a - c);
            const pc = Math.abs(a + b - 2 * c);
            if (pa <= pb && pa <= pc) return a;
            if (pb <= pc) return b;
            return c;
        }

        for (let y = 0; y < height; y++) {
            const filterType = decompressed[y * (stride + 1)];
            const curRow = new Uint8Array(stride);
            const srcOffset = y * (stride + 1) + 1;
            for (let x = 0; x < stride; x++) {
                const val = decompressed[srcOffset + x];
                const a = x >= 3 ? curRow[x - 3] : 0;
                const b = prevRow[x];
                const c = x >= 3 ? prevRow[x - 3] : 0;
                let res = val;
                if (filterType === 1) res = (val + a) & 0xFF;
                else if (filterType === 2) res = (val + b) & 0xFF;
                else if (filterType === 3) res = (val + ((a + b) >> 1)) & 0xFF;
                else if (filterType === 4) res = (val + paeth(a, b, c)) & 0xFF;
                curRow[x] = res;
            }
            rawPixels.set(curRow, y * stride);
            prevRow = curRow;
        }

        const dataSize = ((rawPixels[4] << 24) >>> 0) | (rawPixels[5] << 16) | (rawPixels[6] << 8) | rawPixels[7];
        return rawPixels.subarray(12, 12 + dataSize);
    }

    async function decodeAudioFromUrl(url) {
        const cacheKey = url.split('?')[0];
        if (audioBufferCache.has(cacheKey)) {
            return audioBufferCache.get(cacheKey);
        }
        if (audioPromiseCache.has(cacheKey)) {
            return audioPromiseCache.get(cacheKey);
        }

        const decodePromise = (async () => {
            try {
                const resp = await fetch(url, { referrerPolicy: 'no-referrer' });
                const arrayBuffer = await resp.arrayBuffer();
                const audioBytes = await extractStegoAudioBytes(arrayBuffer);
                const ctx = getAudioContext();
                const arrayBufferToDecode = audioBytes.buffer.slice(audioBytes.byteOffset, audioBytes.byteOffset + audioBytes.byteLength);
                const decodedBuffer = await ctx.decodeAudioData(arrayBufferToDecode);

                // Anti-Pop fadeout cuối file
                try {
                    const fadeSamples = Math.min(1024, decodedBuffer.length);
                    for (let ch = 0; ch < decodedBuffer.numberOfChannels; ch++) {
                        const channelData = decodedBuffer.getChannelData(ch);
                        const len = channelData.length;
                        for (let i = 0; i < fadeSamples; i++) {
                            const idx = len - fadeSamples + i;
                            channelData[idx] *= (1.0 - (i / fadeSamples));
                        }
                    }
                } catch(e) {}

                audioBufferCache.set(cacheKey, decodedBuffer);
                return decodedBuffer;
            } finally {
                audioPromiseCache.delete(cacheKey);
            }
        })();

        audioPromiseCache.set(cacheKey, decodePromise);
        return decodePromise;
    }

    // ─── Play BGM ─────────────────────────────────────────────────────────────
    async function playBGM(url, loop = true, rawVol = 100, buf = "0") {
        try {
            const ctx = getAudioContext();
            if (ctx.state === 'suspended') {
                try { ctx.resume().catch(() => {}); } catch(e) {}
            }

            if (activeBgmSource) {
                try { activeBgmSource.stop(); } catch(e) {}
                activeBgmSource = null;
            }

            const audioBuffer = await decodeAudioFromUrl(url);
            const source = ctx.createBufferSource();
            const gainNode = ctx.createGain();

            source.buffer = audioBuffer;
            source.loop = (loop !== false && loop !== "false");

            let numVol = parseFloat(rawVol);
            if (isNaN(numVol)) numVol = 80;
            if (numVol > 1.0) numVol = numVol / 100.0;

            const finalVol = Math.max(0, Math.min(1.0, numVol * MASTER_BGM_SCALE));
            gainNode.gain.setValueAtTime(finalVol, ctx.currentTime);

            source.connect(gainNode);
            gainNode.connect(ctx.destination);

            source.start(0);
            activeBgmSource = source;
            activeBgmGainNode = gainNode;
        } catch(err) {
            console.warn('[Web Audio Engine] BGM play error:', err);
        }
    }

    function stopBGM(fadeMs = 1500) {
        if (activeBgmGainNode && activeBgmSource) {
            const ctx = getAudioContext();
            const fadeSec = fadeMs / 1000.0;
            activeBgmGainNode.gain.setValueAtTime(activeBgmGainNode.gain.value, ctx.currentTime);
            activeBgmGainNode.gain.linearRampToValueAtTime(0.0001, ctx.currentTime + fadeSec);
            setTimeout(() => {
                if (activeBgmSource) {
                    try { activeBgmSource.stop(); } catch(e) {}
                    activeBgmSource = null;
                }
            }, fadeMs);
        }
    }

    // ─── Play SE / Voice ──────────────────────────────────────────────────────
    async function playSE(url, rawVol = 100, buf = "0", onEndedCb = null) {
        try {
            const ctx = getAudioContext();
            if (ctx.state === 'suspended') {
                try { ctx.resume().catch(() => {}); } catch(e) {}
            }

            const bufStr = String(buf || "0");

            // Ngắt êm âm thanh trước trên cùng kênh buffer
            if (activeSeMap.has(bufStr)) {
                const prev = activeSeMap.get(bufStr);
                if (prev.gainNode && prev.source) {
                    prev.gainNode.gain.setValueAtTime(prev.gainNode.gain.value, ctx.currentTime);
                    prev.gainNode.gain.linearRampToValueAtTime(0.0001, ctx.currentTime + 0.006);
                    setTimeout(() => { try { prev.source.stop(); } catch(e) {} }, 8);
                }
                activeSeMap.delete(bufStr);
            }

            const audioBuffer = await decodeAudioFromUrl(url);
            const source = ctx.createBufferSource();
            const gainNode = ctx.createGain();
            const filterNode = ctx.createBiquadFilter();
            filterNode.type = 'lowpass';
            filterNode.frequency.value = 12000;

            source.buffer = audioBuffer;
            source.loop = false;

            let numVol = parseFloat(rawVol);
            if (isNaN(numVol)) numVol = 80;
            if (numVol > 1.0) numVol = numVol / 100.0;

            let finalVol = Math.max(0, Math.min(1.0, numVol * MASTER_SE_SCALE));
            if (url.includes('sistem_starton.mp3')) finalVol *= 0.35;

            // Attack ramp 4ms chống click cơ học
            gainNode.gain.setValueAtTime(0.0001, ctx.currentTime);
            gainNode.gain.exponentialRampToValueAtTime(Math.max(0.0001, finalVol), ctx.currentTime + 0.004);

            source.connect(gainNode);
            gainNode.connect(filterNode);
            filterNode.connect(ctx.destination);

            source.start(0);
            activeSeMap.set(bufStr, { source, gainNode });

            source.onended = () => {
                if (activeSeMap.get(bufStr)?.source === source) {
                    activeSeMap.delete(bufStr);
                }
                if (typeof onEndedCb === 'function') onEndedCb();
            };
        } catch(err) {
            console.warn('[Web Audio Engine] SE play error:', err);
            if (typeof onEndedCb === 'function') onEndedCb();
        }
    }

    // ─── Decode Binary / Video Blob from URL ──────────────────────────────────
    const blobUrlCache = new Map();
    async function loadBinaryBlobUrl(url, mimeType = 'video/mp4') {
        if (!url) return null;
        if (blobUrlCache.has(url)) return blobUrlCache.get(url);

        try {
            const resp = await fetch(url);
            const arrayBuf = await resp.arrayBuffer();
            const u8 = new Uint8Array(arrayBuf);
            let rawBytes;
            // Check if PNG stego signature (0x89 0x50 0x4E 0x47)
            if (u8[0] === 0x89 && u8[1] === 0x50 && u8[2] === 0x4E && u8[3] === 0x47) {
                rawBytes = await extractStegoAudioBytes(arrayBuf);
            } else {
                rawBytes = arrayBuf;
            }
            const blob = new Blob([rawBytes], { type: mimeType });
            const blobUrl = URL.createObjectURL(blob);
            blobUrlCache.set(url, blobUrl);
            return blobUrl;
        } catch(err) {
            console.error('[Web Audio Engine] Lỗi giải mã Binary/Video Blob:', err);
            return null;
        }
    }

    // Expose toàn cục
    window.HOME_AudioEngine = {
        getAudioContext,
        unlockAudioContext,
        decodeAudioFromUrl,
        extractStegoBytes: extractStegoAudioBytes,
        loadBinaryBlobUrl,
        playBGM,
        stopBGM,
        playSE,
        setBgmVolume: (vol) => {
            if (activeBgmGainNode) {
                const norm = (parseFloat(vol) || 80) / 100.0;
                activeBgmGainNode.gain.value = Math.max(0, Math.min(1.0, norm * MASTER_BGM_SCALE));
            }
        },
        setSeVolume: (buf, vol) => {
            const bufStr = String(buf || "0");
            if (activeSeMap.has(bufStr)) {
                const norm = (parseFloat(vol) || 80) / 100.0;
                activeSeMap.get(bufStr).gainNode.gain.value = Math.max(0, Math.min(1.0, norm * MASTER_SE_SCALE));
            }
        }
    };

    console.log('[Web Audio Engine] ✅ Đã khởi tạo hoàn tất Web Audio & Stego Engine.');
})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'web_audio_engine.js'), 'w', encoding='utf-8') as f:
        f.write(web_audio_engine_js)

    # 4. web/js/web_save_indexeddb.js
    web_save_indexeddb_js = """/**
 * HOME - Web Save Engine (IndexedDB Unlimited Storage & Save Exporter)
 * ====================================================================
 * - Loại bỏ hoàn toàn giới hạn 5MB của localStorage (chống QuotaExceededError)
 * - Tối ưu hóa thumbnail save 160x90 JPEG siêu nhẹ (<3KB/slot)
 * - Cung cấp hàm Xuất / Nhập file .sav 1-Click
 */

(function() {
    'use strict';

    const DB_NAME = 'HOME_Game_SaveDB';
    const DB_VERSION = 1;
    const STORE_NAME = 'save_slots';
    const PROJECT_ID = 'HOME';
    const memoryStorageCache = new Map();

    function openSaveDB() {
        return new Promise((resolve, reject) => {
            const req = indexedDB.open(DB_NAME, DB_VERSION);
            req.onupgradeneeded = (e) => {
                const db = e.target.result;
                if (!db.objectStoreNames.contains(STORE_NAME)) {
                    db.createObjectStore(STORE_NAME, { keyPath: 'key' });
                }
            };
            req.onsuccess = () => resolve(req.result);
            req.onerror = () => reject(req.error);
        });
    }

    async function dbSet(key, value) {
        memoryStorageCache.set(key, value);
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, 'readwrite');
                const store = tx.objectStore(STORE_NAME);
                const req = store.put({ key, value, updatedAt: Date.now() });
                req.onsuccess = () => resolve();
                req.onerror = () => reject(req.error);
            });
        } catch(e) {
            console.warn('[Web Save] IndexedDB set error:', e);
        }
    }

    async function dbGet(key) {
        if (memoryStorageCache.has(key)) return memoryStorageCache.get(key);
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, 'readonly');
                const store = tx.objectStore(STORE_NAME);
                const req = store.get(key);
                req.onsuccess = () => {
                    const res = req.result ? req.result.value : null;
                    if (res) memoryStorageCache.set(key, res);
                    resolve(res);
                };
                req.onerror = () => reject(req.error);
            });
        } catch(e) {
            return null;
        }
    }

    async function dbGetAll() {
        try {
            const db = await openSaveDB();
            return new Promise((resolve, reject) => {
                const tx = db.transaction(STORE_NAME, 'readonly');
                const store = tx.objectStore(STORE_NAME);
                const req = store.getAll();
                req.onsuccess = () => resolve(req.result || []);
                req.onerror = () => reject(req.error);
            });
        } catch(e) {
            return [];
        }
    }

    function sanitizeStorageValue(val) {
        if (!val) return null;
        if (typeof val !== 'string') return val;
        if (val === 'null' || val === 'undefined') return null;
        if (val.startsWith('%') || val.includes('%22') || val.includes('%7B') || val.includes('%5B')) {
            try {
                val = decodeURIComponent(val);
            } catch(e) {
                try { val = unescape(val); } catch(e2) {}
            }
        }
        return val;
    }

    // Tiền nạp toàn bộ dữ liệu lưu từ IndexedDB vào RAM khi mở game
    async function prefillMemoryStorage() {
        try {
            const records = await dbGetAll();
            for (const r of records) {
                if (r.key && r.value) {
                    const cleanVal = sanitizeStorageValue(r.value);
                    memoryStorageCache.set(r.key, cleanVal);
                    try { localStorage.setItem(r.key, cleanVal); } catch(e) {}
                }
            }
        } catch(e) {}
    }
    prefillMemoryStorage();

    // Hook Tyrano Storage API
    function hookTyranoStorage() {
        if (!window.$) {
            setTimeout(hookTyranoStorage, 50);
            return;
        }

        $.setStorage = function(key, val, type) {
            const strVal = (typeof val === 'object') ? JSON.stringify(val) : String(val);
            const cleanVal = sanitizeStorageValue(strVal);
            memoryStorageCache.set(key, cleanVal);
            dbSet(key, cleanVal);
            try { localStorage.setItem(key, cleanVal); } catch(e) {}
        };
        $.setStorageWeb = $.setStorage;

        $.getStorage = function(key, type) {
            let val = null;
            if (memoryStorageCache.has(key)) {
                val = memoryStorageCache.get(key);
            } else {
                try {
                    val = localStorage.getItem(key);
                    if (val) memoryStorageCache.set(key, val);
                } catch(e) {}
            }
            return sanitizeStorageValue(val);
        };
        $.getStorageWeb = $.getStorage;
        $.getStorageCompress = $.getStorage;
        $.getStorageFile = $.getStorage;

        // Ghi đè bộ chụp ảnh thumbnail save thành ảnh siêu nhẹ 160x90
        if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
            window.TYRANO.kag.menu.createImgCode = function(canvas) {
                try {
                    const smallCanvas = document.createElement('canvas');
                    smallCanvas.width = 160;
                    smallCanvas.height = 90;
                    const ctx = smallCanvas.getContext('2d');
                    ctx.drawImage(canvas, 0, 0, 160, 90);
                    return smallCanvas.toDataURL('image/jpeg', 0.5);
                } catch(e) {
                    return canvas.toDataURL('image/jpeg', 0.3);
                }
            };
        }
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', hookTyranoStorage);
    } else {
        hookTyranoStorage();
    }
    setTimeout(hookTyranoStorage, 500);
    setTimeout(hookTyranoStorage, 1500);

    // ─── Export / Import Save Data ────────────────────────────────────────────
    window.exportCurrentSaveToFile = async function() {
        try {
            const bundle = {
                app: 'HOME',
                version: '2.0',
                exportedAt: new Date().toISOString(),
                data: {}
            };

            for (let i = 0; i < localStorage.length; i++) {
                const k = localStorage.key(i);
                if (k && (k.includes('tyrano') || k.includes('HOME') || k.includes('sf'))) {
                    bundle.data[k] = localStorage.getItem(k);
                }
            }

            const records = await dbGetAll();
            for (const r of records) {
                if (r.key && r.value) bundle.data[r.key] = r.value;
            }

            if (Object.keys(bundle.data).length === 0) {
                alert('Chưa có dữ liệu lưu nào trong game! Vui lòng lưu game trước khi xuất file.');
                return;
            }

            const jsonStr = JSON.stringify(bundle, null, 2);
            const blob = new Blob([jsonStr], { type: 'application/json' });
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            const dateStr = new Date().toISOString().slice(0, 10);
            a.href = url;
            a.download = `HOME_SaveData_${dateStr}.sav`;
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            URL.revokeObjectURL(url);
        } catch(err) {
            alert(`Lỗi xuất save: ${err.message}`);
        }
    };

    window.importSaveFromFile = function() {
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = '.sav,.json';
        input.onchange = async (e) => {
            const file = e.target.files[0];
            if (!file) return;

            const reader = new FileReader();
            reader.onload = async (evt) => {
                try {
                    const content = evt.target.result;
                    const parsed = JSON.parse(content);
                    let count = 0;

                    if (parsed && parsed.data && typeof parsed.data === 'object') {
                        for (const [k, v] of Object.entries(parsed.data)) {
                            if (v) {
                                await dbSet(k, v);
                                try { localStorage.setItem(k, v); } catch(e) {}
                                count++;
                            }
                        }
                    } else if (parsed && parsed.data && Array.isArray(parsed.data)) {
                        const raw = JSON.stringify(parsed);
                        await dbSet(`${PROJECT_ID}_tyrano_data`, raw);
                        try { localStorage.setItem(`${PROJECT_ID}_tyrano_data`, raw); } catch(e) {}
                        count++;
                    }

                    if (count > 0) {
                        alert('✅ Đã nạp file Save thành công! Game sẽ tự động tải lại.');
                        window.location.reload();
                    } else {
                        alert('❌ Không tìm thấy dữ liệu save hợp lệ trong file!');
                    }
                } catch(err) {
                    alert(`❌ Lỗi đọc file save: ${err.message}`);
                }
            };
            reader.readAsText(file);
        };
        input.click();
    };

    console.log('[Web Save Engine] ✅ Đã kích hoạt IndexedDB Save & Exporter.');
})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'web_save_indexeddb.js'), 'w', encoding='utf-8') as f:
        f.write(web_save_indexeddb_js)

    # 5. web/js/cdn_interceptor.js (Synchronous 2,709 CDN Routing Table & Deep DOM/Tag Interceptor)
    manifest_json_str = json.dumps(records, ensure_ascii=False)
    cdn_interceptor_js = f"""/**
 * HOME - CDN Interceptor Plugin
 * ==============================
 * Chuyển hướng toàn bộ hình ảnh, nhân vật, CG, BGM, SFX sang Google Blogger CDN
 * Bảng định tuyến 2.709 mục đồng bộ (0ms latency) - Tương thích 100% WebP (/s0-rw/)
 */

(function() {{
    'use strict';

    const EMBEDDED_MANIFEST = {manifest_json_str};
    const normalizedMap = new Map();

    function normalizePath(p) {{
        if (!p || typeof p !== 'string') return '';
        let clean = p.split('?')[0].replace(/\\\\/g, '/');
        clean = clean.replace(/^\\.\\//, '');
        const parts = clean.split('/');
        const stack = [];
        for (const part of parts) {{
            if (!part || part === '.') continue;
            if (part === '..') {{
                if (stack.length > 0) stack.pop();
            }} else {{
                stack.push(part);
            }}
        }}
        return stack.join('/').toLowerCase();
    }}

    for (const [k, v] of Object.entries(EMBEDDED_MANIFEST)) {{
        normalizedMap.set(normalizePath(k), v);
        const baseName = k.split('/').pop().toLowerCase();
        if (!normalizedMap.has(baseName)) normalizedMap.set(baseName, v);
    }}
    console.log(`[CDN Interceptor] ✅ Đã nạp sẵn ${{normalizedMap.size}} mục từ EMBEDDED MANIFEST.`);

    window.resolveCDNUrl = function(filePath) {{
        if (!filePath || typeof filePath !== 'string') return filePath;
        if (filePath.startsWith('http://') || filePath.startsWith('https://') || filePath.startsWith('data:') || filePath.startsWith('blob:')) {{
            return filePath;
        }}

        const norm = normalizePath(filePath);
        let url = normalizedMap.get(norm);
        if (!url) {{
            if (!norm.startsWith('data/')) {{
                url = normalizedMap.get('data/' + norm) ||
                      normalizedMap.get('data/fgimage/' + norm) ||
                      normalizedMap.get('data/bgimage/' + norm) ||
                      normalizedMap.get('data/image/' + norm) ||
                      normalizedMap.get('data/sound/' + norm) ||
                      normalizedMap.get('data/bgm/' + norm);
            }}
        }}
        if (!url) {{
            url = normalizedMap.get(norm.split('/').pop());
        }}
        if (!url) return filePath;

        // Tối ưu hóa WebP (/s0-rw/) cho toàn bộ hình ảnh thị giác (bỏ qua file audio stego)
        const isAudio = norm.startsWith('data/sound') || norm.startsWith('data/bgm') || norm.startsWith('data/video') ||
                        norm.endsWith('.ogg') || norm.endsWith('.mp3') || norm.endsWith('.wav') || norm.endsWith('.mp4');
        if (!isAudio && typeof url === 'string' && url.startsWith('http')) {{
            if (url.includes('/s0/')) url = url.replace('/s0/', '/s0-rw/');
            else if (url.includes('/s1600/')) url = url.replace('/s1600/', '/s1600-rw/');
        }}

        return url;
    }};

    // ─── Native DOM Hooks ─────────────────────────────────────────────────────
    try {{
        const proto = HTMLImageElement.prototype;
        const origSrcDesc = Object.getOwnPropertyDescriptor(proto, 'src');
        if (origSrcDesc && origSrcDesc.set) {{
            Object.defineProperty(proto, 'src', {{
                set: function(val) {{
                    if (typeof val === 'string' && !val.startsWith('http') && !val.startsWith('data:') && !val.startsWith('blob:')) {{
                        const cdnUrl = window.resolveCDNUrl(val);
                        if (cdnUrl && cdnUrl.startsWith('http')) val = cdnUrl;
                    }}
                    return origSrcDesc.set.call(this, val);
                }},
                get: origSrcDesc.get,
                configurable: true,
                enumerable: true
            }});
        }}

        const origSetAttribute = HTMLImageElement.prototype.setAttribute;
        HTMLImageElement.prototype.setAttribute = function(name, val) {{
            if (name === 'src' && typeof val === 'string' && !val.startsWith('http') && !val.startsWith('data:') && !val.startsWith('blob:')) {{
                const cdnUrl = window.resolveCDNUrl(val);
                if (cdnUrl && cdnUrl.startsWith('http')) val = cdnUrl;
            }}
            return origSetAttribute.call(this, name, val);
        }};

        const origElemSetAttr = Element.prototype.setAttribute;
        Element.prototype.setAttribute = function(name, val) {{
            if (this.tagName === 'IMG' && name === 'src' && typeof val === 'string' && !val.startsWith('http') && !val.startsWith('data:') && !val.startsWith('blob:')) {{
                const cdnUrl = window.resolveCDNUrl(val);
                if (cdnUrl && cdnUrl.startsWith('http')) val = cdnUrl;
            }}
            return origElemSetAttr.call(this, name, val);
        }};
    }} catch(e) {{}}

    // Hook jQuery fn.attr
    if (window.jQuery) {{
        const origJqAttr = window.jQuery.fn.attr;
        window.jQuery.fn.attr = function(name, val) {{
            if (name === 'src' && typeof val === 'string' && !val.startsWith('http') && !val.startsWith('data:') && !val.startsWith('blob:')) {{
                const cdnUrl = window.resolveCDNUrl(val);
                if (cdnUrl && cdnUrl.startsWith('http')) val = cdnUrl;
            }}
            return origJqAttr.apply(this, arguments);
        }};
    }}

    // ─── Hook TyranoScript Tags ───────────────────────────────────────────────
    function installTyranoHooks() {{
        if (!window.TYRANO || !window.TYRANO.kag) {{
            setTimeout(installTyranoHooks, 50);
            return;
        }}

        const kag = window.TYRANO.kag;

        // Hook BGM
        if (kag.tag.playbgm) {{
            const origPlaybgm = kag.tag.playbgm.start;
            kag.tag.playbgm.start = function(pm) {{
                if (pm && pm.storage) {{
                    const fullPath = pm.storage.includes('/') ? pm.storage : `data/bgm/${{pm.storage}}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) {{
                        window.HOME_AudioEngine.playBGM(cdnUrl, pm.loop !== 'false', pm.volume, pm.buf);
                        if (kag.layer) kag.layer.showEventLayer();
                        if (kag.ftag) kag.ftag.nextOrder();
                        return;
                    }}
                }}
                return origPlaybgm.apply(this, arguments);
            }};
        }}

        // Hook Stop BGM
        if (kag.tag.stopbgm) {{
            const origStopbgm = kag.tag.stopbgm.start;
            kag.tag.stopbgm.start = function(pm) {{
                window.HOME_AudioEngine.stopBGM(parseInt(pm?.time || 300));
                return origStopbgm.apply(this, arguments);
            }};
        }}

        // Hook SE / Voice
        if (kag.tag.playse) {{
            const origPlayse = kag.tag.playse.start;
            kag.tag.playse.start = function(pm) {{
                if (pm && pm.storage) {{
                    const fullPath = pm.storage.includes('/') ? pm.storage : `data/sound/${{pm.storage}}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) {{
                        window.HOME_AudioEngine.playSE(cdnUrl, pm.volume, pm.buf, () => {{
                            if (pm.stop === 'true' && kag.ftag) kag.ftag.nextOrder();
                        }});
                        if (pm.stop !== 'true') {{
                            if (kag.layer) kag.layer.showEventLayer();
                            if (kag.ftag) kag.ftag.nextOrder();
                        }}
                        return;
                    }}
                }}
                return origPlayse.apply(this, arguments);
            }};
        }}

        // Hook Background & Image
        if (kag.tag.bg) {{
            const origBg = kag.tag.bg.start;
            kag.tag.bg.start = function(pm) {{
                if (pm && pm.storage) {{
                    const fullPath = (pm.storage.startsWith('data/') || pm.storage.startsWith('http')) ? pm.storage : `data/bgimage/${{pm.storage}}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) pm.storage = cdnUrl;
                }}
                return origBg.apply(this, arguments);
            }};
        }}

        if (kag.tag.image) {{
            const origImage = kag.tag.image.start;
            kag.tag.image.start = function(pm) {{
                if (pm && pm.storage) {{
                    const folder = pm.folder || 'fgimage';
                    const fullPath = (pm.storage.startsWith('data/') || pm.storage.startsWith('http')) ? pm.storage : `data/${{folder}}/${{pm.storage}}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) pm.storage = cdnUrl;
                }}
                return origImage.apply(this, arguments);
            }};
        }}

        // Hook Layermode & Blend Layers
        if (kag.tag.layermode) {{
            const origLayermode = kag.tag.layermode.start;
            kag.tag.layermode.start = function(pm) {{
                if (pm && pm.graphic) {{
                    const folder = pm.folder || 'image';
                    let rawPath = pm.graphic;
                    if (rawPath.startsWith('../')) {{
                        rawPath = 'data/' + rawPath.substring(3);
                    }} else if (!rawPath.startsWith('data/') && !rawPath.startsWith('http')) {{
                        rawPath = `data/${{folder}}/${{pm.graphic}}`;
                    }}
                    const cdnUrl = window.resolveCDNUrl(rawPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) {{
                        pm.graphic = cdnUrl;
                        pm.folder = '';
                    }}
                }}
                return origLayermode.apply(this, arguments);
            }};
        }}

        // Hook Buttons
        if (kag.tag.button) {{
            const origButton = kag.tag.button.start;
            kag.tag.button.start = function(pm) {{
                if (pm) {{
                    const folder = pm.folder || 'image';
                    ['graphic', 'enterimg', 'clickimg', 'storage'].forEach(prop => {{
                        if (pm[prop] && typeof pm[prop] === 'string' && !pm[prop].endsWith('.ks')) {{
                            const fullPath = (pm[prop].startsWith('data/') || pm[prop].startsWith('http')) ? pm[prop] : `data/${{folder}}/${{pm[prop]}}`;
                            const cdnUrl = window.resolveCDNUrl(fullPath);
                            if (cdnUrl && cdnUrl.startsWith('http')) pm[prop] = cdnUrl;
                        }}
                    }});
                }}
                return origButton.apply(this, arguments);
            }};
        }}

        // Hook Character Definition (Tối ưu hóa: KHÔNG preload dồn dập 40+ ảnh lúc boot game)
        if (kag.tag.chara_new) {{
            kag.tag.chara_new.start = function(pm) {{
                if (pm && pm.name) {{
                    let rawPath = pm.storage || '';
                    const fullPath = (rawPath.startsWith('data/') || rawPath.startsWith('http')) ? rawPath : `data/fgimage/${{rawPath}}`;
                    const cdnUrl = window.resolveCDNUrl(fullPath);
                    if (cdnUrl && cdnUrl.startsWith('http')) {{
                        pm.storage = cdnUrl;
                    }}
                    pm.map_face = pm.map_face || {{}};
                    pm.map_face.default = pm.storage;
                    // Bỏ qua this.kag.preload() ở đây -> Chara_show sẽ tự nạp on-demand khi vào cảnh chơi!
                    kag.stat.charas[pm.name] = pm;
                    if (pm.jname) kag.stat.jcharas[pm.jname] = pm.name;
                }}
                if (kag.ftag) kag.ftag.nextOrder();
            }};
        }}

        // Hook Characters Display & Parts
        ['chara_show', 'chara_mod', 'chara_face', 'chara_part'].forEach(tag => {{
            if (kag.tag[tag]) {{
                const orig = kag.tag[tag].start;
                kag.tag[tag].start = function(pm) {{
                    if (pm) {{
                        ['storage', 'face', 'default'].forEach(p => {{
                            if (pm[p] && typeof pm[p] === 'string') {{
                                const fullPath = (pm[p].startsWith('data/') || pm[p].startsWith('http')) ? pm[p] : `data/fgimage/${{pm[p]}}`;
                                const cdnUrl = window.resolveCDNUrl(fullPath);
                                if (cdnUrl && cdnUrl.startsWith('http')) pm[p] = cdnUrl;
                            }}
                        }});
                    }}
                    return orig.apply(this, arguments);
                }};
            }}
        }});

        // Hook Preloader
        if (kag.preload) {{
            const origPreload = kag.preload;
            kag.preload = function(src, cb) {{
                if (typeof src === 'string') {{
                    const cdnUrl = window.resolveCDNUrl(src);
                    if (cdnUrl && cdnUrl.startsWith('http')) src = cdnUrl;
                }}
                return origPreload.call(this, src, cb);
            }};
        }}

        if (kag.preloadAll) {{
            const origPreloadAll = kag.preloadAll;
            kag.preloadAll = function(storage, cb) {{
                if (Array.isArray(storage)) {{
                    storage = storage.map(s => window.resolveCDNUrl(s));
                }}
                return origPreloadAll.call(this, storage, cb);
            }};
        }}

        // ─── Web Audio Engine Volume Controls & Preview ──────────────────────
        kag.setBgmVolume = function(vol) {{
            if (window.HOME_AudioEngine && window.HOME_AudioEngine.setBgmVolume) {{
                window.HOME_AudioEngine.setBgmVolume(vol);
            }}
        }};

        kag.setSeVolume = function(buf, vol) {{
            if (window.HOME_AudioEngine && window.HOME_AudioEngine.setSeVolume) {{
                window.HOME_AudioEngine.setSeVolume(buf, vol);
            }}
        }};

        if (kag.tag.bgmopt) {{
            const origBgmopt = kag.tag.bgmopt.start;
            kag.tag.bgmopt.start = function(pm) {{
                if (pm && pm.volume !== undefined && pm.volume !== "") {{
                    kag.setBgmVolume(pm.volume);
                }}
                return origBgmopt.apply(this, arguments);
            }};
        }}

        if (kag.tag.seopt) {{
            const origSeopt = kag.tag.seopt.start;
            kag.tag.seopt.start = function(pm) {{
                if (pm && pm.volume !== undefined && pm.volume !== "") {{
                    kag.setSeVolume(pm.buf || "0", pm.volume);
                }}
                return origSeopt.apply(this, arguments);
            }};
        }}

        let _testAudioDebounce = 0;
        kag.playTestAudio = function(type, vol) {{
            const now = Date.now();
            if (now - _testAudioDebounce < 250) return;
            _testAudioDebounce = now;

            const sampleMap = {{
                'se': {{ path: 'data/sound/cam.mp3', buf: '0' }},
                'voice_1': {{ path: 'data/sound/nagi/voice_BADEND_nagi1.mp3', buf: '1' }},
                'voice_2': {{ path: 'data/sound/rinko/voice_3P_r_naka2.mp3', buf: '2' }},
                'voice_3': {{ path: 'data/sound/tubomi/voice_3P_kaisi1.mp3', buf: '3' }}
            }};
            const sample = sampleMap[type];
            if (!sample) return;

            const cdnUrl = window.resolveCDNUrl(sample.path);
            if (cdnUrl && cdnUrl.startsWith('http')) {{
                window.HOME_AudioEngine.playSE(cdnUrl, vol !== undefined ? vol : 80, sample.buf);
            }}
        }};

        // ─── Hook Movie & Background Video Engine ─────────────────────────────
        kag.tag.movie = {{
            vital: ["storage"],
            pm: {{
                storage: "",
                volume: "",
                skip: "false",
                mute: "false",
                bgmode: "false",
                loop: "false",
                time: "300"
            }},
            start: function(pm) {{
                this.playVideo(pm);
            }},
            playVideo: async function(pm) {{
                const that = this;
                const storageName = pm.storage;
                const fullPath = (storageName.startsWith('data/') || storageName.startsWith('http')) ? storageName : `data/video/${{storageName}}`;
                let cdnUrl = window.resolveCDNUrl(fullPath);
                if (!cdnUrl || !cdnUrl.startsWith('http')) {{
                    cdnUrl = window.resolveCDNUrl(storageName);
                }}

                if (!cdnUrl || (!cdnUrl.startsWith('http') && !cdnUrl.endsWith('.mp4'))) {{
                    console.warn('[Video Engine] Không tìm thấy video:', storageName);
                    if (pm.bgmode !== "true") {{
                        if (that.kag.ftag) that.kag.ftag.nextOrder();
                    }}
                    return;
                }}

                try {{
                    let videoSrc = cdnUrl;
                    if (cdnUrl.includes('.png') || cdnUrl.startsWith('http')) {{
                        if (window.showLoadingStatus) window.showLoadingStatus('Đang nạp video nền...', 2500);
                        const blobUrl = await window.HOME_AudioEngine.loadBinaryBlobUrl(cdnUrl, 'video/mp4');
                        if (blobUrl) videoSrc = blobUrl;
                    }}

                    const video = document.createElement("video");
                    video.id = "bgmovie";
                    video.className = "bgmovie";
                    video.src = videoSrc;
                    video.style.backgroundColor = "black";
                    video.style.position = "absolute";
                    video.style.top = "0px";
                    video.style.left = "0px";
                    video.style.width = "100%";
                    video.style.height = "100%";
                    video.style.objectFit = "cover";
                    video.style.pointerEvents = "none";
                    video.autoplay = true;
                    video.setAttribute("playsinline", "1");
                    video.setAttribute("webkit-playsinline", "1");
                    
                    // Background movies are muted by default to guarantee 100% autoplay across all modern browsers
                    video.muted = (pm.mute === "true" || pm.bgmode === "true" || pm.storage === "title_bg.mp4");

                    if (pm.bgmode === "true") {{
                        that.kag.tmp.video_playing = true;
                        video.style.zIndex = "1";
                        video.loop = (pm.loop !== "false");
                    }} else {{
                        video.style.zIndex = "199999";
                        video.loop = false;
                        video.addEventListener("ended", function() {{
                            $(video).remove();
                            if (that.kag.ftag) that.kag.ftag.nextOrder();
                        }});
                        if (pm.skip === "true") {{
                            $(video).on("click touchstart", function() {{
                                $(video).remove();
                                if (that.kag.ftag) that.kag.ftag.nextOrder();
                            }});
                        }}
                    }}

                    const jVideo = $(video);
                    jVideo.css("opacity", 0);
                    const tyranoBase = document.getElementById("tyrano_base") || document.querySelector(".tyrano_base");
                    if (tyranoBase) {{
                        const old = document.getElementById("bgmovie");
                        if (old) old.remove();
                        tyranoBase.appendChild(video);
                    }}

                    const fadeTime = parseInt(pm.time || 300);
                    jVideo.animate({{ opacity: 1 }}, fadeTime);

                    video.play().catch(e => {{
                        console.warn('[Video Engine] Autoplay notice:', e);
                        video.muted = true;
                        video.play().catch(() => {{}});
                    }});
                }} catch(e) {{
                    console.error('[Video Engine] Lỗi phát video:', e);
                }}
            }}
        }};

        kag.tag.bgmovie = {{
            vital: ["storage"],
            pm: {{
                storage: "",
                volume: "",
                loop: "true",
                mute: "true",
                time: "300",
                stop: "false"
            }},
            start: function(pm) {{
                pm.skip = "false";
                pm.bgmode = "true";
                if (!this.kag.stat.current_bgmovie) this.kag.stat.current_bgmovie = {{}};
                this.kag.stat.current_bgmovie.storage = pm.storage;
                this.kag.stat.current_bgmovie.volume = pm.volume;
                this.kag.ftag.startTag("movie", pm);
                if (pm.stop === "false") {{
                    this.kag.ftag.nextOrder();
                }}
            }}
        }};

        kag.tag.stop_bgmovie = {{
            vital: [],
            pm: {{ time: "300", wait: "true" }},
            start: function(pm) {{
                const that = this;
                that.kag.tmp.video_playing = false;
                if (that.kag.stat.current_bgmovie) {{
                    that.kag.stat.current_bgmovie.storage = "";
                    that.kag.stat.current_bgmovie.volume = "";
                }}
                const fadeTime = parseInt(pm.time || 300);
                const videos = $(".tyrano_base").find("video#bgmovie, video.bgmovie");
                if (videos.length > 0) {{
                    videos.animate({{ opacity: 0 }}, fadeTime, function() {{
                        $(this).remove();
                        if (pm.wait === "true" && that.kag.ftag) that.kag.ftag.nextOrder();
                    }});
                    if (pm.wait !== "true" && that.kag.ftag) that.kag.ftag.nextOrder();
                }} else {{
                    if (that.kag.ftag) that.kag.ftag.nextOrder();
                }}
            }}
        }};

        kag.tag.wait_bgmovie = {{
            vital: [],
            pm: {{ stop: "false" }},
            start: function(pm) {{
                if (this.kag.tmp.video_playing) {{
                    const video = document.getElementById("bgmovie");
                    if (video) {{
                        this.kag.stat.is_wait_bgmovie = true;
                        video.loop = false;
                    }} else {{
                        this.kag.ftag.nextOrder();
                    }}
                }} else {{
                    this.kag.ftag.nextOrder();
                }}
            }}
        }};

        console.log('[CDN Interceptor] ✅ Đã gắn toàn bộ hook TyranoScript & Video Engine.');
    }}

    if (document.readyState === 'loading') {{
        document.addEventListener('DOMContentLoaded', installTyranoHooks);
    }} else {{
        installTyranoHooks();
    }}
}})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'cdn_interceptor.js'), 'w', encoding='utf-8') as f:
        f.write(cdn_interceptor_js)

    # 6. web/js/mobile_touch_hud.js
    mobile_touch_hud_js = """/**
 * HOME - Unified Control Orb & Modal Sheet Engine
 * ===============================================
 * - Minimalist Apple Control Orb (Single Floating Gear ⚙️)
 * - Apple Inset Grouped Modal Sheet (Lưu, Nạp, .sav, Skip, Auto, Log, Fullscreen, Title)
 * - Tự động co giãn 16:9 sắc nét & Cử chỉ cảm ứng vuốt
 */

(function() {
    'use strict';

    function autoFitGameScreen() {
        const base = document.querySelector('.tyrano_base') || document.getElementById('tyrano_base');
        if (!base) return;

        const winW = window.innerWidth || document.documentElement.clientWidth;
        const winH = window.innerHeight || document.documentElement.clientHeight;
        const gameW = 1280;
        const gameH = 720;

        const scale = Math.min(winW / gameW, winH / gameH);
        if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.tmp) {
            window.TYRANO.kag.tmp.base_scale = scale;
        }

        const scaledW = gameW * scale;
        const scaledH = gameH * scale;
        const offsetX = Math.max(0, (winW - scaledW) / 2);
        const offsetY = Math.max(0, (winH - scaledH) / 2);

        base.style.position = 'absolute';
        base.style.transformOrigin = '0 0';
        base.style.transform = `scale(${scale})`;
        base.style.left = `${offsetX}px`;
        base.style.top = `${offsetY}px`;
        base.style.margin = '0px';
    }

    window.addEventListener('resize', autoFitGameScreen);
    window.addEventListener('orientationchange', () => {
        setTimeout(autoFitGameScreen, 200);
    });

    // Cử chỉ cảm ứng vuốt trên mobile
    let touchStartY = 0;
    let touchStartX = 0;

    window.addEventListener('touchstart', (e) => {
        if (e.touches && e.touches.length === 1) {
            touchStartX = e.touches[0].clientX;
            touchStartY = e.touches[0].clientY;
        } else if (e.touches && e.touches.length === 2) {
            // Chạm 2 ngón mở Menu
            if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                window.TYRANO.kag.menu.showMenu();
            }
        }
    }, { passive: true });

    window.addEventListener('touchend', (e) => {
        if (e.changedTouches && e.changedTouches.length === 1) {
            const diffX = e.changedTouches[0].clientX - touchStartX;
            const diffY = e.changedTouches[0].clientY - touchStartY;

            // Vuốt dọc tối thiểu 60px
            if (Math.abs(diffY) > 60 && Math.abs(diffY) > Math.abs(diffX) * 1.5) {
                if (diffY < 0) {
                    // Vuốt LÊN -> Mở Backlog
                    if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                        window.TYRANO.kag.menu.displayLog();
                    }
                } else {
                    // Vuốt XUỐNG -> Ẩn hộp thoại
                    if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.layer) {
                        window.TYRANO.kag.layer.hideMessageLayers();
                    }
                }
            }
        }
    }, { passive: true });

    // Fullscreen helper
    window.toggleWebFullscreen = function() {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen().catch(() => {});
        } else {
            document.exitFullscreen().catch(() => {});
        }
    };

    // ─── Unified Control Orb & Modal Sheet ────────────────────────────────────
    function injectUnifiedGearModal() {
        if (!document.body) {
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', injectUnifiedGearModal, { once: true });
            }
            return;
        }
        if (document.getElementById('home-gear-btn')) return;

        // 1. Nút Bánh Răng Floating Orb
        const gearBtn = document.createElement('div');
        gearBtn.id = 'home-gear-btn';
        gearBtn.title = 'Cài đặt & Tiện ích';
        gearBtn.innerHTML = `
            <svg viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="3"></circle>
                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
            </svg>
        `;
        document.body.appendChild(gearBtn);

        // 2. Modal Card Sheet
        const overlay = document.createElement('div');
        overlay.id = 'home-modal-overlay';
        overlay.innerHTML = `
            <div id="home-modal-card">
                <div class="hmc-sheet-handle"></div>
                <div class="hmc-header">
                    <div class="hmc-title">Cài đặt & Tiện ích</div>
                    <button class="hmc-close" id="hmc-close-btn" title="Đóng">✕</button>
                </div>
                <div class="hmc-body" id="hmc-dynamic-body">
                </div>
            </div>
        `;
        document.body.appendChild(overlay);

        const closeModal = () => { overlay.classList.remove('open'); };
        const openModal = () => { overlay.classList.add('open'); renderModal(); };

        gearBtn.onclick = openModal;
        document.getElementById('hmc-close-btn').onclick = closeModal;
        overlay.onclick = (e) => { if (e.target === overlay) closeModal(); };

        function isGameActive() {
            if (!window.TYRANO || !window.TYRANO.kag || !window.TYRANO.kag.stat) return false;
            const stat = window.TYRANO.kag.stat;
            const scenario = (stat.current_scenario || '').toLowerCase();
            if (!scenario) return false;
            if (scenario === 'first.ks' || scenario.startsWith('title_') || scenario.startsWith('_title_')) {
                return false;
            }
            return true;
        }

        function renderModal() {
            const inGame = isGameActive();
            const body = document.getElementById('hmc-dynamic-body');
            if (!body) return;

            const isSkip = inGame && !!(window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat && window.TYRANO.kag.stat.is_skip);
            const isAuto = inGame && !!(window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.stat && window.TYRANO.kag.stat.is_auto);

            body.innerHTML = `
                <!-- SECTION 1: DỮ LIỆU LƯU TRỮ -->
                <div>
                    <div class="hmc-group-header">Dữ liệu Lưu trữ</div>
                    <div class="hmc-inset-group">
                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Lưu & Nạp Game</div>
                                <div class="hmc-row-sublabel">Mở màn hình chọn ô nhớ</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_save_menu">Lưu</button>
                                <button class="hmc-pill-btn" id="btn_modal_load_menu">Nạp</button>
                            </div>
                        </div>

                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Lưu nhanh (Q.Save / Q.Load)</div>
                                <div class="hmc-row-sublabel">Ghi đè / Nạp vị trí tạm</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_qsave">Lưu nhanh</button>
                                <button class="hmc-pill-btn" id="btn_modal_qload">Nạp nhanh</button>
                            </div>
                        </div>

                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Tệp sao lưu (.sav)</div>
                                <div class="hmc-row-sublabel">Xuất / Nhập tệp an toàn</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_export">Xuất File</button>
                                <button class="hmc-pill-btn" id="btn_modal_import">Nhập File</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- SECTION 2: ĐIỀU KHIỂN ĐỌC TRUYỆN -->
                <div>
                    <div class="hmc-group-header">Điều khiển Đọc truyện ${inGame ? '' : '• Khi vào game'}</div>
                    <div class="hmc-inset-group">
                        <div class="hmc-segmented ${inGame ? '' : 'segmented-disabled'}">
                            <button class="hmc-segment-item ${isSkip ? 'active-warn' : ''}" id="btn_modal_skip">
                                ${isSkip ? 'Dừng tua' : 'Tua nhanh'}
                            </button>
                            <button class="hmc-segment-item ${isAuto ? 'active-blue' : ''}" id="btn_modal_auto">
                                ${isAuto ? 'Dừng đọc' : 'Tự đọc'}
                            </button>
                            <button class="hmc-segment-item" id="btn_modal_log">
                                Nhật ký
                            </button>
                            <button class="hmc-segment-item" id="btn_modal_hide">
                                Ẩn chữ
                            </button>
                        </div>

                        <div class="hmc-row">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Toàn màn hình</div>
                                <div class="hmc-row-sublabel">Tối ưu không gian hiển thị</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn" id="btn_modal_fullscreen">Bật / Tắt</button>
                            </div>
                        </div>

                        <div class="hmc-row ${inGame ? '' : 'hmc-row-disabled'}">
                            <div class="hmc-row-left">
                                <div class="hmc-row-label">Màn hình chính (Title)</div>
                                <div class="hmc-row-sublabel">${inGame ? 'Thoát về trang bắt đầu' : 'Đang ở màn hình chính'}</div>
                            </div>
                            <div class="hmc-row-actions">
                                <button class="hmc-pill-btn ${inGame ? '' : 'pill-disabled'}" id="btn_modal_title">Về Title</button>
                            </div>
                        </div>
                    </div>
                </div>
            `;

            // Gắn sự kiện
            document.getElementById('btn_modal_save_menu')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    closeModal();
                    window.TYRANO.kag.menu.displaySave();
                }
            });
            document.getElementById('btn_modal_load_menu')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    closeModal();
                    window.TYRANO.kag.menu.displayLoad();
                }
            });
            document.getElementById('btn_modal_qsave')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    window.TYRANO.kag.menu.setQuickSave();
                    closeModal();
                }
            });
            document.getElementById('btn_modal_qload')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    window.TYRANO.kag.menu.loadQuickSave();
                    closeModal();
                }
            });
            document.getElementById('btn_modal_export')?.addEventListener('click', () => {
                if (window.exportCurrentSaveToFile) window.exportCurrentSaveToFile();
            });
            document.getElementById('btn_modal_import')?.addEventListener('click', () => {
                if (window.importSaveFromFile) window.importSaveFromFile();
            });
            document.getElementById('btn_modal_skip')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
                    if (window.TYRANO.kag.stat.is_skip) {
                        window.TYRANO.kag.ftag.startTag("skipstop", {});
                    } else {
                        window.TYRANO.kag.ftag.startTag("skipstart", {});
                    }
                    closeModal();
                }
            });
            document.getElementById('btn_modal_auto')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
                    if (window.TYRANO.kag.stat.is_auto) {
                        window.TYRANO.kag.ftag.startTag("autostop", { next: "false" });
                    } else {
                        window.TYRANO.kag.ftag.startTag("autostart", {});
                    }
                    closeModal();
                }
            });
            document.getElementById('btn_modal_log')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.menu) {
                    closeModal();
                    window.TYRANO.kag.menu.displayLog();
                }
            });
            document.getElementById('btn_modal_hide')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.layer) {
                    closeModal();
                    window.TYRANO.kag.layer.hideMessageLayers();
                }
            });
            document.getElementById('btn_modal_fullscreen')?.addEventListener('click', () => {
                window.toggleWebFullscreen();
            });
            document.getElementById('btn_modal_title')?.addEventListener('click', () => {
                if (window.TYRANO && window.TYRANO.kag) {
                    closeModal();
                    window.TYRANO.kag.backTitle();
                }
            });
        }
    }

    // ─── Minimalist Loading Status HUD ───────────────────────────────────────
    let loadingHudTimer = null;
    window.showLoadingStatus = function(text, autoHideMs = 2500) {
        if (!document.body) {
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', () => window.showLoadingStatus(text, autoHideMs), { once: true });
            }
            return;
        }
        let hud = document.getElementById('home-loading-hud');
        if (!hud) {
            hud = document.createElement('div');
            hud.id = 'home-loading-hud';
            hud.innerHTML = `<div class="loading-spinner"></div><span id="home-loading-text"></span>`;
            document.body.appendChild(hud);
        }
        const textSpan = document.getElementById('home-loading-text');
        if (textSpan) textSpan.textContent = text || 'Đang tải tài nguyên...';
        hud.classList.add('active');

        if (loadingHudTimer) clearTimeout(loadingHudTimer);
        if (autoHideMs > 0) {
            loadingHudTimer = setTimeout(() => {
                hud.classList.remove('active');
            }, autoHideMs);
        }
    };

    window.hideLoadingStatus = function() {
        const hud = document.getElementById('home-loading-hud');
        if (hud) {
            if (loadingHudTimer) clearTimeout(loadingHudTimer);
            hud.classList.remove('active');
        }
    };

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', () => {
            window.showLoadingStatus('Đang khởi động HOME Visual Novel...', 2500);
            autoFitGameScreen();
            injectUnifiedGearModal();
        });
    } else {
        window.showLoadingStatus('Đang khởi động HOME Visual Novel...', 2500);
        autoFitGameScreen();
        injectUnifiedGearModal();
    }
    setTimeout(autoFitGameScreen, 300);
    setTimeout(autoFitGameScreen, 1000);
    setTimeout(injectUnifiedGearModal, 500);
})();
"""
    with open(os.path.join(WEB_SRC_DIR, 'js', 'mobile_touch_hud.js'), 'w', encoding='utf-8') as f:
        f.write(mobile_touch_hud_js)

    # 7. web/index.html
    v_tag = int(time.time())
    index_html = f"""<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8" />
  <title>HOME - Visual Novel [Tiếng Việt]</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, viewport-fit=cover" />
  <meta name="robots" content="noindex,nofollow" />
  <meta name="theme-color" content="#000000" />
  <meta name="mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
  <link rel="icon" type="image/x-icon" href="./favicon.ico" />
  <link rel="shortcut icon" href="./favicon.ico" />

  <script type="text/javascript">
    // Ngăn chặn và dọn dẹp triệt để redirect cũ /web/ trên trình duyệt
    if (window.location.pathname.indexOf('/web') !== -1) {{
      var rootUrl = window.location.href.split('/web')[0] + '/';
      window.location.replace(rootUrl);
    }}
    // Hủy đăng ký Service Worker cũ nếu có
    if ('serviceWorker' in navigator) {{
      navigator.serviceWorker.getRegistrations().then(function(regs) {{
        regs.forEach(function(r) {{ r.unregister(); }});
      }});
    }}
  </script>

  <!-- Typography & Core Web Stylesheets -->
  <link href="./css/font.css?v={v_tag}" rel="stylesheet" type="text/css" />
  <link href="./css/web_core.css?v={v_tag}" rel="stylesheet" type="text/css" />
  <link href="./tyrano/tyrano.css?v={v_tag}" rel="stylesheet" type="text/css" />
  <link href="./tyrano/libs/jquery-ui.css" rel="stylesheet" type="text/css" />

  <!-- Alertify & Remodal Dialog Styles -->
  <link href="./tyrano/libs/alertify/alertify.core.css" rel="stylesheet" type="text/css" />
  <link href="./tyrano/libs/alertify/alertify.default.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="./tyrano/libs/remodal/remodal.css">
  <link rel="stylesheet" href="./tyrano/libs/remodal/remodal-default-theme.css">

  <!-- jQuery & Core Libraries -->
  <script type="text/javascript" src="./tyrano/libs/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jquery-migrate-1.4.1.js"></script>
  <script type="text/javascript">
    // Tyrano Environment Polyfills for Browser & Web
    if (window.jQuery) {{
      if (!jQuery.isElectron) jQuery.isElectron = function() {{ return false; }};
      if (!jQuery.isNWJS) jQuery.isNWJS = function() {{ return false; }};
      if (!jQuery.isTyranoPlayer) jQuery.isTyranoPlayer = function() {{ return false; }};
    }}
  </script>
  <script type="text/javascript" src="./tyrano/libs/jquery-ui.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jquery.a3d.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jsrender.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/html2canvas.js"></script>
  <script type="text/javascript" src="./tyrano/libs/lz-string.min.js"></script>

  <!-- Dialog & Media Support Libs -->
  <link href="./tyrano/libs/alertify/alertify.core.css" rel="stylesheet" type="text/css" />
  <link href="./tyrano/libs/alertify/alertify.default.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="./tyrano/libs/remodal/remodal.css">
  <link rel="stylesheet" href="./tyrano/libs/remodal/remodal-default-theme.css">
  <link rel="stylesheet" href="./data/others/plugin/theme_kopanda_09_2/ts09.css">
  <script type="text/javascript" src="./tyrano/libs/alertify/alertify.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/remodal/remodal.js"></script>

  <!-- System KeyConfig & Tyrano Base -->
  <script type="text/javascript" src="./data/system/KeyConfig.js"></script>
  <script type="text/javascript" src="./tyrano/lang.js"></script>
  <script type="text/javascript" src="./tyrano/libs.js"></script>
  <script type="text/javascript" src="./tyrano/tyrano.js"></script>
  <script type="text/javascript" src="./tyrano/tyrano.base.js"></script>

  <!-- Tyrano Plugins & Tags -->
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.event.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.key_mouse.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.layer.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.menu.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.parser.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.rider.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.studio.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_audio.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_camera.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_ext.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_system.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_vchat.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_ar.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag_three.js"></script>
  <script type="text/javascript" src="./tyrano/plugins/kag/kag.tag.js"></script>

  <!-- HOME In-Memory Scenario Bundle & Modular Web Extensions (Nạp sau khi Engine sẵn sàng để Hook chính xác) -->
  <script type="text/javascript" src="./js/scenario_bundle.js?v={v_tag}"></script>
  <script type="text/javascript" src="./js/web_audio_engine.js?v={v_tag}"></script>
  <script type="text/javascript" src="./js/web_save_indexeddb.js?v={v_tag}"></script>
  <script type="text/javascript" src="./js/cdn_interceptor.js?v={v_tag}"></script>
  <script type="text/javascript" src="./js/mobile_touch_hud.js?v={v_tag}"></script>

  <!-- Touch & Additional Libraries (Sau khi Kag & Tyrano đã sẵn sàng) -->
  <script type="text/javascript" src="./tyrano/libs/howler.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jquery.touchSwipe.min.js"></script>
  <script type="text/javascript" src="./tyrano/libs/jsQR.js"></script>
</head>

<body onselectstart="return false" oncontextmenu="return false;" ontouchmove="event.preventDefault()">
  <!-- Main Tyrano Canvas Frame -->
  <div id="tyrano_base" class="tyrano_base" unselectable="on" ondragstart="return false"></div>
  <div id="vchat_base" class="vchat_base" unselectable="on" ondragstart="return false"></div>

  <!-- Mobile Landscape Orientation Helper (Nhắc xoay ngang) -->
  <div id="orientation_overlay">
    <div class="orientation-icon">📱 ➔ 📲</div>
    <div class="orientation-title">VUI LÒNG XOAY NGANG MÀN HÌNH</div>
    <div class="orientation-desc">Trò chơi được tối ưu hóa cho màn hình ngang 16:9. Hãy xoay thiết bị của bạn để có trải nghiệm tốt nhất.</div>
  </div>
</body>
</html>
"""
    with open(os.path.join(WEB_SRC_DIR, 'index.html'), 'w', encoding='utf-8') as f:
        f.write(index_html)

    print("  [OK] Đã xuất bản toàn bộ 7 tệp Web Core JS/CSS/HTML vào web/.")



def clean_directory(dir_path):
    if os.path.exists(dir_path):
        import stat
        def remove_readonly(func, path, excinfo):
            try:
                os.chmod(path, stat.S_IWRITE)
                func(path)
            except Exception:
                pass
        shutil.rmtree(dir_path, onexc=remove_readonly)


def step5_package_to_dist_web():
    """Sao chép toàn bộ thư mục web/ sang dist_web/ để tạo bản phân phối sẵn sàng deploy"""
    print("\n[5/6] 📦 Đóng gói bản phát hành Web sang dist_web/...")
    clean_directory(WEB_DIST_DIR)
    
    # Tạo .nojekyll để GitHub Pages không lọc các thư mục đặc biệt
    with open(os.path.join(WEB_SRC_DIR, '.nojekyll'), 'w', encoding='utf-8') as f:
        f.write('')
        
    shutil.copytree(WEB_SRC_DIR, WEB_DIST_DIR)
    
    # Tạo bounce-back file nếu người dùng vô tình vào /web/ trên gh-pages
    web_sub = os.path.join(WEB_DIST_DIR, 'web')
    os.makedirs(web_sub, exist_ok=True)
    with open(os.path.join(web_sub, 'index.html'), 'w', encoding='utf-8') as f:
        f.write('<!DOCTYPE html><html><head><meta charset="utf-8"/><meta http-equiv="refresh" content="0; url=../"/><script>window.location.replace("../");</script></head><body></body></html>')
    
    total_size = sum(
        os.path.getsize(os.path.join(r, f))
        for r, _, files in os.walk(WEB_DIST_DIR)
        for f in files
    )
    total_mb = total_size / (1024 * 1024)
    file_count = sum(len(files) for _, _, files in os.walk(WEB_DIST_DIR))
    
    print(f"  [OK] Đã xuất bản thành công: {file_count} tệp | Tổng dung lượng: {total_mb:.2f} MB.")


def step6_create_build_batch():
    """Tạo file thực thi nhanh BUILD_WEB.bat, DEPLOY_WEB.bat và root index.html chuyển hướng tự động"""
    print("\n[6/6] ⚡ Tạo file thực thi nhanh BUILD_WEB.bat, DEPLOY_WEB.bat & Root Redirector...")
    
    bat_build = """@echo off
chcp 65001 >nul
title DONG GOI BAN WEB - HOME [RJ01556529]
cls
echo ========================================================
echo    HOME - DONG GOI BAN WEB CHO GITHUB PAGES / CLOUDFLARE
echo ========================================================
echo.
python tools/build_web_release.py
echo.
echo Nhan phim bat ky de thoat...
pause >nul
"""
    with open(os.path.join(ROOT_DIR, 'BUILD_WEB.bat'), 'w', encoding='utf-8') as f:
        f.write(bat_build)

    bat_deploy = """@echo off
chcp 65001 >nul
title DEPLOY GITHUB PAGES - HOME [RJ01556529]
cls
echo ========================================================
echo    HOME - DONG GOI VA DEPLOY LEN GITHUB PAGES (gh-pages)
echo ========================================================
echo.
python tools/build_web_release.py --deploy
echo.
echo Nhan phim bat ky de thoat...
pause >nul
"""
    with open(os.path.join(ROOT_DIR, 'DEPLOY_WEB.bat'), 'w', encoding='utf-8') as f:
        f.write(bat_deploy)

    # Đồng bộ trực tiếp game ra thư mục gốc để GitHub Pages chạy trực tiếp không cần slug /web/
    shutil.copy2(os.path.join(WEB_SRC_DIR, 'index.html'), os.path.join(ROOT_DIR, 'index.html'))
    shutil.copy2(os.path.join(WEB_SRC_DIR, '.nojekyll'), os.path.join(ROOT_DIR, '.nojekyll'))
    if os.path.exists(os.path.join(WEB_SRC_DIR, 'favicon.ico')):
        shutil.copy2(os.path.join(WEB_SRC_DIR, 'favicon.ico'), os.path.join(ROOT_DIR, 'favicon.ico'))
    for item in ['css', 'js', 'data', 'tyrano']:
        src_item = os.path.join(WEB_SRC_DIR, item)
        dst_item = os.path.join(ROOT_DIR, item)
        if os.path.exists(src_item):
            shutil.copytree(src_item, dst_item, dirs_exist_ok=True)

    print("  [OK] Đã tạo BUILD_WEB.bat, DEPLOY_WEB.bat và đồng bộ Web Game ra thư mục gốc (Root URL).")




def deploy_to_gh_pages():
    """Tự động đóng gói và push dist_web lên nhánh gh-pages của GitHub Pages"""
    build_all()
    print("\n" + "=" * 60)
    print("🚀 ĐANG TIẾN HÀNH DEPLOY LÊN GITHUB PAGES (nhánh gh-pages)...")
    print("=" * 60)
    
    dist_git_dir = os.path.join(WEB_DIST_DIR, '.git')
    clean_directory(dist_git_dir)
        
    try:
        subprocess.run(['git', 'init'], cwd=WEB_DIST_DIR, check=True)
        subprocess.run(['git', 'checkout', '-B', 'gh-pages'], cwd=WEB_DIST_DIR, check=True)
        subprocess.run(['git', 'add', '-A'], cwd=WEB_DIST_DIR, check=True)
        subprocess.run(['git', 'commit', '-m', 'Deploy HOME Web Visual Novel (WebP /s0-rw/ & System Fonts)'], cwd=WEB_DIST_DIR, check=True)
        
        remote_url = 'https://github.com/shimakazevn/Home-project.git'
        subprocess.run(['git', 'remote', 'add', 'origin', remote_url], cwd=WEB_DIST_DIR, check=True)
        print("  [*] Đang push dữ liệu lên nhánh gh-pages...")
        res = subprocess.run(['git', 'push', '-f', 'origin', 'gh-pages'], cwd=WEB_DIST_DIR, capture_output=True, text=True)
        
        if res.returncode == 0:
            print("\n🎉 [THÀNH CÔNG] ĐÃ DEPLOY LÊN GITHUB PAGES THÀNH CÔNG!")
            print("🌐 Trang web đang chạy tại: https://shimakazevn.github.io/Home-project/")
        else:
            print(f"\n⚠️ Lỗi khi push lên GitHub: {res.stderr}")
    except Exception as e:
        print(f"\n❌ Thất bại khi deploy: {e}")
    finally:
        clean_directory(dist_git_dir)


def build_all():
    print("=" * 60)
    print("   HOME [RJ01556529] - QUY TRÌNH XÂY DỰNG BẢN WEB ĐỘC LẬP")
    print("=" * 60)
    
    step1_ensure_directories()
    records = step2_export_cdn_manifest()
    step3_sync_engine_and_scenarios()
    step4_generate_web_core_modules(records)
    step5_package_to_dist_web()
    step6_create_build_batch()

    print("\n" + "=" * 60)
    print("🎉 XÂY DỰNG BẢN WEB HOÀN CHỈNH THÀNH CÔNG 100%!")
    print(f"   Thư mục nguồn Web : {WEB_SRC_DIR}")
    print(f"   Thư mục phát hành : {WEB_DIST_DIR}")
    print("=" * 60)
    print("👉 Hướng dẫn kiểm thử:")
    print("   Chạy: python tools/build_web_release.py --serve")
    print("   Mở trình duyệt truy cập: http://localhost:8080")
    print("👉 Hướng dẫn Deploy:")
    print("   Chạy: python tools/build_web_release.py --deploy (hoặc nhấp đúp DEPLOY_WEB.bat)")
    print("=" * 60)


if __name__ == '__main__':
    if '--serve' in sys.argv:
        port = 8080
        os.chdir(WEB_DIST_DIR)
        print(f"🚀 Đang khởi chạy Web Server tại http://localhost:{port}...")
        handler = http.server.SimpleHTTPRequestHandler
        with socketserver.TCPServer(("", port), handler) as httpd:
            try:
                httpd.serve_forever()
            except KeyboardInterrupt:
                print("\nĐã dừng Web Server.")
    elif '--deploy' in sys.argv:
        deploy_to_gh_pages()
    else:
        build_all()


