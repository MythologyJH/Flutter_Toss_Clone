import 'package:flutter/material.dart';

import '../../widget/container_divider.dart';
import 'material/investment.dart';
import 'material/option_buttons.dart';
import 'material/point_pay_money.dart';

class PropertyPage extends StatefulWidget {

  const PropertyPage({Key? key}) : super(key: key);

  @override
  State<PropertyPage> createState() => _PropertyPageState();
}

class _PropertyPageState extends State<PropertyPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ContainerDivider(),
          InvestmentCard(),
          ContainerDivider(),
          PointPayMoneyCard(),
          ContainerDivider(),
          PropertyOptionButtons(),
        ],
      ),
    );
  }
}
