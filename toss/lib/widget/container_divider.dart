import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

class ContainerDivider extends StatelessWidget {

  const ContainerDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: MediaQuery.of(context).size.width,
      color: lightBackgroundColor,
    );
  }
}