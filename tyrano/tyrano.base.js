
tyrano.base = {
    tyrano: null,
    modules: [],
    options: {},
    init: function(tyrano) {
        this.tyrano = tyrano;
    },
    setBaseSize: function(width, height) {
        this.tyrano.get(".tyrano_base").css("width", width).css("height", height).css("background-color", "black");
    },
    fitBaseSize: function(width, height) {
        var that = this;
        this._fitBaseSize(width, height);
        setTimeout(function() {
            that._fitBaseSize(width, height);
        }, 50);
    },
    _fitBaseSize: function(width, height) {
        var that = this;
        var view_width = window.innerWidth || document.documentElement.clientWidth;
        var view_height = window.innerHeight || document.documentElement.clientHeight;
        var scWidth = parseInt(that.tyrano.kag.config.scWidth) || 1280;
        var scHeight = parseInt(that.tyrano.kag.config.scHeight) || 720;

        var scale_f = Math.min(view_width / scWidth, view_height / scHeight);
        if (that.tyrano.kag && that.tyrano.kag.tmp) {
            that.tyrano.kag.tmp.base_scale = scale_f;
        }

        var base = $(".tyrano_base");
        base.css({
            "position": "absolute",
            "transform-origin": "center center",
            "top": "50%",
            "left": "50%",
            "margin": "0px",
            "transform": "translate(-50%, -50%) scale(" + scale_f + ")"
        });

        if (that.tyrano.kag.config["vchat"] && that.tyrano.kag.config["vchat"] == "true") {
            var base_height = Math.round(scHeight * scale_f);
            var vchat_height = (view_height - base_height);
            $("#vchat_base").css({
                "margin-top": base_height,
                "height": vchat_height
            });
        }
    },
    test: function() {}
};
