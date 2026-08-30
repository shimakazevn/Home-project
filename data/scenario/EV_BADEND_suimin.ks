[_tb_system_call storage=system/_EV_BADEND_suimin.ks]

[tb_start_tyrano_code]
[macro name="日高"]
[emb exp="f.familyname"]
[endmacro]

[macro name="舜"]
[emb exp="f.name"]
[endmacro]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
*top

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_BADEND_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#凪
凪「ぅん……」[p]
#凪
凪「……なに……か、いるの？」[p]
その言葉が空気を震わせた瞬間、全身の血が逆流したような感覚に襲われた。[r]ゆっくりと瞼が開き、暗闇の中で人影を認めた瞬間、凪の顔が恐怖に染まる。[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;ハートゲージを消す
[freeimage layer="0"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="sin_nagi_nagiroom_yoru.png"  ]
[chara_show  name="kyara_nagi"  time="0"  wait="true"  storage="chara/153/ADV_nagi_00_base2.png"  width="832"  height="832"  left="260"  top="20"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="BADEND.mp3"  ]
[tb_start_text mode=1 ]
#凪
凪「――きゃあああぁっ！」[p]
（やめろ、声を出すな……！）[p]
咄嗟に凪の口を手で塞いだ。凪の目が大きく見開かれ、抵抗しようと必死にもがく。[r]その身体は細く、弱い。[p]
だが、それでも全力で押し返そうとする凪の力が、[r]俺の理性をわずかに引き戻した。[p]
[舜]「やばい、やばい、俺……何してんだ……！」[p]
凪の身体が震え、苦しそうにひくついたその瞬間ようやく我に返った。[p]
殺すところだった。たった今、自分の手で凪の命を――。[p]
#凪
凪「げほっ！げほっ！もしかして……[舜]ちゃん、なの……？」[p]
[舜]「――っ……！」[p]
弱々しい声に、心が崩れる。[r]その場にいられなかった。逃げるように、凪の家を飛び出した。[p]
[_tb_end_text]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[call  storage="character.ks"  target="*taijyou"  ]
[bg  time="0"  method="crossfade"  storage="black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="hasiru.mp3"  loop="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
階段を駆け下り、裸足のまま冷たいアスファルトの上を走る。[r]夜風が頬を叩くたび現実に引き戻されるようだった。[p]
（なにしてんだ俺……馬鹿かよ……こんなことになるなんて……）[p]
凪のことが気になって、ただ少しだけ近づきたかっただけなんだ。[p]
でも今さら悔やんでも遅い。[p]
まるで迷路のように、自分の感情がどこを向いているのか分からなくなっていた。[p]
[舜]「うわあああああっ！」[p]
思わず叫びながら、俺は夜の闇へと駆け込んでいった。[r]誰にも届かない叫び。許されることのない夜。[p]
この罪が、どれだけ重いかも分からず、ただ俺は、夜の中を走り続けた。[p]
[_tb_end_text]

[wait  time="3000"  ]
[stopse  time="2000"  buf="0"  fadeout="true"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[tb_start_text mode=1 ]
【BADEND_深夜の逃走】[p]
[_tb_end_text]

[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[l  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
