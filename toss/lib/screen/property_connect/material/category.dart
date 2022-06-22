import 'package:flutter/material.dart';

import '../../../util/color.dart';

class PropertyConnectCategory extends StatelessWidget {

  final TabController tabController;
  final ValueChanged<int> onTap;

  const PropertyConnectCategory({
    required this.tabController,
    required this.onTap,
    Key? key
  }) : super(key: key);

  final double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: const TabBar(tabs: []).preferredSize.height + 1,
      floating: true,
      pinned: true,
      snap: true,
      stretch: true,
      automaticallyImplyLeading: false,
      flexibleSpace: Column(
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: lightSubTextColor,
            indicatorColor: Colors.black,
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: _fontSize
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: _fontSize
            ),
            onTap: onTap,
            tabs: [
              Tab(
                text: '은행',
              ),
              Tab(
                text: '카드',
              ),
              Tab(
                text: '증권',
              ),
              Tab(
                text: '할부금융',
              ),
              Tab(
                text: '보험',
              ),
              Tab(
                text: '포인트',
              ),
              Tab(
                text: '통신',
              ),
            ],
          ),
          Container(
            color: Colors.grey.shade300,
            height: 1,
          )
        ],
      ),
    );
  }
}