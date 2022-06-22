import 'package:flutter/material.dart';

import 'material/appbar.dart';
import 'material/header.dart';
import 'material/my_stock.dart';
import 'material/tab_bar.dart';
import 'material/today_find.dart';

class SecuritiesPage extends StatefulWidget {

  const SecuritiesPage({Key? key}) : super(key: key);

  @override
  State<SecuritiesPage> createState() => _SecuritiesPageState();
}

class _SecuritiesPageState extends State<SecuritiesPage> {

  ScrollController scrollController = ScrollController();

  double height = 0.0;

  @override
  void initState() {
    scrollController.addListener(() {
      if(scrollController.position.pixels > 25 && height < 25) {
        setState(() => height = scrollController.position.pixels);
      } else if(scrollController.position.pixels < 25 && height > 25) {
        setState(() => height = scrollController.position.pixels);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: NestedScrollView(
            controller: scrollController,
            headerSliverBuilder: (context, _) {
              return [
                SecuritiesAppBar(
                  scrollHeight: height,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const SecuritiesHeader(),
                  ]),
                ),
                SecuritiesTabBar(),
              ];
            },
            body: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      MyStock(),
                      TodayFind(),
                    ]
                  ),
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}
