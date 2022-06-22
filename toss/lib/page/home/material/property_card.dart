import 'package:flutter/material.dart';
import 'package:toss/model/property.dart';
import 'package:toss/screen/property/property_screen.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/route.dart';

import '../../../test_data.dart';
import '../../../util/format.dart';
import '../../../util/text_style.dart';

class PropertyCard extends StatelessWidget {

  const PropertyCard({Key? key}) : super(key: key);

  final EdgeInsetsGeometry _contentsPadding = const EdgeInsets.all(20);

  final BorderRadius _titleButtonRadius = const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16)
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        // padding: _contentsPadding,
        child: Column(
          children: [
            Material(
              borderRadius: _titleButtonRadius,
              color: Colors.white,
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: _titleButtonRadius,
                ),
                onTap: () => route(context, route: const PropertyScreen()),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 5,
                    top: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '자산',
                        textScaleFactor: 1.3,
                        style: boldStyle,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 10
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bankDummyList.length,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 0),
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () => print('hi'),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                          top: 15,
                          bottom: 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
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
                                        textScaleFactor: 0.75,
                                        style: boldSubTextColorStyle
                                      ),
                                      Text(
                                        '${numberFormat.format(bankDummyList[index].bankData!.amount)} 원',
                                        textScaleFactor: 1.1,
                                        style: lightBoldStyle,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Material(
                              color: Colors.white,
                              child: InkWell(
                                onTap: () => print(''),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: lightBackgroundColor,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(
                                    top: 6,
                                    bottom: 6,
                                    right: 13,
                                    left: 13
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '송금',
                                      style: boldSubTextColorStyle,
                                      textScaleFactor: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20
      ),
      child: Divider(
        thickness: 1.0,
        color: Colors.grey.shade100,
      )
    );
  }
}