import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class NoticeCard extends StatelessWidget {

  const NoticeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: lightBackgroundColor,
      child: Center(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 15
              ),
              child: const Image(
                image: AssetImage(
                  'resource/icon/chat.png'
                ),
                height: 30,
              ),
            ),
            const Expanded(
              child: Text(
                'SC제일은행 연결 오류 안내',
                style: TextStyle(
                  color: lightSubTextColor,
                  fontWeight: FontWeight.w600
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        )
      ),
    );
  }
}