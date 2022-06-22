import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';

class DividendPayout extends StatelessWidget {

  const DividendPayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              right: 25,
              left: 25,
              bottom: 20
            ),
            child: Text(
              '1주만 사도\n적금 이자처럼 배당받는 주식',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 15,
                  top: 5,
                  bottom: 5
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg'
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '고양이',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: lightSubTextColor
                              ),
                            ),
                            Text(
                              '연 1.40%',
                              style: const TextStyle(
                                color: lightHighlightTextColor,
                                fontWeight: FontWeight.w600
                              ),
                              textScaleFactor: 1.0,
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          '배당락 7월 8일',
                          style: TextStyle(
                            color: lightIconColor,
                            fontWeight: FontWeight.w500
                          ),
                          textScaleFactor: 0.8,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: lightIconColor,
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          Container(
            height: 0.5,
            color: lightIconColor,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: const Center(
              child: Text(
                '더보기',
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