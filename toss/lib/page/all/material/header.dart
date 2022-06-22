import 'package:flutter/material.dart';
import 'package:toss/util/text_style.dart';

import '../../../widget/row_tile_button.dart';

class AllHeader extends StatelessWidget {

  const AllHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              const Text(
                '전체',
                style: boldStyle,
                textScaleFactor: 1.5,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(5, (index) {
                    if(index == 1 || index == 3) {
                      return Container(
                        width: 10,
                      );
                    } else {
                      return Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: MediaQuery.of(context).size.width*0.3,
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                  'resource/icon/chat.png'
                                ),
                                height: 30,
                              ),
                              SizedBox(height: 8),
                              Text(
                                '카테고리',
                                style: lightBoldStyle,
                                textScaleFactor: 0.8,
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '내 토스인증서',
          onTap: () => null,
          isArrowIconActive: true,
          arrowIconLabel: '백업하기',
        ),
        RowTileButton(
          iconPath: 'resource/icon/chat.png',
          buttonText: '내 토스 인증서',
          onTap: () => null,
          isArrowIconActive: true,
        ),
        const SizedBox(height: 3),
        Container(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15
          ),
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.shade200,
          )
        ),
      ],
    );
  }
}