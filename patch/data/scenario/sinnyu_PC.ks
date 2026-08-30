[_tb_system_call storage=system/_sinnyu_PC.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

*1

[tb_start_text mode=1 ]
[舜]（Vậy thì, để xem dữ liệu bên trong có gì nào.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns1.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="940"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột / Vuốt màn hình"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
(function(){
    var slideY = 0;
    var moveStep = 50;
    var minY = -389;
    var maxY = 0;
    var jumpTarget = "*comment";
    var jumped = false;

    function moveSlide(nextY, dir){
        var prevY = slideY;
        nextY = Math.max(minY, Math.min(maxY, nextY));
        slideY = nextY;
        TYRANO.kag.ftag.startTag("anim", {
            layer: 2,
            name: "slide_img",
            top: slideY,
            time: 120
        });
        if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 18) {
            jumped = true;
            if (window._tySlideCleanup) window._tySlideCleanup();
            setTimeout(function(){
                TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
            }, 160);
        }
    }

    $("#slide_exit_btn").remove();
    var exitBtn = $('<div id="slide_exit_btn">Tiếp tục ⏭</div>');
    exitBtn.css({
        position: "absolute",
        right: "24px",
        bottom: "24px",
        padding: "10px 24px",
        background: "rgba(0, 0, 0, 0.75)",
        color: "#fff",
        border: "1px solid rgba(255, 255, 255, 0.5)",
        borderRadius: "24px",
        fontSize: "17px",
        fontWeight: "bold",
        cursor: "pointer",
        zIndex: 999999,
        boxShadow: "0 4px 16px rgba(0,0,0,0.4)",
        userSelect: "none"
    });
    exitBtn.on("click touchend", function(e){
        e.preventDefault();
        e.stopPropagation();
        if (jumped) return;
        jumped = true;
        if (window._tySlideCleanup) window._tySlideCleanup();
        TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
    });
    $("#tyrano_base").append(exitBtn);

    $(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
        if (e.keyCode === 38) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.keyCode === 40) { moveSlide(slideY + moveStep, 'down'); }
    });

    var base = document.getElementById('tyrano_base') || document;
    var touchStartY = 0;
    var touchStartSlideY = 0;
    var isTouching = false;
    var isDragging = false;
    var dragStartY = 0;
    var dragStartSlideY = 0;

    function getScale() {
        if (base && base.getBoundingClientRect) {
            var rect = base.getBoundingClientRect();
            if (rect.height > 0) return rect.height / 720;
        }
        return 1;
    }

    function onTouchStart(e) {
        if (e.touches && e.touches.length === 1) {
            isTouching = true;
            touchStartY = e.touches[0].clientY;
            touchStartSlideY = slideY;
        }
    }

    function onTouchMove(e) {
        if (!isTouching || !e.touches || e.touches.length !== 1) return;
        var currentY = e.touches[0].clientY;
        var scale = getScale();
        var delta = (currentY - touchStartY) / scale;
        var targetY = touchStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    function onTouchEnd() { isTouching = false; }

    function onMouseDown(e) {
        if (e.button === 0 && e.target.id !== 'slide_exit_btn') {
            isDragging = true;
            dragStartY = e.clientY;
            dragStartSlideY = slideY;
        }
    }

    function onMouseMove(e) {
        if (!isDragging) return;
        var scale = getScale();
        var delta = (e.clientY - dragStartY) / scale;
        var targetY = dragStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
    }

    function onMouseUp() { isDragging = false; }

    function _tySlideWheelHandler(e){
        if (e.deltaY < 0) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.deltaY > 0) { moveSlide(slideY + moveStep, 'down'); }
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    if (window._tySlideCleanup) window._tySlideCleanup();

    base.addEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('touchstart', onTouchStart, { passive: true });
    window.addEventListener('touchmove', onTouchMove, { passive: false });
    window.addEventListener('touchend', onTouchEnd, { passive: true });
    window.addEventListener('touchcancel', onTouchEnd, { passive: true });
    base.addEventListener('mousedown', onMouseDown);
    window.addEventListener('mousemove', onMouseMove);
    window.addEventListener('mouseup', onMouseUp);

    window._tySlideCleanup = function(){
        base.removeEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('touchstart', onTouchStart);
        window.removeEventListener('touchmove', onTouchMove);
        window.removeEventListener('touchend', onTouchEnd);
        window.removeEventListener('touchcancel', onTouchEnd);
        base.removeEventListener('mousedown', onMouseDown);
        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        $(document).off("keydown.ty_slide");
        $("#slide_exit_btn").remove();
        window._tySlideCleanup = null;
    };
})();
[endscript]

[s  ]
*comment

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「...Hừm, tình cảm gớm nhỉ. Mà, cũng chẳng liên quan gì đến mình.」[p]
[舜]「Cứ vui vẻ tận hưởng đi nhé, với cái đà đó.[r]Sau này sẽ ra sao đây... Để tôi đứng từ xa xem kịch hay vậy.」[p]
[_tb_end_text]

*end

[iscript]
if (window._tySlideCleanup) window._tySlideCleanup();
[endscript]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="0"  ]
[tb_eval  exp="f.bussyoku_pc+=1"  name="bussyoku_pc"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2" time="500"]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[return  ]
*2

[tb_start_text mode=1 ]
[舜]（Vậy thì, để xem dữ liệu bên trong có gì nào.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns2.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="940"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột / Vuốt màn hình"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
(function(){
    var slideY = 0;
    var moveStep = 50;
    var minY = -389;
    var maxY = 0;
    var jumpTarget = "*comment2";
    var jumped = false;

    function moveSlide(nextY, dir){
        var prevY = slideY;
        nextY = Math.max(minY, Math.min(maxY, nextY));
        slideY = nextY;
        TYRANO.kag.ftag.startTag("anim", {
            layer: 2,
            name: "slide_img",
            top: slideY,
            time: 120
        });
        if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 18) {
            jumped = true;
            if (window._tySlideCleanup) window._tySlideCleanup();
            setTimeout(function(){
                TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
            }, 160);
        }
    }

    $("#slide_exit_btn").remove();
    var exitBtn = $('<div id="slide_exit_btn">Tiếp tục ⏭</div>');
    exitBtn.css({
        position: "absolute",
        right: "24px",
        bottom: "24px",
        padding: "10px 24px",
        background: "rgba(0, 0, 0, 0.75)",
        color: "#fff",
        border: "1px solid rgba(255, 255, 255, 0.5)",
        borderRadius: "24px",
        fontSize: "17px",
        fontWeight: "bold",
        cursor: "pointer",
        zIndex: 999999,
        boxShadow: "0 4px 16px rgba(0,0,0,0.4)",
        userSelect: "none"
    });
    exitBtn.on("click touchend", function(e){
        e.preventDefault();
        e.stopPropagation();
        if (jumped) return;
        jumped = true;
        if (window._tySlideCleanup) window._tySlideCleanup();
        TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
    });
    $("#tyrano_base").append(exitBtn);

    $(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
        if (e.keyCode === 38) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.keyCode === 40) { moveSlide(slideY + moveStep, 'down'); }
    });

    var base = document.getElementById('tyrano_base') || document;
    var touchStartY = 0;
    var touchStartSlideY = 0;
    var isTouching = false;
    var isDragging = false;
    var dragStartY = 0;
    var dragStartSlideY = 0;

    function getScale() {
        if (base && base.getBoundingClientRect) {
            var rect = base.getBoundingClientRect();
            if (rect.height > 0) return rect.height / 720;
        }
        return 1;
    }

    function onTouchStart(e) {
        if (e.touches && e.touches.length === 1) {
            isTouching = true;
            touchStartY = e.touches[0].clientY;
            touchStartSlideY = slideY;
        }
    }

    function onTouchMove(e) {
        if (!isTouching || !e.touches || e.touches.length !== 1) return;
        var currentY = e.touches[0].clientY;
        var scale = getScale();
        var delta = (currentY - touchStartY) / scale;
        var targetY = touchStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    function onTouchEnd() { isTouching = false; }

    function onMouseDown(e) {
        if (e.button === 0 && e.target.id !== 'slide_exit_btn') {
            isDragging = true;
            dragStartY = e.clientY;
            dragStartSlideY = slideY;
        }
    }

    function onMouseMove(e) {
        if (!isDragging) return;
        var scale = getScale();
        var delta = (e.clientY - dragStartY) / scale;
        var targetY = dragStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
    }

    function onMouseUp() { isDragging = false; }

    function _tySlideWheelHandler(e){
        if (e.deltaY < 0) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.deltaY > 0) { moveSlide(slideY + moveStep, 'down'); }
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    if (window._tySlideCleanup) window._tySlideCleanup();

    base.addEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('touchstart', onTouchStart, { passive: true });
    window.addEventListener('touchmove', onTouchMove, { passive: false });
    window.addEventListener('touchend', onTouchEnd, { passive: true });
    window.addEventListener('touchcancel', onTouchEnd, { passive: true });
    base.addEventListener('mousedown', onMouseDown);
    window.addEventListener('mousemove', onMouseMove);
    window.addEventListener('mouseup', onMouseUp);

    window._tySlideCleanup = function(){
        base.removeEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('touchstart', onTouchStart);
        window.removeEventListener('touchmove', onTouchMove);
        window.removeEventListener('touchend', onTouchEnd);
        window.removeEventListener('touchcancel', onTouchEnd);
        base.removeEventListener('mousedown', onMouseDown);
        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        $(document).off("keydown.ty_slide");
        $("#slide_exit_btn").remove();
        window._tySlideCleanup = null;
    };
})();
[endscript]

[s  ]
*comment2

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「Quà lưu niệm là bánh cuộn sao? Hừm... Tên Hayato đó cũng nhiệt tình gớm nhỉ.」[p]
[舜]「Cái khí thế đó không biết kéo dài được bao lâu... Để tôi đứng từ xa xem kịch hay vậy.」[p]
[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
*3

[tb_start_text mode=1 ]
[舜]（Vậy thì, để xem dữ liệu bên trong có gì nào.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns3.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="940"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột / Vuốt màn hình"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
(function(){
    var slideY = 0;
    var moveStep = 50;
    var minY = -389;
    var maxY = 0;
    var jumpTarget = "*comment3";
    var jumped = false;

    function moveSlide(nextY, dir){
        var prevY = slideY;
        nextY = Math.max(minY, Math.min(maxY, nextY));
        slideY = nextY;
        TYRANO.kag.ftag.startTag("anim", {
            layer: 2,
            name: "slide_img",
            top: slideY,
            time: 120
        });
        if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 18) {
            jumped = true;
            if (window._tySlideCleanup) window._tySlideCleanup();
            setTimeout(function(){
                TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
            }, 160);
        }
    }

    $("#slide_exit_btn").remove();
    var exitBtn = $('<div id="slide_exit_btn">Tiếp tục ⏭</div>');
    exitBtn.css({
        position: "absolute",
        right: "24px",
        bottom: "24px",
        padding: "10px 24px",
        background: "rgba(0, 0, 0, 0.75)",
        color: "#fff",
        border: "1px solid rgba(255, 255, 255, 0.5)",
        borderRadius: "24px",
        fontSize: "17px",
        fontWeight: "bold",
        cursor: "pointer",
        zIndex: 999999,
        boxShadow: "0 4px 16px rgba(0,0,0,0.4)",
        userSelect: "none"
    });
    exitBtn.on("click touchend", function(e){
        e.preventDefault();
        e.stopPropagation();
        if (jumped) return;
        jumped = true;
        if (window._tySlideCleanup) window._tySlideCleanup();
        TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
    });
    $("#tyrano_base").append(exitBtn);

    $(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
        if (e.keyCode === 38) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.keyCode === 40) { moveSlide(slideY + moveStep, 'down'); }
    });

    var base = document.getElementById('tyrano_base') || document;
    var touchStartY = 0;
    var touchStartSlideY = 0;
    var isTouching = false;
    var isDragging = false;
    var dragStartY = 0;
    var dragStartSlideY = 0;

    function getScale() {
        if (base && base.getBoundingClientRect) {
            var rect = base.getBoundingClientRect();
            if (rect.height > 0) return rect.height / 720;
        }
        return 1;
    }

    function onTouchStart(e) {
        if (e.touches && e.touches.length === 1) {
            isTouching = true;
            touchStartY = e.touches[0].clientY;
            touchStartSlideY = slideY;
        }
    }

    function onTouchMove(e) {
        if (!isTouching || !e.touches || e.touches.length !== 1) return;
        var currentY = e.touches[0].clientY;
        var scale = getScale();
        var delta = (currentY - touchStartY) / scale;
        var targetY = touchStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    function onTouchEnd() { isTouching = false; }

    function onMouseDown(e) {
        if (e.button === 0 && e.target.id !== 'slide_exit_btn') {
            isDragging = true;
            dragStartY = e.clientY;
            dragStartSlideY = slideY;
        }
    }

    function onMouseMove(e) {
        if (!isDragging) return;
        var scale = getScale();
        var delta = (e.clientY - dragStartY) / scale;
        var targetY = dragStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
    }

    function onMouseUp() { isDragging = false; }

    function _tySlideWheelHandler(e){
        if (e.deltaY < 0) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.deltaY > 0) { moveSlide(slideY + moveStep, 'down'); }
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    if (window._tySlideCleanup) window._tySlideCleanup();

    base.addEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('touchstart', onTouchStart, { passive: true });
    window.addEventListener('touchmove', onTouchMove, { passive: false });
    window.addEventListener('touchend', onTouchEnd, { passive: true });
    window.addEventListener('touchcancel', onTouchEnd, { passive: true });
    base.addEventListener('mousedown', onMouseDown);
    window.addEventListener('mousemove', onMouseMove);
    window.addEventListener('mouseup', onMouseUp);

    window._tySlideCleanup = function(){
        base.removeEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('touchstart', onTouchStart);
        window.removeEventListener('touchmove', onTouchMove);
        window.removeEventListener('touchend', onTouchEnd);
        window.removeEventListener('touchcancel', onTouchEnd);
        base.removeEventListener('mousedown', onMouseDown);
        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        $(document).off("keydown.ty_slide");
        $("#slide_exit_btn").remove();
        window._tySlideCleanup = null;
    };
})();
[endscript]

[s  ]
*comment3

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「Ủa? Phản ứng của Nagi có vẻ nhạt nhòa đi rồi nhỉ? ...Hừ, thấy được sự nóng vội của Hayato rồi đấy.」[p]
[舜]「Phải mình thì nản lòng rồi đấy... Mà, cứ xem thêm chút nữa vậy.」[p]
[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
*4

[tb_start_text mode=1 ]
[舜]（Vậy thì, để xem dữ liệu bên trong có gì nào.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns4.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="940"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột / Vuốt màn hình"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
(function(){
    var slideY = 0;
    var moveStep = 50;
    var minY = -990;
    var maxY = 0;
    var jumpTarget = "*comment4";
    var jumped = false;

    function moveSlide(nextY, dir){
        var prevY = slideY;
        nextY = Math.max(minY, Math.min(maxY, nextY));
        slideY = nextY;
        TYRANO.kag.ftag.startTag("anim", {
            layer: 2,
            name: "slide_img",
            top: slideY,
            time: 120
        });
        if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 20) {
            jumped = true;
            if (window._tySlideCleanup) window._tySlideCleanup();
            setTimeout(function(){
                TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
            }, 160);
        }
    }

    $("#slide_exit_btn").remove();
    var exitBtn = $('<div id="slide_exit_btn">Tiếp tục ⏭</div>');
    exitBtn.css({
        position: "absolute",
        right: "24px",
        bottom: "24px",
        padding: "10px 24px",
        background: "rgba(0, 0, 0, 0.75)",
        color: "#fff",
        border: "1px solid rgba(255, 255, 255, 0.5)",
        borderRadius: "24px",
        fontSize: "17px",
        fontWeight: "bold",
        cursor: "pointer",
        zIndex: 999999,
        boxShadow: "0 4px 16px rgba(0,0,0,0.4)",
        userSelect: "none"
    });
    exitBtn.on("click touchend", function(e){
        e.preventDefault();
        e.stopPropagation();
        if (jumped) return;
        jumped = true;
        if (window._tySlideCleanup) window._tySlideCleanup();
        TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
    });
    $("#tyrano_base").append(exitBtn);

    $(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
        if (e.keyCode === 38) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.keyCode === 40) { moveSlide(slideY + moveStep, 'down'); }
    });

    var base = document.getElementById('tyrano_base') || document;
    var touchStartY = 0;
    var touchStartSlideY = 0;
    var isTouching = false;
    var isDragging = false;
    var dragStartY = 0;
    var dragStartSlideY = 0;

    function getScale() {
        if (base && base.getBoundingClientRect) {
            var rect = base.getBoundingClientRect();
            if (rect.height > 0) return rect.height / 720;
        }
        return 1;
    }

    function onTouchStart(e) {
        if (e.touches && e.touches.length === 1) {
            isTouching = true;
            touchStartY = e.touches[0].clientY;
            touchStartSlideY = slideY;
        }
    }

    function onTouchMove(e) {
        if (!isTouching || !e.touches || e.touches.length !== 1) return;
        var currentY = e.touches[0].clientY;
        var scale = getScale();
        var delta = (currentY - touchStartY) / scale;
        var targetY = touchStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    function onTouchEnd() { isTouching = false; }

    function onMouseDown(e) {
        if (e.button === 0 && e.target.id !== 'slide_exit_btn') {
            isDragging = true;
            dragStartY = e.clientY;
            dragStartSlideY = slideY;
        }
    }

    function onMouseMove(e) {
        if (!isDragging) return;
        var scale = getScale();
        var delta = (e.clientY - dragStartY) / scale;
        var targetY = dragStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
    }

    function onMouseUp() { isDragging = false; }

    function _tySlideWheelHandler(e){
        if (e.deltaY < 0) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.deltaY > 0) { moveSlide(slideY + moveStep, 'down'); }
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    if (window._tySlideCleanup) window._tySlideCleanup();

    base.addEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('touchstart', onTouchStart, { passive: true });
    window.addEventListener('touchmove', onTouchMove, { passive: false });
    window.addEventListener('touchend', onTouchEnd, { passive: true });
    window.addEventListener('touchcancel', onTouchEnd, { passive: true });
    base.addEventListener('mousedown', onMouseDown);
    window.addEventListener('mousemove', onMouseMove);
    window.addEventListener('mouseup', onMouseUp);

    window._tySlideCleanup = function(){
        base.removeEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('touchstart', onTouchStart);
        window.removeEventListener('touchmove', onTouchMove);
        window.removeEventListener('touchend', onTouchEnd);
        window.removeEventListener('touchcancel', onTouchEnd);
        base.removeEventListener('mousedown', onMouseDown);
        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        $(document).off("keydown.ty_slide");
        $("#slide_exit_btn").remove();
        window._tySlideCleanup = null;
    };
})();
[endscript]

[s  ]
*comment4

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「Cuộc trò chuyện ngày càng một chiều rồi đấy... Fufu, bắt đầu thú vị rồi đây.」[p]
[舜]「Nhìn Hayato tuyệt vọng níu kéo... thấy cũng hơi thảm hại nhưng đúng là cảnh tượng không tồi.」[p]
[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
*5

[tb_start_text mode=1 ]
[舜]（Vậy thì, để xem dữ liệu bên trong có gì nào.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns5.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="940"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột / Vuốt màn hình"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
(function(){
    var slideY = 0;
    var moveStep = 50;
    var minY = -1100;
    var maxY = 0;
    var jumpTarget = "*comment5";
    var jumped = false;

    function moveSlide(nextY, dir){
        var prevY = slideY;
        nextY = Math.max(minY, Math.min(maxY, nextY));
        slideY = nextY;
        TYRANO.kag.ftag.startTag("anim", {
            layer: 2,
            name: "slide_img",
            top: slideY,
            time: 120
        });
        if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 30) {
            jumped = true;
            if (window._tySlideCleanup) window._tySlideCleanup();
            setTimeout(function(){
                TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
            }, 160);
        }
    }

    $("#slide_exit_btn").remove();
    var exitBtn = $('<div id="slide_exit_btn">Tiếp tục ⏭</div>');
    exitBtn.css({
        position: "absolute",
        right: "24px",
        bottom: "24px",
        padding: "10px 24px",
        background: "rgba(0, 0, 0, 0.75)",
        color: "#fff",
        border: "1px solid rgba(255, 255, 255, 0.5)",
        borderRadius: "24px",
        fontSize: "17px",
        fontWeight: "bold",
        cursor: "pointer",
        zIndex: 999999,
        boxShadow: "0 4px 16px rgba(0,0,0,0.4)",
        userSelect: "none"
    });
    exitBtn.on("click touchend", function(e){
        e.preventDefault();
        e.stopPropagation();
        if (jumped) return;
        jumped = true;
        if (window._tySlideCleanup) window._tySlideCleanup();
        TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
    });
    $("#tyrano_base").append(exitBtn);

    $(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
        if (e.keyCode === 38) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.keyCode === 40) { moveSlide(slideY + moveStep, 'down'); }
    });

    var base = document.getElementById('tyrano_base') || document;
    var touchStartY = 0;
    var touchStartSlideY = 0;
    var isTouching = false;
    var isDragging = false;
    var dragStartY = 0;
    var dragStartSlideY = 0;

    function getScale() {
        if (base && base.getBoundingClientRect) {
            var rect = base.getBoundingClientRect();
            if (rect.height > 0) return rect.height / 720;
        }
        return 1;
    }

    function onTouchStart(e) {
        if (e.touches && e.touches.length === 1) {
            isTouching = true;
            touchStartY = e.touches[0].clientY;
            touchStartSlideY = slideY;
        }
    }

    function onTouchMove(e) {
        if (!isTouching || !e.touches || e.touches.length !== 1) return;
        var currentY = e.touches[0].clientY;
        var scale = getScale();
        var delta = (currentY - touchStartY) / scale;
        var targetY = touchStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    function onTouchEnd() { isTouching = false; }

    function onMouseDown(e) {
        if (e.button === 0 && e.target.id !== 'slide_exit_btn') {
            isDragging = true;
            dragStartY = e.clientY;
            dragStartSlideY = slideY;
        }
    }

    function onMouseMove(e) {
        if (!isDragging) return;
        var scale = getScale();
        var delta = (e.clientY - dragStartY) / scale;
        var targetY = dragStartSlideY + delta;
        var dir = delta < 0 ? 'up' : 'down';
        moveSlide(targetY, dir);
        if (e.cancelable) e.preventDefault();
    }

    function onMouseUp() { isDragging = false; }

    function _tySlideWheelHandler(e){
        if (e.deltaY < 0) { moveSlide(slideY - moveStep, 'up'); }
        else if (e.deltaY > 0) { moveSlide(slideY + moveStep, 'down'); }
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
    }

    if (window._tySlideCleanup) window._tySlideCleanup();

    base.addEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
    base.addEventListener('touchstart', onTouchStart, { passive: true });
    window.addEventListener('touchmove', onTouchMove, { passive: false });
    window.addEventListener('touchend', onTouchEnd, { passive: true });
    window.addEventListener('touchcancel', onTouchEnd, { passive: true });
    base.addEventListener('mousedown', onMouseDown);
    window.addEventListener('mousemove', onMouseMove);
    window.addEventListener('mouseup', onMouseUp);

    window._tySlideCleanup = function(){
        base.removeEventListener('wheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('mousewheel', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('DOMMouseScroll', _tySlideWheelHandler, { passive: false, capture: true });
        base.removeEventListener('touchstart', onTouchStart);
        window.removeEventListener('touchmove', onTouchMove);
        window.removeEventListener('touchend', onTouchEnd);
        window.removeEventListener('touchcancel', onTouchEnd);
        base.removeEventListener('mousedown', onMouseDown);
        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        $(document).off("keydown.ty_slide");
        $("#slide_exit_btn").remove();
        window._tySlideCleanup = null;
    };
})();
[endscript]

[s  ]
*comment5

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（Nagi......... Cảm ơn em đã chọn anh.）[p]
[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
