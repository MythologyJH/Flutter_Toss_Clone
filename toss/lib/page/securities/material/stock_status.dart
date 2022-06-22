import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class StockStatus extends StatelessWidget {

  const StockStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 20,
        bottom: 15
      ),
      child: Row(
        children: [
          Expanded(
            child: _card(
              titleText: '국내',
              nationPath: 'resource/icon/chat.png'
            )
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: _card(
              titleText: '해외',
              nationPath: 'resource/icon/chat.png'
            )
          )
        ],
      ),
    );
  }

  Widget _card({
    required String nationPath,
    required String titleText,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 30,
        right: 15,
        left: 15
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image(
              image: AssetImage(
                nationPath
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    titleText,
                    style: lightBoldStyle,
                    textScaleFactor: 0.95,
                  ),
                  const SizedBox(width: 2),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    size: 18,
                    color: lightIconColor,
                  )
                ],
              ),
              const SizedBox(height: 3),
              Text(
                '6시간 후',
                style: TextStyle(
                  color: lightSubTextColor,
                  fontWeight: FontWeight.w500
                ),
                textScaleFactor: 0.77,
              )
            ],
          )
        ],
      ),
    );
  }
}