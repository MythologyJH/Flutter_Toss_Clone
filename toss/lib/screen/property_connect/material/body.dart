import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:toss/screen/property_connect/material/category.dart';
import 'package:toss/screen/property_connect/material/point_type.dart';
import 'package:toss/util/text_style.dart';

import '../../../widget/container_divider.dart';
import '../controller.dart';
import 'bank_type.dart';
import 'card_type.dart';
import 'communication_type.dart';
import 'how_to_choose.dart';
import 'installment_financing_type.dart';
import 'insurance_type.dart';
import 'notice.dart';
import 'securities_type.dart';

class Body extends StatefulWidget {

  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {

  PropertyConnectController controller = PropertyConnectController();

  late TabController tabController;
  final ScrollController scrollController = ScrollController();

  int index = 0;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    scrollController.addListener(() {
      scrollEffect();
    });

    super.initState();
  }

  /// 미해결 부분
  void scrollEffect() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (scrollController.position.pixels > 100 && index < 1) {
        tabController.animateTo(0);
        index = 1;
      } else if (scrollController.position.pixels > 1235 && index < 2) {
        tabController.animateTo(1);
        index = 2;
      } else if (scrollController.position.pixels > 2960 && index < 3) {
        tabController.animateTo(2);
        index = 3;
      } else if (scrollController.position.pixels > 4318 && index < 4) {
        tabController.animateTo(3);
        index = 4;
      } else if (scrollController.position.pixels > 5313 && index < 5) {
        tabController.animateTo(4);
        index = 5;
      } else if (scrollController.position.pixels > 7831 && index < 6) {
        tabController.animateTo(5);
        index = 6;
      } else if (scrollController.position.pixels == scrollController.position.maxScrollExtent && index < 7) {
        tabController.animateTo(6);
        index = 7;
      }
    } else {
      if (scrollController.position.pixels < scrollController.position.maxScrollExtent && index == 7) {
        tabController.animateTo(6);
        index = 6;
      } else if (scrollController.position.pixels < 7629 && index == 6) {
        tabController.animateTo(5);
        index = 5;
      } else if (scrollController.position.pixels < 7127 && index == 5) {
        tabController.animateTo(4);
        index = 4;
      } else if (scrollController.position.pixels < 4608 && index == 4) {
        tabController.animateTo(3);
        index = 3;
      } else if (scrollController.position.pixels < 3069 && index == 3) {
        tabController.animateTo(2);
        index = 2;
      } else if (scrollController.position.pixels < 2251 && index == 2) {
        tabController.animateTo(1);
        index = 1;
      } else if (scrollController.position.pixels < 170 && index == 1) {
        tabController.animateTo(0);
        index = 0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                const SliverAppBar(
                  iconTheme: IconThemeData(
                    color: Colors.black
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const NoticeCard(),
                    helloMessage(),
                  ])
                ),
                PropertyConnectCategory(
                  tabController: tabController,
                  onTap: (int value) {
                    switch (value) {
                      case 0:
                        scrollController.jumpTo(100);
                        tabController.animateTo(0);
                        break;
                      case 1:
                        scrollController.jumpTo(1260);
                        tabController.animateTo(1);
                        break;
                      case 2:
                        scrollController.jumpTo(2990);
                        tabController.animateTo(2);
                        break;
                      case 3:
                        scrollController.jumpTo(4340);
                        tabController.animateTo(3);
                        break;
                      case 4:
                        scrollController.jumpTo(5341);
                        tabController.animateTo(4);
                        break;
                      case 5:
                        scrollController.jumpTo(7852);
                        tabController.animateTo(5);
                        break;
                      case 6:
                        scrollController.jumpTo(
                            scrollController.position.maxScrollExtent);
                        tabController.animateTo(6);
                        break;
                      default:
                        null;
                    }
                  },
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      BankType(
                        controller: controller,
                      ),
                      ContainerDivider(),
                      // 1260
                      CardType(
                        controller: controller,
                      ),
                      ContainerDivider(),
                      // 2990
                      SecuritiesType(),
                      ContainerDivider(),
                      // 4340
                      InstallmentFinancingType(),
                      ContainerDivider(),
                      // 5341
                      InsuranceType(),
                      ContainerDivider(),
                      // 7852
                      PointType(),
                      ContainerDivider(),
                      CommunicationType(),
                    ],
                  )
                ),
              ],
            ),
            ValueListenableBuilder<List>(
              valueListenable: controller.readChooseNotifier,
              builder: (BuildContext context, value, _) {
                if(value.isEmpty) {
                  return Container();
                } else {
                  return Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: HowManyChooseProperty(
                      controller: controller,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget helloMessage() {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 25,
        bottom: 25
      ),
      child: const Text(
        '어떤 자산을 연결할까요?',
        style: boldStyle,
        textScaleFactor: 1.22,
      ),
    );
  }
}