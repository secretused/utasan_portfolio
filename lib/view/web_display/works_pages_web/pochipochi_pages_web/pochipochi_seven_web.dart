import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// UI
class PochipochiSeven extends StatelessWidget {
  const PochipochiSeven({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "UI",
                color: const Color(0xFFEBAA14),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  children: [
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "assets/pochipochi/pochipochi_stage1.png",
                    ),
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "assets/pochipochi/pochipochi_stage2.png",
                    ),
                    const ImageWidget(
                      heightValue: 0.7,
                      imagePath: "assets/pochipochi/pochipochi_stage3.png",
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText(
                          text: "ホーム画面",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text: "・誤操作や興味の分散を防ぐため\n　要素は少なめでシンプルなものを",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            HighPaddingText(
                              text: "・お子さんの好きな画像を設定し\n　押したいと思えるボタンを自作",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            HighPaddingText(
                              text: "・複数のステージが用意してあり\n　再生以外の楽しさも感じてもらう",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Snas JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
