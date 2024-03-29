import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';

// UI
class ShussekiFour extends StatelessWidget {
  const ShussekiFour({
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
                text: "リリース",
                color: const Color(0xFF379BA5),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        BodyText(
                          text: "モックアップ",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.035,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.05),
                        Stack(
                          alignment: Alignment.center,
                          children: const [
                            ImageWidget(
                              heightValue: 0.55,
                              imagePath: "assets/shusseki/shusseki_mockup.gif",
                            ),
                            ImageWidget(
                              heightValue: 0.59,
                              imagePath: "assets/shusseki/mockup_frame.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                    Column(
                      children: [
                        BodyText(
                          text: "一部の機能",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.035,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Snas JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        Row(
                          children: [
                            Column(
                              children: [
                                BodyText(
                                  text: "ユーザー一覧表示",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath:
                                      "assets/shusseki/shusseki_app_user.png",
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                BodyText(
                                  text: "日時選択",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath:
                                      "assets/shusseki/shusseki_app_calender.png",
                                  // "https:com/f7ZcK2d.png",
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                BodyText(
                                  text: "QRコード表示・共有",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Snas JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                const ImageWidget(
                                  heightValue: 0.6,
                                  imagePath:
                                      "assets/shusseki/shusseki_app_qr.png",
                                ),
                              ],
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
