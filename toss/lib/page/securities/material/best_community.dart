import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

class BestCommunity extends StatelessWidget {

  const BestCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 20
            ),
            child: Text(
              '인기 커뮤니티',
              style: lightBoldStyle,
              textScaleFactor: 1.2,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(
                  bottom: index == 2 ? 20 : 40
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 10,
                        top: 8,
                        bottom: 8
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg'
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '고양이',
                                    style: const TextStyle(
                                      color: lightSubTextColor,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 13,
                                    color: lightSubTextColor,
                                  )
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    '${numberFormat.format(34600)}원',
                                    style: const TextStyle(
                                      color: lightSubTextColor
                                    ),
                                    textScaleFactor: 0.8,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '+100%',
                                    style: const TextStyle(
                                      color: Colors.red,
                                    ),
                                    textScaleFactor: 0.8,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 15
                        ),
                        width: MediaQuery.of(context).size.width * 0.72,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: lightBackgroundColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '고양이',
                              style: const TextStyle(
                                color: lightStringSubTextColor,
                                fontWeight: FontWeight.w300
                              ),
                              textScaleFactor: 0.85,
                            ),
                            Text(
                              '야옹양오\n야야아아아아아앙ㅇ\n야오오오오오ㅗㅇㅇ!!',
                              style: const TextStyle(
                                color: lightNormalTextColor
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 15
                              ),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                      'resource/icon/chat.png'
                                    ),
                                    color: lightIconColor,
                                    size: 17,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '500',
                                    style: const TextStyle(
                                      color: lightIconColor,
                                      fontWeight: FontWeight.w300
                                    ),
                                    textScaleFactor: 0.8,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
          ),
          Container(
            height: 0.5,
            color: lightIconColor,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                '다른 커뮤니티 보기',
                style: const TextStyle(
                  color: lightHighlightTextColor,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}