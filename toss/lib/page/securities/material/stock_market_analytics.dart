import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

class StockMarketAnalytics extends StatelessWidget {

  const StockMarketAnalytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 35,
        bottom: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 10
            ),
            child: const Text(
              '애널리스트의 주식 시장 요약',
              style: lightBoldStyle,
              textScaleFactor: 1.2,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 25,
                  top: 15,
                  bottom: 15
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: Text(
                              '목요일',
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold
                              ),
                              textScaleFactor: 0.8,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '2조 날라간 하이브, 앞으로는?',
                              style: TextStyle(
                                color: lightSubTextColor,
                                fontWeight: FontWeight.w600
                              ),
                              maxLines: 2,
                            ),
                            Text(
                              '${numberFormat.format(999999)}명이 봤어요',
                              style: const TextStyle(
                                color: lightIconColor,
                                fontWeight: FontWeight.w600
                              ),
                              textScaleFactor: 0.7,
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: lightIconColor,
                    )
                  ],
                ),
              );
            }
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                color: lightHighlightBackgroundColor,
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(15),
              child: const Center(
                child: Text(
                  '새로운 글 알람받기',
                  style: const TextStyle(
                    color: lightHighlightTextColor,
                    fontWeight: FontWeight.w600
                  ),
                  textScaleFactor: 1.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}