import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'material/body.dart';

import '../../util/color.dart';
import '../../util/text_style.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({Key? key}) : super(key: key);

  int _bottomNavigationCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          extendBody: true,
          backgroundColor: lightBackgroundColor,
          body: Body(
            currentIndex: _bottomNavigationCurrentIndex,
            onBack: () async {
              if(_bottomNavigationCurrentIndex != 0) {
                setState(() => _bottomNavigationCurrentIndex = 0);
              } else {
                SystemNavigator.pop();
              }

              return false;
            },
          ),
          bottomNavigationBar: ClipRRect(
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.circular(20),
            //   topLeft: Radius.circular(20)
            // ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              elevation: 5.0,
              unselectedItemColor: lightIconColor,
              selectedItemColor: lightSelectIconColor,
              unselectedLabelStyle: lightBoldStyle,
              selectedLabelStyle: lightBoldStyle,
              showUnselectedLabels: true,
              iconSize: 25.0,
              selectedFontSize: 13,
              unselectedFontSize: 13,
              currentIndex: _bottomNavigationCurrentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (int value) => setState(() => _bottomNavigationCurrentIndex = value),
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'resource/icon/chat.png'
                    ),
                    size: 30,
                  ),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'resource/icon/chat.png'
                    ),
                    size: 30,
                  ),
                  label: '혜택',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'resource/icon/chat.png'
                    ),
                    size: 30,
                  ),
                  label: '송금',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'resource/icon/stock.png'
                    ),
                    size: 30,
                  ),
                  label: '주식',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu
                  ),
                  label: '전체'
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}