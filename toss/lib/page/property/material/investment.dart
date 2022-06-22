import 'package:flutter/material.dart';

import '../../../util/format.dart';
import '../../../util/text_style.dart';

class InvestmentCard extends StatelessWidget {

  const InvestmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 5,
        top: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '투자',
                  style: boldSubTextColorStyle,
                  textScaleFactor: 1.05,
                ),
                const SizedBox(height: 10),
                Text(
                  '${numberFormat.format(1)} 원',
                  style: boldStyle,
                  textScaleFactor: 1.3,
                ),
              ],
            ),
          ),
          Material(
            color: Colors.white,
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 15,
                  bottom: 15
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
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
                          '내 모든 증권사',
                          style: boldSubTextColorStyle,
                          textScaleFactor: 0.8,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '투자 내역-수익률 보기',
                          style: boldStyle,
                          textScaleFactor: 1.05,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}