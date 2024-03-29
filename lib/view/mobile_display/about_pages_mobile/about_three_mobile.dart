import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/extract_widget.dart';

class AboutThreeMobile extends ConsumerWidget {
  const AboutThreeMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _mobileDirectionProviderStatus =
        ref.watch(mobileDirectionProvider);

    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: "誰もがデザインを考える世界に",
                color: const Color.fromRGBO(0, 0, 0, 0.8),
                fontFamily: 'Noto Sans JP',
                fontSize: deviceWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
              HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              SizedBox(
                width: deviceWidth * 0.8,
                child: HighPaddingText(
                  text:
                      "「何かわからないけど、このデザインいいな」\n「使いやすくて楽しい、ワクワクする」\n良いデザインとは、自然と人の興味を惹き、魅了する力があると私は思っています。\nサービス・プロダクトを使ってくれる人のことを最優先に考え、デザインすることで、誰もがデザインを考える世界をより多くの人にデザインの力で広げていくことが私のミッションです。",
                  color: const Color.fromRGBO(0, 0, 0, 0.8),
                  fontSize: _mobileDirectionProviderStatus
                      ? deviceWidth * 0.023
                      : deviceWidth * 0.03,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Noto Sans JP',
                  textAlign: TextAlign.start,
                  paddingValue: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
