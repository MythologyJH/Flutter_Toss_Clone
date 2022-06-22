import 'package:flutter/material.dart';
import 'package:toss/util/text_style.dart';

class TossBankAppBar extends StatelessWidget {

  const TossBankAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_outlined
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Text(
              '토스뱅크',
              textScaleFactor: 1.2,
              style: TextStyle(
                fontWeight: FontWeight.w300
              ),
            )
          ),
          const InkWell(
            onTap: null,
            child: Text(
              '고객센터',
              style: lightBoldStyle,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}