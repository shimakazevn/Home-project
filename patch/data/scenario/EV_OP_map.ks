[_tb_system_call storage=system/_EV_OP_map.ks]

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

[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
[舜]（Haa……cứ quanh quẩn nãy giờ, đã muộn thế này rồi sao.）[p]
──Quả nhiên, trước tiên chỉ còn cách đến bệnh viện để thu thập thông tin thôi.[p]
[舜]（……Được rồi, cứ đến đó như một bệnh nhân bình thường thì sẽ không có gì đáng ngờ cả.[r]Chắc chắn là Nagi đang làm việc ở đó mà.）[p]
[_tb_end_text]

[playbgm  volume="100"  time="1000"  loop="true"  storage="nitijyou3.mp3"  ]
*top2

[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[bg  time="0"  method="crossfade"  storage="tm_bg.png"  cross="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;ボタン表示
;病院
[button target=*byouin enterimg="../fgimage/default/tm_biyouin_on.png" clickimg="../fgimage/default/tm_biyouin_on.png" x=776 y=96 graphic="../fgimage/default/tm_biyouin_off.png" name="sansaku_icon"]
;ファミレス
[button target=*famiresu enterimg="../fgimage/default/tm_famiresu_on.png" clickimg="../fgimage/default/tm_famiresu_on.png" x=328 y=184 graphic="../fgimage/default/tm_famiresu_off.png" name="sansaku_icon"]
;繁華街
[button target=*hankagai enterimg="../fgimage/default/tm_hankagai_on.png" clickimg="../fgimage/default/tm_hankagai_on.png" x=984 y=144 graphic="../fgimage/default/tm_hankagai_off.png" name="sansaku_icon"]
;買い物
[button target=*kaimono enterimg="../fgimage/default/tm_shopping_on.png" clickimg="../fgimage/default/tm_shopping_on.png" x=856 y=392 graphic="../fgimage/default/tm_shopping_off.png" name="sansaku_icon"]
;メイドリフレ
[button target=*rihure enterimg="../fgimage/default/tm_maidrefre_on.png" clickimg="../fgimage/default/tm_maidrefre_on.png" x=0 y=424 graphic="../fgimage/default/tm_maidrefre_off.png" name="sansaku_icon"]

[anim name="sansaku_icon" opacity=0 time=0]
[anim name="sansaku_icon" opacity=255 time=300]
[_tb_end_tyrano_code]

*op1

[s  ]
*rihure

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_rihure.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（Hửm? Chỗ này là sao... [font color="yellow"]Quán bấm huyệt hầu gái Maid Reflex[resetfont]? Ồ, đang tuyển nhân viên văn phòng làm thêm à.）[p]
[舜]（Làm việc giữa một đám con gái, biết đâu lại không tệ như mình nghĩ. Cứ ghi nhớ trong đầu đã.）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
*byouin

[cm  ]
[jump  storage="EV_OP3.ks"  target="*top"  ]
*famiresu

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_famiresu.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（Ở chỗ này mà cũng có nhà hàng gia đình sao... Vừa hay. Tiện thể kiếm gì đó ăn tạm vậy.）[p]
[舜]（[font color="yellow"]Một nơi có thể yên tĩnh một mình thế này thật tốt.[resetfont]Tuy vẫn có người xung quanh, nhưng không bị ai can thiệp...[r]Một không gian như vậy là vừa vặn nhất.）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
*kaimono

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_kaimono1.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（[font color="yellow"]Một trung tâm thương mại có đủ mọi thứ từ hiệu thuốc đến cửa hàng điện máy.[resetfont]Trông tiện lợi thật...[r]Cuộc sống sau này, chắc chắn sẽ phải nhờ cậy nơi này nhiều đây.）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2"  ]
*hankagai

[cm  ]
[bg  time="1500"  method="crossfade"  storage="back_hankagai.png"  cross="false"  ]
[tb_start_text mode=1 ]
[舜]（Haa... Chỗ này vẫn đông người như mọi khi. Chỉ cần đứng giữa đám đông ồn ào thôi cũng đủ thấy chán nản rồi.）[p]
[舜]（Nhìn kỹ mới thấy, trong tòa nhà phức hợp này có cả [font color="yellow"]phòng tập gym[resetfont]... Mà thôi, chắc cũng chẳng liên quan gì đến mình.）[p]
[_tb_end_text]

[jump  storage="EV_OP_map.ks"  target="*top2" ]
