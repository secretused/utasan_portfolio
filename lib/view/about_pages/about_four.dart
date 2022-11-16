import 'package:flutter/material.dart';

import '../../utils/extract_widget.dart';

class AboutFour extends StatelessWidget {
  const AboutFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BodyText(
                    text: "Strength",
                    color: const Color.fromRGBO(3, 144, 126, 1),
                    fontSize: deviceHeight * 0.1,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bebas Neue",
                  ),
                  BodyText(
                    text: "私が価値創出できる3つの強み",
                    color: Colors.black,
                    fontSize: deviceHeight * 0.03,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Nasu",
                  ),
                ],
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BodyText(
                    text: "Business",
                    color: const Color.fromRGBO(151, 151, 151, 1),
                    fontSize: deviceHeight * 0.06,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MS ゴシック",
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  BodyText(
                    text:
                        "専門学校の授業のひとつ、アートシンキングで物事への価値創出を考えることを始めとし、\nビジネスコンテストに参加し、チームマネジメントの大切さを学びました。\nマネジメントでは、アルバイト先でディレクターアシスタントとして、\n会社の価値を常に忘れず、日々業務をおこなっています。",
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                    fontSize: deviceHeight * 0.023,
                    fontWeight: FontWeight.normal,
                    fontFamily: "源ノ角ゴシック",
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                  BodyText(
                    text: "Design",
                    color: const Color.fromRGBO(151, 151, 151, 1),
                    fontSize: deviceHeight * 0.06,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MS ゴシック",
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  BodyText(
                    text:
                        "現役のデザイナーの方々からの講義で考え方をインプットし、\n戦略から表層まで、HCDの観点で常にユーザーを思い続けることを意識しております。\n直接リサーチを行い、本質的な価値を見定める事を日々心がけ、\nOOUIをベースにUI設計までを行えるのが強みです。",
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                    fontSize: deviceHeight * 0.023,
                    fontWeight: FontWeight.normal,
                    fontFamily: "源ノ角ゴシック",
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                  BodyText(
                    text: "Programming",
                    color: const Color.fromRGBO(151, 151, 151, 1),
                    fontSize: deviceHeight * 0.06,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MS ゴシック",
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  BodyText(
                    text:
                        "個人的にアプリケーション開発を学び、構想だけで終わらないプロジェクトを実装しております。\nDartのフレームワークである、Flutterを用いた、アプリ開発・リリース経験があります。",
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                    fontSize: deviceHeight * 0.023,
                    fontWeight: FontWeight.normal,
                    fontFamily: "源ノ角ゴシック",
                  ),
                  HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}