
;(function () {
    const __slider_ui = {
        updateRange: function (name, w, pm) {
            var input = $("#input_" + name);
            if (input.length === 0) return;
            var rangeValue = parseFloat(input.val()) || 0;
            var minVal = parseFloat(input.attr("min") || 0);
            var maxVal = parseFloat(input.attr("max") || 100);
            var active = w * ((rangeValue - minVal) / (maxVal - minVal));
            var param = { width: active + "px" };
            let left = input.css("left").replace("px", "");
            $("." + name).find(".range_active").css(param);
            let tip = $("." + name).find(".range_tip");
            if (tip.length > 0) {
                let tip_x = 0;
                if (pm && pm.reverse === "true") {
                    tip_x = parseInt(left) + parseInt(w) - parseInt(active) - parseInt(tip.css("width").replace("px", "")) / 2;
                } else {
                    tip_x = parseInt(left) + parseInt(active) - parseInt(tip.css("width").replace("px", "")) / 2;
                }
                tip.text(rangeValue);
                if (pm && pm.tip_pos !== "static") {
                    tip.css({
                        left: `${tip_x}px`,
                    });
                }
            }
        },
        updateMuteIcon: function(name, val) {
            var v = parseFloat(val) || 0;
            var isMuted = (v <= 0);
            if (name === "text" || name === "auto") isMuted = (v <= 1);
            var imgName = isMuted ? 'on.png' : 'off.gif';
            var cdnImg = window.resolveCDNUrl ? window.resolveCDNUrl('data/others/plugin/theme_kopanda_09_2/image/config/' + imgName) : '../others/plugin/theme_kopanda_09_2/image/config/' + imgName;
            $('.' + name + '_mute, img[name*="' + name + '_mute"]').attr('src', cdnImg);
        },
        convertColor: function (color) {
            if (!color) return "transparent";
            return $.convertColor(color).replace("=", "#");
        },
    };
    window.__slider_ui = __slider_ui;
    window.__update_slider_dom = function(name, val) {
        var input = $("#input_" + name);
        if (input.length > 0) {
            input.val(val);
            var w = parseFloat(input.css("width")) || 290;
            __slider_ui.updateRange(name, w, { reverse: "false" });
            __slider_ui.updateMuteIcon(name, val);
        }
    };

    // スライダー
    const slider_tag = {
        vital: ["x", "y", "name"],
        pm: {
            name: "",
            x: "",
            y: "",
            width: "400",
            height: "4",
            min: "0",
            max: "100",
            step: "1",
            border: "0",
            border_color: "white",
            border_radius: "30",
            thumb_width: "30",
            thumb_height: "30",
            thumb_radius: "30",
            thumb_color: "white",
            thumb_border: "0",
            thumb_border_color: "white",
            thumb_img: "",
            base_color: "#999",
            active_color: "white",
            base_img: "",
            active_img: "",
            storage: "",
            target: "",
            exp: "",
            preexp: "",
            var: "",
            tip_width: "0",
            tip_height: "0",
            tip_color: "white",
            tip_radius: "0",
            tip_text_color: "black",
            tip_text_size: "24",
            tip_tail: "true",
            tip_pos: "top",
            tip_margin: "0",
            reverse: "false",
        },
        start: function (pm) {
            const that = (this && this.kag) ? this : (window.TYRANO ? window.TYRANO : this);
            const _pm = pm;
            const name = _pm.name;
            const variable = that.kag.embScript(_pm.var);

            const layer = that.kag.layer.getLayer("fix");

            // Remove any existing slider with this name first to prevent duplicate elements/thumbs
            layer.find("." + name).remove();
            $("#input_" + name).closest(".range").remove();
            $("#input_" + name).remove();
            $("." + name).remove();

            let wrap = $('<div class="range fixlayer"></div>');
            let base = $('<div class="range_base"></div>');
            let active = $('<div class="range_active"></div>');
            let input = $("<input type='range'>");
            let tip = $('<div class="range_tip"></div>');

            wrap.addClass(name);
            tip.addClass(name);
            input.attr({
                name: name,
                min: _pm.min,
                max: _pm.max,
                step: _pm.step,
            });
            input.attr({
                id: "input_" + name,
                value: variable !== undefined ? variable : _pm.min,
            });

            let bg_base = "";
            if (_pm.base_img != "") {
                let baseImgUrl = _pm.base_img.startsWith("http") ? _pm.base_img : "data/image/" + _pm.base_img;
                if (window.resolveCDNUrl) baseImgUrl = window.resolveCDNUrl(baseImgUrl);
                bg_base = `url(${baseImgUrl})`;
            } else {
                bg_base = __slider_ui.convertColor(_pm.base_color);
            }
            base.css({
                background: bg_base,
                position: "absolute",
                top: _pm.y + "px",
                left: _pm.x + "px",
                width: _pm.width + "px",
                height: _pm.height + "px",
                border: _pm.border + "px solid " + __slider_ui.convertColor(_pm.border_color),
                "border-radius": _pm.border_radius + "px",
            });

            let bg_active = "";
            if (_pm.active_img != "") {
                let actImgUrl = _pm.active_img.startsWith("http") ? _pm.active_img : "data/image/" + _pm.active_img;
                if (window.resolveCDNUrl) actImgUrl = window.resolveCDNUrl(actImgUrl);
                bg_active = `url(${actImgUrl})`;
            } else {
                bg_active = __slider_ui.convertColor(_pm.active_color);
            }
            active.css({
                background: bg_active,
                position: "absolute",
                top: parseInt(_pm.border) + parseInt(_pm.y) + "px",
                left: parseInt(_pm.border) + parseInt(_pm.x) + "px",
                height: _pm.height + "px",
                width: _pm.width + "px",
                "border-radius": _pm.border_radius + "px",
            });

            // 逆順の場合
            if (_pm.reverse == "true") {
                input.css({
                    direction: "rtl",
                });
                active.css({
                    left: "auto",
                    right: `${parseInt(TYRANO.kag.config.scWidth) - (parseInt(_pm.width) + parseInt(_pm.x))}px`,
                });
            }

            if (_pm.thumb_img !== "") {
                let thumbUrl = _pm.thumb_img;
                if (!thumbUrl.startsWith("http")) {
                    if (thumbUrl.startsWith("../")) {
                        thumbUrl = "data/" + thumbUrl.replace(/^(\.\.\/)+/, "");
                    } else if (!thumbUrl.startsWith("data/")) {
                        thumbUrl = "data/image/" + thumbUrl;
                    }
                }
                if (window.resolveCDNUrl) thumbUrl = window.resolveCDNUrl(thumbUrl);

                input.css({
                    top: _pm.y + "px",
                    left: _pm.x + "px",
                    width: _pm.width + "px",
                    height: _pm.height + "px",
                    "--thumb-width": _pm.thumb_width + "px",
                    "--thumb-height": _pm.thumb_height + "px",
                    "--thumb-img": `url(${thumbUrl})`,
                    "--thumb-color": "transparent",
                });
            } else {
                input.css({
                    top: _pm.y + "px",
                    left: _pm.x + "px",
                    width: _pm.width + "px",
                    height: _pm.height + "px",
                    "--thumb-width": _pm.thumb_width + "px",
                    "--thumb-height": _pm.thumb_height + "px",
                    "--thumb-radius": _pm.thumb_radius == "0" ? "none" : _pm.thumb_radius + "px",
                    "--thumb-color": __slider_ui.convertColor(_pm.thumb_color),
                    "--thumb-border": _pm.thumb_border + "px solid " + __slider_ui.convertColor(_pm.thumb_border_color),
                });
            }
            let _top = 0;
            let _left = 0;
            let _opacity = 0;
            let _tail_top = "none";
            let _tail_bottom = "none";
            let _tail_arrow = "";
            let _tail = "none";
            if (_pm.tip_tail == "true") {
                _tail = "block";
            }
            if (_pm.tip_pos == "top") {
                _top = parseInt(_pm.y) - parseInt(_pm.tip_height) - parseInt(_pm.tip_margin);
                _tail_top = parseInt(_pm.tip_width) + "px solid " + _pm.tip_color;
                _tail_arrow = (parseInt(_pm.tip_height) / 2) * 1;
            } else if (_pm.tip_pos == "bottom") {
                _top = parseInt(_pm.y) + parseInt(_pm.tip_margin);
                _tail_bottom = parseInt(_pm.tip_width) + "px solid " + _pm.tip_color;
                _tail_arrow = (parseInt(_pm.tip_height) / 2) * -1;
            } else if (_pm.tip_pos == "static") {
                _top = pm.tip_y;
                _left = pm.tip_x;
                _opacity = 1;
            }
            tip.css({
                position: "absolute",
                top: `${_top}px`,
                left: `${_left}px`,
                opacity: _opacity,
                "z-index": "999",
                width: _pm.tip_width + "px",
                height: _pm.tip_height + "px",
                background: __slider_ui.convertColor(_pm.tip_color),
                color: __slider_ui.convertColor(_pm.tip_text_color),
                "font-size": _pm.tip_text_size + "px",
                "text-align": "center",
                "line-height": _pm.tip_height + "px",
                "border-radius": _pm.tip_radius + "px",
                "--tip_width": _pm.tip_width + "px",
                "--tip_height": _pm.tip_height + "px",
                "--tip_color": __slider_ui.convertColor(_pm.tip_color),
                "--tip_tail": _tail,
                "--tip_tail_top": _tail_top,
                "--tip_tail_bottom": _tail_bottom,
                "--tip_tail_arrow": _tail_arrow + "px",
            });

            wrap.append(base).append(active).append(input);
            if (_pm.tip_width != "0") {
                wrap.append(tip);
            }
            layer.append(wrap);
            __slider_ui.updateRange(_pm.name, _pm.width, pm);

            that.kag.event.addEventElement({
                tag: "slider",
                j_target: input,
                pm: pm,
            });
            this.setEvent(input, pm);
            that.kag.ftag.nextOrder();
        },
        setEvent: function (input, pm) {
            const that = TYRANO;
            const _pm = pm;

            // ツマミを動かしているとき
            input.on("input", function (e) {
                $("." + _pm.name).find(".range_tip").css({ opacity: 1 });
                __slider_ui.updateRange(_pm.name, _pm.width, pm);
                var val = parseFloat(this.value) || 0;
                __slider_ui.updateMuteIcon(_pm.name, val);
                that.kag.embScript(_pm.var + " = " + val);

                // Live update audio & text speed & persist to sf
                if (_pm.name === "bgm") {
                    if (that.kag.setBgmVolume) that.kag.setBgmVolume(val);
                    if (that.kag.config) that.kag.config.defaultBgmVolume = String(val);
                    if (that.kag.variable && that.kag.variable.sf) {
                        that.kag.variable.sf._system_config_bgm_volume = val;
                        that.kag.saveSystemVariable();
                    }
                } else if (_pm.name === "se") {
                    if (that.kag.setSeVolume) that.kag.setSeVolume("0", val);
                    if (that.kag.config) that.kag.config.defaultSeVolume = String(val);
                    if (that.kag.variable && that.kag.variable.sf) {
                        that.kag.variable.sf._system_config_se_volume = val;
                        if (!that.kag.variable.sf._skskpnt_volume) that.kag.variable.sf._skskpnt_volume = [50, 70, 70, 70];
                        that.kag.variable.sf._skskpnt_volume[0] = val;
                        that.kag.saveSystemVariable();
                    }
                } else if (_pm.name === "voice_1") {
                    if (that.kag.setSeVolume) that.kag.setSeVolume("1", val);
                    if (that.kag.variable && that.kag.variable.sf) {
                        if (!that.kag.variable.sf._skskpnt_volume) that.kag.variable.sf._skskpnt_volume = [50, 70, 70, 70];
                        that.kag.variable.sf._skskpnt_volume[1] = val;
                        that.kag.saveSystemVariable();
                    }
                } else if (_pm.name === "voice_2") {
                    if (that.kag.setSeVolume) that.kag.setSeVolume("2", val);
                    if (that.kag.variable && that.kag.variable.sf) {
                        if (!that.kag.variable.sf._skskpnt_volume) that.kag.variable.sf._skskpnt_volume = [50, 70, 70, 70];
                        that.kag.variable.sf._skskpnt_volume[2] = val;
                        that.kag.saveSystemVariable();
                    }
                } else if (_pm.name === "voice_3") {
                    if (that.kag.setSeVolume) that.kag.setSeVolume("3", val);
                    if (that.kag.variable && that.kag.variable.sf) {
                        if (!that.kag.variable.sf._skskpnt_volume) that.kag.variable.sf._skskpnt_volume = [50, 70, 70, 70];
                        that.kag.variable.sf._skskpnt_volume[3] = val;
                        that.kag.saveSystemVariable();
                    }
                } else if (_pm.name === "text") {
                    var chSpeed = 101 - val;
                    if (that.kag.config) that.kag.config.chSpeed = chSpeed;
                    that.kag.embScript("tf.current_ch_speed = " + chSpeed);
                    if (that.kag.variable && that.kag.variable.sf) {
                        that.kag.variable.sf._config_ch_speed = chSpeed;
                        that.kag.saveSystemVariable();
                    }
                    if (window.gMessageTester && gMessageTester.next) gMessageTester.next(true);
                } else if (_pm.name === "auto") {
                    var autoSpeed = 5001 - val;
                    if (that.kag.config) that.kag.config.autoSpeed = autoSpeed;
                    that.kag.embScript("tf.current_auto_speed = " + autoSpeed);
                    if (that.kag.variable && that.kag.variable.sf) {
                        that.kag.variable.sf._system_config_auto_speed = autoSpeed;
                        that.kag.saveSystemVariable();
                    }
                    if (window.gMessageTester && gMessageTester.next) gMessageTester.next(true);
                }

                if (_pm.exp && _pm.exp !== "") {
                    that.kag.embScript(_pm.exp, _pm.preexp);
                }
            });

            // ツマミを動かし終わったとき
            input.on("change", function () {
                $("." + _pm.name).find(".range_tip").css({ opacity: 0 });
                var val = parseFloat(this.value) || 0;
                that.kag.embScript(_pm.var + " = " + val);

                // Play preview sample audio when releasing volume slider
                if (_pm.name === "se") {
                    if (that.kag.playTestAudio) that.kag.playTestAudio("se", val);
                } else if (_pm.name === "voice_1") {
                    if (that.kag.playTestAudio) that.kag.playTestAudio("voice_1", val);
                } else if (_pm.name === "voice_2") {
                    if (that.kag.playTestAudio) that.kag.playTestAudio("voice_2", val);
                } else if (_pm.name === "voice_3") {
                    if (that.kag.playTestAudio) that.kag.playTestAudio("voice_3", val);
                }

                if (that.kag.saveSystemVariable) that.kag.saveSystemVariable();

                if (_pm.exp && _pm.exp !== "") {
                    that.kag.embScript(_pm.exp, _pm.preexp);
                }
            });

            input.on("mouseup touchend", function () {
                $("." + _pm.name).find(".range_tip").css({ opacity: 0 });
            });
        },
    };

    // スイッチ
    const switch_tag = {
        vital: ["x", "y", "name"],
        pm: {
            name: "",
            x: "",
            y: "",
            width: "60",
            height: "4",
            border: "0",
            border_color: "white",
            border_radius: "30",
            thumb_width: "30",
            thumb_height: "30",
            thumb_radius: "30",
            thumb_color: "white",
            thumb_border: "0",
            thumb_border_color: "white",
            thumb_img: "",
            base_color: "#999",
            active_color: "white",
            base_img: "",
            active_img: "",
            storage: "",
            target: "",
            var: "",
        },
        start: function (pm) {
            const that = (this && this.kag) ? this : (window.TYRANO ? window.TYRANO : this);
            const _pm = pm;
            const name = _pm.name;
            const variable = that.kag.embScript(_pm.var);
            const active = _pm.active_img != "" ? _pm.active_img : __slider_ui.convertColor(_pm.active_color);
            const base = _pm.base_img != "" ? _pm.base_img : __slider_ui.convertColor(_pm.base_color);
            const color = variable ? active : base;

            const layer = that.kag.layer.getLayer("fix");

            let wrap = $('<div class="fixlayer"></div>');
            let input = $("<input type=checkbox />");
            let label = $("<label />");

            wrap.addClass(name);
            wrap.css({
                position: "absolute",
                top: _pm.y + "px",
                left: _pm.x + "px",
                width: _pm.width + "px",
                height: _pm.height + "px",
            });
            input.attr({
                id: "input_" + name,
                type: "checkbox",
                name: name,
            });
            input.css({
                display: "none",
            });
            label.attr({
                for: "input_" + name,
            });
            label.css({
                background: color,
                "box-sizing": "border-box",
                cursor: "pointer",
                display: "inline-block",
                position: "relative",
                width: _pm.width + "px",
                height: _pm.height + "px",
                border: _pm.border + "px solid " + __slider_ui.convertColor(_pm.border_color),
                "border-radius": _pm.border_radius + "px",
            });

            if (_pm.base_img != "" && _pm.active_img != "") {
                label.addClass("img");
            } else {
                label.append("<div></div>");
                label.css({
                    "--thumb-radius": _pm.thumb_radius == "0" ? "none" : _pm.thumb_radius + "px",
                    "--thumb-color": __slider_ui.convertColor(_pm.thumb_color),
                    "--thumb-border": _pm.thumb_border + "px solid " + __slider_ui.convertColor(_pm.thumb_border_color),
                });
            }
            input.prop("checked", variable);

            wrap.append(input).append(label);
            layer.append(wrap);

            that.kag.event.addEventElement({ tag: "switch", j_target: input, pm: pm });
            this.setEvent(input, label, pm);
            that.kag.ftag.nextOrder();
        },
        setEvent: function (input, label, pm) {
            const that = (this && this.kag) ? this : (window.TYRANO ? window.TYRANO : this);
            const _pm = pm;
            input.on("change", function () {
                const active = _pm.active_img != "" ? _pm.active_img : __slider_ui.convertColor(_pm.active_color);
                const base = _pm.base_img != "" ? _pm.base_img : __slider_ui.convertColor(_pm.base_color);
                if (input.prop("checked")) {
                    that.kag.evalScript(_pm.var + " = true");
                    label.css({ background: active });
                    label.find("div").css({ left: _pm.width / 2 + "px" });
                } else {
                    that.kag.evalScript(_pm.var + " = false");
                    label.css({ background: base });
                    label.find("div").css({ left: "0px" });
                }
                if (_pm.target != "") {
                    that.kag.ftag.startTag("jump", { target: _pm.target, storage: _pm.storage });
                }
            });
        },
    };

    function registerActiveTags() {
        if (typeof tyrano !== "undefined" && tyrano.plugin && tyrano.plugin.kag && tyrano.plugin.kag.tag) {
            tyrano.plugin.kag.tag.slider = slider_tag;
            tyrano.plugin.kag.tag.switch = switch_tag;
        }
        if (window.TYRANO && window.TYRANO.kag) {
            if (!window.TYRANO.kag.tag) window.TYRANO.kag.tag = {};
            window.TYRANO.kag.tag.slider = slider_tag;
            window.TYRANO.kag.tag.switch = switch_tag;
            if (window.TYRANO.kag.ftag && window.TYRANO.kag.ftag.master_tag) {
                window.TYRANO.kag.ftag.master_tag.slider = slider_tag;
                slider_tag.kag = window.TYRANO.kag;
                window.TYRANO.kag.ftag.master_tag.switch = switch_tag;
                switch_tag.kag = window.TYRANO.kag;
            }
        }
    }
    registerActiveTags();
    if (typeof $ !== "undefined") {
        $(document).ready(registerActiveTags);
    }
    window.addEventListener("DOMContentLoaded", registerActiveTags);
    window.addEventListener("load", registerActiveTags);

    const _return = (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.tag) ? window.TYRANO.kag.tag.return : null;
    if (_return) {
        window.TYRANO.kag.tag.return = $.extend(true, {}, _return, {
            start: function () {
                $("input").prop("disabled", false);
                _return.start.apply(this, arguments);
            },
        });
    }
})();
