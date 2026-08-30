
【awakegameでフェードするプラグイン】


■できること
・コンフィグ画面などawakegameからゲーム復帰時、フェードしながら画面切り替え


■使い方
このテキストが入っているフォルダごと「data/others/plugin」フォルダに置きます。
それからfirst.ksとかに以下のように記述してください。

[plugin name=awakegame_ex]
指定可能属性：なし

記述した時点から後述するタグが使用できるようになります。


■使用可能タグ
awakegame_ex    ：フェードしながらawakegame
使用可能属性
variable_over   ：通常のawakegameタグと同じ
bgm_over        ：通常のawakegameタグと同じ
mask            ：画面フェード時、暗転を挟む場合はtrueを指定。初期値はfalse
time            ：画面フェードに書ける時間を指定（単位：ミリ秒）
graphic         ：暗転画面に画像を指定する場合、画像パスを指定。画像はimageフォルダに配置
color           ：暗転画面に色指定する場合、色名を指定。初期値はblack


■注意事項
ティラノスクリプトv5以降で動作確認しています。
このプラグインを使用したことで生じたあらゆる問題について、製作者は責任を負いません。


■製作者
さくた（@skt_order）
https://skt-pnt.netlify.app


■更新履歴
2022/01/18  v1.0.0公開
・正式版公開
