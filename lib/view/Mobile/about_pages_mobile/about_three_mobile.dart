import 'package:flutter/material.dart';

import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutThreeMobile extends StatelessWidget {
  const AboutThreeMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: deviceHeight - 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // 左サイド
          SizedBox(
            width: deviceWidth * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(180),
                      child: const ImageWidget(
                        heightValue: 0.2,
                        imagePath: "https://i.imgur.com/p3o4bTd.jpg",
                      ),
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "Yuta Toba",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontFamily: '源ノ角ゴシック VF',
                          fontSize: deviceWidth * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.005),
                        BodyText(
                          text: "鳥羽悠太",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontFamily: '源ノ角ゴシック VF',
                          fontSize: deviceWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        HighPaddingText(
                          text: "Vantanテックフォードアカデミー\n専門学部 IT総合学科 UIUXクラス",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceWidth * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "源ノ角ゴシック VF",
                          textAlign: TextAlign.start,
                          paddingValue: 1.3,
                        ),
                      ],
                    ),
                  ],
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                // 強み
                SmallTitleUnderline(
                  smallTitle: '強み',
                  sizeValue: 0.035,
                  lineLength: deviceWidth * 0.6,
                  alignment: CrossAxisAlignment.center,
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // 戦略
                    Column(
                      children: const [
                        StrengthTopic(
                          topicTitle: '戦略',
                          icon: Icons.search,
                        ),
                        FiveLevelEvaluation(
                          one: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          two: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          three: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          four: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          five: FalseCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                        )
                      ],
                    ),
                    // 表層
                    Column(
                      children: const [
                        StrengthTopic(
                          topicTitle: '表層',
                          icon: Icons.brush,
                        ),
                        FiveLevelEvaluation(
                          one: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          two: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          three: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          four: FalseCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          five: FalseCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                        )
                      ],
                    ),
                    // 技術
                    Column(
                      children: const [
                        StrengthTopic(
                          topicTitle: '技術',
                          icon: Icons.computer,
                        ),
                        FiveLevelEvaluation(
                          one: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          two: TrueCircle(
                              sizeValue: 0.02, color: Color(0xFF919191)),
                          three: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          four: TrueCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                          five: FalseCircle(
                            sizeValue: 0.02,
                            color: Color(0xFF919191),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.04),
                // スキル
                SmallTitleUnderline(
                  smallTitle: 'スキル',
                  sizeValue: 0.035,
                  lineLength: deviceWidth * 0.75,
                  alignment: CrossAxisAlignment.center,
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SkillText(text: 'Ai', fontValue: 0.07),
                    SkillText(text: 'Ps', fontValue: 0.07),
                    SkillText(text: 'Xd', fontValue: 0.07),
                    SkilIcon(imagePath: 'assets/figma.svg'),
                    SkilIcon(imagePath: 'assets/flutter.svg'),
                    SkilIcon(imagePath: 'assets/python.svg'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
