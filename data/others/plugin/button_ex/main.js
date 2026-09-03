
// HOME Visual Novel - button_ex Web Enhanced Plugin
(function() {
const name2class = (name = "") => {
    return $.replaceAll(name, ",", ".");
};

window.str2var = function (str) {
    let ary = str.replace(/\]/g, "").split(/\.|\[/g);
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

            if (parent_button.attr("class")) {
                j_button.attr("class", parent_button.attr("class"));
            } else {
                $.setName(j_button, pm.name);
            }
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

        let baseImg = (pm.src || '').split('/').pop().split('?')[0];
        if (KNOWN_SIZES[baseImg]) {
            pm.p_width = KNOWN_SIZES[baseImg].w;
            pm.p_height = KNOWN_SIZES[baseImg].h;
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

                // 4. Directly show action description if in room_asa wheel
                if (j_button.hasClass("fx_icon")) $(".fx_select").css("opacity", "1");
                if (j_button.hasClass("kintore_icon")) $(".kintore_select").css("opacity", "1");
                if (j_button.hasClass("neru_icon")) $(".neru_select").css("opacity", "1");
                if (j_button.hasClass("sinnyu_icon")) $(".sinnyu_select").css("opacity", "1");
                if (j_button.hasClass("hospital_icon")) {
                    if (j_button.hasClass("on_icon")) $(".hospital_select").css("opacity", "1");
                    else $(".syusyu_select").css("opacity", "1");
                }
                if (j_button.hasClass("massa_icon")) {
                    if (j_button.hasClass("on_icon")) $(".massa_select").css("opacity", "1");
                    else $(".syusyu_select").css("opacity", "1");
                }
                if (j_button.hasClass("drug_icon")) {
                    if (j_button.hasClass("on_icon")) $(".drug_select").css("opacity", "1");
                    else $(".syusyu_select").css("opacity", "1");
                }
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

                // Directly hide action descriptions
                $(".select_text").css("opacity", "0");
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
