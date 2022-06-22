import 'package:flutter/material.dart';
import 'package:toss/widget/row_tile_button.dart';

import '../../../widget/list_row_button_container.dart';

class AllInsurance extends StatelessWidget {

  const AllInsurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListRowButtonContainer(
      categoryText: '보험',
      rowTitleList: [
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '내 보험',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '보험 전문가에게 물어보기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '병원비 돌려받기',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '보험 둘러보기',
          onTap: () => null,
        ),
      ],
    );
  }
}