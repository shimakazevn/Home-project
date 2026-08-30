[_tb_system_call storage=system/_EV_BADEND_rinko.ks]

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
あれから凛子さんの店でバイトは続けている。[p]
しかし関係が進展することもなく、雇用主とバイトという関係のままだ。[p]
最近では、凛子さんから避けられている気さえする…[p]
[舜]（日頃の行いが悪かったかなぁ…）[p]
[舜]（まぁ、思い当たる節はある…けども）[p]
外からキャアキャアと子供たちの声が聞こえる。[p]
結局俺は世間から切り離されているのがお似合いみたいだ。[p]
[舜]「そろそろこのバイトも潮時か…」[p]
せっかく世の中に出たが、働くのは容易じゃなかった。[p]
今までの生活に戻るのか…とため息つきながら俺はパソコンに向かった。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
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
