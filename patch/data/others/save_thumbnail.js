// 修正版：セーブサムネイル（Full Resolution 1280x720 キャプチャ ＆ 175x95 高品質リサイズ）
;(function () {
    'use strict';

    if (!window.TYRANO || !window.TYRANO.kag || !window.TYRANO.kag.menu) return;

    TYRANO.kag.menu.snapSave = function (title, call_back, flag_thumb) {
        const that = this;
        const _current_order_index = that.kag.ftag.current_order_index - 1;
        const _stat = $.extend(!0, {}, $.cloneObject(that.kag.stat));

        // Three.js
        const three = this.kag.tmp.three;
        const models = (three && three.models) ? three.models : {};
        const three_save = { stat: three ? three.stat : null, evt: three ? three.evt : null, models: {} };
        for (let key in models) {
            if (models[key] && typeof models[key].toSaveObj === 'function') {
                three_save.models[key] = models[key].toSaveObj();
            }
        }

        if (flag_thumb === undefined) flag_thumb = this.kag.config.configThumbnail;

        const completeImage = (img_code) => {
            const data = {
                title,
                stat: _stat,
                three: three_save,
                current_order_index: _current_order_index,
                save_date: $.getNowDate() + "　" + $.getNowTime(),
                img_data: img_code,
                layer: that.kag.layer.getLayeyHtml(),
            };
            that.snap = $.extend(!0, {}, $.cloneObject(data));
            if (call_back) call_back();
        };

        if (flag_thumb === "false") {
            completeImage("");
            return;
        }

        if (that.kag.stat.save_img !== "") {
            const img = new Image();
            img.crossOrigin = 'anonymous';
            img.src = _stat.save_img;
            img.onload = () => {
                const canvas = document.createElement("canvas");
                canvas.width = that.kag.config.scWidth;
                canvas.height = that.kag.config.scHeight;
                canvas.getContext("2d").drawImage(img, 0, 0);
                const img_code = that.createImgCode(canvas);
                completeImage(img_code);
            };
            img.onerror = () => completeImage("");
            return;
        }

        const tmp_base = $("#tyrano_base");
        if (!tmp_base.length) {
            completeImage("");
            return;
        }

        const tmp_left = tmp_base.css("left");
        const tmp_top = tmp_base.css("top");
        const tmp_trans = tmp_base.css("transform");

        tmp_base.find(".layer_blend_mode").css("display", "none");
        tmp_base.css({ left: "0px", top: "0px", transform: "none" });

        const scW = parseInt(that.kag.config.scWidth) || 1280;
        const scH = parseInt(that.kag.config.scHeight) || 720;
        const opt = {
            width: scW,
            height: scH,
            scale: 1,
            useCORS: true,
            allowTaint: false,
            backgroundColor: "#000000",
            logging: false
        };

        html2canvas(tmp_base.get(0), opt).then((canvas) => {
            tmp_base.css({ left: tmp_left, top: tmp_top, transform: tmp_trans });
            tmp_base.find(".layer_blend_mode").css("display", "");

            const THUMB_W = 175;
            const THUMB_H = 95;
            const thumbCanvas = document.createElement("canvas");
            thumbCanvas.width = THUMB_W;
            thumbCanvas.height = THUMB_H;
            const ctx = thumbCanvas.getContext("2d");
            ctx.imageSmoothingEnabled = true;
            ctx.imageSmoothingQuality = "high";
            ctx.drawImage(canvas, 0, 0, THUMB_W, THUMB_H);

            const img_code = that.createImgCode(thumbCanvas);
            completeImage(img_code);
        }).catch((err) => {
            console.warn("[Save Thumbnail] html2canvas capture failed, fallback:", err);
            tmp_base.css({ left: tmp_left, top: tmp_top, transform: tmp_trans });
            tmp_base.find(".layer_blend_mode").css("display", "");
            completeImage("");
        });
    };
})();
