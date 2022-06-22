import 'package:flutter/material.dart';

import 'material/appbar.dart';
import 'material/get_point.dart';
import 'material/header.dart';

class BenefitPage extends StatefulWidget {

  const BenefitPage({Key? key}) : super(key: key);

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      print(scrollController.offset);
      if(scrollController.position.pixels > 46 && height < 55) {
        setState(() => height = scrollController.position.pixels);
      } else if(scrollController.position.pixels < 55 && height > 46) {
        setState(() => height = scrollController.position.pixels);
      }
    });

    super.initState();
  }
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SizedBox(height: AppBar().preferredSize.height + 10),
                  BenefitHeader(),
                  BenefitGetPoint(),
                ],
              ),
            ),
            BenefitAppBar(
              scrollHeight: height
            ),
          ],
        ),
      )
    );
  }
}
