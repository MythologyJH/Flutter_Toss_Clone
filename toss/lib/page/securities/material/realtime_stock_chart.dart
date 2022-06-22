import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

class RealTimeStockChart extends StatelessWidget {

  const RealTimeStockChart({Key? key}) : super(key: key);

  final TextStyle _tabBarLabelStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Container(
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: const Text(
                '실시간 차트',
                style: lightBoldStyle,
                textScaleFactor: 1.2,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  child: TabBar(
                    labelPadding: EdgeInsets.zero,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: lightIconColor,
                    unselectedLabelStyle: _tabBarLabelStyle,
                    labelStyle: _tabBarLabelStyle,
                    tabs: const <Tab>[
                      Tab(
                        text: '급상승',
                      ),
                      Tab(
                        text: '급하락',
                      ),
                      Tab(
                        text: '인기',
                      ),
                      Tab(
                        text: '거래량',
                      ),
                      Tab(
                        text: '관심',
                      ),
                    ]
                  ),
                ),
                Container(
                  height: 0.5,
                  color: lightIconColor,
                )
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 320,
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(5, (index) => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.only(
                        right: 25,
                        left: 25,
                        top: 10,
                        bottom: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${index + 1}',
                                style: const TextStyle(
                                  color: lightHighlightTextColor,
                                  fontWeight: FontWeight.bold
                                ),
                                textScaleFactor: 1.0,
                              ),
                              const SizedBox(width: 15),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg'
                                ),
                                backgroundColor: Colors.transparent,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '고양이',
                                    style: const TextStyle(
                                      color: lightSubTextColor,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${numberFormat.format(3400)}원',
                                        style: const TextStyle(
                                          color: lightIconColor,
                                          fontWeight: FontWeight.w400
                                        ),
                                        textScaleFactor: 0.8,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          ImageIcon(
                            AssetImage(
                              'resource/icon/chat.png'
                            ),
                            color: lightIconColor,
                          )
                        ],
                      ),
                    );
                  },
                ))
              ),
            ),
            Container(
              height: 0.5,
              color: lightIconColor,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  '더보기',
                  style: const TextStyle(
                    color: lightHighlightTextColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}