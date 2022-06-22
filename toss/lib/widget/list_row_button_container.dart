import 'package:flutter/material.dart';
import 'package:toss/util/text_style.dart';
import 'package:toss/widget/row_tile_button.dart';

class ListRowButtonContainer extends StatelessWidget {

  final String categoryText;
  final List<RowTileButton> rowTitleList;

  const ListRowButtonContainer({
    required this.categoryText,
    required this.rowTitleList,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Text(
              categoryText,
              style: boldStyle,
              textScaleFactor: 1.1,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: rowTitleList as List<Widget>
          ),
        ],
      ),
    );
  }
}