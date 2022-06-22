import 'package:flutter/material.dart';
import 'package:toss/page/securities/material/securities_info.dart';
import 'package:toss/widget/container_divider.dart';

import 'attention_stock.dart';
import 'realtime_best_stock.dart';
import 'securities_bank_create.dart';

class MyStock extends StatelessWidget {

  const MyStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        SecuritiesBankCreate(),
        ContainerDivider(),
        AttentionStock(),
        ContainerDivider(),
        RealTimeBestStock(),
        SecuritiesInfo(),
      ],
    );
  }
}