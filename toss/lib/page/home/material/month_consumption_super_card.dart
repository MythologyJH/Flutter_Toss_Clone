import 'package:flutter/material.dart';

import '../../../util/color.dart';
import '../../../util/text_style.dart';

class MonthConsumptionSuperCard extends StatelessWidget {

  final double scrollHeight;

  const MonthConsumptionSuperCard({
    required this.scrollHeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(scrollHeight > 43) {
      return Container();
    } else {
      return Positioned(
        bottom: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)
            ),
            color: Colors.white
          ),
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '소비',
                    style: boldStyle,
                    textScaleFactor: 1.2,
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
              const SizedBox(height: 10),
              Divider(
                height: 1,
              )
            ],
          ),
        ),
      );
    }
  }
}