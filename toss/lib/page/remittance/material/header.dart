import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class Header extends StatefulWidget {

  final TabController tabController;

  const Header({
    required this.tabController,
    Key? key
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  AlignmentGeometry alignmentGeometry = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
        right: 25,
        left: 25,
        bottom: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '어디로 돈을 보낼까요?',
            style: boldStyle,
            textScaleFactor: 1.7,
          ),
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: lightBackgroundColor,
              borderRadius: BorderRadius.circular(25)
            ),
            padding: const EdgeInsets.all(4),
            child: SizedBox(
              height: 40,
              child: TabBar(
                labelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 0.5,
                      spreadRadius: 0.5,
                    )
                  ]
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16
                ),
                unselectedLabelColor: lightSubTextColor,
                tabs: const <Tab>[
                  Tab(
                    text: '추천',
                  ),
                  Tab(
                    text: '계좌',
                  ),
                  Tab(
                    text: '연락처',
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}