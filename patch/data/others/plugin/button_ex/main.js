//;(function () {
/**
 * nameパラメータをclassに変換
 * @param {String} name
 * @returns String
 */
const name2class = (name = "") => {
    let cssclass = $.replaceAll(name, ",", ".")
    return cssclass
}

/**
 * 文字列を変数への参照に変換
 * @param {String} str
 * @returns {Object}
 */
window.str2var = function (str) {
    let ary = str.replace(/\]/g, "").split(/\.|\[/g)
    let variable = window
    if (ary[0] === "f") {
        variable = TYRANO.kag.stat
    } else if (ary[0] === "sf" || ary[0] === "tf") {
        variable = TYRANO.kag.variable
    } else if (ary[0] === "TG") {
        variable = TYRANO.kag
    }
    ary.forEach(function (key) {
        key = key.replace(/"|'/g, "")
        if (variable) {
            variable = variable[key]
        }
    })
    return variable
}

/**
 * ボタン機能拡張
 */
tyrano.plugin.kag.tag.button_ex = {
    vital: ["name"],
    pm: {
        name: "", //ボタンのname
        enterimg: "", //マウスオーバー時の画像
        enter_fade: "0", //マウスオーバー時画像切り替え時間
        clickimg: "", //クリック時画像切り替え
        tip: "", //ツールチップ画像パス
        tip_pos: "", //ツールチップ位置（top, bottom, left, right, static）
        tip_margin: "0", //ツールチップとボタンの間隔
        tip_fade: "0", //ツールチップフェード時間
        tip_method: "fadeIn", //ツールチップ表示/非表示タイプ（bgタグmethodと同じ）
        tip_x: "0", //tip_pos=staticの時のツールチップ横位置
        tip_y: "0", //tip_pos=staticの時のツールチップ縦位置
        disableimg: "", //ボタン無効化する条件式
        disable: "", //ボタン無効化する条件式
        alpha: "0", //透明部分無効
    },

    start: function (pm) {
        var that = TYRANO
        var self = this
        var csscls = name2class(pm.name)
        var parent_button = $("img." + csscls)
        var j_button = $("<img />")

        if (parent_button.length == 0) {
            console.warn("親となるボタンがありません。nameパラメータは正しく指定されていますか？ 対象：" + pm.name)
            that.kag.ftag.nextOrder()
            return
        }

        pm.p_top = parent_button.css("top")
        pm.p_left = parent_button.css("left")
        pm.p_width = 0
        pm.p_height = 0
        pm.src = parent_button.attr("src")

        const _relative = "../others/plugin/button_ex/blank.png"
        const _absolute = "./data/others/plugin/button_ex/blank.png"

        try {
            const rawJson = parent_button.attr("data-event-pm")
            if (rawJson) {
                const parent_json = JSON.parse(rawJson)
                parent_json.graphic = _relative
                parent_button.attr("data-event-pm", JSON.stringify(parent_json))
            }
        } catch(e) {}

        j_button.attr("src", _absolute)

        let button_set = function (j_button, parent_button, pm) {
            j_button.css({
                position: "absolute",
                cursor: "pointer",
                "z-index": 99999999,
                top: pm.p_top,
                left: pm.p_left,
                width: pm.p_width + "px",
                height: pm.p_height + "px",
            })
            parent_button.css({
                "will-change": "background transition animation",
                "background-image": "url(" + pm.src + ")",
                "background-repeat": "no-repeat",
                "background-size": "100% 100%",
                width: pm.p_width + "px",
                height: pm.p_height + "px",
                transition: pm.enter_fade + "ms",
                opacity: 1,
            })
            parent_button.attr("src", "./data/others/plugin/button_ex/blank.png")

            $.setName(j_button, pm.name)
            if (parent_button.hasClass("fixlayer")) {
                j_button.addClass("fixlayer")
            }
            that.kag.event.addEventElement({
                tag: "button_ex",
                j_target: j_button,
                pm: pm,
            })
            parent_button.after(j_button)
            self.setEvent(j_button, pm)
            that.kag.ftag.nextOrder()
        }

        parent_button.on(
            "transitionend",
            function () {
                parent_button.off("transitionend")
                pm.p_width = parseInt(parent_button.css("width")) || parent_button.width() || 0
                pm.p_height = parseInt(parent_button.css("height")) || parent_button.height() || 0

                if (pm.p_width == 0) {
                    const getWidthReplay = function () {
                        setTimeout(() => {
                            pm.p_width = parseInt(parent_button.css("width")) || parent_button.width() || 0
                            pm.p_height = parseInt(parent_button.css("height")) || parent_button.height() || 0
                            if (pm.p_width != 0) {
                                button_set(j_button, parent_button, pm)
                            } else {
                                pm.p_width = 120
                                pm.p_height = 120
                                button_set(j_button, parent_button, pm)
                            }
                        }, 50)
                    }
                    getWidthReplay()
                } else {
                    button_set(j_button, parent_button, pm)
                }
            }.bind(this)
        )

        parent_button.css({
            transition: "5ms",
            opacity: 0.99,
        })
        setTimeout(() => {
            if (pm.p_width == 0) {
                parent_button.trigger("transitionend")
            }
        }, 30)
    },

    setEvent: function (j_button, pm) {
        var that = TYRANO
        var self = this
        var csscls = name2class(pm.name)
        var parent_button = $("img." + csscls + ":first")

        //ボタン活性／非活性切り替え
        let prevFlg = false
        j_button.on("transitionend", function (ev) {
            if (pm.disable !== "" && pm.disableimg != "") {
                const isFlag = that.kag.embScript(pm.disable)
                if (prevFlg !== isFlag) {
                    prevFlg = isFlag
                    if (isFlag) {
                        if (pm.disableimg != "") {
                            let dImg = (window.resolveCDNUrl ? window.resolveCDNUrl("data/image/" + pm.disableimg) : ("data/image/" + pm.disableimg))
                            parent_button.css({
                                "background-image": "url(" + dImg + ")",
                            })
                        }
                    } else {
                        parent_button.css({
                            "background-image": "url(" + pm.src + ")",
                        })
                    }
                }
                if (j_button.css("opacity") == 1) {
                    j_button.css({
                        opacity: 0.99,
                    })
                } else {
                    j_button.css({
                        opacity: 1,
                    })
                }
            }
        })
        j_button.css({
            transition: "100ms",
        })
        j_button.trigger("transitionend")

        j_button.hover(
            function (ev) {
                TYRANO.kag.variable.tf._button_ex_tip = true
                //ボタン無効化
                if (pm.disable && that.kag.embScript(pm.disable)) {
                    $("." + csscls).css({
                        cursor: "default",
                    })
                    ev.stopPropagation()
                    return false
                } else {
                    $("." + csscls).css({
                        cursor: "pointer",
                    })
                }

                //マウスオーバー
                if (pm.enterimg && pm.enterimg != "") {
                    let fullEnter = pm.enterimg.startsWith("data/") || pm.enterimg.startsWith("http") ? pm.enterimg : "data/image/" + pm.enterimg;
                    let cdnEnter = window.resolveCDNUrl ? window.resolveCDNUrl(fullEnter) : fullEnter;
                    parent_button.css({
                        "background-image": "url(" + cdnEnter + ")",
                    })
                }

                //ツールチップ表示
                if (pm.tip != "") {
                    var p_top = parseInt(parent_button.css("top")) || 0
                    var p_left = parseInt(parent_button.css("left")) || 0
                    var p_right = parseInt(parent_button.css("right")) || 0
                    var p_bottom = parseInt(parent_button.css("bottom")) || 0
                    var p_width = parseInt(parent_button.css("width")) || 0
                    var p_height = parseInt(parent_button.css("height")) || 0

                    $(".__tip").remove()
                    var tip = $("<img />")
                    var fix = TYRANO.kag.layer.getLayer("fix")
                    fix.append(tip)
                    let fullTip = pm.tip.startsWith("data/") || pm.tip.startsWith("http") ? pm.tip : "./data/image/" + pm.tip;
                    let cdnTip = window.resolveCDNUrl ? window.resolveCDNUrl(fullTip) : fullTip;
                    tip.attr("src", cdnTip)
                    tip.css({
                        top: "-1000px",
                        transition: "1ms all",
                        opacity: 0,
                        display: "inline-block",
                        position: "relative",
                    })
                    tip.on("transitionend", function () {
                        tip.off("transitionend")

                        tip.addClass("__tip")
                        tip.addClass("fixlayer")
                        var t_width = parseInt(tip.css("width")) || 0
                        var t_height = parseInt(tip.css("height")) || 0
                        var t_margin = parseInt(pm.tip_margin) || 0
                        var opt = {}
                        if (pm.tip_pos == "top") {
                            opt = {
                                top: "",
                                position: "absolute",
                                bottom: p_bottom + p_height + t_margin + "px",
                                left: p_left + (p_width - t_width) / 2 + "px",
                            }
                        } else if (pm.tip_pos == "right") {
                            opt = {
                                position: "absolute",
                                top: p_top + (p_height - t_height) / 2 + "px",
                                left: p_left + p_width + t_margin + "px",
                            }
                        } else if (pm.tip_pos == "bottom") {
                            opt = {
                                top: "",
                                position: "absolute",
                                bottom: p_bottom - p_height - t_margin + "px",
                                left: p_left + (p_width - t_width) / 2 + "px",
                            }
                        } else if (pm.tip_pos == "left") {
                            opt = {
                                position: "absolute",
                                top: p_top + (p_height - t_height) / 2 + "px",
                                right: p_right + p_width + t_margin + "px",
                            }
                        } else if (pm.tip_pos == "static") {
                            opt = {
                                position: "absolute",
                                top: pm.tip_y + "px",
                                left: pm.tip_x + "px",
                            }
                        }
                        opt["z-index"] = 999999999
                        opt["transition"] = "none"
                        opt["transform"] = ""
                        opt["opacity"] = 1
                        opt["pointer-events"] = "none"
                        tip.css(opt)
                        $.trans(pm.tip_method, tip, pm.tip_fade, "show", function () {
                            if (TYRANO.kag.variable.tf._button_ex_tip == false) {
                                tip.remove()
                            }
                        })
                        if ($(".__tip").length > 1) {
                            $(".__tip:not(:last)").remove()
                        }
                    })
                    tip.css({
                        top: "-=1px",
                    })
                }
                parent_button.trigger("mouseover")
            },
            function (ev) {
                if (pm.disable && that.kag.embScript(pm.disable)) {
                    ev.stopPropagation()
                    return false
                }

                $("." + csscls).css({
                    cursor: "default",
                })
                TYRANO.kag.variable.tf._button_ex_tip = false
                if (pm.enterimg) {
                    parent_button.css({
                        "background-image": "url(" + pm.src + ")",
                    })
                }
                var tip = $(".__tip")
                $.trans(pm.tip_method, tip, pm.tip_fade, "hide", function () {
                    tip.remove()
                })
                parent_button.trigger("mouseleave")
            }
        )

        j_button.on("click", function (ev) {
            try {
                if (pm.alpha && pm.alpha !== "0") {
                    const canvas = self.setCanvas(pm)
                    const alpha = self.getPosition(ev, canvas)
                    if (alpha < parseInt(pm.alpha)) {
                        return false
                    }
                }
            } catch(e) {}

            //ボタン無効化
            if (pm.disable && that.kag.embScript(pm.disable)) {
                ev.stopPropagation()
                return false
            } else {
                $(".__tip").remove()
                if (pm.clickimg && pm.clickimg != "") {
                    let fullClick = pm.clickimg.startsWith("data/") || pm.clickimg.startsWith("http") ? pm.clickimg : "data/image/" + pm.clickimg;
                    let cdnClick = window.resolveCDNUrl ? window.resolveCDNUrl(fullClick) : fullClick;
                    parent_button.css({
                        "background-image": "url(" + cdnClick + ")",
                    })
                }
                parent_button.trigger("tap")
                parent_button.trigger("click")
                if (parent_button.length > 0 && parent_button[0].click) {
                    parent_button[0].click()
                }
            }
        })
    },

    getPosition: function (event, canvas) {
        try {
            if (canvas !== null) {
                const rect = event.target.getBoundingClientRect()
                const left = event.clientX - rect.left
                const top = event.clientY - rect.top
                let scale = 1.0
                let transform = $(".tyrano_base").css("transform")
                if (transform && transform.includes("matrix")) {
                    scale = parseFloat(transform.replace("matrix(", "").replace(")", "").split(",")[0]) || 1.0
                }
                const alpha = canvas.getImageData(Math.floor(left / scale), Math.floor(top / scale), 1, 1)
                return alpha.data[3]
            }
        } catch (err) {
            return 255
        }
        return 255
    },

    setCanvas: function (pm) {
        try {
            const img = new Image()
            img.crossOrigin = "anonymous"
            img.src = pm.src
            const canvas = document.createElement("canvas")
            const context = canvas.getContext("2d")
            let w = parseInt(pm.p_width) || 120
            let h = parseInt(pm.p_height) || 120
            context.canvas.width = w
            context.canvas.height = h
            context.drawImage(img, 0, 0, w, h)
            return context
        } catch (err) {
            return null
        }
    },
}

tyrano.plugin.kag.ftag.master_tag.button_ex = tyrano.plugin.kag.tag.button_ex
tyrano.plugin.kag.ftag.master_tag.button_ex.kag = tyrano.plugin.kag

tyrano.plugin.kag.tag.button_ex_restore = {
    vital: [],
    pm: {},
    start: function (pm) {
        $(".__tip").remove()
        TYRANO.kag.ftag.nextOrder()
    },
}

tyrano.plugin.kag.ftag.master_tag.button_ex_restore = tyrano.plugin.kag.tag.button_ex_restore
tyrano.plugin.kag.ftag.master_tag.button_ex_restore.kag = tyrano.plugin.kag
