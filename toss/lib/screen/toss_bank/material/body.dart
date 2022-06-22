import 'package:flutter/material.dart';

import 'appbar.dart';
import 'next_button.dart';

class Body extends StatefulWidget {

  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                const TossBankAppBar(),
                Expanded(
                  child: Container()
                )
              ],
            ),
            TossBankNextButton(),
          ],
        ),
      ),
    );
  }
}
