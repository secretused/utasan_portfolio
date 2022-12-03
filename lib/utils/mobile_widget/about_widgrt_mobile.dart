import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../provider/provider.dart';
import '../extract_widget.dart';
import '../project_widget/about_widget.dart';

// ドロワー
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appbarHeight = AppBar().preferredSize.height;
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightSizedBox(
            targetSize: deviceHeight,
            value: 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: deviceWidth * 0.03),
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          HeightSizedBox(
            targetSize: deviceHeight,
            value: 0.05,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MobileTextButtonWidget(
                  targetSize: appbarHeight,
                  text: "ABOUT",
                  sizeValue: 0.5,
                  color: Colors.black,
                  path: "/",
                ),
                HeightSizedBox(
                  targetSize: deviceHeight,
                  value: 0.05,
                ),
                MobileTextButtonWidget(
                  targetSize: appbarHeight,
                  text: "WORKS",
                  sizeValue: 0.5,
                  color: Colors.black,
                  path: "/works",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// テキストボタン(タップしたらドロワーを閉じる)
class MobileTextButtonWidget extends StatelessWidget {
  const MobileTextButtonWidget({
    Key? key,
    required this.targetSize,
    required this.text,
    required this.sizeValue,
    required this.color,
    required this.path,
  }) : super(key: key);

  final double targetSize;
  final String text;
  final double sizeValue;
  final Color color;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: targetSize * sizeValue,
            color: color,
          ),
        ),
        onPressed: () {
          GoRouter.of(context).go(path);
          Navigator.pop(context);
        });
  }
}

// 年表
class HistoryTopicMobile extends StatelessWidget {
  const HistoryTopicMobile({
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

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TrueCircle(
          sizeValue: 0.02,
          color: circleColor,
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyText(
              text: time,
              color: const Color.fromRGBO(0, 0, 0, 0.8),
              fontSize: deviceWidth * 0.015,
              fontWeight: FontWeight.normal,
              fontFamily: "Noto Sans JP",
            ),
            BodyText(
              text: event,
              color: eventColor,
              fontSize: deviceWidth * 0.017,
              fontWeight: FontWeight.normal,
              fontFamily: "源ノ角ゴシック VF",
            ),
          ],
        ),
      ],
    );
  }
}

// Works 目次トピック(左から右)
class WorksTopicLeftMobile extends ConsumerWidget {
  const WorksTopicLeftMobile({
    Key? key,
    required this.index,
    required this.topicColor,
    required this.imagePath,
    required this.appName,
    required this.fontName,
    required this.appDisc,
    required this.path,
  }) : super(key: key);

  final String index;
  final Color topicColor;
  final String imagePath;
  final String appName;
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

    return Row(
      children: [
        BodyText(
          text: index,
          color: const Color.fromRGBO(151, 151, 151, 1),
          fontSize: deviceWidth * 0.05,
          fontWeight: FontWeight.bold,
          fontFamily: "源ノ角ゴシック VF",
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.015),
        GestureDetector(
          onTap: () => GoRouter.of(context).go(path),
          child: Container(
            decoration: BoxDecoration(
              color: topicColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: deviceWidth * 0.18,
              width: deviceWidth * 0.18,
              child: Padding(
                padding: EdgeInsets.all(
                  deviceWidth * 0.015,
                ),
                child: Image.network(
                  imagePath,
                ),
              ),
            ),
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              child: Text(
                appName,
                style: TextStyle(
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: deviceWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontName,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () => GoRouter.of(context).go(path),
              onLongPress: () => _textLongPress(ref, appName),
            ),
            HeightSizedBox(targetSize: deviceHeight, value: 0.01),
            BodyText(
              text: appDisc,
              color: const Color.fromRGBO(151, 151, 151, 1),
              fontSize: deviceWidth * 0.02,
              fontWeight: FontWeight.bold,
              fontFamily: "源ノ角ゴシック VF",
            ),
          ],
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.2),
      ],
    );
  }

  void _textLongPress(WidgetRef ref, String appName) {
    ref.read(appNameProvider.notifier).update((state) => appName);
    ref.read(worksTopicContentsProvider.notifier).update((state) => true);
  }
}

// Works 目次トピック(右から左)
class WorksTopicRightMobile extends ConsumerWidget {
  const WorksTopicRightMobile({
    Key? key,
    required this.index,
    required this.topicColor,
    required this.imagePath,
    required this.appName,
    required this.fontName,
    required this.appDisc,
    required this.path,
  }) : super(key: key);

  final String index;
  final Color topicColor;
  final String imagePath;
  final String appName;
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

    return Row(
      children: [
        WidthSizedBox(targetSize: deviceWidth, value: 0.2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              child: Text(
                appName,
                style: TextStyle(
                  color:
                      (_appName == appName && _worksTopicContentsProviderStatus)
                          ? topicColor
                          : const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: deviceWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontName,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () => GoRouter.of(context).go(path),
              onLongPress: () => _textLongPress(ref, appName),
            ),
            HeightSizedBox(targetSize: deviceHeight, value: 0.01),
            BodyText(
              text: appDisc,
              color: const Color.fromRGBO(151, 151, 151, 1),
              fontSize: deviceWidth * 0.02,
              fontWeight: FontWeight.bold,
              fontFamily: "源ノ角ゴシック VF",
            )
          ],
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.02),
        GestureDetector(
          onTap: () => GoRouter.of(context).go(path),
          child: Container(
            decoration: BoxDecoration(
              color: topicColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: deviceWidth * 0.18,
              width: deviceWidth * 0.18,
              child: Padding(
                padding: EdgeInsets.all(
                  deviceWidth * 0.015,
                ),
                child: Image.network(
                  imagePath,
                ),
              ),
            ),
          ),
        ),
        WidthSizedBox(targetSize: deviceWidth, value: 0.015),
        BodyText(
          text: index,
          color: const Color.fromRGBO(151, 151, 151, 1),
          fontSize: deviceWidth * 0.05,
          fontWeight: FontWeight.bold,
          fontFamily: "源ノ角ゴシック VF",
        ),
      ],
    );
  }

  void _textLongPress(WidgetRef ref, String appName) {
    ref.read(appNameProvider.notifier).update((state) => appName);
    ref.read(worksTopicContentsProvider.notifier).update((state) => true);
  }
}
