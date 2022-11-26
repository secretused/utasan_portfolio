import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:html' as html;

import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

const String _figmaMockUpUrl =
    "https://www.figma.com/proto/quOVJmX7jA06wJlYYsPjby/%E3%82%B7%E3%83%A5%E3%83%83%E5%B8%AD-%E3%82%B9%E3%83%9E%E3%83%9BMockUp?page-id=0%3A1&node-id=1%3A537&viewport=569%2C398%2C0.3&scaling=scale-down&starting-point-node-id=1%3A537";
const String _appStoreUrl =
    "https://apps.apple.com/jp/app/id1620188388?platform=iphone";
const String _figmaWorkUrl =
    "https://www.figma.com/file/3EdXPhb5bXm7LqARMLATAR/%E3%82%B7%E3%83%A5%E3%83%83%E5%B8%AD-%E6%94%B9%E4%BF%AE-%E3%83%AF%E3%83%BC%E3%82%AF?node-id=0%3A1&t=hqUijzgTSL8DrAks-1";
const String _figmaUIUrl =
    "https://www.figma.com/file/NfrvRQpW84pxMibw2BJwpR/%E3%82%B7%E3%83%A5%E3%83%83%E5%B8%AD-%E6%94%B9%E4%BF%AEUI?node-id=0%3A1&t=CU8RbQkkPMLy4AD6-1";

// 感想・改善点
class ShussekiNine extends ConsumerWidget {
  const ShussekiNine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "終わりに",
                color: const Color(0xFF379BA5),
                fontSize: deviceHeight * 0.035,
                fontWeight: FontWeight.bold,
                fontFamily: "源ノ角ゴシック VF",
              ),
              Padding(
                padding: EdgeInsets.all(
                  deviceHeight * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "感想",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "サービスはただ作るだけではない",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            HighPaddingText(
                              text:
                                  "見た目だけだと思っていたデザインは\n自分が今まで1番重要視していた「機能」と密接に関わり合っていて\nただ作るのではなく戦略から表層までを一貫して行うことが\n良いサービスに近づくと気づくことが出来ました。",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.center,
                              paddingValue: 1.3,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "作ったものを壊す大切さ",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            HighPaddingText(
                              text:
                                  "リリース後でも、よりユーザーが使いやすいデザインや\nサービス要件があるのではないか？と常に考え続け\n柔軟にアップデートし続ける姿勢の重要さを実感しました。",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.center,
                              paddingValue: 1.3,
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BodyText(
                              text: "改善点",
                              color: Colors.black,
                              fontSize: deviceHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              fontFamily: "源ノ角ゴシック VF",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.03),
                            BodyText(
                              text: "開発を考えたデザイン",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.015),
                            HighPaddingText(
                              text:
                                  "デザインを見ていると、エンジニアが実装可能なのか？と\n思う時がよくあります。自分のコミュニティが実現できる\n度合いを十分に理解して、よりディレクションを意識した\n実践的なプロジェクトを磨きたいと思います。",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Noto Sans JP",
                              textAlign: TextAlign.center,
                              paddingValue: 1.3,
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.04),
                            Row(
                              children: [
                                BodyText(
                                  text: "UI改修後モックアップ",
                                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                                  fontSize: deviceHeight * 0.025,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans JP",
                                ),
                                WidthSizedBox(
                                    targetSize: deviceWidth, value: 0.01),
                                const IconButtonWidget(
                                  heightValue: 0.05,
                                  link: _figmaMockUpUrl,
                                  path: 'https://i.imgur.com/pQ88SXh.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceHeight, value: 0.1),
                    Row(
                      children: [
                        Column(
                          children: [
                            const IconButtonWidget(
                              heightValue: 0.05,
                              link: _appStoreUrl,
                              path: 'https://i.imgur.com/5jaDwbV.png',
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "App Store",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        Column(
                          children: [
                            const IconButtonWidget(
                              heightValue: 0.05,
                              link: _figmaWorkUrl,
                              path: 'https://i.imgur.com/uZTvT8k.png',
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "ワーク",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                          ],
                        ),
                        WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                        Column(
                          children: [
                            const IconButtonWidget(
                              heightValue: 0.05,
                              link: _figmaUIUrl,
                              path: 'https://i.imgur.com/1pkEq73.png',
                            ),
                            HeightSizedBox(
                                targetSize: deviceHeight, value: 0.01),
                            BodyText(
                              text: "UI",
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              fontSize: deviceHeight * 0.02,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans JP",
                            ),
                          ],
                        ),
                      ],
                    ),
                    HeightSizedBox(targetSize: deviceWidth, value: 0.03),
                    const WorksNavigationButton(
                      buttonText: 'View More',
                      sizeValue: 0.02,
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