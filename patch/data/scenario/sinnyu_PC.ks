
[_tb_system_call storage=system/_sinnyu_PC.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[iscript]
window.HOME_initSlideViewer = function(minY, jumpTarget) {
    if (window.HOME_cleanupSlideViewer) window.HOME_cleanupSlideViewer();
    
    var base = document.getElementById('tyrano_base') || document.body;
    var slideY = 0;
    var moveStep = 60;
    var maxY = 0;
    var jumped = false;
    
    // 1. Tạo nút Thoát (Exit Button) với giao diện hiện đại, phản hồi chạm tức thì
    var oldBtn = document.getElementById('slide_exit_btn');
    if (oldBtn) oldBtn.remove();
    
    var exitBtn = document.createElement('div');
    exitBtn.id = 'slide_exit_btn';
    exitBtn.textContent = 'Thoát ✕';
    exitBtn.style.cssText = 'position:absolute;right:24px;bottom:24px;width:120px;height:44px;line-height:44px;text-align:center;background:rgba(0,0,0,0.85);color:#fff;border:2px solid rgba(255,255,255,0.85);border-radius:22px;font-size:16px;font-weight:bold;cursor:pointer;z-index:99999999;box-shadow:0 4px 16px rgba(0,0,0,0.6);user-select:none;-webkit-tap-highlight-color:transparent;';
    
    function doJump() {
        if (jumped) return;
        jumped = true;
        if (window.HOME_cleanupSlideViewer) window.HOME_cleanupSlideViewer();
        if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
            window.TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
        }
    }
    
    exitBtn.addEventListener('click', function(e) { e.preventDefault(); e.stopPropagation(); doJump(); });
    exitBtn.addEventListener('touchend', function(e) { e.preventDefault(); e.stopPropagation(); doJump(); }, { passive: false });
    base.appendChild(exitBtn);
    
    // 2. Hàm di chuyển slide ảnh
    function moveSlide(nextY, dir) {
        var prevY = slideY;
        nextY = Math.max(minY, Math.min(maxY, nextY));
        slideY = nextY;
        
        if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
            window.TYRANO.kag.ftag.startTag("anim", {
                layer: 2,
                name: "slide_img",
                top: slideY,
                time: 120
            });
        }
        
        // Tự động kết thúc khi cuộn hết ảnh xuống dưới cùng
        if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 25) {
            jumped = true;
            if (window.HOME_cleanupSlideViewer) window.HOME_cleanupSlideViewer();
            setTimeout(function() {
                if (window.TYRANO && window.TYRANO.kag && window.TYRANO.kag.ftag) {
                    window.TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
                }
            }, 140);
        }
    }
    
    // 3. Touch Drag / Vuốt cảm ứng trên Mobile (iOS / Android)
    var touchStartY = 0;
    var touchStartSlideY = 0;
    var isTouching = false;
    
    function onTouchStart(e) {
        if (e.touches && e.touches.length === 1) {
            touchStartY = e.touches[0].clientY;
            touchStartSlideY = slideY;
            isTouching = true;
        }
    }
    
    function onTouchMove(e) {
        if (!isTouching || !e.touches || e.touches.length !== 1) return;
        var diffY = e.touches[0].clientY - touchStartY;
        var targetY = touchStartSlideY + diffY * 1.5;
        moveSlide(targetY, diffY < 0 ? 'up' : 'down');
        if (e.preventDefault) e.preventDefault();
    }
    
    function onTouchEnd(e) {
        isTouching = false;
    }
    
    base.addEventListener('touchstart', onTouchStart, { passive: true, capture: true });
    base.addEventListener('touchmove', onTouchMove, { passive: false, capture: true });
    base.addEventListener('touchend', onTouchEnd, { passive: true, capture: true });
    
    // 4. Mouse Wheel (PC)
    function onWheel(e) {
        if (e.deltaY < 0) {
            moveSlide(slideY + moveStep, 'down');
        } else if (e.deltaY > 0) {
            moveSlide(slideY - moveStep, 'up');
        }
        if (e.preventDefault) e.preventDefault();
        if (e.stopPropagation) e.stopPropagation();
    }
    
    base.addEventListener('wheel', onWheel, { passive: false, capture: true });
    base.addEventListener('mousewheel', onWheel, { passive: false, capture: true });
    base.addEventListener('DOMMouseScroll', onWheel, { passive: false, capture: true });
    
    // 5. Bàn phím (PC: Mũi tên lên / xuống)
    function onKeyDown(e) {
        if (e.keyCode === 38) {
            moveSlide(slideY + moveStep, 'down');
        } else if (e.keyCode === 40) {
            moveSlide(slideY - moveStep, 'up');
        }
    }
    window.addEventListener('keydown', onKeyDown);
    
    // 6. Cleanup function
    window.HOME_cleanupSlideViewer = function() {
        var btn = document.getElementById('slide_exit_btn');
        if (btn) btn.remove();
        base.removeEventListener('touchstart', onTouchStart, { passive: true, capture: true });
        base.removeEventListener('touchmove', onTouchMove, { passive: false, capture: true });
        base.removeEventListener('touchend', onTouchEnd, { passive: true, capture: true });
        base.removeEventListener('wheel', onWheel, { passive: false, capture: true });
        base.removeEventListener('mousewheel', onWheel, { passive: false, capture: true });
        base.removeEventListener('DOMMouseScroll', onWheel, { passive: false, capture: true });
        window.removeEventListener('keydown', onKeyDown);
        window.HOME_cleanupSlideViewer = null;
    };
};
[endscript]

*1

[tb_start_text mode=1 ]
[舜]（Vậy thì, để xem dữ liệu bên trong có gì nào.）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns1.png" time="0" name="slide_img" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="920"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột hoặc vuốt để xem"  anim="false"  face="NotoSansVN, sans-serif"  edge="undefined"  shadow="undefined"  ]
[iscript]
window.HOME_initSlideViewer(-389, "*comment");
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
if (window.HOME_cleanupSlideViewer) window.HOME_cleanupSlideViewer();
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
[image layer="2" x=" 0" y=" 0" storage="default/sns2.png" time="0" name="slide_img" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="920"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột hoặc vuốt để xem"  anim="false"  face="NotoSansVN, sans-serif"  edge="undefined"  shadow="undefined"  ]
[iscript]
window.HOME_initSlideViewer(-389, "*comment2");
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
[image layer="2" x=" 0" y=" 0" storage="default/sns3.png" time="0" name="slide_img" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="920"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột hoặc vuốt để xem"  anim="false"  face="NotoSansVN, sans-serif"  edge="undefined"  shadow="undefined"  ]
[iscript]
window.HOME_initSlideViewer(-389, "*comment3");
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
[image layer="2" x=" 0" y=" 0" storage="default/sns4.png" time="0" name="slide_img" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="920"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột hoặc vuốt để xem"  anim="false"  face="NotoSansVN, sans-serif"  edge="undefined"  shadow="undefined"  ]
[iscript]
window.HOME_initSlideViewer(-990, "*comment4");
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
[image layer="2" x=" 0" y=" 0" storage="default/sns5.png" time="0" name="slide_img" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="920"  y="6"  size="20"  color="0xffffff"  time="1000"  text="Cuộn chuột hoặc vuốt để xem"  anim="false"  face="NotoSansVN, sans-serif"  edge="undefined"  shadow="undefined"  ]
[iscript]
window.HOME_initSlideViewer(-1100, "*comment5");
[endscript]

[s  ]
*comment5

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（Nagi......... Cảm ơn em đã chọn anh.）[p]
[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
