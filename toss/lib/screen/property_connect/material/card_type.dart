import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

import '../../../util/format.dart';
import '../controller.dart';

class CardType extends StatefulWidget {

  final PropertyConnectController controller;

  const CardType({
    required this.controller,
    Key? key
  }) : super(key: key);

  @override
  State<CardType> createState() => _CardTypeState();
}

class _CardTypeState extends State<CardType> {

  bool isAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              if(isAll == true) {
                for (var element in cardList) {
                  setState(() {
                    isAll = false;
                    widget.controller.removeChooseValue(value: element);
                  });
                }
              } else {
                for (var element in cardList) {
                  setState(() {
                    isAll = true;
                    widget.controller.addChooseValue(value: element);
                  });
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
                bottom: 10
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '카드',
                    style: boldStyle,
                    textScaleFactor: 1.2,
                  ),
                  Text(
                    '전체 선택',
                    style: boldIconColorStyle,
                    textScaleFactor: 0.8,
                  )
                ],
              )
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: cardList.length,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 0),
          itemBuilder: (BuildContext context, int index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  if(!widget.controller.isCheck(value: cardList[index])) {
                    setState(() {
                      isAll = true;
                      widget.controller.addChooseValue(value: cardList[index]);
                    });
                  } else {
                    setState(() => widget.controller.removeChooseValue(value: cardList[index]));
                  }
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 18,
                    bottom: 18,
                    right: 20,
                    left: 20
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage(
                              'resource/icon/chat.png'
                            ),
                            height: 25,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            convertCard(
                              card: cardList[index]
                            ),
                            style: lightBoldStyle,
                            textScaleFactor: 1.1,
                          ),
                        ],
                      ),
                      InkWell(
                        customBorder: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50)
                          ),
                        ),
                        onTap: () {
                          if(!widget.controller.isCheck(value: cardList[index])) {
                            setState(() {
                              isAll = true;
                              widget.controller.addChooseValue(value: cardList[index]);
                            });
                          } else {
                            setState(() => widget.controller.removeChooseValue(value: cardList[index]));
                          }
                        },
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 150
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: widget.controller.isCheck(value: cardList[index])
                                  ? lightHighlightTextColor
                                  : lightIconColor,
                                width: 1.7
                              ),
                              color: widget.controller.isCheck(value: cardList[index])
                                ? lightHighlightTextColor
                                : Colors.white,
                            ),
                            padding: const EdgeInsets.all(2),
                            child: Center(
                              child: ImageIcon(
                                const AssetImage(
                                  'resource/icon/chat.png'
                                ),
                                size: 12,
                                color: widget.controller.isCheck(value: cardList[index])
                                  ? Colors.white
                                  : lightIconColor,
                              )
                            ),
                          )
                      ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  List<String> cardList = [
    'nhCard',
    'kbCard',
    'sinHanCard',
    'samsungCard',
    'hyundaiCard',
    'hanaCard',
    'kakaoCard',
    'lotteCard',
    'woriCard',
    'bcCard',
    'kBankCard'
  ];
}