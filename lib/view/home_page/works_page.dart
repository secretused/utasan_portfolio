import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'appbar.dart';
import '../../utils/project_widget/works_widget.dart';

final controller = SwiperController();

class WorksPage extends ConsumerWidget {
  WorksPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // isuue Appbarを色が変えれるか
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
          backgroundColor: Color.fromRGBO(3, 144, 126, 1),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.03),
            child: Swiper(
              pagination: SwiperPagination(
                margin: EdgeInsets.only(bottom: deviceHeight * 0.05),
                builder: const DotSwiperPaginationBuilder(
                  color: Colors.grey,
                  activeColor: Colors.black,
                  size: 13,
                  activeSize: 13,
                  space: 5,
                ),
              ),
              duration: 500,
              itemCount: worksItems.length,
              itemBuilder: (context, index) {
                return worksItems[index];
              },
              controller: controller,
              autoplayDelay: 2500,
            ),
          ),
        ),
      ),
    );
  }

  // Works List
  final List<Widget> worksItems = <Widget>[
    const WorksTopic(
      indexNumber: '01',
      topicColor: Color(0xFF87C495),
      imagePath: 'https://i.imgur.com/R58XrDL.png',
      catchPhrase: '生理中のパートナーのお悩み質問',
      title: 'TOMONY',
      fontName: "Arial Black",
      paddingLeft: 0.33,
      imagePadding: 0.1,
      navigationPath: '/tomony',
    ),
    const WorksTopic(
      indexNumber: '02',
      topicColor: Color(0xFF379BA5),
      imagePath: 'https://i.imgur.com/2Mn21yC.png',
      catchPhrase: 'QRコードで簡単入館',
      title: 'シュッ席',
      fontName: "源ノ角ゴシック VF",
      paddingLeft: 0.35,
      imagePadding: 0.1,
      navigationPath: '/shusseki',
    ),
    const WorksTopic(
      indexNumber: '03',
      topicColor: Color(0xFFEBAA14),
      imagePath: 'https://i.imgur.com/jNFOx30.png',
      catchPhrase: '長く使える幼児向け音声再生アプリ',
      title: 'ぽちぽち',
      fontName: "しあさって",
      paddingLeft: 0.35,
      imagePadding: 0.1,
      navigationPath: '/pochipochi',
    ),
    const WorksTopic(
      indexNumber: '04',
      topicColor: Color(0xFFCBCBCB),
      imagePath: 'https://i.imgur.com/g0RSo7d.png',
      catchPhrase: '学校でのその他の活動',
      title: 'OtherWorks',
      fontName: "源ノ角ゴシック VF",
      paddingLeft: 0.28,
      imagePadding: 0.01,
      navigationPath: '/otherWorks',
    ),
  ];
}
