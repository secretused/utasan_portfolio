import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utils/extract_widget.dart';
import '../../../../utils/project_widget/works_widget.dart';

class OtherWorksThree extends ConsumerWidget {
  const OtherWorksThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    const String _pdfUrl =
        "https://drive.google.com/file/d/1rE6F-A_PMxMnSLlz-7C5BQYinOPWc4ma/view";

    return Container(
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSizedBox(targetSize: deviceHeight, value: 0.01),
                  BodyText(
                    text: "テーマ",
                    color: const Color(0xFF726353),
                    fontSize: deviceHeight * 0.035,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans JP",
                  ),
                  Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.03),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyText(
                              text: "Metro Ad Creative Award",
                              color: Colors.black,
                              fontFamily: 'Noto Sans JP',
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "東京メトロ主催",
                              color: Colors.black,
                              fontFamily: 'Noto Sans JP',
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            const ImageWidget(
                              heightValue: 0.25,
                              imagePath:
                                  "assets/otherworks/otherworks_contest2.jpeg",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            TitleAndTextWidget(
                              title: "制作対象",
                              widget: BodyText(
                                text: "銀座駅 銀座ツインウォール 構内広告デザイン",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              textColor: const Color(0xFF726353),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            TitleAndTextWidget(
                              title: "課題企業",
                              widget: BodyText(
                                text: "ヤマハ株式会社",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                              ),
                              textColor: const Color(0xFF726353),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            TitleAndTextWidget(
                              title: "募集課題",
                              widget: HighPaddingText(
                                text: "楽器未経験者でもヤマハ銀座店に\n行ってみたくなるような広告",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                                textAlign: TextAlign.start,
                                paddingValue: 1.5,
                              ),
                              textColor: const Color(0xFF726353),
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.02),
                            TitleAndTextWidget(
                              title: "応募作品に期待すること",
                              widget: HighPaddingText(
                                text:
                                    "多くの方にヤマハ銀座店に足を運んでいただき\n音楽や楽器の楽しさに触れていただける\nきっかけになる事を期待しております。",
                                color: const Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: deviceHeight * 0.02,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Noto Sans JP",
                                textAlign: TextAlign.start,
                                paddingValue: 1.5,
                              ),
                              textColor: const Color(0xFF726353),
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "課題",
                                  color: const Color(0xFF726353),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.015),
                                  child: HighPaddingText(
                                    text:
                                        "楽器だけのお堅い店舗ではなく\n若者や家族連れも時間を気にせず気軽に立ち寄れる\n身近な店舗だというイメージを与えることが必要。",
                                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                                    fontSize: deviceHeight * 0.023,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Noto Sans JP",
                                    textAlign: TextAlign.start,
                                    paddingValue: 1.5,
                                  ),
                                ),
                              ],
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.025),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "提出作品(PDFで提出)",
                                  color: const Color(0xFF726353),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.015),
                                  child: const PdfLinkWidget(
                                    _pdfUrl,
                                    0.3,
                                    "assets/otherworks/otherworks_contest1.png",
                                  ),
                                ),
                              ],
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.025),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyText(
                                  text: "プロジェクトの感想",
                                  color: const Color(0xFF726353),
                                  fontSize: deviceHeight * 0.028,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                Padding(
                                  padding: EdgeInsets.all(deviceHeight * 0.015),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      HighPaddingText(
                                        text:
                                            "・リーダーを務める上で、自分に足りていない要素を知り\n　チームマネジメントに興味を持つきっかけとなりました。",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                      HeightSizedBox(
                                          targetSize: deviceHeight,
                                          value: 0.015),
                                      HighPaddingText(
                                        text:
                                            "・チームの一人一人を見渡して、意見の取捨選択を行ったり\n　メンバーを信じ、サポートし続ける大切さを実感しました。",
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.8),
                                        fontSize: deviceHeight * 0.02,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Noto Sans JP",
                                        textAlign: TextAlign.start,
                                        paddingValue: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
