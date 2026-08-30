[_tb_system_call storage=system/_EV_BADEND_tubomi.ks]

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
[bg  time="0"  method="crossfade"  storage="back_room.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="kodomo.mp3"  ]
[tb_start_text mode=1 ]
結局、蕾とは何の進展もないままだ。[p]
リフレに通うことを辞めてから必要以上に会話することもなくなってしまった。[p]
[舜]（夢に向かっていろいろ頑張ってるっぽいし…）[p]
[舜]（芸能人になろうって女の子の周りを男がうろちょろしないほうがいいだろ）[p]
窓から外を見ると、凪の家にやってきている隼人の姿が見えた。[p]
[舜]（そういえば、元々はあいつら２人に何かしてやろうって思ってたんだっけな）[p]
蕾と過ごす毎日が忙しすぎて、そんなことすら忘れていた。[p]
まぁいいか…と布団に寝転がる。[p]
[舜]「そろそろ凛子さんのバイトも辞めるか」[p]
これで蕾と顔を合わせることもなくなるし、気まずい思いもしなくて済む。[p]
全部終わりにできる…[p]
俺は天井を見上げながら、蕾のことを考えていた。[p]
[_tb_end_text]

[bg  time="1500"  method="crossfade"  storage="black.jpg"  ]
[tb_start_text mode=1 ]
【BADEND_夢の終わり】[p]
[_tb_end_text]

[l  ]
[stopbgm  time="500"  fadeout="true"  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
