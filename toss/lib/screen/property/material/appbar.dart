import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

import '../../../util/text_style.dart';

class PropertyAppBar extends StatelessWidget {

  final TabController tabController;

  const PropertyAppBar({
    required this.tabController,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_outlined
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              Expanded(
                child: Container()
              ),
              const InkWell(
                onTap: null,
                child: Text(
                  '편집',
                  style: lightBoldStyle,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 35,
            left: 35
          ),
          child: SizedBox(
            height: 50,
            child: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: lightIconColor,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.width*0.1 / 2.2
              ),
              controller: tabController,
              tabs: const <Tab>[
                Tab(
                  text: '자산',
                ),
                Tab(
                  text: '계좌 추천',
                ),
                Tab(
                  text: '대출 찾기',
                ),
              ]
            ),
          ),
        )
      ],
    );
  }
}