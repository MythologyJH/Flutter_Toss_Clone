import 'package:flutter/material.dart';

import 'material/body.dart';

class PropertyScreen extends StatelessWidget {

  const PropertyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}