import 'package:flutter/material.dart';
import 'package:toss/widget/row_tile_button.dart';

import '../../../widget/list_row_button_container.dart';

class AllLoans extends StatelessWidget {

  const AllLoans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListRowButtonContainer(
      categoryText: '대출',
      rowTitleList: [
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '대출 받기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '토스뱅크 대출 알아보기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '주택담보대출 찾기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '비상금 빌리기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '대출 이자 계산기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '아파트 대출한도 계산기',
          onTap: () => null,
        ),
      ],
    );
  }
}