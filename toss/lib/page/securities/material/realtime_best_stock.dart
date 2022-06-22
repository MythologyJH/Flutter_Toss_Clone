import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

class RealTimeBestStock extends StatelessWidget {

  const RealTimeBestStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
        left: 25,
        right: 25,
        bottom: 50
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                '지금 다른 사람들이\n눈여겨 보는 주식은?',
                style: TextStyle(
                  fontWeight: FontWeight.w600
                ),
                textScaleFactor: 1.15,
              ),
              const SizedBox(height: 7),
              Material(
                color: Colors.white,
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  splashColor: lightBackgroundColor,
                  overlayColor: MaterialStateProperty.all(lightBackgroundColor),
                  onTap: () => print('hi'),
                  highlightColor: Colors.grey,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: const [
                        Text(
                          '실시간 인기 주식 보기',
                          style: TextStyle(
                            color: lightHighlightTextColor,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: lightHighlightTextColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightBackgroundColor
            ),
            width: 60,
            height: 60,
            child: const Image(
              image: AssetImage(
                'resource/icon/chat.png'
              ),
            ),
          )
        ],
      ),
    );
  }
}