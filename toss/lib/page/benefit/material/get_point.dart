import 'package:flutter/material.dart';

import '../../../util/color.dart';
import '../../../util/format.dart';
import '../../../util/text_style.dart';

class BenefitGetPoint extends StatelessWidget {

  const BenefitGetPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: const Text(
              '포인트 모으기',
              style: lightBoldStyle,
              textScaleFactor: 1.1,
            ),
          ),
          const SizedBox(height: 10),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: shoesBackgroundColor,
            buttonText: '만보기',
            rewardText: '140원 받기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: heartBackgroundColor,
            buttonText: '좋아하는 브랜드에서',
            rewardText: '브랜드 캐시백 받기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: wingMoneyBackgroundColor,
            buttonText: '이번 주 미션하면',
            rewardText: '얼마 받을지 보기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: handBackgroundColor,
            buttonText: '버튼 누르고',
            rewardText: '10원 받기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: handBackgroundColor,
            buttonText: '토스페이 결제할 때',
            rewardText: '2,000원 받기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: chatBackgroundColor,
            buttonText: '오픈채팅방 운영하고',
            rewardText: '최대 15,000원 받기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: wingMoneyBackgroundColor,
            buttonText: '내 대출 한도 확인하고',
            rewardText: '500원 받기'
          ),
          _iconTileButton(
            iconPath: 'resource/icon/chat.png',
            color: shoesBackgroundColor,
            buttonText: '카드 쓰고',
            rewardText: '100,000원 받기'
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _iconTileButton({
    required String iconPath,
    required String buttonText,
    required String rewardText,
    Color? color
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => print(buttonText),
        child: Container(
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 15,
            right: 20,
            left: 20
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: color ?? Colors.transparent,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    padding: const EdgeInsets.all(9),
                    child: Image.asset(
                      iconPath,
                      width: 37,
                      height: 37,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        buttonText,
                        style: const TextStyle(
                          color: lightSubTextColor,
                          fontWeight: FontWeight.w400
                        ),
                        textScaleFactor: 0.8,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        rewardText,
                        textScaleFactor: 1.1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: lightHighlightTextColor
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 13,
                color: lightSubTextColor,
              )
            ],
          )
        ),
      ),
    );
  }
}