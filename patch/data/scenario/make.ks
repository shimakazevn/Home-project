
;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;
[button_ex_restore]

;コンフィグ改変用
[call storage="volume.ks" ]

;return 必須
[retur