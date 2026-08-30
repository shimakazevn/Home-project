[_tb_system_call storage=system/_minigame.ks]

[tb_show_message_window  ]
[tb_start_tyrano_code]
@layopt layer=message0 storage=ballgame display=false
@bg storage=bg.png
@image storage=ball.png x=300 y=200 layer=2 visible=true
@image storage=swing.png x=300 y=400 layer=1 visible=false
@eval exp="f.score = 0"
@eval exp="f.hit = false"

*main_loop
@image storage=ball.png x=300 y=200 layer=2 visible=true
@wait time=1000
@image storage=ball.png x=300 y=200 layer=2 visible=false
[if exp="f.hit"]
  @eval exp="f.score += 1"
  @eval exp="f.hit = false"
  @image storage=swing.png x=300 y=400 layer=1 visible=false
  @cm
  @eval exp="\"ヒット！スコア: \" + f.score"
[else]
  @image storage=swing.png x=300 y=400 layer=1 visible=false
  @cm
  @eval exp="\"ミス！スコア: \" + f.score"
[endif]
@wait time=500
@jump target=main_loop

*game_end
@cm
@eval exp="\"ゲーム終了！最終スコア: \" + f.score"
[button]
text = "リトライ"
target = "game_start"
position = center
[/button]

*input_handler
[iscript]
document.addEventListener('keydown', function(event) {
    if (event.code === 'Space') {
        f.hit = true;
        TYRANO.kag.ftag.startTag("image", {
            "storage": "swing.png",
            "x": 300,
            "y": 400",
            "layer": "1",
            "visible": true
        });
    }
});
[/iscript]

@jump target=main_loop

[_tb_end_tyrano_code]

