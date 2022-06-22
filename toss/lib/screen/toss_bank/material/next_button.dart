import 'package:flutter/material.dart';

import '../../../util/color.dart';

class TossBankNextButton extends StatelessWidget {

  const TossBankNextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: lightHighlightTextColor
          ),
          padding: const EdgeInsets.all(18),
          child: const Center(
            child: Text(
              '다음',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );
  }
}