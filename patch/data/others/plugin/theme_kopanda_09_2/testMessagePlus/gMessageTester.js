// gMessageTester.js - Trình hiển thị Text Preview cho mục Config
// Hỗ trợ tiếng Việt 100%, không bị phụ thuộc vào AJAX nội bộ

window.gMessageTester = {
	 power: false
	,currentCharNumber: 0
	,currentTextNumber: 0
	,currentChar: ""
	,currentHtml: ""
	,currentText: ""
	,glyphUrl: "./tyrano/images/system/nextpage.gif"
	,cssUrl: "./data/others/plugin/theme_kopanda_09_2/testMessagePlus/style.css"
	,sampleUrl: "./data/others/plugin/theme_kopanda_09_2/testMessagePlus/sampletext.ks"
	,className: "test_message_area"
	,messageArea: function() {}
	,timer: null
	,isAutoMode: true
	,shouldHarryUp: false
	,sampleTexts: [
		"Bầu trời xanh ngắt trải rộng trên đầu. Mùi cỏ non ngai ngái.[r]Cảm giác như chỉ cần sải bước là có thể đi tới bất cứ đâu.",
		"Hơi thở không dồn dập, cơ thể cũng thật nhẹ nhõm.[r]Đã bao lâu rồi mình mới được chạy một cách sảng khoái thế này nhỉ."
	]
	,style: {
		"position": "absolute",
		"top": "540px",
		"left": "80px",
		"width": "530px",
		"height": "110px",
		"font-size": "19px",
		"font-family": "'NotoSansVN', 'Segoe UI', sans-serif",
		"color": "#e0e0e0",
		"line-height": "1.5",
		"z-index": "9999"
	}
	,toggle: function() {}
	,getKidokuColor: function() {}
	,checkEndText: function() {}
	,getCurrentState: function() {}
	,clearMessageArea: function() {}
	,appendChar: function() {}
	,appendGlyph: function() {}
	,increaseCharNumber: function() {}
	,increaseTextNumber: function() {}
	,update: function() {}
	,next: function() {}
};

(function(TM) {

	// Nạp style CSS tùy biến nếu có
	if (window.$ && $.get) {
		$.get(TM.cssUrl, function(data){
			try {
				var style = gMessageTester.style;
				data = data.replace(/\/\*[\s\S]*?\*\//g, "");
				data = data.replace(/[\r\n\t]/g, "");
				var parts = data.split("{")[1].split("}")[0].split(";");
				for (var i = 0; i < parts.length; i++) {
					var arr = parts[i].split(":");
					if (arr[0] && arr[0].trim() !== "") {
						style[arr[0].trim()] = arr[1].trim();
					}
				}
			} catch (e) {}
		});
	}

	// Lấy màu chữ đã đọc
	TM.getKidokuColor = function() {
		var cfg = (tyrano && tyrano.plugin && tyrano.plugin.kag && tyrano.plugin.kag.config) || {};
		var flg = cfg.autoRecordLabel;
		var col = cfg.alreadyReadTextColor;
		if (flg == "true" && col != "default" && typeof col == "string") {
			return (window.$ && $.convertColor) ? $.convertColor(col) : col;
		}
		return "";
	};

	// Lấy ký tự tiếp theo
	TM.getCurrentState = function() {
		if (!this.sampleTexts || this.sampleTexts.length === 0) {
			this.sampleTexts = ["Bầu trời xanh ngắt trải rộng trên đầu..."];
		}
		if (this.currentTextNumber >= this.sampleTexts.length) {
			this.currentTextNumber = 0;
		}
		var str = this.sampleTexts[this.currentTextNumber] || "";
		var idx = this.currentCharNumber;
		var chr = str.charAt(idx);
		if (chr === "[") {
			var idx2 = str.indexOf("]", idx);
			if (idx2 !== -1) {
				var len = idx2 - idx + 1;
				chr = str.substr(idx, len);
				this.currentCharNumber += len;
				this.getCurrentState();
				return;
			}
		}
		this.currentText = str;
		this.currentChar = (chr || "") + (this.currentChar || "");
	};

	TM.checkEndText = function() {
		return (this.currentCharNumber === 0);
	};

	TM.clearMessageArea = function() {
		if (this.checkEndText() && this.messageArea && this.messageArea.empty) {
			this.messageArea.empty();
			this.currentHtml = "";
		}
	};

	TM.appendChar = function() {
		var chr = this.currentChar || "";
		chr = chr.replace(/\[r\]/g, "<br />");
		chr = chr.replace(/\[kidoku\]/g, "<span style='color:" + this.getKidokuColor() + "'>");
		chr = chr.replace(/\[endkidoku\]/g, "</span>");
		this.currentHtml = (this.currentHtml || "") + chr;
		if (this.messageArea && this.messageArea.html) {
			this.messageArea.html(this.currentHtml);
		}
		this.currentChar = "";
	};

	TM.appendGlyph = function() {
		var color = this.style["color"] || "#EEEEEE";
		if (this.messageArea && this.messageArea.append) {
			this.messageArea.append('<span style="display: inline-block; width: 10px; height: 4px; background-color: ' + color + '; transform: translateY(3px); margin-left: 4px;" class="img_next_test"> </span>');
		}
	};

	TM.increaseCharNumber = function() {
		this.currentCharNumber++;
		if (this.currentCharNumber >= (this.currentText ? this.currentText.length : 0)) {
			this.currentCharNumber = 0;
			this.increaseTextNumber();
			this.shouldHarryUp = false;
		}
	};

	TM.increaseTextNumber = function() {
		this.currentTextNumber++;
		if (this.currentTextNumber >= this.sampleTexts.length) {
			this.currentTextNumber = 0;
		}
	};

	TM.update = function() {
		var kag = (window.TYRANO && TYRANO.kag) || (window.tyrano && tyrano.plugin && tyrano.plugin.kag) || {};
		var CO = kag.config || {};
		
		TM.getCurrentState();
		TM.clearMessageArea();
		TM.appendChar();
		TM.increaseCharNumber();
		
		if (!TM.checkEndText()) {
			var chSpeed = parseInt(kag.stat ? kag.stat.ch_speed : "") || parseInt(CO.chSpeed) || 50;
			var delay = chSpeed;
			if (TM.shouldHarryUp) {
				delay = 2;
			}
			if (delay <= 1) {
				TM.update();
			} else {
				clearTimeout(TM.timer);
				TM.timer = setTimeout(TM.update, delay);
			}
		} else {
			if ($("." + TM.className).length < 1) return TM.destroy();
			TM.appendGlyph();
			if (TM.isAutoMode) {
				var autoSpeed = parseInt(CO.autoSpeed) || 2500;
				var autoSpeedWithText = parseInt(CO.autoSpeedWithText) || 0;
				var delay = autoSpeed + (autoSpeedWithText * (TM.currentText ? TM.currentText.length : 0));
				clearTimeout(TM.timer);
				TM.timer = setTimeout(TM.update, delay);
				$(".img_next_test").css("width", Math.max(2, 10 * delay / 1000)).animate({
					"width": "0"
				}, delay, "linear");
			}
		}
	};

	TM.next = function(forceRestart) {
		if (forceRestart) {
			clearTimeout(TM.timer);
			TM.currentCharNumber = 0;
			TM.currentChar = "";
			TM.currentHtml = "";
			if (TM.messageArea && TM.messageArea.empty) TM.messageArea.empty();
			TM.update();
			return;
		}
		if (TM.checkEndText()) {
			clearTimeout(TM.timer);
			TM.update();
		} else {
			TM.shouldHarryUp = true;
		}
	};

	TM.create = function () {
		TM.destroy();
		$(".layer_free").show();
		
		var scroll = "onwheel" in document ? "wheel" :
		             "onmousewheel" in document ? "mousewheel" : "DOMMouseScroll";
		
		var parent = $(".layer_free").length > 0 && $(".layer_free").is(":visible") ? $(".layer_free") :
		             ($(".layer_event_click").length > 0 ? $(".layer_event_click") : ($("#tyrano_base").length > 0 ? $("#tyrano_base") : $("body")));
		
		var area = $("<div class='" + this.className + "'></div>")
			.appendTo(parent)
			.click(function() { TM.next(); })
			.on(scroll, function() { TM.next(); });
		
		area.css({
			"position": "absolute",
			"top": "542px",
			"left": "80px",
			"width": "530px",
			"height": "110px",
			"font-size": "19px",
			"font-weight": "normal",
			"font-family": "'NotoSansVN', 'Segoe UI', sans-serif",
			"color": "#eeeeee",
			"line-height": "1.5",
			"pointer-events": "auto",
			"cursor": "pointer",
			"z-index": "99999",
			"display": "block",
			"visibility": "visible"
		});
		
		this.messageArea = area;
		this.currentCharNumber = 0;
		this.currentHtml = "";
		this.currentChar = "";
		
		clearTimeout(this.timer);
		this.timer = setTimeout(this.update, 100);
	};

	TM.destroy = function () {
		clearTimeout(this.timer);
		this.currentCharNumber = 0;
		this.currentTextNumber = 0;
		this.currentHtml = "";
		this.currentChar = "";
		if (this.messageArea && this.messageArea.remove) {
			this.messageArea.remove();
		}
		$("." + this.className).remove();
	};

}(window.gMessageTester));