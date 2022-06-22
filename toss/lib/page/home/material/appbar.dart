import 'package:flutter/material.dart';

import '../../../util/color.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  final double scrollHeight;

  const HomeAppBar({
    required this.scrollHeight,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 1
      ),
      color: scrollHeight > 43 ? Colors.white : Colors.transparent,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _tossSymbol(),
              const Text(
                '토스',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: lightIconColor,
                ),
                textScaleFactor: 1.8,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _actionButton(
                icon: 'resource/icon/chat.png'
              ),
              _actionButton(
                icon: 'resource/icon/notification.png'
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _actionButton({
    required String icon
  }) {
    return Container(
      padding: const EdgeInsets.only(
        left: 13
      ),
      child: InkWell(
        child: ImageIcon(
          AssetImage(
            icon
          ),
          size: 25,
          color: lightIconColor,
        )
      ),
    );
  }

  Widget _tossSymbol() {
    return const ImageIcon(
      AssetImage(
        'resource/icon/notification.png'
      ),
      size: 30.0,
      color: lightIconColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}