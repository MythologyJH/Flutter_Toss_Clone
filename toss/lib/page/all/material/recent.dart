import 'package:flutter/material.dart';
import 'package:toss/widget/row_tile_button.dart';

import '../../../widget/list_row_button_container.dart';

class AllRecent extends StatelessWidget {

  const AllRecent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListRowButtonContainer(
      categoryText: '최근',
      rowTitleList: [
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '내 계좌',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '차 보험료 조회',
          onTap: () => null,
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '오픈채팅방',
          onTap: () => null,
        ),
      ],
    );
  }
}