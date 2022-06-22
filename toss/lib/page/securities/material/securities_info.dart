import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class SecuritiesInfo extends StatefulWidget {

  const SecuritiesInfo({Key? key}) : super(key: key);

  @override
  State<SecuritiesInfo> createState() => _SecuritiesInfoState();
}

class _SecuritiesInfoState extends State<SecuritiesInfo> {

  final String infoText = '''
토스증권에서 제공하는 투자 정보는 고객의 투자 판단을 위한 단순
참고용일뿐, 투자 제안 및 권유-종목 추천을 위해 작성된 것이
아닙니다.
''';

  final List<String> essentialInfoText = [
    '당사자는 금융투자상품에 관하여 충분히 설명할 의무가 있으며,\n투자자는 투자에 앞서 당사의 설명을 들으시기 바랍니다.',
    '금융투자상품은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.',
    '금융투자상품은 원금손실이 발생할 수 있으며, 그 손실은\n투자자에게 귀속됩니다.',
    '국내 주식거래 수수료는 0.015%이며, 기타 수수료에 관한 사항은\n당사 홈페이지 등을 참조하시기 바랍니다.'
  ];

  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 40
      ),
      color: lightBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    ImageIcon(
                      AssetImage(
                        'resource/icon/chat.png'
                      ),
                      color: lightSubTextColor,
                      size: 25,
                    ),
                    Text(
                      '토스증권',
                      style: TextStyle(
                        color: lightSubTextColor,
                        fontWeight: FontWeight.w800
                      ),
                      textScaleFactor: 0.9,
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  infoText,
                  style: TextStyle(
                    color: lightSubTextColor.withAlpha(150),
                    fontWeight: FontWeight.w400
                  ),
                  textScaleFactor: 0.78,
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        '투자 유의사항',
                        style: TextStyle(
                          color: lightIconColor,
                          fontWeight: FontWeight.w700,
                        ),
                        textScaleFactor: 0.75,
                      ),
                      VerticalDivider(),
                      Text(
                        '고객센터',
                        style: TextStyle(
                          color: lightIconColor,
                          fontWeight: FontWeight.w700,
                        ),
                        textScaleFactor: 0.75,
                      )
                    ]
                  ),
                ),
                const SizedBox(height: 65),
                IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          '이용자권리 및 유의사항',
                          style: TextStyle(
                            color: lightIconColor,
                            fontWeight: FontWeight.w700,
                          ),
                          textScaleFactor: 0.75,
                        ),
                        VerticalDivider(),
                        Text(
                          '신용정보 활용체계',
                          style: TextStyle(
                            color: lightIconColor,
                            fontWeight: FontWeight.w700,
                          ),
                          textScaleFactor: 0.75,
                        ),
                        VerticalDivider(),
                        Text(
                          '개인정보처리방침',
                          style: TextStyle(
                            color: lightIconColor,
                            fontWeight: FontWeight.w700,
                          ),
                          textScaleFactor: 0.75,
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 25,
              bottom: 25
            ),
            height: 0.3,
            color: lightIconColor.withAlpha(100),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () => setState(() => isOpen = !isOpen),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '꼭알아두세요',
                        style: TextStyle(
                          color: lightIconColor,
                          fontWeight: FontWeight.w600
                        ),
                        textScaleFactor: 0.88,
                      ),
                      Icon(
                        isOpen
                          ? Icons.keyboard_arrow_down_outlined
                          : Icons.keyboard_arrow_right_outlined,
                        size: 20,
                        color: lightIconColor,
                      )
                    ],
                  ),
                ),
                isOpen
                  ? Container(
                      margin: const EdgeInsets.only(
                        top: 15
                      ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: essentialInfoText.length,
                        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 8),
                        itemBuilder: (BuildContext context, int index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '-',
                              style: TextStyle(
                                color: lightIconColor
                              ),
                              textScaleFactor: 0.75,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                essentialInfoText[index],
                                style: const TextStyle(
                                  color: lightIconColor,
                                  fontWeight: FontWeight.w500
                                ),
                                textScaleFactor: 0.75,
                              ),
                            )
                          ],
                        ),
                    ),
                  )
                  : Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}