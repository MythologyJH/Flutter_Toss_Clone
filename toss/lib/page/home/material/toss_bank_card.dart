import 'package:flutter/material.dart';
import 'package:toss/screen/toss_bank/toss_bank_screen.dart';

import '../../../util/route.dart';
import '../../../util/text_style.dart';

class TossBankCard extends StatelessWidget {

  const TossBankCard({Key? key}) : super(key: key);

  final EdgeInsetsGeometry _contentsPadding = const EdgeInsets.all(20);

  final BorderRadius _titleButtonRadius = const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16)
  );

  final BorderRadius _bottomButtonsRadius = const BorderRadius.only(
    bottomRight: Radius.circular(16),
    bottomLeft: Radius.circular(16)
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        // padding: _contentsPadding,
        child: Column(
          children: [
            Material(
              borderRadius: _titleButtonRadius,
              color: Colors.white,
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: _titleButtonRadius,
                ),
                onTap: () => route(context, route: const TossBankScreen()),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '토스뱅크',
                        textScaleFactor: 1.3,
                        style: boldStyle,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              borderRadius: _bottomButtonsRadius,
              color: Colors.white,
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: _bottomButtonsRadius,
                ),
                onTap: () => print('hi'),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 30,
                    right: 20,
                    left: 20
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12,
                        backgroundImage: AssetImage(
                          'resource/icon/chat.png'
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '키워봐요 적금 출시',
                            textScaleFactor: 0.8,
                            style: boldIconColorStyle
                          ),
                          Text(
                            '알을 깨고 뭐가 나올까요?',
                            textScaleFactor: 1.05,
                            style: boldStyle,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}