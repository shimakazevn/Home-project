
tyrano.base ={
    
    //読み込み対象のモジュール
    tyrano:null,
    modules:[],
    options:{
        
    },
    
    init:function(tyrano){
        this.tyrano = tyrano;
    },
    
    setBaseSize:function(width,height){
        this.tyrano.get(".tyrano_base").css("width",width).css("height",height).css("background-color","black");
    },
    
    fitBaseSize:function(width,height){
		var that = this;
		setTimeout(function(){
			that._fitBaseSize(width,height);
		},50);
	},
    
    //画面サイズをぴったりさせます
    _fitBaseSize:function(width,height){
        
        var that = this;
        var view_width = window.innerWidth || document.documentElement.clientWidth || $.getViewPort().width;
        var view_height = window.innerHeight || document.documentElement.clientHeight || $.getViewPort().height;
        
        var width_f = view_width / width;
        var height_f = view_height / height;
        
        var scale_f = 0;
        var screen_ratio = this.tyrano.kag.config.ScreenRatio;
        
        //比率を固定にしたい場合
        if(screen_ratio == "fix"){
            
            scale_f = (width_f > height_f) ? height_f : width_f;
            this.tyrano.kag.tmp.base_scale = scale_f;
            
            setTimeout(function() {
                if(that.tyrano.kag.config["ScreenCentering"] && that.tyrano.kag.config["ScreenCentering"] == "true"){
                    $(".tyrano_base").css({
                        "position": "absolute",
                        "top": "50%",
                        "left": "50%",
                        "margin": "0",
                        "transform-origin": "center center",
                        "transform": "translate(-50%, -50%) scale(" + scale_f + ")"
                    });
                } else {
                    $(".tyrano_base").css({
                        "position": "absolute",
                        "top": "0",
                        "left": "0",
                        "margin": "0",
                        "transform-origin": "0 0",
                        "transform": "scale(" + scale_f + ")"
                    });
                }
                
                //vchat形式が有効ならそのエリアも調整する
                if(that.tyrano.kag.config["vchat"] && that.tyrano.kag.config["vchat"] == "true"){
                    var base_height = Math.round(parseInt($("#tyrano_base").css("height")) * scale_f);
                    var vchat_height = (view_height - base_height); 
                    $("#vchat_base").css({
                        "margin-top": base_height,
                        "height": vchat_height
                    });
                }
            }, 50);
            
        } else if(screen_ratio == "fit"){
            //スクリーンサイズに合わせて自動的に調整される
            setTimeout(function() {
                $(".tyrano_base").css({
                    "position": "absolute",
                    "top": "0",
                    "left": "0",
                    "margin": "0",
                    "transform-origin": "0 0",
                    "transform": "scaleX(" + width_f + ") scaleY(" + height_f + ")"
                });
            }, 50);
        }
    },
    
    test:function(){
        //alert("tyrano test");
    }
    
};
