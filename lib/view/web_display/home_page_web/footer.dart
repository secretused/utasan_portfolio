import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/extract_widget.dart';

class Footer extends ConsumerWidget {
  const Footer({
    Key? key,
    required this.footerColor,
  }) : super(key: key);

  final Color footerColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight * 0.3,
      color: footerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceWidth * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Yuta Toba Design Portfolio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth * 0.02,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bebas Neue",
                    letterSpacing: 0.05,
                    height: 1.0,
                  ),
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButtonWidget(
                      link: twitteUrl,
                      imageValue: 0.06,
                      iconValue: 0.05,
                      path: "assets/icon/twitter_icon.png",
                      iconBackColor: footerColor,
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                    IconButtonWidget(
                      link: githubUrl,
                      imageValue: 0.06,
                      iconValue: 0.05,
                      path: "assets/icon/github_icon.png",
                      iconBackColor: footerColor,
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.01),
                    IconButtonWidget(
                      link: qiitaUrl,
                      imageValue: 0.06,
                      iconValue: 0.05,
                      path: "assets/icon/qiita_icon.png",
                      iconBackColor: footerColor,
                    ),
                  ],
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.015),
                BodyText(
                  text: "t.yuta.v9410@icloud.com",
                  color: Colors.black,
                  fontSize: deviceWidth * 0.01,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Noto Sans JP",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
