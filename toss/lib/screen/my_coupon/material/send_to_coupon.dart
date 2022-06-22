import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

class SendToCoupon extends StatelessWidget {

  const SendToCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25
            ),
            child: const Text(
              '친구에게 쿠폰을 선물해주세요',
              style: lightBoldStyle,
              textScaleFactor: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: 20,
                  bottom: 20
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: lightBackgroundColor,
                          width: 0.5
                        )
                      ),
                      width: 45,
                      height: 45,
                      child: Image.asset(
                        'resource/icon/chat.png'
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '몰라유',
                            style: const TextStyle(
                              color: lightSelectIconColor,
                              fontWeight: FontWeight.w500
                            ),
                            textScaleFactor: 0.8,
                          ),
                          Text(
                            '${numberFormat.format(1000)}원 할일',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: lightSubTextColor
                            ),
                            textScaleFactor: 1.0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: lightHighlightBackgroundColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: const EdgeInsets.only(
                        left: 13,
                        right: 13,
                        top: 7,
                        bottom: 7
                      ),
                      child: const Center(
                        child: Text(
                          '받기',
                          style: TextStyle(
                            color: lightHighlightTextColor,
                            fontWeight: FontWeight.w500
                          ),
                          textScaleFactor: 0.8,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}