import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class ContactInformationType extends StatelessWidget {

  const ContactInformationType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            right: 25,
            left: 25
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: lightBackgroundColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 22,
                  color: lightSubTextColor,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      isDense: true,
                      isCollapsed: true,
                      border: InputBorder.none,
                      hintText: '검색/직접입력',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: lightSubTextColor
                      )
                    ),
                  )
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => null,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                            left: 25,
                            right: 25,
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                  'https://mblogthumb-phinf.pstatic.net/20160304_207/vkqudwjdrb_1457048171405bKGLm_JPEG/%BD%CC%C7%CF_%C5%C2%B1%B9%B8%C6%C1%D6_Singha_%BD%CC%C7%CF%B8%C6%C1%D6_%B5%BF%B3%B2%BE%C6%B8%C6%C1%D610.jpg?type=w2'
                                ),
                                radius: 20,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '싱하',
                                    textScaleFactor: 0.95,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800
                                    ),
                                  ),
                                  Text(
                                    '010-0000-0000',
                                    style: TextStyle(
                                      color: lightSubTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        )
      ],
    );
  }
}