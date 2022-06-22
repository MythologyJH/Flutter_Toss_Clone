import 'package:flutter/material.dart';
import 'package:toss/widget/row_tile_button.dart';

class PropertyOptionButtons extends StatelessWidget {

  const PropertyOptionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 30
      ),
      child: Column(
        children: [
          RowTileButton(
            iconPath: 'resource/icon/chat.png',
            buttonText: '내 자산 추가하기',
            subTitleText: '은행-증권계좌, 포인트',
            onTap: () => null,
            isArrowIconActive: true,
            isArrowIconColorAlpha: true,
          ),
          RowTileButton(
            iconPath: 'resource/icon/chat.png',
            buttonText: '새 계좌 만들기',
            onTap: () => null,
            isArrowIconActive: true,
            isArrowIconColorAlpha: true,
          ),
        ],
      ),
    );
  }
}