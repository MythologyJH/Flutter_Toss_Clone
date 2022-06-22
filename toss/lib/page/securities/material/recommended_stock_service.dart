import 'package:flutter/material.dart';

import '../../../util/text_style.dart';

class RecommendedStockService extends StatelessWidget {

  const RecommendedStockService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 10
            ),
            child: const Text(
              '아직 뭘 살지 모르겠다면',
              style: lightBoldStyle,
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}