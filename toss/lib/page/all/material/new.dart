import 'package:flutter/material.dart';
import 'package:toss/widget/row_tile_button.dart';

import '../../../widget/list_row_button_container.dart';

class AllNew extends StatelessWidget {

  const AllNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListRowButtonContainer(
      categoryText: '신규',
      rowTitleList: [
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '새소식',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '토스뱅크 적금 만들기',
          onTap: () => null,
        ),
      ],
    );
  }
}