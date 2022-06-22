import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/route.dart';

import '../../../screen/toss_securities_setting_screen.dart';

class SecuritiesAppBar extends StatelessWidget {

  final double scrollHeight;

  const SecuritiesAppBar({
    required this.scrollHeight,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      title: scrollHeight > 25
        ? Text(
            'hi',
            style: TextStyle(
              color: Colors.black
            ),
        )
        : Container(),
      actions: [
        IconButton(
          onPressed: () => null,
          icon: Icon(
            Icons.search,
            color: lightIconColor,
          )
        ),
        IconButton(
          onPressed: () => route(context, route: const TossSecuritiesSettingScreen()),
          icon: Icon(
            Icons.settings,
            color: lightIconColor,
          )
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}