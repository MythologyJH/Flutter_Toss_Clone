import 'package:flutter/material.dart';
import 'package:toss/test_data.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

import '../../../util/format.dart';

class RecommendationType extends StatelessWidget {

  const RecommendationType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 20,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '내 계좌로',
                  style: boldStyle,
                  textScaleFactor: 1.15,
                ),
                Row(
                  children: [
                    Text(
                      '7개',
                      style: TextStyle(
                        color: lightSubTextColor,
                        fontWeight: FontWeight.w600
                      ),
                      textScaleFactor: 0.85,
                    ),
                    const SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 13,
                      color: lightSubTextColor,
                    )
                  ],
                )
              ],
            )
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: bankDummyList.length,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () => null,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      right: 25,
                      left: 25
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                right: 3,
                              ),
                              child: CircleAvatar(
                                backgroundColor: bankColor(
                                  bank: bankDummyList[index].bankData!.bankName!
                                ),
                                backgroundImage: AssetImage(
                                  bankImage(
                                    bank: bankDummyList[index].bankData!.bankName!
                                  )
                                ),
                                radius: 20,
                              ),
                            ),
                            bankDummyList[index].bookMark == true
                              ? Positioned(
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.blue.shade400,
                                          Colors.blueAccent
                                        ]
                                      )
                                    ),
                                    padding: const EdgeInsets.all(2),
                                    child: const Icon(
                                      Icons.star,
                                      size: 9,
                                      color: Colors.white,
                                    ),
                                  )
                              ) : Container()
                          ],
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bankDummyList[index].bankData!.nickName!,
                              textScaleFactor: 1,
                              style: lightBoldStyle
                            ),
                            Text(
                              '${convertBank(bank: bankDummyList[index].bankData!.bankName!)} ${bankDummyList[index].bankData!.number}',
                              textScaleFactor: 0.85,
                              style: boldSubTextColorStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 20,
              bottom: 10
            ),
            child: const Text(
              '최근 보낸 계좌로',
              style: boldStyle,
              textScaleFactor: 1.15,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () => null,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      right: 12,
                      left: 25
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: 3,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: bankColor(
                                      bank: 'kakaoBank'
                                    ),
                                    backgroundImage: AssetImage(
                                      bankImage(
                                        bank: 'kakaoBank'
                                      )
                                    ),
                                    radius: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '입출금 통장',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textScaleFactor: 1,
                                  style: lightBoldStyle
                                ),
                                Text(
                                  '${convertBank(bank: 'kakaoBank')} 00000000000',
                                  textScaleFactor: 0.85,
                                  style: boldSubTextColorStyle,
                                )
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: ImageIcon(
                            AssetImage(
                              'resource/icon/chat.png',
                            ),
                            size: 23.5,
                            color: lightIconColor,
                          ),
                          onPressed: () => null,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}