import 'package:flutter/material.dart';

import '../../../util/color.dart';

class AllAppBar extends StatelessWidget {

  const AllAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 12,
        bottom: 12
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _actionButton(
                icon: Icons.settings
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _actionButton({
    required IconData icon
  }) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15
      ),
      child: InkWell(
        child: Icon(
          icon,
          color: lightIconColor,
        ),
      ),
    );
  }
}