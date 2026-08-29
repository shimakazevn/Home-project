n](function(){
//レイヤー復元処理上書き
const _setLayerHtml = TYRANO.kag.layer.setLayerHtml
TYRANO.kag.layer.setLayerHtml = function(layer){
    let clone = $("#tyrano_base").clone()
    clone.attr("id", "tyrano_base_old")
    clone.attr("class", "tyrano_base_old")

    //本来の処理
    _setLayerHtml.apply(TYRANO.kag.layer, arguments)

    $("#tyrano_base").css({
        position: "absolute",
    })
    $("#tyrano_base").after(clone)
    clone.fadeOut(TYRANO.kag.variable.tf._awakegame_ex, function(){
        clone.remove()
        $("#tyrano_base").css({
            position: "",
        })
    })
}

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
                TYRANO.kag.variable.tf._awakegame_ex = 0
            }else{
                TYRANO.kag.variable.tf._awakegame_ex = parseInt(pm.time)
            }
            var sleep_game = this.kag.tmp.sleep_game;
            "true" == pm.variable_over && (sleep_game.stat.f = this.kag.stat.f);
            var _pm = {
                bgm_over: pm.bgm_over
            };
            1 == this.kag.tmp.sleep_game_next && (_pm.auto_next = "yes")

            var a = {
                time: pm.time,
                effect: "fadeIn",
                color: pm.color,
                graphic: pm.graphic,
                folder: "",
            }
            var wait_time = 300
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
                    "" != a.graphic && (i = "./data/" + folder + "/" + a.graphic, e.css("background-image", "url(" + i + ")"))
                }
                $(".tyrano_base").append(e);
            
                e.addClass("animated " + a.effect).one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
                    TYRANO.kag.menu.loadGameData($.extend(!0, {}, sleep_game), _pm)
                    var r = e.attr("data-effect");
                    e.removeClass("animated " + r)
                    e.css("animation-duration", parseInt(a.time) + "ms");
                    e.addClass("animated " + "fadeOut").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
                        e.remove() //, t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder()
                    })    
                    TYRANO.kag.tmp.sleep_game = null
                })            
            }else{
                TYRANO.kag.menu.loadGameData($.extend(!0, {}, sleep_game), _pm)
                TYRANO.kag.tmp.sleep_game = null
            }
        }
    }
}
TYRANO.kag.ftag.master_tag.awakegame_ex = TYRANO.kag.tag.awakegame_ex
TYRANO.kag.ftag.master_tag.awakegame_ex.kag = TYRANO.kag

})()
