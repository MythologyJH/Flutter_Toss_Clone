import 'package:flutter/material.dart';
import 'package:toss/widget/row_tile_button.dart';

import '../../../widget/list_row_button_container.dart';

class AllPayment extends StatelessWidget {

  const AllPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListRowButtonContainer(
      categoryText: '결제',
      rowTitleList: [
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '내 토스페이',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '후불결제',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '결제할 때 할인받기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '상품권 구매하기',
          onTap: () => null,
        ),
      ],
    );
  }
}