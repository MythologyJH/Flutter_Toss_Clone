import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

class SecuritiesBankCreate extends StatelessWidget {

  const SecuritiesBankCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '증권 계좌가 있어야\n투자를 시작할 수 있어요',
                style: TextStyle(
                  fontWeight: FontWeight.w800
                ),
                textScaleFactor: 1.0,
              ),
              const SizedBox(height: 7),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: lightHighlightTextColor,
                ),
                padding: const EdgeInsets.all(7),
                child: const Center(
                  child: Text(
                    '5분 만에 만들기',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                    textScaleFactor: 0.8,
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightBackgroundColor
            ),
            width: 70,
            height: 70,
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