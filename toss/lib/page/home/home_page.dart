import 'package:flutter/material.dart';
import 'package:toss/page/home/material/appbar.dart';

import 'material/month_consumption_card.dart';
import 'material/month_consumption_super_card.dart';
import 'material/property_card.dart';
import 'material/recommendation_card.dart';
import 'material/simple_setting_buttons.dart';
import 'material/toss_bank_card.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      if(scrollController.position.pixels > 43 && height < 43) {
        setState(() => height = scrollController.position.pixels);
      } else if(scrollController.position.pixels < 43 && height > 43) {
        setState(() => height = scrollController.position.pixels);
      }
    });

    super.initState();
  }

  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    controller: scrollController,
                    children: [
                      SizedBox(height: AppBar().preferredSize.height + 10),
                      TossBankCard(),
                      PropertyCard(),
                      MonthConsumptionCard(),
                      RecommendationCard(),
                      SimpleSettingButtons(),
                    ],
                  ),
                  HomeAppBar(
                    scrollHeight: height,
                  ),
                  MonthConsumptionSuperCard(
                    scrollHeight: height,
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
