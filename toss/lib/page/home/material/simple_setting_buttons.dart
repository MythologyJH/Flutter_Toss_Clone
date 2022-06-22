import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/route.dart';
import 'package:toss/util/text_style.dart';

import '../../../screen/property_connect/property_connect_screen.dart';

class SimpleSettingButtons extends StatelessWidget {

  SimpleSettingButtons({Key? key}) : super(key: key);

  final EdgeInsetsGeometry _widgetPadding = const EdgeInsets.only(
    top: 20,
    bottom: 50
  );

  final TextStyle textButtonStyle = TextStyle(
    color: lightSubTextColor.withAlpha(160),
    fontWeight: FontWeight.w600
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: _widgetPadding,
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                await showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  builder: (BuildContext bottomSheetContext) => _hideAmountBottomSheet(context)
                );
              },
              child: Text(
                '금액 숨기기',
                style: textButtonStyle,
                textScaleFactor: 0.85,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
                left: 15
              ),
              child: const SizedBox(
                height: 13,
                child: VerticalDivider(
                  thickness: 1.5,
                  color: lightIconColor,
                ),
              )
            ),
            InkWell(
              onTap: () => route(context, route: const PropertyConnectScreen()),
              child: Text(
                '자산 추가',
                style: textButtonStyle,
                textScaleFactor: 0.85,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _hideAmountBottomSheet(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '숨기고 싶은 금액의 스위치를 켜주세요',
            style: boldStyle,
            textScaleFactor: 1.15,
          ),
          const SizedBox(height: 20),
          ListView.separated(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
            itemBuilder: (BuildContext context, int index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '전체 자산 금액',
                  style: lightBoldStyle,
                  textScaleFactor: 1.1,
                ),
                Switch(
                  value: true,
                  inactiveThumbColor: lightHighlightTextColor,
                  inactiveTrackColor: lightHighlightBackgroundColor,
                  onChanged: null
                )
              ],
            )
          )
        ],
      ),
    );
  }
}