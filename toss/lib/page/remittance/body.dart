import 'package:flutter/material.dart';

import 'material/account.dart';
import 'material/contact_information.dart';
import 'material/header.dart';
import 'material/recommendation.dart';

class RemittancePage extends StatefulWidget {

  const RemittancePage({Key? key}) : super(key: key);

  @override
  State<RemittancePage> createState() => _RemittancePageState();
}

class _RemittancePageState extends State<RemittancePage> with TickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header(
                tabController: tabController,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    RecommendationType(),
                    RemittanceAccount(),
                    ContactInformationType(),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
