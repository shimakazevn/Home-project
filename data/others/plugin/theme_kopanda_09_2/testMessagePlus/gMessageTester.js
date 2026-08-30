// =================================================================
// gMessageTester - Test Message Preview Engine (theme_kopanda_09_2)
// Fully compatible with jQuery 3.4.1+, TyranoScript & Web Browsers
// =================================================================

window.gMessageTester = {
	power: false,
	currentCharNumber: 0,
	currentTextNumber: 0,
	currentChar: "",
	currentHtml: "",
	currentText: "",
	glyphUrl: "./tyrano/images/system/nextpage.gif",
	cssUrl: "./data/others/plugin/theme_kopanda_09_2/testMessagePlus/style.css",
	sampleUrl: "./data/others/plugin/theme_kopanda_09_2/testMessagePlus/sampletext.ks",
	className: "test_message_area",
	messageArea: null,
	timer: null,
	isAutoMode: true,
	shouldHarryUp: false,
	sampleTexts: [
		"Bầu trời xanh ngắt trải rộng trên đầu. Mùi cỏ non ngai ngái.[r]Cảm giác như chỉ cần sải bước là có thể đi tới bất cứ đâu.",
		"Hơi thở không dồn dập, cơ thể cũng thật nhẹ nhõm.[r]Đã bao lâu rồi mình mới được chạy một cách sảng khoái thế này nhỉ."
	],
	style: {},
	toggle: function() {},
	getKidokuColor: function() {},
	checkEndText: function() {},
	getCurrentState: function() {},
	clearMessageArea: function() {},
	appendChar: function() {},
	appendGlyph: function() {},
	increaseCharNumber: function() {},
	increaseTextNumber: function() {},
	update: function() {},
	next: function() {}
};

(function(TM) {

	// Load CSS styles
	try {
		$.get(TM.cssUrl, function(data) {
			if (!data) return;
			var style = TM.style;
			data = data.replace(/\/\*[\s\S]*?\*\//g, "");
			data = data.replace(/(\n|\s|\t)/g, "");
			var parts = data.split("{");
			if (parts.length > 1) {
				var rules = parts[1].split("}")[0].split(";");
				for (var i = 0; i < rules.length; i++) {
					var arr = rules[i].split(":");
					if (arr[0] && arr[0] !== "") {
						style[arr[0]] = arr[1];
					}
				}
			}
		});
	} catch (e) {}

	// Load sample text
	try {
		$.get(TM.sampleUrl, function(data) {
			if (!data) return;
			data = data.replace(/;.*/g, "\n");
			data = data.replace(/(\n|\s|\t)/g, "");
			var arr = data.split("[p]");
			if (arr[arr.length - 1] === "") {
				arr.pop();
			}
			if (arr.length > 0) {
				TM.sampleTexts = arr;
			}
		});
	} catch (e) {}

	TM.getKidokuColor = function() {
		try {
			var cfg = tyrano.plugin.kag.config;
			var flg = cfg.autoRecordLabel;
			var col = cfg.alreadyReadTextColor;
			if (flg == "true" && col != "default" && typeof col == "string") {
				return $.convertColor(col);
			}
		} catch (e) {}
		return "";
	};

	TM.getCurrentState = function() {
		if (!this.sampleTexts || this.sampleTexts.length === 0) return;
		var idx = this.currentCharNumber;
		var str = this.sampleTexts[this.currentTextNumber] || "";
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
		this.currentChar = chr + this.currentChar;
	};

	TM.checkEndText = function() {
		return (this.currentCharNumber === 0);
	};

	TM.clearMessageArea = function() {
		if (this.checkEndText()) {
			if (this.messageArea && typeof this.messageArea.empty === "function") {
				this.messageArea.empty();
			}
			this.currentHtml = "";
		}
	};

	TM.appendChar = function() {
		var chr = this.currentChar;
		chr = chr.replace(/\[r\]/g, "<br />");
		chr = chr.replace(/\[kidoku\]/g, "<span style='color:" + this.getKidokuColor() + "'>");
		chr = chr.replace(/\[endkidoku\]/g, "</span>");
		this.currentHtml += chr;
		if (this.messageArea && typeof this.messageArea.html === "function") {
			this.messageArea.html(this.currentHtml);
		}
		this.currentChar = "";
	};

	TM.appendGlyph = function() {
		var color = "#000000";
		try {
			color = tyrano.plugin.kag.stat.default_font.color || "#000000";
		} catch (e) {}
		if (this.messageArea && typeof this.messageArea.append === "function") {
			this.messageArea.append('<span style="display: inline-block; width: 10px; height: 4px; background-color: ' + color + '; transform: translateY(3px);" class="img_next_test">&nbsp;</span>');
		}
	};

	TM.increaseCharNumber = function() {
		this.currentCharNumber++;
		if (this.currentCharNumber >= this.currentText.length) {
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
		var CO = (tyrano && tyrano.plugin && tyrano.plugin.kag) ? tyrano.plugin.kag.config : { chSpeed: 30, autoSpeed: 1300, autoSpeedWithText: 60 };
		TM.getCurrentState();
		TM.clearMessageArea();
		TM.appendChar();
		TM.increaseCharNumber();

		if (!TM.checkEndText()) {
			var delay = parseInt(CO.chSpeed || 30);
			if (TM.shouldHarryUp) delay = 2;
			if (delay <= 1) {
				TM.update();
			} else {
				clearTimeout(TM.timer);
				TM.timer = setTimeout(function() { TM.update(); }, delay);
			}
		} else {
			if ($("." + TM.className).length < 1) return TM.destroy();
			TM.appendGlyph();
			if (TM.isAutoMode) {
				var delay = parseInt(CO.autoSpeed || 1300) + parseInt(CO.autoSpeedWithText || 60) * (TM.currentText ? TM.currentText.length : 10);
				clearTimeout(TM.timer);
				TM.timer = setTimeout(function() { TM.update(); }, delay);
				$(".img_next_test").css("width", (10 * delay / 1000) + "px").animate({
					"width": "0px"
				}, delay, "linear");
			}
		}
	};

	TM.next = function(force) {
		if (TM.checkEndText() || force === true) {
			clearTimeout(TM.timer);
			TM.update();
		} else {
			TM.shouldHarryUp = true;
		}
	};

	TM.create = function() {
		$(".layer_free").show();
		var font = (tyrano && tyrano.plugin && tyrano.plugin.kag && tyrano.plugin.kag.stat) ? tyrano.plugin.kag.stat.default_font : { bold: "normal", size: "24", face: "sans-serif", color: "#ffffff" };
		var scroll = "onwheel" in document ? "wheel" : "onmousewheel" in document ? "mousewheel" : "DOMMouseScroll";

		$("." + this.className).remove();
		var area = $("<div class='" + this.className + "'></div>")
			.appendTo(".layer_free")
			.click(function() { TM.next(); })
			.on(scroll, function() { TM.next(); });

		if (!this.style["font-weight"] && font) area.css("font-weight", font.bold);
		if (!this.style["font-size"] && font) area.css("font-size", font.size + "px");
		if (!this.style["font-family"] && font) area.css("font-family", font.face);
		if (!this.style["color"] && font) area.css("color", font.color);

		this.messageArea = area;
		clearTimeout(this.timer);
		this.timer = setTimeout(function() { TM.update(); }, 300);
	};

	TM.destroy = function() {
		clearTimeout(this.timer);
		this.currentCharNumber = 0;
		this.currentTextNumber = 0;
		if (this.messageArea && typeof this.messageArea.remove === "function") {
			this.messageArea.remove();
		}
		this.messageArea = null;
		$("." + this.className).remove();
	};

}(window.gMessageTester));