import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:go_router/go_router.dart';

import '../../provider/provider.dart';
import '../extract_widget.dart';

// 小タイトル
class SmallTitleUnderline extends StatelessWidget {
  const SmallTitleUnderline({
    Key? key,
    required this.smallTitle,
    required this.sizeValue,
    required this.lineLength,
    required this.paddingValue,
    required this.alignment,
  }) : super(key: key);

  final String smallTitle;
  final double sizeValue;
  final double lineLength;
  final double paddingValue;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: alignment,
      children: [
        BodyText(
          text: smallTitle,
          color: const Color.fromRGBO(3, 144, 126, 1),
          fontFamily: 'Noto Sans JP',
          fontSize: deviceHeight * sizeValue,
          fontWeight: FontWeight.bold,
        ),
        HeightSizedBox(targetSize: deviceHeight, value: paddingValue),
        DotLine(
          axis: Axis.horizontal,
          lineLength: lineLength,
          lineThickness: 1,
          dashLength: 5.0,
          dashColor: const Color.fromRGBO(3, 144, 126, 1),
        ),
      ],
    );
  }
}

// 破線
class DotLine extends StatelessWidget {
  const DotLine({
    Key? key,
    required this.axis,
    required this.lineLength,
    required this.lineThickness,
    required this.dashLength,
    required this.dashColor,
  }) : super(key: key);

  final Axis axis;
  final double lineLength;
  final double lineThickness;
  final double dashLength;
  final Color dashColor;

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: axis,
      lineLength: lineLength,
      lineThickness: lineThickness,
      dashLength: dashLength,
      dashColor: dashColor,
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }
}

// 強みのアイコン
class StrengthTopic extends ConsumerWidget {
  const StrengthTopic({
    Key? key,
    required this.topicTitle,
    required this.icon,
  }) : super(key: key);

  final String topicTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    final bool _mobileDirectionProviderStatus =
        ref.watch(mobileDirectionProvider);

    return Center(
      child: Container(
        width: _mobileDirectionProviderStatus
            ? deviceHeight * 0.15
            : deviceHeight * 0.075,
        height: _mobileDirectionProviderStatus
            ? deviceHeight * 0.15
            : deviceHeight * 0.075,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(151, 151, 151, 0.5),
          borderRadius: BorderRadius.circular(180),
        ),
        child: Padding(
          padding: EdgeInsets.all(deviceHeight * 0.005),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: _mobileDirectionProviderStatus
                    ? deviceHeight * 0.06
                    : deviceHeight * 0.03,
              ),
              BodyText(
                text: topicTitle,
                color: Colors.white,
                fontFamily: 'Noto Sans JP',
                fontSize: _mobileDirectionProviderStatus
                    ? deviceHeight * 0.04
                    : deviceHeight * 0.02,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 5段階評価
class FiveLevelEvaluation extends StatelessWidget {
  const FiveLevelEvaluation({
    Key? key,
    required this.one,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
  }) : super(key: key);

  final Widget one;
  final Widget two;
  final Widget three;
  final Widget four;
  final Widget five;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(top: deviceHeight * 0.01),
      child: Row(
        children: [
          one,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          two,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          three,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          four,
          WidthSizedBox(targetSize: deviceWidth, value: 0.003),
          five,
        ],
      ),
    );
  }
}

// 5段階評価 白丸
class FalseCircle extends StatelessWidget {
  const FalseCircle({
    Key? key,
    required this.sizeValue,
    required this.color,
  }) : super(key: key);

  final double sizeValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight * sizeValue,
      width: deviceHeight * sizeValue,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 1,
          color: color,
        ),
        borderRadius: BorderRadius.circular(180),
      ),
    );
  }
}

// 5段階評価 黒丸
class TrueCircle extends StatelessWidget {
  const TrueCircle({
    Key? key,
    required this.sizeValue,
    required this.color,
  }) : super(key: key);

  final double sizeValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight * sizeValue,
      width: deviceHeight * sizeValue,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(180),
      ),
    );
  }
}

// スキル テキストアイコン
class SkillText extends StatelessWidget {
  const SkillText({
    Key? key,
    required this.text,
    required this.fontValue,
    required this.sizeValue,
    required this.skillName,
    required this.skillDiscriptions,
  }) : super(key: key);

  final double sizeValue;
  final double fontValue;
  final String text;
  final String skillName;
  final String skillDiscriptions;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: deviceHeight * sizeValue,
          height: deviceHeight * sizeValue,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(151, 151, 151, 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: deviceHeight * 0.005,
                  bottom: deviceHeight * 0.005,
                  right: deviceHeight * 0.005,
                  left: deviceHeight * 0.008),
              child: BodyText(
                text: text,
                color: Colors.white,
                fontFamily: 'Noto Sans JP',
                fontSize: deviceHeight * fontValue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.005),
        BodyText(
          text: skillName,
          color: const Color.fromRGBO(0, 0, 0, 0.7),
          fontFamily: 'Noto Sans JP',
          fontSize: deviceWidth * 0.009,
          fontWeight: FontWeight.bold,
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
        BodyText(
          text: skillDiscriptions,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontFamily: 'Noto Sans JP',
          fontSize: deviceWidth * 0.009,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

// スキル イメージアイコン
class SkillIcon extends StatelessWidget {
  const SkillIcon({
    Key? key,
    required this.imagePath,
    required this.sizeValue,
    required this.imageValue,
    required this.skillName,
    required this.skillDiscriptions,
  }) : super(key: key);

  final double sizeValue;
  final String imagePath;
  final double imageValue;
  final String skillName;
  final String skillDiscriptions;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: deviceHeight * sizeValue,
          height: deviceHeight * sizeValue,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(151, 151, 151, 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(deviceHeight * 0.005),
              child: SvgPicture.asset(
                imagePath,
                width: deviceHeight * imageValue,
                height: deviceHeight * imageValue,
              ),
            ),
          ),
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.005),
        BodyText(
          text: skillName,
          color: const Color.fromRGBO(0, 0, 0, 0.7),
          fontFamily: 'Noto Sans JP',
          fontSize: deviceWidth * 0.009,
          fontWeight: FontWeight.bold,
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.01),
        BodyText(
          text: skillDiscriptions,
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          fontFamily: 'Noto Sans JP',
          fontSize: deviceWidth * 0.009,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

// 年表縦ライン
class VerticalBorderLine extends StatelessWidget {
  const VerticalBorderLine({
    Key? key,
    required this.heightPadding,
    required this.widthPadding,
    required this.heightValue,
  }) : super(key: key);

  final double heightPadding;
  final double widthPadding;
  final double heightValue;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        top: deviceHeight * heightPadding,
        left: deviceWidth * widthPadding,
      ),
      child: Container(
        width: 1,
        height: deviceHeight * heightValue,
        color: Colors.grey,
      ),
    );
  }
}

// 年表
class MyHistoryTopic extends StatelessWidget {
  const MyHistoryTopic({
    Key? key,
    required this.circleColor,
    required this.time,
    required this.event,
    required this.eventColor,
  }) : super(key: key);

  final Color circleColor;
  final String time;
  final String event;
  final Color eventColor;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: deviceHeight * 0.003),
          child: TrueCircle(
            sizeValue: 0.015,
            color: circleColor,
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyText(
              text: time,
              color: const Color.fromRGBO(0, 0, 0, 0.8),
              fontSize: deviceWidth * 0.008,
              fontWeight: FontWeight.normal,
              fontFamily: "Noto Sans JP",
            ),
            BodyText(
              text: event,
              color: eventColor,
              fontSize: deviceWidth * 0.01,
              fontWeight: FontWeight.normal,
              fontFamily: "Noto Sans JP",
            ),
          ],
        ),
      ],
    );
  }
}

// Works 目次トピック
class WorksTopicContents extends ConsumerWidget {
  const WorksTopicContents({
    Key? key,
    required this.index,
    required this.topicColor,
    required this.imagePath,
    required this.appName,
    required this.appNameSize,
    required this.fontName,
    required this.appDisc,
    required this.path,
  }) : super(key: key);

  final String index;
  final Color topicColor;
  final String imagePath;
  final String appName;
  final double appNameSize;
  final String fontName;
  final String appDisc;
  final String path;

  final bool status = false;
  final String nowApp = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final String _appName = ref.watch(appNameProvider);
    final bool _worksTopicContentsProviderStatus =
        ref.watch(worksTopicContentsProvider);

    return Column(
      children: [
        BodyText(
          text: index,
          color: const Color.fromRGBO(151, 151, 151, 1),
          fontSize: deviceHeight * 0.06,
          fontWeight: FontWeight.bold,
          fontFamily: "Bebas Neue",
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        MouseRegion(
          onEnter: (_) => _worksEnter(ref, appName),
          onExit: (_) => _worksExit(ref),
          child: GestureDetector(
            onTap: () => GoRouter.of(context).go(path),
            child: Container(
              decoration: BoxDecoration(
                color: topicColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: deviceHeight * 0.28,
                width: deviceHeight * 0.28,
                child: Padding(
                  padding: EdgeInsets.all(
                    deviceHeight * 0.025,
                  ),
                  child: Image.asset(imagePath),
                ),
              ),
            ),
          ),
        ),
        HeightSizedBox(targetSize: deviceHeight, value: 0.018),
        MouseRegion(
          onEnter: (_) => _worksEnter(ref, appName),
          onExit: (_) => _worksExit(ref),
          child: GestureDetector(
            onTap: () => GoRouter.of(context).go(path),
            child: Column(
              children: [
                BodyText(
                  text: appName,
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: deviceHeight * appNameSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontName,
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.015),
                BodyText(
                  text: appDisc,
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(151, 151, 151, 1),
                  fontSize: deviceHeight * 0.023,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Noto Sans JP",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _worksEnter(WidgetRef ref, String appName) {
    ref.read(appNameProvider.notifier).update((state) => appName);
    ref.read(worksTopicContentsProvider.notifier).update((state) => true);
  }

  void _worksExit(WidgetRef ref) {
    ref.read(worksTopicContentsProvider.notifier).update((state) => false);
  }
}

// 目次 Works遷移ボタン
class WorksNavigationButton extends ConsumerWidget {
  const WorksNavigationButton({
    Key? key,
    required this.buttonText,
    required this.fontValue,
    required this.sizeValue,
  }) : super(key: key);

  final String buttonText;
  final double fontValue;
  final double sizeValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return ElevatedButton(
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceHeight * sizeValue, bottom: deviceHeight * sizeValue),
        child: Align(
          alignment: Alignment.center,
          child: BodyText(
            text: buttonText,
            color: Colors.white,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.bold,
            fontSize: deviceWidth * fontValue,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(151, 151, 151, 1),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => GoRouter.of(context).go("/works"),
    );
  }
}

// 目次切り替えボタン
class WorksGenreChangeButton extends ConsumerWidget {
  const WorksGenreChangeButton({
    Key? key,
    required this.worksGenre,
    required this.worksGenreIndex,
    required this.targetSize,
  }) : super(key: key);

  final String worksGenre;
  final int worksGenreIndex;
  final double targetSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int _worksGenreChangeProviderStatus =
        ref.watch(worksGenreChangeProvider);

    final int _worksGenreIndex = ref.watch(worksGenreIndexProvider);

    final bool _worksGenreHoverProviderStatus =
        ref.watch(worksGenreHoverProvider);

    return Column(
      children: [
        MouseRegion(
          onEnter: (_) => _worksGenreButtonEnter(ref, worksGenreIndex),
          onExit: (_) => _worksGenreExit(ref),
          child: GestureDetector(
            onTap: () => ref
                .read(worksGenreChangeProvider.notifier)
                .update((state) => worksGenreIndex),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(151, 151, 151, 0.3), //色
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
                color: (_worksGenreHoverProviderStatus &&
                            worksGenreIndex == _worksGenreIndex ||
                        worksGenreIndex == _worksGenreChangeProviderStatus)
                    ? const Color.fromRGBO(3, 144, 126, 1)
                    : Colors.white,
                // : const Color.fromRGBO(151, 151, 151, 0.5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: targetSize * 0.02,
                    horizontal: targetSize * 0.025),
                child: BodyText(
                  text: worksGenre,
                  color: (_worksGenreHoverProviderStatus &&
                              worksGenreIndex == _worksGenreIndex ||
                          worksGenreIndex == _worksGenreChangeProviderStatus)
                      ? Colors.white
                      : const Color.fromRGBO(3, 144, 126, 1),
                  fontSize: targetSize * 0.023,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Noto Sans JP",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _worksGenreButtonEnter(WidgetRef ref, int index) {
    ref.read(worksGenreIndexProvider.notifier).update((state) => index);
    ref.read(worksGenreHoverProvider.notifier).update((state) => true);
  }

  void _worksGenreExit(WidgetRef ref) {
    ref.read(worksGenreHoverProvider.notifier).update((state) => false);
  }
}
