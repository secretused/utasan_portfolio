import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/ipad_widget/about_widget_ipad.dart';

import '../../../utils/extract_widget.dart';

class AboutSixIPad extends ConsumerWidget {
  const AboutSixIPad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "Works",
                color: const Color.fromRGBO(3, 144, 126, 1),
                fontSize: deviceWidth * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: "Bebas Neue",
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const WorksTopicLeftMobile(
                    index: '01',
                    topicColor: Color(0xFF87C495),
                    imagePath: 'assets/about/tomony_display.png',
                    appName: 'Tomony',
                    fontName: "Arial Black",
                    appDisc: '男性向けの生理のお悩み質問相談',
                    path: '/tomony',
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  const WorksTopicRightMobile(
                    index: '02',
                    topicColor: Color(0xFF379BA5),
                    imagePath: 'assets/about/shusseki_display.png',
                    appName: 'シュッ席',
                    fontName: "Noto Sans JP",
                    appDisc: 'QRコードで簡単入館',
                    path: '/shusseki',
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  const WorksTopicLeftMobile(
                    index: '03',
                    topicColor: Color(0xFFEBAA14),
                    imagePath: 'assets/about/pochipochi_display.png',
                    appName: 'ぽちぽち',
                    fontName: "しあさって",
                    appDisc: '長く使える幼児向け音声再生アプリ',
                    path: '/pochipochi',
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  const WorksTopicRightMobile(
                    index: '04',
                    topicColor: Color(0xFFCBCBCB),
                    imagePath: 'assets/about/otherworks_display.png',
                    appName: 'OtherWorks',
                    fontName: "Noto Sans JP",
                    appDisc: '学校でのその他の活動',
                    path: '/otherWorks',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
