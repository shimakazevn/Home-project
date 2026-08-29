

// 修正版：サムネイルに重なり順を正しく反映させる
// 
//
;(function () {
    /**
     *  セーブサムネイルキャプチャ改良版
     *  - 画面左上 175×95 だけをキャプチャする仕様はそのまま
     *  - 表示中のキャラ画像を DOM/ z-index 順に複製したサムネイル用コンテナを生成
     *  - html2canvas でそのコンテナだけを撮影することで重なり順バグを回避
     */

    TYRANO.kag.menu.snapSave = function (title, call_back, flag_thumb) {
        const that = this;
        const _current_order_index = that.kag.ftag.current_order_index - 1;
        const _stat = $.extend(!0, {}, $.cloneObject(that.kag.stat));

        // three.js の保存処理（元コードを踏襲）
        const three = this.kag.tmp.three;
        const models = three.models;
        const three_save = { stat: three.stat, evt: three.evt, models: {} };
        for (let key in models) {
            three_save.models[key] = models[key].toSaveObj();
        }

        if (flag_thumb === undefined) flag_thumb = this.kag.config.configThumbnail;

        // サムネイル無効の場合は従来処理
        if (flag_thumb === "false") {
            const data = {
                title,
                stat: _stat,
                three: three_save,
                current_order_index: _current_order_index,
                save_date: $.getNowDate() + "　" + $.getNowTime(),
                img_data: "",
                layer: that.kag.layer.getLayeyHtml(),
            };
            that.snap = $.extend(!0, {}, $.cloneObject(data));
            if (call_back) call_back();
            return;
        }

        // ----- 以下、キャプチャ処理 -----
        $("#tyrano_base").find(".layer_blend_mode").css("display", "none");

        // レンダリングが落ち着くまで少し待つ
        setTimeout(() => {
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

            // save_img が指定されている場合は従来処理
            if (that.kag.stat.save_img !== "") {
                const img = new Image();
                img.src = _stat.save_img;
                img.onload = () => {
                    const canvas = document.createElement("canvas");
                    canvas.width = that.kag.config.scWidth;
                    canvas.height = that.kag.config.scHeight;
                    canvas.getContext("2d").drawImage(img, 0, 0);
                    const img_code = that.createImgCode(canvas);
                    completeImage(img_code);
                };
                return;
            }

            // ===============================
            // 重なり順を維持したまま 175×95 をキャプチャ
            // ===============================
            const THUMB_W = 175;
            const THUMB_H = 95;

            // 1) サムネイル用コンテナを作成
            const $thumbBox = $("<div>", {
                id: "thumb_snapshot_area",
                css: {
                    position: "absolute",
                    left: 0,
                    top: 0,
                    width: THUMB_W,
                    height: THUMB_H,
                    overflow: "hidden",
                    pointerEvents: "none",
                    zIndex: 99999,
                },
            }).appendTo("body");

            // 2) #tyrano_base 内に存在する <img> を収集し、サムネイル領域に入るものだけ複製
            const $imgs = $("#tyrano_base img").filter(function () {
                const rect = this.getBoundingClientRect();
                return rect.left < THUMB_W && rect.top < THUMB_H && rect.width && rect.height;
            });

            // 3) DOM 出現順（＝ブラウザ描画順）でクローンを配置
            $imgs.each(function (idx) {
                const rect = this.getBoundingClientRect();
                const $clone = $(this).clone();
                $clone.css({
                    position: "absolute",
                    left: rect.left + "px",
                    top: rect.top + "px",
                    width: rect.width + "px",
                    height: rect.height + "px",
                    zIndex: window.getComputedStyle(this).zIndex || idx + 1,
                });
                $thumbBox.append($clone);
            });

            // 4) html2canvas でコンテナをキャプチャ
            html2canvas(document.getElementById("thumb_snapshot_area"), {
                width: THUMB_W,
                height: THUMB_H,
                backgroundColor: null,
                useCORS: true,
                scrollX: 0,
                scrollY: 0,
                scale: 1,
            }).then((canvas) => {
                $thumbBox.remove(); // 後片付け
                $("#tyrano_base").find(".layer_blend_mode").css("display", "");
                const img_code = that.createImgCode(canvas);
                completeImage(img_code);
            });
        }, 100); // 100ms 待機で描画完了を確実に
    };
})();