import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

import '../data.dart';

class AttentionStock extends StatelessWidget {

  const AttentionStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              right: 25,
              left: 25
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '관심 주식',
                  style: boldStyle,
                  textScaleFactor: 1.2,
                ),
                SizedBox(height: 10),
                Text(
                  '추가한 주식의 소식을 빠르게 알려드려요',
                  style: lightBoldStyle,
                  textScaleFactor: 0.78,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          ListView.separated(
            shrinkWrap: true,
            itemCount: stockList.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 0),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.only(
                  top: 13,
                  bottom: 13,
                  left: 20,
                  right: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: stockColor(
                              stock: stockList[index].name!
                            ),
                          ),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Image.asset(
                              stockImage(
                                  stock: stockList[index].name!
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              convertStock(
                                stock: stockList[index].name!
                              ),
                              style: lightBoldStyle,
                              textScaleFactor: 1.0,
                            ),
                            Text(
                              '${numberFormat.format(stockList[index].additionalPersonal)}명 추가',
                              style: const TextStyle(
                                color: lightSubTextColor,
                                fontWeight: FontWeight.bold
                              ),
                              textScaleFactor: 0.78,
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: lightHighlightBackgroundColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 15,
                        left: 15
                      ),
                      child: const Center(
                        child: Text(
                          '추가',
                          style: TextStyle(
                            color: lightHighlightTextColor,
                            fontWeight: FontWeight.w500
                          ),
                          textScaleFactor: 0.8,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Column(
            children: [
              const SizedBox(height: 10),
              Container(
                height: 0.5,
                color: lightIconColor,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                '다른 주식 보기',
                style: TextStyle(
                  color: lightHighlightTextColor,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}