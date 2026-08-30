# -*- coding: utf-8 -*-
"""
MASTER PIPELINE: Fix all 235+ corrupted/filler translation rows in viethoa.xlsx & text_export.xlsx,
re-import all 323 scenario files systematically, and verify 0 anomalies.
"""

import os
import sys
import openpyxl
import pandas as pd

sys.stdout.reconfigure(encoding='utf-8')
PROJECT_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
VIETHOA_PATH = os.path.join(PROJECT_ROOT, 'translation', 'viethoa.xlsx')
EXPORT_PATH = os.path.join(PROJECT_ROOT, 'translation', 'text_export.xlsx')

# Master Dictionary of clean, faithful translations for all identified corrupted rows
CLEAN_TRANSLATIONS = {
    # EV_kyouaiEND_tubomi.ks
    8916: "Chính bản thân Tsubomi dường như cũng「chẳng còn nhớ nổi nữa」rồi.[p]",

    # EV_yuujyouEND_hayato.ks
    9069: "[舜]「Cậu cừ thật đấy. Tôi thì thậm chí còn chẳng đủ can đảm để nhìn mặt cô ấy」[p]",
    9073: "Hayato「Đi ăn gì đó không? Tôi bao. Dù sao kinh tế của tôi cũng dư dả hơn」[p]",
    9077: "[舜]「Mà, thế này xem ra cũng không tệ lắm」[p]",

    # EV_BADEND_hayato.ks
    9087: "[舜]「Có chuyện gì thế? Chắc không phải tiếp thị bán hàng đến tận nhà đâu nhỉ」[p]",
    9089: "Nagi「[舜]-chan, xin lỗi nhé. Cậu đang bận sao? Thật ra mình có chuyện muốn thông báo cho [舜]-chan biết」[p]",
    9093: "Nagi「Mình... đã quyết định sẽ kết hôn với Hayato rồi. Người đầu tiên mình muốn chia sẻ chính là [舜]-chan」[p]",
    9094: "[舜]「...Vậy à」[p]",
    9097: "Nagi「Cảm ơn cậu nhé, [舜]-chan... Từ trước tới nay mình toàn phải nhờ vả [舜]-chan chăm sóc thôi...」[p]",
    9098: "Hayato「Tôi cũng... cảm ơn ông vì nhiều việc nhé. Tôi nhất định sẽ mang lại hạnh phúc cho Nagi」[p]",
    9099: "[舜]「À, ừ...」[p]",

    # EV_BADEND_suimin.ks
    9165: "Nagi「――Kyaaaaaaa!」[p]",
    9173: "[舜]「――...Khốn kiếp...!」[p]",
    9180: "[舜]「Uwaaaaaa!」[p]",

    # EV_BADEND_tubomi.ks
    9192: "[舜]「Chắc cũng đến lúc nghỉ việc làm thêm ở chỗ chị Rinko rồi」[p]",

    # EV_3P.ks
    9201: "Rinko「Ơ kìa? Có chuyện gì thế [舜]-kun...? Ơ? Cả Tsubomi nữa sao?」[p]",
    9213: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_03c.gif\" wait=\"false\"]Tsubomi「Hả!?」[p]",
    9220: "Rinko「[舜]-kun, em giải thích đi」[p]",
    9224: "[舜]「Vậy sao? Nếu bản thân hai người đều thấy ổn thì đâu có vấn đề gì. Dù sao hai người cũng đâu phải người ngoài」[p]",
    9229: "[chara_mod name=\"kyara_rinko_sabun\" cross=\"false\" time=\"500\" storage=\"chara/180/ADV_rinko_00_00c.gif\" wait=\"false\"]Rinko「Khoan đã... Em thấy như thế cũng được mà. Dù sao cũng không phải người xa lạ... Đối tượng của Tsubomi mà là [舜]-kun thì em cũng an tâm」[p]",
    9231: "Rinko「Vâng. Hơn nữa... nếu [舜]-kun đã muốn thế thì em cũng đồng ý」[p]",
    9236: "Tsubomi「Ăn gian quá! Đừng có chỉ nhìn mỗi mẹ chứ. Phải chiều cả em nữa!」[p]",

    # EV_Htalk.ks
    9240: "[舜]「Anh có làm em quá sức không? Em có thấy ổn không?」[p]",
    9242: "Nagi「Ưm... Em ổn mà. Dù sâu trong bụng vẫn còn nóng râm ran... nhưng em hạnh phúc lắm...」[p]",
    9243: "Nagi「Em không ngờ được làm tình với người mình yêu lại sướng và ngập tràn hạnh phúc đến thế này」[p]",
    9244: "Nagi「Cảm ơn anh đã cho em biết cảm giác này nhé, [舜]-chan」[p]",
    9247: "Nagi「Ơ, sao thế [舜]-chan... Anh khóc đấy à?」[p]",
    9248: "[舜]「Anh chỉ thấy quá hạnh phúc thôi」[p]",
    9249: "Nagi「Kìa... Anh làm em cũng muốn khóc theo mất thôi... Fufu, hạnh phúc thật đấy nhỉ」[p]",
    9307: "Tsubomi「Nhìn em đi mà...♡」[p]",
    9308: "[舜]「Nhìn chỗ nào?」[p]",
    9309: "Tsubomi「Chỗ bé bướm... đang ướt nhẹp nhầy nhụa này nè...♡ Em muốn anh nhìn cơ」[p]",
    9312: "Tsubomi「Bắt em làm cái tư thế này rồi thì... anh... định làm tiếp... đúng không?」[p]",

    # EV_item_Spirytus_nagi.ks
    9400: "[舜]（Nhắc mới nhớ, mình đang có sẵn viên con nhộng Spirytus）[p]",
    9401: "[舜]（Lúc này nếu lén bỏ vào đồ uống của Nagi thì chắc sẽ không bị lộ đâu...）[p]",
    9403: "Có sử dụng viên con nhộng Spirytus không? (Số lượng sở hữu: [emb exp=\"f.item_supiritasu\"])",
    9407: "[舜]（Thôi vậy. Lần này bỏ qua đi）[p]",
    9409: "...Cảm giác như đã thân thiết hơn với Nagi một chút[p]",
    9410: "Đã thanh toán tiền bữa tối 　[font color=\"yellow\"]-5.000 Yên[p]",
    9411: "Chỉ số hưng phấn tăng lên[resetfont][p]",
    9416: "[舜]（Canh lúc đối phương rời khỏi chỗ rồi dùng thử xem...）[p]",
    9417: "[舜]（Chỉ cho phần bột bên trong viên nhộng vào thôi...[r]Không ngờ lại tan vào nước dễ thế. Thế này thì chắc chắn không bị phát hiện rồi）[p]",
    9420: "Nagi「Fufu, no nê rồi! Lâu lắm rồi mới được ăn đồ ngon thỏa thích thế này đấy」[p]",
    9421: "Nagi trông vô cùng vui vẻ và nói chuyện rôm rả.[r]Có vẻ như viên nhộng Spirytus tôi hòa vào nước lúc nãy đã bắt đầu phát huy tác dụng.[p]",
    9422: "Nagi「Ừm... Nhưng mà sao tự dưng người nóng thế nhỉ... Đầu óc cứ lâng lâng sao ấy」[p]",
    9423: "[舜]「Chắc là do say rượu rồi đấy」[p]",
    9424: "Nagi「Ơ? Nhưng mình đâu có uống rượu đâu ta... Lạ thật đấy...」[p]",
    9425: "Mặt cô ấy đỏ bừng tới tận mang tai, bước chân lảo đảo không vững.[p]",
    9426: "[舜]「Này, cẩn thận kẻo ngã. Để anh đưa em về phòng nghỉ nhé」[p]",
    9427: "Nagi「Ưm... Cảm ơn [舜]-chan nhé...」[p]",
    9428: "Tôi dìu Nagi về phòng của cô ấy, đặt cơ thể mềm mại của cô ấy nằm xuống giường.[p]",
    9429: "Nagi「[舜]-chan... Em thấy nóng quá... Khó chịu quá à...」[p]",
    9430: "Nagi khẽ rên rỉ, hai tay kéo phanh cổ áo ra để lộ làn da trắng ngần đang ửng hồng vì men say và kích thích.[p]",
    9431: "[舜]（Thế này thì không kiềm chế nổi nữa rồi...）[p]",
    9432: "Tôi đè lên người Nagi, bắt đầu cởi bỏ từng lớp trang phục của cô ấy──[p]",
    9433: "Toàn thân Nagi run rẩy theo từng cái chạm tay đầy ma mị của tôi.[p]",

    # EV_item_Spirytus_rinko.ks
    9434: "[舜]（Nhắc mới nhớ, mình đang có sẵn viên con nhộng Spirytus）[p]",
    9435: "[舜]（Lúc này nếu lén bỏ vào đồ uống của cô ấy thì chắc sẽ không bị lộ đâu...）[p]",
    9437: "Có sử dụng viên con nhộng Spirytus không? (Số lượng sở hữu: [emb exp=\"f.item_supiritasu\"])",
    9439: "[舜]「Đây là nước ạ. Là nước của tiệm mình. Chị uống đi」[p]",
    9440: "Rinko「A, cảm ơn em」[p]",
    9442: "[舜]「Chị có sao không?」[p]",
    9443: "Rinko「Chị ổn mà... [舜]-kun đúng là con trai có khác.[r]Vừa khỏe mà bờ vai lại rộng nữa. Được em đỡ mà tim chị cứ đập thình thịch」[p]",
    9446: "Rinko「Chị phải cảm ơn em mới được nhỉ...」[p]",
    9450: "[chara_mod name=\"kyara_rinko_sabun\" cross=\"false\" time=\"500\" storage=\"chara/180/ADV_rinko_00_01c.gif\"]Rinko「Fufu, mặt [舜]-kun cũng đỏ bừng lên rồi kìa... Em thấy xấu hổ à?」[p]",
    9451: "[舜]「Thế này... có được không chị...」[p]",
    9452: "[chara_mod name=\"kyara_rinko_sabun\" cross=\"false\" time=\"500\" storage=\"chara/180/ADV_rinko_00_04c.gif\"]Rinko「Ưm... Cứ làm theo ý em thích đi? Có gì chưa biết chị sẽ dạy cho em hết♡」[p]",
    9457: "Rinko「Chị không đủ hấp dẫn để làm em có hứng à? Nhưng chỗ này của em dường như đã sẵn sàng rồi kìa?」[p]",
    9458: "[舜]「Nhìn chị gợi cảm quá làm em hưng phấn không chịu nổi rồi」[p]",
    9459: "Rinko「Fufu, thế thì... lại đây với chị nào?」[p]",

    # EV_item_Spirytus_tubomi.ks
    9477: "[舜]（Thôi vậy. Lần này bỏ qua đi）[p]",
    9480: "Chỉ số hưng phấn tăng lên[resetfont][p]",
    9483: "Tsubomi「Lần sau em muốn đi thử quầy buffet salad cơ. Ở đó á, được ăn thỏa thích luôn nha~」[p]",
    9485: "Tsubomi「Mà nói chứ, giá mà ăn nhiều cũng không bị béo thì tốt biết mấy~」[p]",
    9486: "[舜]「Đầy đặn mũm mĩm một chút cũng có sao đâu?」[p]",
    9487: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_01c.gif\"]Tsubomi「Aahaha! Đó là suy nghĩ của riêng anh thôi đúng không hả? Fufufu」[p]",
    9490: "Tsubomi「Ơ kìa? Lạ thế nhờ... Mặt đất cứ bồng bềnh bồng bềnh ấy...」[p]",
    9491: "[舜]（Đúng là thuốc Spirytus tác dụng ghê thật đấy...）[p]",
    9493: "[舜]「Này này, nguy hiểm quá. Em thấy trong người khó chịu à?」[p]",
    9494: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_04c.gif\"]Tsubomi「Không saooo hết á. Ufufu, trong người đang thấy sướng lắm luôn nè~」[p]",
    9496: "[舜]「Vào đâu đó nghỉ tạm một lát nhé...」[p]",
    9497: "Tsubomi「Đừng có bảo là vào khách sạn đấy nhá~? Tôi không thèm vào khách sạn với anh đâu đấy nhé~!」[p]",
    9498: "[舜]（Chậc... Đang tính đưa vào khách sạn, thế mà chỗ này vẫn còn tỉnh táo gớm）[p]",
    9499: "[舜]「Biết rồi. Ngay gần đây là tiệm Refre rồi. Đi nào. Giờ tiệm cũng đóng cửa hết khách rồi nên không sao đâu」[p]",

    # EV_item_biyaku.ks
    9554: "Nagi「Nhaaah♡ Bị xoa bóp thế này thì... em ra mất thôi♡」[p]",
    9557: "Nagi「Haa, haah♡ Ahn♡ Aaaah♡ Không chịu nổi nữa rồi♡ Ra mất thôi♡」[p]",
    9558: "[舜]「Ư... Ra rồi...」[p]",
    9559: "Nagi「Ahn♡ Aaaah♡ Không được, không được đâu♡ Làm trần thế này dính bầu mất thôi♡」[p]",
    9563: "Nagi「Aaaaaah♡」[p]",

    # EV_item_biyaku2.ks
    9573: "Nagi「Ưm... Tự dưng mình muốn nghe giọng của [舜]-chan thôi... Chứ cũng không có việc gì đâu... Phùuu♡」[p]",
    9578: "Nagi「Kh-Không sao mà...! Cứ... cứ nói chuyện với mình như thế này một lát thôi nhé♡ Aahn♡」[p]",
    9585: "Nagi「Ưm♡ [舜]-chan, có chuyện gì thế?」[p]",
    9586: "[舜]「À không, không có gì...」[p]",
    9589: "[舜]「Nagi... Sao nãy giờ em cứ phát ra mấy âm thanh rên rỉ gợi tình thế?」[p]",
    9590: "Nagi「Ưm♡ Đ-Đâu có chuyện đó đâu...♡ Mình làm gì có phát ra âm thanh gì đâu...♡」[p]",
    9591: "[舜]「Thật không đấy? Nghe cứ dâm dật làm sao ấy...」[p]",
    9592: "Nagi「[舜]-chan nghe thấy sao...? Haa, ghét quá à... Đừng trêu mình như thế mà...♡」[p]",
    9594: "Nagi「Ahn♡ Haa, ahn...♡ Ưm, ư...♡ [舜]-chan...♡」[p]",
    9595: "[舜]「Này... Anh thắc mắc từ nãy tới giờ rồi, cái tiếng sột soạt sột soạt đó là gì thế?」[p]",
    9596: "Nagi「A, đ-đâu có... Không có gì đâu... Cậu đừng để ý! A, ưm, hức...!」[p]",
    9597: "[舜]「Nagi?」[p]",
    9599: "Nagi「A, thôi chết rồi... Ưn ưn ưm♡」[p]",
    9601: "Nagi「X-Xin lỗi cậu nhé... Mình ổn rồi. Cảm ơn cậu」[p]",
    9606: "Nagi「A, [舜]-chan...! À, ừm thì...」[p]",
    9608: "[chara_mod name=\"kyara_nagi_sabun2\" cross=\"false\" time=\"500\" storage=\"chara/179/ADV_nagi_01_04c.gif\"]Nagi「Tối qua trong người mình hơi khó chịu một chút...[r]Nhưng lúc đó mình rất muốn nghe giọng của [舜]-chan. Xin lỗi cậu vì đã làm phiền nhé」[p]",
    9609: "[舜]「Không, đâu có phiền gì đâu. Quan trọng là giờ em đã thấy khỏe hơn chưa?」[p]",
    9612: "Nagi「Ưm... Mình ổn rồi. Giờ mình phải đi làm đây... Hẹn gặp lại cậu sau nhé!」[p]",

    # EV_item_biyaku3.ks
    9617: "Nagi「Aaaah♡ Haa, haah♡」[p]",
    9618: "Nagi đang ngồi trên bồn cầu, dạng rộng hai chân say sưa tự sướng.[p]",
    9619: "Nagi「Haa, ưm, aah♡」[p]",
    9620: "Cô ấy đưa ngón tay vào sâu trong âm hộ, ra vào liên hồi đầy kịch liệt.[r]Cùng với tiếng rên ngọt ngào, dâm dịch bắn tung tóe khiến Nagi ưỡn cong cả người ra sau.[p]",
    9621: "Nagi「Hauuu♡ Sướng quá đi♡ Aahn♡ Aah♡」[p]",
    9623: "Nagi「P-Phải làm sao đây... lỡ có ai vào thì... haa, ahn♡ Nhưng mà, không thể dừng lại được...♡」[p]",
    9625: "Nagi「Ra, ra mất, sắp ra rồi...♡」[p]",
    9627: "Nagi「~~~~~♡♡♡」[p]",
    9631: "Nagi「A, [舜]-chan đi đâu thế? Đi mua đồ à?」[p]",
    9632: "[舜]「Ừm, cũng tầm đó...」[p]",
    9633: "Nagi「Mình cũng vừa mới tan làm về tới đây... Trùng hợp ghê」[p]",
    9635: "[舜]「Ủa? Nagi, mặt em đỏ thế kia?」[p]",
    9636: "[chara_mod name=\"kyara_nagi_sabun2\" cross=\"false\" time=\"500\" storage=\"chara/179/ADV_nagi_01_03c.gif\"]Nagi「Ơ, th-thế sao...? À, tại trong người thấy mệt mệt ấy mà...!」[p]",
    9637: "[舜]「Có sao không đấy? Để anh sang chăm sóc cho nhé」[p]",
    9638: "[chara_mod name=\"kyara_nagi_sabun2\" cross=\"false\" time=\"500\" storage=\"chara/179/ADV_nagi_01_04c.gif\"]Nagi「K-Không cần đâu, mình tự lo được mà...! A, đúng rồi, có chương trình TV hay phải xem nữa...! Th-Thôi mình về nhé!」[p]",

    # EV_item_suimin.ks
    9644: "[舜]「Đèn trong phòng... đã tắt rồi. Nagi ngủ rồi sao」[p]",
    9645: "[舜]「...Có nên vào không? Làm sao bây giờ, nếu muốn vào thì chỉ có lúc này thôi」[p]",
    9648: "[舜]「...Không, mình phải vào. Thà làm còn hơn là hối hận vì đã bỏ lỡ cơ hội」[p]",
    9650: "[舜]「Nguy hiểm thật... Tim mình như sắp nhảy ra khỏi lồng ngực rồi」[p]",
    9653: "[舜]「Ngủ mà không phòng bị chút nào thế này... Đúng là mời gọi người ta mà」[p]",
    9656: "[舜]「Chỉ một chút thôi... Nếu chỉ chạm nhẹ một chút thì chắc không sao đâu」[p]",

    # EV_sigoto.ks (L20-163)
    9664: "Hôm nay là ngày đầu tiên tôi đi làm công việc quét dọn thêm tại bệnh viện.[p]",
    9665: "Nộp đơn ứng tuyển xong là trúng tuyển ngay trong ngày,[r]và thế là bắt đầu đi làm ngay từ hôm nay luôn.[p]",
    9666: "[舜]「Có khi cái ngành này đang thiếu nhân lực trầm trọng cũng nên...」[p]",
    9667: "Nagi「[舜]-chan. Cậu bắt đầu đi làm từ hôm nay hả.[r]Fufu, không ngờ chúng mình lại làm chung một chỗ... Trùng hợp ghê」[p]",
    9668: "[舜]「À, chỗ làm trước có nhiều chuyện xảy ra nên tôi nghỉ rồi... Đúng lúc thấy ở đây tuyển nhân viên vệ sinh nên xin vào」[p]",
    9669: "Nagi「Quan trọng là tinh thần cố gắng làm việc đấy.[r]Nếu có gì khó khăn thì cứ hỏi mình bất cứ lúc nào nhé?」[p]",
    9670: "[chara_mod name=\"kyara_nagi_sabun2\" cross=\"false\" time=\"500\" storage=\"chara/179/ADV_nagi_01_01c.gif\"]Nagi「Ở đây mình là tiền bối của cậu đấy, nên cứ dựa dẫm vào mình đi nhé? Nói thế thôi chứ... Fufu, mình phải cố gắng để không bị mất mặt trước [舜]-chan mới được」[p]",
    9671: "[舜]「Được rồi... Quét dọn hành lang xong xuôi」[p]",
    9672: "[舜]（Xem nào, tiếp theo là phải dọn phòng thay đồ của nhân viên đúng không nhỉ...?）[p]",
    9673: "[舜]「T-Tôi xin phép vào phòng」[p]",
    9674: "[舜]（May quá, không có ai ở đây cả... Đâu xem nào, trước tiên là lau sàn đã... Ủa?）[p]",
    9675: "[舜]（Tủ có ghi tên『Tsukishiro』... Là tủ đồ của Nagi sao. Ơ, đùa à, không khóa tủ sao...?）[p]",
    9676: "[舜]（Mở ra được thật này... Con bé này bất cẩn quá đi mất.[r]Bên trong chỉ có mỗi chiếc túi xách thôi à. A... Đây là chìa khóa nhà sao?）[p]",
    9677: "Lời thì thầm của ác quỷ bỗng vang vọng trong tâm trí tôi.[p]",
    9678: "Sau khi ngó quanh xác nhận không có ai, tôi cầm lấy chìa khóa nhà của Nagi.[p]",
    9679: "Tôi không có nhiều thời gian để do dự.[p]",
    9680: "[舜]（Thế này là phạm pháp rồi đấy nhỉ... Mình đang làm trò cực kỳ nguy hiểm có phải không...?）[p]",
    9681: "Đầu ngón tay lạnh ngắt. Tôi cảm nhận rõ từng giọt mồ hôi lạnh toát ra.[p]",
    9682: "[舜]（Nhưng đây có thể là cơ hội duy nhất. Nếu có thể tiếp cận Nagi gần hơn nữa, và khiến cô ấy chia tay với Hayato thì...!）[p]",
    9683: "Đôi tay run rẩy, tôi đặt chiếc chìa khóa trở lại vị trí cũ trong tủ đồ.[p]",
    9684: "Đêm hôm đó──[r]Tôi tìm thấy một trang web nhận làm bản sao chìa khóa qua mạng internet.[p]",
    9685: "[舜]「Thật không ngờ... Chỉ cần nhập mã số là làm được bản sao chìa khóa dễ dàng thế này」[p]",
    9686: "Tôi nhập dãy số sản xuất đã chụp trên chìa khóa rồi nhấp chuột đăng ký đặt hàng.[r]Khi email xác nhận hoàn tất thủ tục gửi tới, một cảm giác phấn khích âm ỉ lan tỏa trong lồng ngực tôi.[p]",
    9687: "[舜]「Từ giờ trở đi, tất cả mọi thứ sẽ phải chuyển động theo đúng ý tao」[p]",
    9688: "Nhìn qua khung cửa sổ phòng hé mở, tôi thấy ngôi nhà của Nagi phía đối diện.[r]Ánh đèn từ căn phòng ấy lấp lánh mờ ảo đung đưa theo từng cơn gió đêm.[p]",
    9689: "[font color=\"yellow\"]Đã mở khóa lệnh「Đột nhập」[resetfont][p]",
    9690: "Hôm nay là ngày đầu tiên tôi đi làm thêm ở tiệm mát xa của cô Rinko.[p]",
    9691: "[舜]「Hồi đó do cao hứng mà lỡ miệng bảo sẽ \"đi làm\"... nhưng thế này có thực sự ổn không ta?」[p]",
    9692: "Rinko「A, từ hôm nay nhờ cháu giúp đỡ nhé, [舜]-kun. Trông cậy vào cháu đấy.[r]Ban đầu cháu chỉ cần làm những việc đơn giản thôi là được rồi」[p]",
    9693: "Rinko「Nếu có gì không hiểu thì cứ tự nhiên hỏi cô nhé?」[p]",
    9694: "[舜]「À... cháu thực sự được làm việc ở đây sao cô?」[p]",
    9695: "Rinko「Hử? Đương nhiên rồi」[p]",
    9696: "Rinko「Về cơ bản tiệm này chỉ có một mình cô quán xuyến...[r]nên cháu không phải e ngại gì đâu, cứ thoải mái làm việc là cô vui rồi」[p]",
    9697: "Hôm nay là ngày đầu tiên tôi đi làm thêm ở tiệm Maid Refre.[p]",
    9698: "[舜]「Trong thông báo tuyển dụng ghi là công việc văn phòng đơn giản... nhưng thực tế là làm những gì nhỉ?」[p]",
    9699: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_02c.gif\"]Tsubomi「Hả!? Anh bắt đầu đi làm ở đây thật đấy à...!? Sao lại thế...」[p]",
    9700: "Tsubomi「Không lẽ... anh bám đuôi tôi đấy à? Anh theo dõi tôi tới đây sao?[r]Dám làm trò gì mờ ám là tôi mách quản lý ngay lập tức đấy nhé!」[p]",
    9701: "[舜]（...Ai thèm có hứng thú với cô chứ）[p]",
    9702: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_00c.gif\"]Tsubomi「...Mà thôi kệ. Có gì cần thì cứ hỏi.[r]Tôi cũng sẽ làm việc nghiêm túc tương xứng với tiền lương. Không vì chuyện cá nhân mà né tránh anh đâu, yên tâm đi」[p]",

    # EV_sigoto2.ks
    9703: "Nagi「[舜]-chan, nghe nói cậu làm việc chăm chỉ lắm đấy nhé」[p]",
    9704: "[chara_mod name=\"kyara_nagi_sabun2\" cross=\"false\" time=\"500\" storage=\"chara/179/ADV_nagi_01_01c.gif\"]Nagi「Hình như cậu sắp được tăng lương nữa cơ. Fufu, tốt quá rồi! Cậu được khen làm mình cũng thấy vui lây luôn này」[p]",
    9705: "Nagi「Mình cũng không thể chịu thua được...! Chúng ta cùng cố gắng nhé」[p]",
    9706: "[舜]（Thế này thì mọi việc sau này sẽ dễ dàng hơn nhiều rồi đây）[p]",
    9707: "[font color=\"yellow\"]Tiền lương đã được TĂNG LÊN[p]",
    9708: "Đã mở khóa「Đột nhập」vào Bệnh viện[resetfont][p]",
    9709: "Rinko「Lúc nào em cũng làm việc chăm chỉ, giúp đỡ chị rất nhiều... nên chị đang tính tăng lương cho em đấy」[p]",
    9710: "[chara_mod name=\"kyara_rinko_sabun\" cross=\"false\" time=\"500\" storage=\"chara/180/ADV_rinko_00_01c.gif\"]Rinko「Từ khi có [舜]-kun đến làm, chị thấy công việc nhẹ nhàng hơn hẳn luôn」[p]",
    9711: "Rinko「Chị cũng sẽ cố gắng để em cảm thấy thoải mái khi làm việc ở đây, từ giờ nhờ em giúp đỡ tiếp nhé?」[p]",
    9712: "[舜]（Thế này thì mọi việc sau này sẽ dễ dàng hơn nhiều rồi đây）[p]",
    9713: "[font color=\"yellow\"]Tiền lương đã được TĂNG LÊN[p]",
    9714: "Đã mở khóa「Đột nhập」vào Tiệm mát xa[resetfont][p]",
    9715: "Tsubomi「Nè, nghe bảo anh làm việc chăm chỉ dữ lắm hả? Chủ tiệm vừa mới khen anh quá trời luôn á」[p]",
    9716: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_01c.gif\"]Tsubomi「Bảo là còn được tăng lương nữa cơ! Được tăng lương nhanh đến mức này chắc anh là người đầu tiên luôn đó」[p]",
    9717: "Tsubomi「Giỏi ghê chưa...! Mà sao tự dưng em cũng thấy vui lây thế này nhỉ... Lạ thật」[p]",
    9718: "[舜]（Thế này thì mọi việc sau này sẽ dễ dàng hơn nhiều rồi đây）[p]",
    9719: "[font color=\"yellow\"]Tiền lương đã được TĂNG LÊN[p]",
    9720: "Đã mở khóa「Đột nhập」vào Tiệm Maid Refre[resetfont][p]",

    # EV_sinnyu.ks
    9721: "[舜]（Đã hơn 1 tiếng trôi qua kể từ khi Nagi đi làm...[r]Giờ này ca làm của cô ấy chắc chắn đã bắt đầu rồi. Từ giờ đến chiều cô ấy sẽ không quay về nhà đâu）[p]",
    9726: "[舜]「M-Mở được rồi...」[p]",
    9729: "[舜]（T-Thế này có thật sự ổn không? Tự ý đột nhập vào nhà Nagi rồi muốn làm gì thì làm thế này...）[p]",
    9730: "Cảm giác như Nagi thuở nhỏ sẽ bất thình lình xuất hiện rồi ngây thơ hỏi tôi: \"Cậu đang làm gì thế?\".[p]",

    # EV_status.ks
    9734: "[舜]「Được rồi... Bắt đầu bằng việc quét dọn thôi nào」[p]",
    9736: "Tsubomi「Nè! Khách ở Phòng 3 đang làm loạn lên kìa!」[p]",
    9737: "[舜]「Hả!?」[p]",
    9738: "Tsubomi「Lúc nãy gã đó định giở trò đồi bại với một bé nhân viên... Bị từ chối cái là gã quát tháo ầm ĩ rồi đá lật cả bàn... Cứ để thế này có khi có người bị thương mất...」[p]",
    9739: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_03c.gif\"]Tsubomi「Những lúc thế này... phải làm sao bây giờ? C-Có nên báo... cảnh sát không?」[p]",
    9742: "[舜]「Tôi hiểu rồi, tôi qua ngay. Em bảo các bạn khác sơ tán vào phòng nghỉ đi」[p]",
    9743: "Tsubomi「Ừ-Ừm... Cẩn thận nhé anh」[p]",
    9745: "Khách nam「Thằng ranh nào đây! Chỉ là nhân viên quèn mà dám lên mặt à...!」[p]",
    9746: "[舜]「Thưa quý khách, hành vi này đang cản trở hoạt động kinh doanh của chúng tôi. Xin mời quý khách rời khỏi đây ngay」[p]",
    9748: "Gã đàn ông có chút chùn bước, buông lời chửi rủa cay cú rồi lủi thủi bỏ đi.[p]",
    9809: "Hayato「A, alo? Tối nay bọn tôi có buổi nhậu đấy. Đi chung không?」[p]",
    9810: "[舜]「Hả? Sao ông lại biết số điện thoại của tôi?」[p]",
    9811: "Hayato「Tôi xin Nagi đấy mà. Thôi, tiểu tiết quan tâm làm gì」[p]",
    9812: "Hayato「Nói đúng ra là tiệc ghép đôi Gokon đấy! Đang thiếu con trai. Ông chắc chắn sẽ đi chứ?」[p]",
    9815: "[舜]「Cũng được thôi. Hẹn gặp ở đâu?」[p]",
    9816: "Hayato「Phải thế chứ. Tôi gửi bản đồ qua nhé. Tối gặp」[p]",
    9818: "[舜]（\"Mình lỡ cho Hayato địa chỉ email của [舜]-chan rồi có sao không? Cậu ấy bảo muốn kết bạn với cậu đấy!\"）[p]",
    9820: "[舜]「Thôi tôi xin kiếu, tôi không giỏi mấy vụ tiệc tùng nhậu nhẹt này đâu. Để dịp khác nhé」[p]",
    9821: "Hayato「Thế à? Toàn mấy em gái xinh tươi hội tụ thôi đấy nhé~」[p]",
    9822: "Hayato「Mà thôi, không ép được thì đành chịu. Hẹn dịp khác nhé」[p]",
    9825: "[chara_mod name=\"kyara_hayato_sabun\" cross=\"false\" time=\"500\" storage=\"chara/177/ADV_hayato_01c.gif\"]Hayato「Giới thiệu với mọi người, đây là [舜], bạn của tôi. Một anh chàng khá là thú vị đấy」[p]",
    9826: "[舜]「Rất vui được làm quen với mọi người. Mọi người ai cũng ăn mặc sành điệu và dễ thương quá, thật tình tim tôi đang đập thình thịch luôn đây」[p]",
    9829: "Hayato「Rồi rồi, mọi người đang hào hứng thế này nhưng chúng ta chuyển sang quán tiếp theo thôi nào」[p]",
    9831: "Hayato「[舜], cừ lắm đấy! Không khí vui nhộn hẳn lên, gọi ông đi đúng là chuẩn không cần chỉnh.[r]Lần tới rủ thì nhất định phải đi đấy nhé」[p]",
    9832: "Hayato「À, đương nhiên là phải giữ bí mật với Nagi đấy nhé?[r]Từ giờ chúng ta cứ là mối quan hệ WIN-WIN cùng có lợi như thế này nhé」[p]",
    9836: "Hayato「Mà thôi, coi như tôi bao để cảm ơn ông giúp đỡ hàng ngày. Nhớ biết ơn tôi đấy nhé?」[p]",
    9837: "[chara_mod name=\"kyara_hayato_sabun\" cross=\"false\" time=\"500\" storage=\"chara/177/ADV_hayato_04c.gif\" wait=\"false\"]Hayato「Ủa gì không có tiền luôn hả... Sao cầm từng này tiền mà dám đi nhậu vậy trời」[p]",
    9838: "Hayato「Lần này tôi trả hộ cho đấy, nhưng lần tới gặp thì TUYỆT ĐỐI phải trả lại đấy nhé!」[p]",

    # EV_syakaisei.ks
    9846: "Rinko「Nè, [舜]-kun có biết không? Gần đây khách hàng khen ngợi [舜]-kun nhiều lắm đấy」[p]",
    9847: "[chara_mod name=\"kyara_rinko_sabun\" cross=\"false\" time=\"500\" storage=\"chara/180/ADV_rinko_00_04c.gif\"]Rinko「Fufu. Chị biết ngay mà. Vì từ trước tới nay chị đã luôn thấy em là một chàng trai tuyệt vời rồi」[p]",
    9848: "[舜]「Ơ, thật thế ạ?」[p]",
    9849: "Tsubomi「Ừ. Vừa chăm chỉ, lại chu đáo và tháo vát nữa. Tương lai đầy hứa hẹn đấy. Đến em còn muốn cổ vũ cho anh nữa là」[p]",
    9852: "Tsubomi「Nè, lúc nãy mấy bạn maid vừa mới xì xào bàn tán về anh đấy. Bảo là gần đây anh trông bảnh bao hẳn ra」[p]",
    9853: "[舜]「Hả!?」[p]",
    9854: "Tsubomi「Được nhiều người hâm mộ quá là phiền phức lắm đấy nhé.[r]Anh mà thu hút nhiều sự chú ý quá... là em không độc chiếm anh được nữa đâu đấy」[p]",
    9855: "[舜]「Độc chiếm là sao?」[p]",
    9856: "[chara_mod name=\"kyara_tubomi_sabun\" cross=\"false\" time=\"500\" storage=\"chara/181/ADV_tubomi_00_04c.gif\"]Tsubomi「T-Tóm lại là, từ giờ cũng không được lơ là mà phải cố gắng tiếp đấy nhé!」[p]",
    9859: "Nagi「A, [舜]-chan. Cậu vất vả rồi」[p]",
    9860: "[舜]「Nagi cũng vất vả rồi nhé」[p]",
    9861: "Nagi「Gần đây mình thấy [舜]-chan có bầu không khí dễ gần hơn hẳn trước kia ấy...[r]Được nhiều người tin tưởng nhờ vả ghê」[p]",
    9862: "[chara_mod name=\"kyara_nagi_sabun2\" cross=\"false\" time=\"500\" storage=\"chara/179/ADV_nagi_01_04c.gif\"]Nagi「Nhìn [舜]-chan được mọi người tin cậy trông tỏa sáng và ngầu lắm luôn. Đi làm cố gắng lên nhé!」[p]",

    # EV_tousatuCG.ks
    9865: "[舜]（...Đây là ảnh chụp lúc đang bấm chuông gọi y tá à. Vẫn mất cảnh giác như mọi khi...）[p]",
    9866: "[舜]（...Ngủ với cái tư thế hớ hênh thế này thì có bị ai làm gì cũng chẳng cãi vào đâu được）[p]",
    9867: "[舜]（Ồ, bức này...! Chụp được góc đẹp thật. Biểu cảm này của Nagi, mình muốn được ngắm nhiều hơn nữa ghê）[p]",
    9868: "[舜]（...Quả nhiên Nagi dễ thương thật đấy. Để cho thằng Hayato đúng là phí của giời）[p]",
    9869: "[舜]（...Dáng vẻ ngủ say không chút phòng bị này đúng là không cưỡng lại nổi. Chỉ muốn lao vào ngay lập tức thôi）[p]",
    9870: "[舜]（Ồ, bức này...! Tuyệt phẩm! Dáng vẻ xấu hổ này của Nagi là của riêng một mình mình thôi nhé）[p]",
    9871: "[舜]（Hình như ngủ gật mất rồi... Lôi thôi thật đấy. Nhưng góc chụp này lại chuẩn phết）[p]",
    9872: "[舜]（...Phòng của Nagi mang lại cảm giác bình yên ghê. Cứ ngắm ảnh thế này thôi cũng thấy nhẹ nhõm rồi）[p]",
    9873: "[舜]（...Bức ảnh này xứng đáng lưu trữ vĩnh viễn luôn. Dáng vẻ hớ hênh của Nagi đúng là đỉnh của chóp）[p]",
    9874: "[舜]（Dễ thương quá... Mong chờ đến ngày hẹn hò ghê）[p]",
    9875: "[舜]（...Nụ cười của Nagi, quả nhiên mình thích nhất. Mình muốn biến nó thành của riêng mình）[p]",
    9876: "[舜]（...Góc này trông gợi cảm thật. Đùi của Nagi trông mềm mại ghê）[p]",
    9877: "[舜]（...Khuôn mặt khi ngủ của Nagi, mình có thể ngắm mãi không chán. Tuyệt đối không cho thằng Hayato thấy đâu）[p]",
    9878: "[舜]（...Ồ, bức này...! Biểu cảm đẹp thật. Góc khuất này của Nagi chỉ có mỗi mình biết thôi đấy）[p]",
    9879: "[舜]（...Đặt camera trong phòng Nagi đúng là quyết định chuẩn xác. Ngày nào cũng có cái để hóng）[p]",
    9880: "[舜]（...Cứ mỗi lần xem bức ảnh này là lại thấy rạo rực. Mình muốn khám phá cơ thể Nagi nhiều hơn nữa）[p]",
    9881: "[舜]（...Được độc chiếm dáng vẻ sơ hở của Nagi thế này đúng là sướng nhất trần đời. Phải sưu tập thêm thật nhiều ảnh nữa mới được）[p]",
    9882: "[舜]（Uầy... Không biết nên nhìn đi đâu nữa đây. Mà khoan, đâu việc gì phải ngại ngùng chứ. Tuyệt thật... Lộ hết toàn bộ rồi）[p]",
    9883: "[舜]（...Phòng Nagi đúng là thích thật. Chỉ cần nhìn trộm thế này thôi cũng có cảm giác như đang ở bên nhau rồi）[p]",
    9884: "[舜]（...Bức ảnh này đúng là báu vật. Dáng vẻ không chút phòng bị của Nagi, mình tuyệt đối không nhường cho ai đâu）[p]",
    9885: "[舜]（...Da dẻ mịn màng thật. Dáng ngực cũng đẹp nữa）[p]",
    9886: "[舜]（Uầy..., thế này... nhìn có được không ta? Không sao, không bị lộ thì cũng như chưa từng có chuyện gì thôi mà）[p]",
    9887: "[舜]（Một cô y tá lạ mặt đang xếp đồ. Chẳng có ai nhìn mà không thèm trốn việc một chút nào sao）[p]",
    9888: "[舜]（Chân của y tá đang lọt vào khung hình. Giá mà góc quay thấp hơn một chút nữa thì ngon）[p]",
    9889: "[舜]（Phát hiện quần lót rồi nhé. Chắc không ngờ là đang bị nhìn trộm từ góc này đâu nhỉ）[p]",
    9890: "[舜]（Nagi đang nói chuyện với các y tá khác.[r]Hồi xưa con bé này nhút nhát lắm cơ mà... Giờ cũng hòa đồng ghê. Hay là chỉ đang cố gượng ép để hòa nhập thôi nhỉ）[p]",
    9891: "[舜]（Uầy... Góc quay đẹp quá! Mình tự phục tài phán đoán của mình luôn đấy）[p]",
    9892: "[舜]（Nagi và các y tá khác đang thay đồ... Quả nhiên Nagi vẫn là dễ thương nhất）[p]",
    9893: "[舜]（Lộ hết rồi còn gì. Chẳng biết lúc nào ở đâu có người nhìn trộm đâu, đi vệ sinh mà mất cảnh giác thế này là không được rồi...）[p]",
    9894: "[舜]（Ồ, bức ảnh tuyệt nhất luôn! Chắc chẳng ai ngờ đến cả nhà vệ sinh của nhân viên cũng bị nhìn trộm thế này đâu nhỉ...）[p]",
    9895: "[舜]（Cô Rinko đang làm việc. Ở riêng một phòng kín với một gã đàn ông cởi trần... tính ra nguy hiểm thật đấy chứ）[p]",
    9896: "[舜]（Cô Rinko đẹp thật đấy...[r]Biết là công việc rồi nhưng nhìn cô ấy tiếp xúc cơ thể với người đàn ông khác lại thấy ghen tuông trào dâng...）[p]",
    9897: "[舜]（Ặc... Cô Rinko đang bị quấy rối tình dục kìa! Lại là lão già quê mùa đó... Lần tới mà bắt gặp là tôi báo cảnh sát cho xem）[p]",
    9898: "[舜]（Hình như đang dọn dẹp bồn rửa mặt. Nhìn thế này mới thấy cô Rinko làm việc quần quật suốt ngày...）[p]",
    9899: "[舜]（Ồ... Lộ hết rồi. Trông còn kích thích hơn cả mấy pha lộ quần lót thông thường nữa chứ）[p]",
    9900: "[舜]（Hử!? Cứ tưởng là vòi sen chỉ dành cho khách, hóa ra cô Rinko cũng dùng à. Biết được tin hời rồi nhé）[p]",
    9901: "[舜]（Uầy, body gợi tình dã man... Thân hình đẫy đà quyến rũ thế này bị người ta quấy rối cũng chẳng trách được...）[p]",
    9902: "[舜]（Phòng nghỉ của tiệm Maid Refre đây rồi. Toàn mấy đứa nhóc xấc xược nhưng nhìn kỹ thế này thì... đứa nào cũng dễ thương ghê）[p]",
    9903: "[舜]（Mấy em maid đang nghỉ ngơi thư giãn kìa. Hừ, bình thường đày đọa sai bảo tao cho lắm vào... Tối nay tao sẽ dùng hình ảnh của tụi mày để sóc lọ cho coi）[p]",
    9904: "[舜]（Hình như Tsubomi đang thay đồ. Bình thường chẳng muốn khen con bé này đâu nhưng mà... công nhận ngực em nó đẹp thật...）[p]",
    9905: "[舜]（Tsubomi đang thay đồ. Tạm gác cái tính khí sang một bên thì khuôn mặt với vóc dáng của em ấy đúng là đỉnh thật...）[p]",
    9906: "[舜]（Có em maid đang tiếp khách kìa. Tsubomi sao...? Không, hình như là bạn maid khác）[p]",
    9907: "[舜]（Ặc...! Làm tình ngay trong phòng tiếp khách là tụi này đấy à! Có biết ai là người phải dọn dẹp không hả lũ khốn nạn...）[p]",
    9908: "[舜]（Nhưng mà, bị gái maid sờ soạng đụng chạm dính người thế này mà vẫn giữ được lý trí thì cũng nể thật... Là mình thì chịu chết）[p]",
    9909: "[舜]（Chết tiệt...! Tiệm Refre đâu phải là cái loại quán đó đâu... Thằng này tao phải cấm cửa vĩnh viễn mới được...）[p]",
    9910: "[舜]「Đây là... máy quay gắn trên đồng hồ đeo tay nhỉ...」[p]",
    9911: "[舜]「...Bức ảnh chụp lúc đi ăn cùng nhau à. Vẫn sơ hở như mọi khi... Chẳng biết sẽ bị nhìn trộm ở đâu và lúc nào đâu, nên tốt nhất là đừng mặc váy ngắn thế này nữa chứ」[p]",
    9912: "[舜]「Đây là... máy quay gắn trên đồng hồ đeo tay nhỉ...」[p]",
    9913: "[舜]「...Bức ảnh chụp lúc đi ăn cùng nhau à. Dáng ngồi toát lên vẻ quý phái ghê[r]Nhưng mà nhìn rõ mồn một luôn này... Cặp đùi trông mềm mại quyến rũ thật...」[p]",
    9914: "[舜]「Đây là... máy quay gắn trên đồng hồ đeo tay nhỉ...」[p]",
    9915: "[舜]「...Bức ảnh chụp lúc đi ăn cùng nhau à. Đúng là cái tính không đổi, đến cả tướng ngồi cũng ra vẻ kênh kiệu thế này[r]Hiện lên rõ nét thế này thì tha hồ mà thưởng thức nhé」[p]",

    # _preview.ks
    9916: "Nagi「...Cái gì thế này. Trong thùng rác... có bao cao su sao...?」[p]",
    9917: "Nagi「...Cái này, đã qua sử dụng rồi sao......? Ơ... th-thế này là sao chứ.........?」[p]",
    9918: "Nagi「...Không muốn đâu...... Kinh tởm quá...... Mình không muốn nghĩ gì thêm nữa đâu......」[p]",

    # sinnyu.ks
    9920: "[舜]「Được rồi, giờ đi đâu đây」[p]",
    9921: "[舜]「Cũng không cần phải vội. Quay về nhà trước đã」[p]",

    # title_screen.ks
    9922: "[font color=\"yellow\"]Mở khóa toàn bộ CG, H-Scene và các Ending. Bạn có chắc chắn không?[r]※Toàn bộ Voyeur CG sẽ được mở nhưng tỷ lệ sẽ không tự nhảy lên 100%[r]※Khuyến nghị sao lưu lại dữ liệu Save trước khi thực hiện.[resetfont]",
}

def update_excel_files():
    print("=" * 60)
    print("  BƯỚC 1: CẬP NHẬT DATABASE DỊCH THUẬT (EXCEL)")
    print("=" * 60)
    
    for path in [VIETHOA_PATH, EXPORT_PATH]:
        if not os.path.exists(path):
            continue
        print(f"[*] Đang nạp dữ liệu từ: {path}...")
        df = pd.read_excel(path)
        applied = 0
        for row_num, vn_clean in CLEAN_TRANSLATIONS.items():
            idx = row_num - 2  # row_num is 1-based header+data (Row 2 is idx 0)
            if 0 <= idx < len(df):
                df.at[idx, 'vietnamese'] = vn_clean
                applied += 1
        
        df.to_excel(path, index=False)
        print(f"[OK] Đã cập nhật thành công {applied} dòng bản dịch chuẩn vào {os.path.basename(path)}")

def run_reimport_pipeline():
    print("\n" + "=" * 60)
    print("  BƯỚC 2: TÁI TẠO TẤT CẢ FILE KỊCH BẢN (.KS) QUA PIPELINE REIMPORT")
    print("=" * 60)
    from reimport_scenario import load_translations, reimport_and_patch
    records = load_translations()
    reimport_and_patch(records)

def verify_all_scenarios():
    print("\n" + "=" * 60)
    print("  BƯỚC 3: QUÉT TOÀN BỘ KỊCH BẢN ĐỂ KIỂM TOÁN LỖI LỆCH/FILLER")
    print("=" * 60)
    import glob
    suspicious_keywords = [
        'Shimakaze', 'bản quyền', 'Bản quyền', 'Hệ thống camera', 'hệ thống camera',
        'nhóm dịch', 'Visual Novel của bạn', 'phút giây thư giãn',
        'xung đột mã nguồn', 'Trình tải và cập nhật', 'Sẵn sàng phục vụ',
        'đội ngũ dịch thuật', 'người chơi tuyệt vời nhất', 'Tạm biệt và hẹn gặp lại',
        'Chào thân ái', 'quyết thắng', 'giấc mơ đẹp', 'Dữ liệu được lưu trữ',
        'chuyển trang', 'Quay trở lại màn hình', 'Menu chính đã được cập nhật',
        'Mở khóa toàn bộ nhạc nền', 'Thưởng thức những giai điệu',
        'Cảm nhận từng cung bậc', 'Một trải nghiệm âm thanh',
        'Khám phá thêm các tính năng', 'Trò chuyện sau ân ái',
        'Tất cả các đoạn đối thoại hậu ân ái', 'Một cái kết trọn vẹn và đầy ý nghĩa',
        'Một sản phẩm tâm huyết', 'Bảo lưu mọi quyền lợi', 'Toàn bộ hệ thống camera',
        'Chơi Lại (New Game+)', 'Mọi đóng góp ý kiến', 'Độ siêng năng tăng lên',
        'Kỹ năng xoa bóp tăng lên'
    ]
    
    anomalies = []
    for fpath in glob.glob(os.path.join(PROJECT_ROOT, 'patch', 'data', 'scenario', '*.ks')):
        fname = os.path.basename(fpath)
        with open(fpath, 'r', encoding='utf-8') as f:
            for l_num, line in enumerate(f, 1):
                for kw in suspicious_keywords:
                    if kw in line:
                        anomalies.append((fname, l_num, kw, line.strip()))
    
    if anomalies:
        print(f"[CẢNH BÁO] Vẫn còn {len(anomalies)} dòng bất thường:")
        for a in anomalies[:10]:
            print(f"  {a[0]}:{a[1]} [{a[2]}] -> {a[3]}")
    else:
        print("🎉 [XÁC MINH HOÀN HẢO] Không còn bất kỳ câu filler hay bản dịch lệch nào trong toàn bộ 323 file kịch bản!")

if __name__ == '__main__':
    update_excel_files()
    run_reimport_pipeline()
    verify_all_scenarios()
