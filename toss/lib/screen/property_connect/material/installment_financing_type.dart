import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class InstallmentFinancingType extends StatefulWidget {

  const InstallmentFinancingType({Key? key}) : super(key: key);

  @override
  State<InstallmentFinancingType> createState() => _InstallmentFinancingTypeState();
}

class _InstallmentFinancingTypeState extends State<InstallmentFinancingType> {

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () => print('hi'),
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
                    '할부금융',
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
          itemCount: 15,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 0),
          itemBuilder: (BuildContext context, int index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                onTap: () => setState(() => isCheck = !isCheck),
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
                        children: const [
                          Image(
                            image: AssetImage(
                              'resource/icon/chat.png'
                            ),
                            height: 25,
                          ),
                          SizedBox(width: 15),
                          Text(
                            '고양이',
                            style: boldStyle,
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
                        onTap: () => setState(() => isCheck = !isCheck),
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
                                color: isCheck ? lightHighlightTextColor : lightIconColor,
                                width: 1.7
                              ),
                              color: isCheck ? lightHighlightTextColor : Colors.white,
                            ),
                            padding: EdgeInsets.all(2),
                            child: Center(
                              child: ImageIcon(
                                AssetImage(
                                  'resource/icon/chat.png'
                                ),
                                size: 12,
                                color: isCheck ? Colors.white : lightIconColor,
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
}