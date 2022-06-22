import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

import '../../../util/format.dart';
import '../../../util/text_style.dart';

class MonthConsumptionCard extends StatelessWidget {

  const MonthConsumptionCard({Key? key}) : super(key: key);

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
                onTap: () => print('hi'),
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
                        '소비',
                        textScaleFactor: 1.3,
                        style: boldStyle,
                      ),
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
                    left: 20,
                    right: 20,
                    bottom: 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              const Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  height: 35,
                                  child: Image(
                                    image: AssetImage(
                                      'resource/icon/chat.png'
                                    ),
                                  )
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    top: 5
                                  ),
                                  child: const SizedBox(
                                    height: 35,
                                    child: Image(
                                      image: AssetImage(
                                        'resource/icon/chat.png'
                                      ),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '이번 달 쓴 금액',
                                textScaleFactor: 0.75,
                                style: boldSubTextColorStyle
                              ),
                              Text(
                                '${numberFormat.format(12345678)} 원',
                                textScaleFactor: 1.05,
                                style: lightBoldStyle,
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: lightHighlightBackgroundColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        padding: const EdgeInsets.all(7),
                        child: const Center(
                          child: Text(
                            '새 내역 10건+',
                            style: boldHighTextColorStyle,
                            textScaleFactor: 0.8,
                          ),
                        ),
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