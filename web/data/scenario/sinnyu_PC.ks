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
[舜]（それじゃ、中のデータを確認させてもらおうかな）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns1.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="1008"  y="6"  size="20"  color="0xffffff"  time="1000"  text="マウスホイールでスクロール"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
// ====== 救済用「終了」ボタン ======
$("#slide_exit_btn").remove();
var exitBtn = $('<div id="slide_exit_btn">終了</div>');
exitBtn.css({
position: "absolute",
right: "30px",
bottom: "30px",
width: "140px",
height: "50px",
lineHeight: "50px",
textAlign: "center",
background: "rgba(0,0,0,0.75)",
color: "#fff",
border: "1px solid #fff",
borderRadius: "8px",
fontSize: "20px",
cursor: "pointer",
zIndex: 999999
});
exitBtn.on("click", function(e){
e.preventDefault();
e.stopPropagation();
// 二重実行防止
if (jumped) return;
jumped = true;
// ボタン削除
$("#slide_exit_btn").remove();
// 強制的に次へ
TYRANO.kag.ftag.startTag("jump", {
target: jumpTarget
});
});
$("#tyrano_base").append(exitBtn);
// ↑↓キー & ホイール：画像を上下スライド（最北端でジャンプ）
var slideY   = 0;      // 現在位置（初期が最下端なら0）
var moveStep = 50;     // 移動量
// 範囲：最北端(負)→最下端(0)
var minY = -389;       // ★最北端
var maxY = 0;          // 最下端
var jumpTarget = "*comment";   // ←ジャンプ先ラベル
var jumped = false;               // 二重ジャンプ防止
function moveSlide(nextY, dir){   // dir: 'up' | 'down'
var prevY = slideY;                             // 直前位置
nextY = Math.max(minY, Math.min(maxY, nextY));  // クランプ
slideY = nextY;
TYRANO.kag.ftag.startTag("anim", {
layer: 2,
name: "slide_img",
top: slideY,
time: 150
});
// ====== 最北端でジャンプ ======
// 直前は最北端より下（prevY > minY）で、今回「上方向操作」かつ 最北端へ到達（slideY <= minY + 1）
if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 18) {
jumped = true;
// ★ここだけ追加
$("#slide_exit_btn").remove();
setTimeout(function(){
TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
}, 160); // animのtimeより少し長め
}
}
// ---- キーボード（↑=38 上 / ↓=40 下）----
$(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
if (e.keyCode === 38) {            // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.keyCode === 40) {     // 下へ
moveSlide(slideY + moveStep, 'down');
}
});
// ---- ホイール（バックログ抑止のキャプチャ登録）----
(function(){
var base = document.getElementById('tyrano_base') || document;
// 既存解除
if (window._tySlideWheelHandler) {
base.removeEventListener('wheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('mousewheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
window._tySlideWheelHandler = null;
}
function _tySlideWheelHandler(e){
if (e.deltaY < 0) {              // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.deltaY > 0) {       // 下へ
moveSlide(slideY + moveStep, 'down');
} else {
return;
}
if (e.preventDefault) e.preventDefault();
if (e.stopPropagation) e.stopPropagation();
if (e.stopImmediatePropagation) e.stopImmediatePropagation();
}
window._tySlideWheelHandler = _tySlideWheelHandler;
base.addEventListener('wheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('mousewheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
})();
[endscript]

[s  ]
*comment

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「…ふーん、仲良いじゃん。まぁ、俺には関係ないけどな」[p]
[舜]「せいぜい楽しんでくれよ、その調子で。[r]この先どうなるか…ちょっと離れたところから見物させてもらうよ」[p]
[_tb_end_text]

*end

[iscript]
$(document).off("keydown.ty_slide");
var base = document.getElementById('tyrano_base') || document;
if (window._tySlideWheelHandler) {
base.removeEventListener('wheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('mousewheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
window._tySlideWheelHandler = null;
}
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
[舜]（それじゃ、中のデータを確認させてもらおうかな）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns2.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="1008"  y="6"  size="20"  color="0xffffff"  time="1000"  text="マウスホイールでスクロール"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
// ====== 救済用「終了」ボタン ======
$("#slide_exit_btn").remove();
var exitBtn = $('<div id="slide_exit_btn">終了</div>');
exitBtn.css({
position: "absolute",
right: "30px",
bottom: "30px",
width: "140px",
height: "50px",
lineHeight: "50px",
textAlign: "center",
background: "rgba(0,0,0,0.75)",
color: "#fff",
border: "1px solid #fff",
borderRadius: "8px",
fontSize: "20px",
cursor: "pointer",
zIndex: 999999
});
exitBtn.on("click", function(e){
e.preventDefault();
e.stopPropagation();
// 二重実行防止
if (jumped) return;
jumped = true;
// ボタン削除
$("#slide_exit_btn").remove();
// 強制的に次へ
TYRANO.kag.ftag.startTag("jump", {
target: jumpTarget
});
});
$("#tyrano_base").append(exitBtn);
// ↑↓キー & ホイール：画像を上下スライド（最北端でジャンプ）
var slideY   = 0;      // 現在位置（初期が最下端なら0）
var moveStep = 50;     // 移動量
// 範囲：最北端(負)→最下端(0)
var minY = -389;       // ★最北端
var maxY = 0;          // 最下端
var jumpTarget = "*comment2";   // ←ジャンプ先ラベル
var jumped = false;               // 二重ジャンプ防止
function moveSlide(nextY, dir){   // dir: 'up' | 'down'
var prevY = slideY;                             // 直前位置
nextY = Math.max(minY, Math.min(maxY, nextY));  // クランプ
slideY = nextY;
TYRANO.kag.ftag.startTag("anim", {
layer: 2,
name: "slide_img",
top: slideY,
time: 150
});
// ====== 最北端でジャンプ ======
// 直前は最北端より下（prevY > minY）で、今回「上方向操作」かつ 最北端へ到達（slideY <= minY + 1）
if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 18) {
jumped = true;
// ★ここだけ追加
$("#slide_exit_btn").remove();
setTimeout(function(){
TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
}, 160); // animのtimeより少し長め
}
}
// ---- キーボード（↑=38 上 / ↓=40 下）----
$(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
if (e.keyCode === 38) {            // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.keyCode === 40) {     // 下へ
moveSlide(slideY + moveStep, 'down');
}
});
// ---- ホイール（バックログ抑止のキャプチャ登録）----
(function(){
var base = document.getElementById('tyrano_base') || document;
// 既存解除
if (window._tySlideWheelHandler) {
base.removeEventListener('wheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('mousewheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
window._tySlideWheelHandler = null;
}
function _tySlideWheelHandler(e){
if (e.deltaY < 0) {              // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.deltaY > 0) {       // 下へ
moveSlide(slideY + moveStep, 'down');
} else {
return;
}
if (e.preventDefault) e.preventDefault();
if (e.stopPropagation) e.stopPropagation();
if (e.stopImmediatePropagation) e.stopImmediatePropagation();
}
window._tySlideWheelHandler = _tySlideWheelHandler;
base.addEventListener('wheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('mousewheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
})();
[endscript]

[s  ]
*comment2

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「お土産にロールケーキ？ふーーん…隼人の奴、ずいぶん前のめりだな」[p]
[舜]「その勢いがいつまで続くのか…少し離れて見物させてもらうよ」[p]

[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
*3

[tb_start_text mode=1 ]
[舜]（それじゃ、中のデータを確認させてもらおうかな）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns3.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[tb_ptext_show  x="1008"  y="6"  size="20"  color="0xffffff"  time="1000"  text="マウスホイールでスクロール"  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[iscript]
// ====== 救済用「終了」ボタン ======
$("#slide_exit_btn").remove();
var exitBtn = $('<div id="slide_exit_btn">終了</div>');
exitBtn.css({
position: "absolute",
right: "30px",
bottom: "30px",
width: "140px",
height: "50px",
lineHeight: "50px",
textAlign: "center",
background: "rgba(0,0,0,0.75)",
color: "#fff",
border: "1px solid #fff",
borderRadius: "8px",
fontSize: "20px",
cursor: "pointer",
zIndex: 999999
});
exitBtn.on("click", function(e){
e.preventDefault();
e.stopPropagation();
// 二重実行防止
if (jumped) return;
jumped = true;
// ボタン削除
$("#slide_exit_btn").remove();
// 強制的に次へ
TYRANO.kag.ftag.startTag("jump", {
target: jumpTarget
});
});
$("#tyrano_base").append(exitBtn);
// ↑↓キー & ホイール：画像を上下スライド（最北端でジャンプ）
var slideY   = 0;      // 現在位置（初期が最下端なら0）
var moveStep = 50;     // 移動量
// 範囲：最北端(負)→最下端(0)
var minY = -389;       // ★最北端
var maxY = 0;          // 最下端
var jumpTarget = "*comment3";   // ←ジャンプ先ラベル
var jumped = false;               // 二重ジャンプ防止
function moveSlide(nextY, dir){   // dir: 'up' | 'down'
var prevY = slideY;                             // 直前位置
nextY = Math.max(minY, Math.min(maxY, nextY));  // クランプ
slideY = nextY;
TYRANO.kag.ftag.startTag("anim", {
layer: 2,
name: "slide_img",
top: slideY,
time: 150
});
// ====== 最北端でジャンプ ======
// 直前は最北端より下（prevY > minY）で、今回「上方向操作」かつ 最北端へ到達（slideY <= minY + 1）
if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 18) {
jumped = true;
// ★ここだけ追加
$("#slide_exit_btn").remove();
setTimeout(function(){
TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
}, 160); // animのtimeより少し長め
}
}
// ---- キーボード（↑=38 上 / ↓=40 下）----
$(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
if (e.keyCode === 38) {            // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.keyCode === 40) {     // 下へ
moveSlide(slideY + moveStep, 'down');
}
});
// ---- ホイール（バックログ抑止のキャプチャ登録）----
(function(){
var base = document.getElementById('tyrano_base') || document;
// 既存解除
if (window._tySlideWheelHandler) {
base.removeEventListener('wheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('mousewheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
window._tySlideWheelHandler = null;
}
function _tySlideWheelHandler(e){
if (e.deltaY < 0) {              // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.deltaY > 0) {       // 下へ
moveSlide(slideY + moveStep, 'down');
} else {
return;
}
if (e.preventDefault) e.preventDefault();
if (e.stopPropagation) e.stopPropagation();
if (e.stopImmediatePropagation) e.stopImmediatePropagation();
}
window._tySlideWheelHandler = _tySlideWheelHandler;
base.addEventListener('wheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('mousewheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
})();
[endscript]

[s  ]
*comment3

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「あれ？　凪の反応、ちょっと薄くなってきてないか？…ふ、隼人の焦りが見えてきたな」[p]
[舜]「俺だったら心が折れてるけどな…まぁ、もう少し見てみるか」[p]

[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
*4

[tb_start_text mode=1 ]
[舜]（それじゃ、中のデータを確認させてもらおうかな）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns4.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[iscript]
// ↑↓キー & ホイール：画像を上下スライド（最北端でジャンプ）
var slideY   = 0;      // 現在位置（初期が最下端なら0）
var moveStep = 50;     // 移動量
// 範囲：最北端(負)→最下端(0)
var minY = -990;       // ★最北端
var maxY = 0;          // 最下端
var jumpTarget = "*comment4";   // ←ジャンプ先ラベル
var jumped = false;               // 二重ジャンプ防止
function moveSlide(nextY, dir){   // dir: 'up' | 'down'
var prevY = slideY;                             // 直前位置
nextY = Math.max(minY, Math.min(maxY, nextY));  // クランプ
slideY = nextY;
TYRANO.kag.ftag.startTag("anim", {
layer: 2,
name: "slide_img",
top: slideY,
time: 150
});
// ====== 最北端でジャンプ ======
// 直前は最北端より下（prevY > minY）で、今回「上方向操作」かつ 最北端へ到達（slideY <= minY + 1）
if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 20) {
jumped = true;
setTimeout(function(){
TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
}, 160); // animのtimeより少し長め
}
}
// ---- キーボード（↑=38 上 / ↓=40 下）----
$(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
if (e.keyCode === 38) {            // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.keyCode === 40) {     // 下へ
moveSlide(slideY + moveStep, 'down');
}
});
// ---- ホイール（バックログ抑止のキャプチャ登録）----
(function(){
var base = document.getElementById('tyrano_base') || document;
// 既存解除
if (window._tySlideWheelHandler) {
base.removeEventListener('wheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('mousewheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
window._tySlideWheelHandler = null;
}
function _tySlideWheelHandler(e){
if (e.deltaY < 0) {              // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.deltaY > 0) {       // 下へ
moveSlide(slideY + moveStep, 'down');
} else {
return;
}
if (e.preventDefault) e.preventDefault();
if (e.stopPropagation) e.stopPropagation();
if (e.stopImmediatePropagation) e.stopImmediatePropagation();
}
window._tySlideWheelHandler = _tySlideWheelHandler;
base.addEventListener('wheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('mousewheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, {passive:false, capture:true});
})();
[endscript]

[s  ]
*comment4

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]「随分一方的な会話になってきたな…ふふ、いよいよ面白くなってきた」[p]
[舜]「必死に縋る隼人を見るのは…ちょっと哀れだけど悪くない光景だ」[p]

[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
*5

[tb_start_text mode=1 ]
[舜]（それじゃ、中のデータを確認させてもらおうかな）[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[image layer="2" x=" 0" y=" 0" storage="default/sns5.png" time="0" name="slide_img" time="0" ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask_off  time="1500"  effect="fadeOut"  ]
[iscript]
// ↑↓キー & ホイール：画像を上下スライド（最北端でジャンプ）
var slideY   = 0;      // 現在位置（初期が最下端なら0）
var moveStep = 50;     // 移動量
// 範囲：最北端(負)→最下端(0)
var minY = -1100;       // ★最北端
var maxY = 0;          // 最下端
var jumpTarget = "*comment5";   // ←ジャンプ先ラベル
var jumped = false;               // 二重ジャンプ防止
function moveSlide(nextY, dir){   // dir: 'up' | 'down'
var prevY = slideY;                             // 直前位置
nextY = Math.max(minY, Math.min(maxY, nextY));  // クランプ
slideY = nextY;
TYRANO.kag.ftag.startTag("anim", {
layer: 2,
name: "slide_img",
top: slideY,
time: 150
});
// ====== 最北端でジャンプ ======
// 直前は最北端より下（prevY > minY）で、今回「上方向操作」かつ 最北端へ到達（slideY <= minY + 1）
if (!jumped && dir === 'up' && prevY > minY && slideY <= minY + 30) {
jumped = true;
setTimeout(function(){
TYRANO.kag.ftag.startTag("jump", { target: jumpTarget });
}, 160); // animのtimeより少し長め
}
}
// ---- キーボード（↑=38 上 / ↓=40 下）----
$(document).off("keydown.ty_slide").on("keydown.ty_slide", function(e){
if (e.keyCode === 38) {            // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.keyCode === 40) {     // 下へ
moveSlide(slideY + moveStep, 'down');
}
});
// ---- ホイール（バックログ抑止のキャプチャ登録）----
(function(){
var base = document.getElementById('tyrano_base') || document;
// 既存解除
if (window._tySlideWheelHandler) {
base.removeEventListener('wheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('mousewheel', window._tySlideWheelHandler, {passive:false, capture:true});
base.removeEventListener('DOMMouseScroll', window._tySlideWheelHandler, {passive:false, capture:true});
window._tySlideWheelHandler = null;
}
function _tySlideWheelHandler(e){
if (e.deltaY < 0) {              // 上へ
moveSlide(slideY - moveStep, 'up');
} else if (e.deltaY > 0) {       // 下へ
moveSlide(slideY + moveStep, 'down');
} else {
return;
}
if (e.preventDefault) e.preventDefault();
if (e.stopPropagation) e.stopPropagation();
if (e.stopImmediatePropagation) e.stopImmediatePropagation();
}
window._tySlideWheelHandler = _tySlideWheelHandler;
base.addEventListener('wheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('mousewheel', _tySlideWheelHandler, {passive:false, capture:true});
base.addEventListener('DOMMouseScroll', _tySlideWheelHandler, {passive:false, capture:true});
})();
[endscript]

[s  ]
*comment5

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[舜]（凪………。俺を選んでくれてありがとう）[p]
[_tb_end_text]

[jump  storage="sinnyu_PC.ks"  target="*end"  ]
