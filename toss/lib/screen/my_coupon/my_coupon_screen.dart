import 'package:flutter/material.dart';

import 'material/body.dart';

class MyCouponScreen extends StatelessWidget {

  const MyCouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Body(),
    );
  }
}