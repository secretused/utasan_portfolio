import 'package:flutter/material.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

// ペルソナ・課題発見後の仮説
class TomonySix extends StatelessWidget {
  const TomonySix({
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
          // ペルソナ
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "ペルソナ",
                color: const Color(0xFF87C495),
                fontSize: deviceHeight * 0.028,
                fontWeight: FontWeight.bold,
                fontFamily: "Noto Sans JP",
              ),
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.03),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(180),
                              child: const ImageWidget(
                                heightValue: 0.2,
                                imagePath: "assets/tomony/tomony_persona.png",
                              ),
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                BodyText(
                                  text: "佐々木 隼人",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.015),
                                SpaceText(
                                  firstText: "年齢",
                                  firstFontSize: deviceHeight * 0.02,
                                  secondText: "20歳",
                                  secondFontSize: deviceHeight * 0.02,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.005),
                                SpaceText(
                                  firstText: "性別",
                                  firstFontSize: deviceHeight * 0.02,
                                  secondText: "男",
                                  secondFontSize: deviceHeight * 0.02,
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.005),
                                SpaceText(
                                  firstText: '職業',
                                  firstFontSize: deviceHeight * 0.02,
                                  secondText: "大学生",
                                  secondFontSize: deviceHeight * 0.02,
                                ),
                              ],
                            ),
                          ],
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(135, 196, 149, 0.6),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(deviceHeight * 0.01),
                                child: BodyText(
                                  text: "プロフィール",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.018,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            SizedBox(
                              height: deviceHeight * 0.15,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: deviceWidth * 0.01),
                                child: HighPaddingText(
                                  text:
                                      "地方私立大学2年。趣味はフットサルとドライブ\n少しだらしない。緊張しやすい。怒れない性格\n大学の友達と遊びに出かけたり、飲み会によく行く\n大学1年の頃から付き合っている一個上の彼女がいる",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(135, 196, 149, 0.6),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(deviceHeight * 0.01),
                                child: BodyText(
                                  text: "最近の悩み",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.018,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            SizedBox(
                              width: deviceWidth * 0.3,
                              height: deviceHeight * 0.15,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: deviceWidth * 0.01),
                                child: HighPaddingText(
                                  text:
                                      "友達との予定や学校の課題も増えてきて、彼女との時間を少しおろそかにしてしまい、彼女が生理の時に喧嘩することが増えてきた。\nまだ彼女の分からないことも多く、彼女が求めている行動ができず、どうすれば良い関係を築けるのか悩んでいる。",
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Noto Sans JP",
                                  textAlign: TextAlign.start,
                                  paddingValue: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          WidthSizedBox(targetSize: deviceWidth, value: 0.03),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceWidth * 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(151, 151, 151, 0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "課題発見後の仮説",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.025,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.025),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "自分の気持ちを書き出したり、誰かにわかるように言語化できていないのでは？",
                              color: const Color.fromRGBO(1, 1, 1, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            BodyText(
                              text: "一度気持ちを整理する前に我慢したり、気持ちをうやむやにしているのでは？",
                              color: const Color.fromRGBO(1, 1, 1, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            HighPaddingText(
                              text:
                                  "相手を尊重したいため、愚痴や不満は言わないが、自分の気持ちは\nモヤモヤしたままなのでは？",
                              color: const Color.fromRGBO(1, 1, 1, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.start,
                              paddingValue: 1.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.05),
              SizedBox(
                width: deviceWidth * 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(151, 151, 151, 0.3), //色
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "質問項目はどうするべきか？",
                          color: Colors.black,
                          fontSize: deviceHeight * 0.028,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        BodyText(
                          text: "客観的に自分の気持ちを考えることができ、相手に伝わりやすい文章",
                          color: const Color(0xFF87C495),
                          fontSize: deviceHeight * 0.023,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans JP",
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "前提",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "経緯",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "感想",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "質問",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "結論",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ],
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            BodyText(
                              text: "=",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "基本プロフィール",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "その時の状況・何をしたのか",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "何を思っているか、その時どう思ったか",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "聞きたいこと",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                HeightSizedBox(
                                    targetSize: deviceHeight, value: 0.01),
                                BodyText(
                                  text: "自分なりの解決策・考え",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.02,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
