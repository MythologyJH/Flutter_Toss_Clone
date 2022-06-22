import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class SecuritiesHeader extends StatefulWidget {

  const SecuritiesHeader({Key? key}) : super(key: key);

  @override
  State<SecuritiesHeader> createState() => _SecuritiesHeaderState();
}

class _SecuritiesHeaderState extends State<SecuritiesHeader> {

  final TextStyle infoTextStyle = const TextStyle(
    color: lightSubTextColor,
    fontSize: 13,
    fontWeight: FontWeight.w600
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '토스증권',
                  style: lightBoldStyle,
                  textScaleFactor: 1.5,
                ),
                const SizedBox(width: 15),
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                       text: '코스피 ',
                       style: infoTextStyle
                    ),
                    TextSpan(
                       text: '777.04',
                       style: const TextStyle(
                         color: lightHighlightTextColor,
                         fontSize: 13,
                         fontWeight: FontWeight.w600
                       )
                    )
                  ]
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
