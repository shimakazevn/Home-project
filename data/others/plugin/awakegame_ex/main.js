// awakegame_ex main.js
;(function(){
const _setLayerHtml = TYRANO.kag.layer.setLayerHtml;
TYRANO.kag.layer.setLayerHtml = function(layer){
    if(!layer) return;
    try {
        _setLayerHtml.apply(this, arguments);
        $('.layer_mask').remove();
        $('#root_layer_game').css('opacity', 1);
        $('#root_layer_system').css('opacity', 1);
        $('#input_blocker').remove();
        if (window.resolveCDNUrl) {
            $('#root_layer_game, #root_layer_system, .fixlayer').find('*').addBack().each(function() {
                var bg = $(this).css('background-image');
                if (bg && bg.includes('url(')) {
                    var m = bg.match(/url\(["']?([^"']+)["']?\)/);
                    if (m && m[1] && !m[1].startsWith('http') && !m[1].startsWith('data:')) {
                        var clean = m[1].replace(/^\.\//, '');
                        var cdn = window.resolveCDNUrl(clean);
                        if (cdn && cdn.startsWith('http')) {
                            $(this).css('background-image', 'url("' + cdn + '")');
                        }
                    }
                }
                if (this.tagName === 'IMG') {
                    var src = $(this).attr('src');
                    if (src && !src.startsWith('http') && !src.startsWith('data:')) {
                        var clean = src.replace(/^\.\//, '');
                        var cdn = window.resolveCDNUrl(clean);
                        if (cdn && cdn.startsWith('http')) {
                            $(this).attr('src', cdn);
                        }
                    }
                }
            });
        }
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
        if (null == this.kag.tmp.sleep_game) {
            if (this.kag.stat.current_scenario && (this.kag.stat.current_scenario.indexOf("config.ks") !== -1)) {
                this.kag.ftag.startTag("jump", { storage: "title_screen.ks", target: "*back" });
            } else {
                this.kag.ftag.nextOrder();
            }
            return;
        }
        else {
            if(pm.mask == "true"){
                TYRANO.kag.variable.tf._awakegame_ex = 0;
            }else{
                TYRANO.kag.variable.tf._awakegame_ex = parseInt(pm.time);
            }
            var sleep_game = this.kag.tmp.sleep_game;
            "true" == pm.variable_over && (sleep_game.stat.f = this.kag.stat.f);
            var _pm = {
                bgm_over: pm.bgm_over || "true"
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
