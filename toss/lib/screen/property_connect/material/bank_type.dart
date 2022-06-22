import 'package:flutter/material.dart';
import 'package:toss/screen/property_connect/controller.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/format.dart';
import 'package:toss/util/text_style.dart';

class BankType extends StatefulWidget {

  final PropertyConnectController controller;

  const BankType({
    required this.controller,
    Key? key
  }) : super(key: key);

  @override
  State<BankType> createState() => _BankTypeState();
}

class _BankTypeState extends State<BankType> {

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
                for (var element in bankList) {
                  setState(() {
                    isAll = false;
                    widget.controller.removeChooseValue(value: element);
                  });
                }
              } else {
                for (var element in bankList) {
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
                children: [
                  const Text(
                    '은행',
                    style: boldStyle,
                    textScaleFactor: 1.2,
                  ),
                  Text(
                    isAll ? '선택 해제' : '전체 선택',
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
          itemCount: bankList.length,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 1),
          itemBuilder: (BuildContext context, int index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  if(!widget.controller.isCheck(value: bankList[index])) {
                    setState(() {
                      isAll = true;
                      widget.controller.addChooseValue(value: bankList[index]);
                    });
                  } else {
                    setState(() => widget.controller.removeChooseValue(value: bankList[index]));
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
                          Image(
                            image: AssetImage(
                              bankImage(
                                bank: bankList[index]
                              )
                            ),
                            height: 25,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            convertBank(
                              bank: bankList[index]
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
                          if(!widget.controller.isCheck(value: bankList[index])) {
                            setState(() {
                              isAll = true;
                              widget.controller.addChooseValue(value: bankList[index]);
                            });
                          } else {
                            setState(() => widget.controller.removeChooseValue(value: bankList[index]));
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
                                color: widget.controller.isCheck(value: bankList[index])
                                  ? lightHighlightTextColor
                                  : lightIconColor,
                                width: 1.7
                              ),
                              color: widget.controller.isCheck(value: bankList[index])
                                ? lightHighlightTextColor
                                : Colors.white,
                            ),
                            padding: EdgeInsets.all(2),
                            child: Center(
                              child: ImageIcon(
                                const AssetImage(
                                  'resource/icon/chat.png'
                                ),
                                size: 12,
                                color: widget.controller.isCheck(value: bankList[index])
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
        Container(
          height: 1,
          color: lightBackgroundColor,
        ),
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () => null,
            child: Container(
              padding: EdgeInsets.all(20),
              child: const Center(
                child: Text(
                  '모두 보기',
                  style: TextStyle(
                    color: lightHighlightTextColor,
                    fontWeight: FontWeight.w800
                  ),
                  textScaleFactor: 0.95,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  List<dynamic> bankList = [
    'kakaoBank',
    'kbBank',
    'nhBank'
  ];
}