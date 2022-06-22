import 'package:flutter/material.dart';
import 'package:toss/page/home/home_page.dart';

import '../../../page/all/all_page.dart';
import '../../../page/benefit/benefit_page.dart';
import '../../../page/remittance/body.dart';
import '../../../page/securities/securities_page.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {

  final int currentIndex;
  final WillPopCallback onBack;

  Body({
    required this.currentIndex,
    required this.onBack,
    Key? key
  }) : super(key: key);

  List<Widget> pages = [
    const HomePage(),
    BenefitPage(),
    RemittancePage(),
    SecuritiesPage(),
    AllPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return WillPopScope(
          onWillPop: onBack,
          child: pages.elementAt(currentIndex)
        );
      }
    );
  }
}