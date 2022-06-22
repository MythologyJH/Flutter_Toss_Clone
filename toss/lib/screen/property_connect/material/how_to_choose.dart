import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

import '../controller.dart';

class HowManyChooseProperty extends StatelessWidget {

  final PropertyConnectController controller;

  const HowManyChooseProperty({
    required this.controller,
    Key? key
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20
      ),
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: lightHighlightTextColor,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(17),
        child: Center(
          child: ValueListenableBuilder<List>(
            valueListenable: controller.readChooseNotifier,
            builder: (BuildContext context, value, _) {
              return Text(
                '${value.length}개 연결하기',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800
                ),
                textScaleFactor: 0.95,
              );
            },
          )
        ),
      ),
    );
  }
}