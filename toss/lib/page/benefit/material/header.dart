import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';

import '../../../util/text_style.dart';

class BenefitHeader extends StatelessWidget {

  const BenefitHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 50
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '혜택',
            style: boldStyle,
            textScaleFactor: 1.5,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: lightBackgroundColor,
                    backgroundImage: AssetImage(
                      'resource/icon/chat.png'
                    ),
                    radius: 20,
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '내 포인트',
                        style: TextStyle(
                          color: lightSubTextColor.withAlpha(150),
                          fontWeight: FontWeight.w700
                        ),
                        textScaleFactor: 0.75,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${numberFormat.format(2000)} 원',
                        textScaleFactor: 1.1,
                        style: lightBoldStyle,
                      )
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 13,
                color: lightSubTextColor,
              )
            ],
          )
        ],
      ),
    );
  }
}