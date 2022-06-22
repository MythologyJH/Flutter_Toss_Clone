import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

class TossSecuritiesSettingScreen extends StatelessWidget {

  const TossSecuritiesSettingScreen({Key? key}) : super(key: key);

  final TextStyle _blackColorStyle = const TextStyle(
    color: Colors.black
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: lightSubTextColor
        ),
        title: Text(
          '토스증권 설정',
          style: _blackColorStyle,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 20
            ),
            child: Center(
              child: Text(
                '고객센터',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                textScaleFactor: 1.0,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: const ListTile(
              title: Text(
                '공지사항'
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const ListTile(
              title: Text('자주 묻는 질문'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}