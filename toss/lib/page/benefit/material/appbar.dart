import 'package:flutter/material.dart';
import 'package:toss/util/route.dart';
import 'package:toss/util/text_style.dart';

import '../../../screen/my_coupon/my_coupon_screen.dart';
import '../../../util/color.dart';

class BenefitAppBar extends StatelessWidget implements PreferredSizeWidget {

  final double scrollHeight;

  const BenefitAppBar({
    required this.scrollHeight,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: scrollHeight > 50 ? Colors.white : Colors.transparent,
          ),
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 12,
            bottom: 12
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '혜택',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: scrollHeight > 50 ? Colors.black : Colors.transparent,
                ),
                textScaleFactor: 1.4,
              ),
              InkWell(
                onTap: () => route(context, route: const MyCouponScreen()),
                child: const Text(
                  '내 쿠폰',
                  style: lightBoldStyle,
                ),
              )
            ],
          ),
        ),
        scrollHeight > 50
          ? Container(
              color: Colors.grey.shade200,
              height: 1,
          )
          : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}