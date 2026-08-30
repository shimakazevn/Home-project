[_tb_system_call storage=system/_EV_kyouaiEND_nagi.ks]

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

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="sin_nagi_DK.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="END.mp3"  ]
[tb_start_tyrano_code]
;凪音声開始
[voconfig sebuf=1 name="凪" vostorage="nagi/voice_ END3_nagi{number}.mp3" number=1]
[vostart]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
凪と隼人が結婚したと報告を受けてから、もう一年以上が過ぎた。[p]
ある夏の午後、正午を少し回った頃だった。[p]
蝉の声が窓の外で騒がしく鳴き続ける中、俺は久しぶりに凪の家を訪れていた。[p]
#凪
凪「いらっしゃい……[舜]ちゃん、どうぞあがって」[p]
[舜]「隼人は？」[p]
#凪
凪「大丈夫、今はいないから。彼、毎日忙しくしてるけど…定時になったらすぐ帰ってきてくれるの。赤ちゃんのこと、すごく気にしてくれてて」[p]
凪のお腹は大きく膨らんでいる。出産も間近だ。[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="event/nagi_kyouaiEND.png"  ]
[tb_cg  id="cg_nagi_kyouaiEND"  ]
[tb_start_text mode=1 ]
[舜]「ずいぶん大きくなったな。予定日は？」[p]
#凪
凪「もうすぐ……。　隼人ね、最近毎日ソワソワしてるの。[r]“絶対女の子だ”って言って、名前まで考えてるんだよ」[p]
[舜]「……そうか」[p]
笑う凪の目は優しい。[p]
けれどその奥に、どこか遠くを見つめるような光があった。[p]
[舜]（この子が生まれても、きっと隼人は何も気づかない。[p]
だけど、俺は……この子の顔を見た瞬間に、確信するだろう）[p]
そう、きっと俺に似た顔をしている。[p]
でも、凪はこの家庭を壊さない。[p]
そして俺も、それを壊すつもりはなかった。[p]
#凪
凪「本当はね……お腹の子、男の子なんだ。[r]でも──次は、女の子だったらいいなって思うの。隼人がきっと、すごく喜ぶから」[p]
[舜]「……ああ、そうだな」[p]
凪はそっとお腹に手を添えて、微笑んだ。[p]
その姿がとても穏やかで、母としての穏やかさと、滲むような妖艶さが同居していた。[p]
#凪
凪「ねぇ…この子が生まれても、[舜]ちゃん、そばにいてくれる？」[p]
[舜]「ああ、もちろんだよ。２人目もすぐに作ろうな」[p]
#凪
凪「ありがとう…うれしいっ！♡」[p]
それだけで、もう充分だった。[p]
ふたりの関係に、名前はつけられない。[p]
けれど確かに心は寄り添っていた。[p]
[舜]「今日は夫婦の寝室でしよう…お腹の子に本当のパパは誰か教えてやらなきゃな」[p]
凪は我慢できないと言った表情で俺のズボンを脱がせてくる。[p]
#凪
凪「あぁぁ♡　これ、これが欲しかったの♡」[p]
過去も未来も背負って、今という一瞬だけに身を委ねながら、[p]
俺たちはそっと、重なり合うように扉の向こうへと消えていった。[p]


[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="black.jpg"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
【凪_狂愛END　歪みの果て】[p]
[_tb_end_text]

[wait  time="3000"  ]
[jump  storage="title_kaisou.ks"  target="*end"  cond="f.kaisou==1"  ]
[tb_replay  id="nagi_kyouaiEND"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="event_fin2.jpg"  ]
[tb_hide_message_window  ]
[tb_eval  exp="sf.zenkaihou=1"  name="zenkaihou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[wait  time="2000"  ]
[l  ]
[bg  time="3000"  method="crossfade"  storage="event_fin.jpg"  ]
[wait  time="3000"  ]
[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

