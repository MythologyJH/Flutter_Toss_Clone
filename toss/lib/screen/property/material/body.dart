import 'package:flutter/material.dart';
import 'package:toss/page/property/property_page.dart';

import 'appbar.dart';

class Body extends StatefulWidget {

  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {

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
        child: Column(
          children: [
            PropertyAppBar(
              tabController: tabController,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  PropertyPage(),
                  Container(),
                  Container(),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
