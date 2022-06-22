import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

class PointPayMoneyCard extends StatelessWidget {

  const PointPayMoneyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 25,
            bottom: 15
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '포인트-페이 머니',
                style: boldSubTextColorStyle,
                textScaleFactor: 1.05,
              ),
              const SizedBox(height: 10),
              Text(
                '${numberFormat.format(1000)} 원',
                style: boldStyle,
                textScaleFactor: 1.3,
              )
            ],
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 0),
          itemBuilder: (BuildContext context, int index) => _pointRowTile(
            buttonText: '토스포인트',
            pointValue: 1000
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _pointRowTile({
    required String buttonText,
    required int pointValue
  }) {
    return Material(
      color: Colors.white,
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 15
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'resource/icon/chat.png'
                ),
                radius: 20,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    buttonText,
                    style: boldSubTextColorStyle,
                    textScaleFactor: 0.8,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${numberFormat.format(pointValue)} 원',
                    style: boldStyle,
                    textScaleFactor: 1.05,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}