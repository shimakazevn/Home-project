// =================================================================
// gMessageTester - Test Message Preview Engine (theme_kopanda_09_2)
// Self-contained, robust preview engine for TyranoScript (PC & Web)
// =================================================================

window.gMessageTester = {
	power: false,
	currentCharNumber: 0,
	currentTextNumber: 0,
	currentChar: "",
	currentHtml: "",
	currentText: "",
	glyphUrl: "./tyrano/images/system/nextpage.gif",
	className: "test_message_area",
	messageArea: null,
	timer: null,
	isAutoMode: true,
	shouldHarryUp: false,
	sampleTexts: [
		"Bầu trời xanh ngắt trải rộng trên đầu. Mùi cỏ non ngai ngái.[r]Cảm giác như chỉ cần sải bước là có thể đi tới bất cứ đâu.",
		"Hơi thở không dồn dập, cơ thể cũng thật nhẹ nhõm.[r]Đã bao lâu rồi mình mới được chạy một cách sảng khoái thế này nhỉ."
	],
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

	TM.getCurrentState = function() {
		if (!this.sampleTexts || this.sampleTexts.length === 0) return;
		var str = this.sampleTexts[this.currentTextNumber] || "";
		var idx = this.currentCharNumber;
		var chr = str.charAt(idx);
		if (chr === "[") {
			var idx2 = str.indexOf("]", idx);
			if (idx2 !== -1) {
				var len = idx2 - idx + 1;
				chr = str.substr(idx, len);
				this.currentCharNumber += (len - 1);
			}
		}
		this.currentText = str;
		this.currentChar = chr;
	};

	TM.clearMessageArea = function() {
		if (this.currentCharNumber === 0) {
			if (this.messageArea && typeof this.messageArea.empty === "function") {
				this.messageArea.empty();
			}
			this.currentHtml = "";
		}
	};

	TM.appendChar = function() {
		var chr = this.currentChar || "";
		chr = chr.replace(/\[r\]/g, "<br />");
		this.currentHtml += chr;
		if (this.messageArea && typeof this.messageArea.html === "function") {
			this.messageArea.html(this.currentHtml);
		}
		this.currentChar = "";
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
		if (!TM.messageArea || $(".test_message_area").length < 1) return;
		var chSpeed = 30;
		var autoSpeed = 1300;
		if (window.TYRANO && TYRANO.kag && TYRANO.kag.config) {
			chSpeed = parseInt(TYRANO.kag.config.chSpeed || 30);
			autoSpeed = parseInt(TYRANO.kag.config.autoSpeed || 1300);
		}

		TM.getCurrentState();
		TM.clearMessageArea();
		TM.appendChar();
		TM.increaseCharNumber();

		clearTimeout(TM.timer);
		if (TM.currentCharNumber !== 0) {
			var delay = chSpeed;
			if (TM.shouldHarryUp) delay = 2;
			if (delay <= 1) {
				TM.update();
			} else {
				TM.timer = setTimeout(function() { TM.update(); }, delay);
			}
		} else {
			var delay = autoSpeed;
			TM.timer = setTimeout(function() { TM.update(); }, delay);
		}
	};

	TM.next = function(force) {
		if (force === true || TM.currentCharNumber === 0) {
			clearTimeout(TM.timer);
			TM.update();
		} else {
			TM.shouldHarryUp = true;
		}
	};

	TM.create = function() {
		$(".test_message_area").remove();
		$(".layer_free").show();

		var area = $("<div class='test_message_area'></div>")
			.css({
				"display": "block",
				"position": "absolute",
				"z-index": "99999999",
				"top": "580px",
				"left": "130px",
				"width": "1000px",
				"height": "90px",
				"font-size": "21px",
				"font-family": "system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif",
				"font-weight": "normal",
				"color": "#ffffff",
				"line-height": "1.5",
				"text-shadow": "1px 1px 2px #000000",
				"pointer-events": "auto",
				"cursor": "pointer"
			})
			.appendTo($("#tyrano_base"))
			.click(function() { TM.next(); });

		this.messageArea = area;
		this.currentCharNumber = 0;
		this.currentTextNumber = 0;
		this.currentHtml = "";
		this.currentChar = "";
		clearTimeout(this.timer);
		this.timer = setTimeout(function() { TM.update(); }, 150);
	};

	TM.destroy = function() {
		clearTimeout(this.timer);
		this.currentCharNumber = 0;
		this.currentTextNumber = 0;
		this.currentHtml = "";
		this.currentChar = "";
		if (this.messageArea && typeof this.messageArea.remove === "function") {
			this.messageArea.remove();
		}
		this.messageArea = null;
		$(".test_message_area").remove();
	};

}(window.gMessageTester));