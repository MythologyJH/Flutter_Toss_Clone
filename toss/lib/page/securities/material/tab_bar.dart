import 'package:flutter/material.dart';

import '../../../util/color.dart';

class SecuritiesTabBar extends StatelessWidget {

  const SecuritiesTabBar({Key? key}) : super(key: key);

  final TextStyle _labelStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 17
  );

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      title: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25
            ),
            child: TabBar(
              indicatorColor: Colors.black,
              labelStyle: _labelStyle,
              unselectedLabelStyle: _labelStyle,
              unselectedLabelColor: lightIconColor,
              labelColor: Colors.black,
              tabs: const [
                Tab(
                  text: '내 주식',
                ),
                Tab(
                  text: '오늘의 발견',
                ),
              ],
            ),
          ),
          Container(
            height: 0.4,
            width: MediaQuery.of(context).size.width,
            color: lightIconColor,
          ),
        ],
      ),
    );
  }
}