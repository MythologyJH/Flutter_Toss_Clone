import 'package:flutter/material.dart';
import 'package:toss/util/text_style.dart';

class RecommendationCard extends StatelessWidget {

  const RecommendationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 20
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (index) => Container(
            margin: EdgeInsets.only(
              right: index == 3 ? 0 : 10
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            width: MediaQuery.of(context).size.width*0.3333,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '1분 안에',
                      textScaleFactor: 0.8,
                      style: boldSubTextColorStyle,
                    ),
                    Text(
                      '내 보험\n전부 조회',
                      textScaleFactor: 1.1,
                      style: boldStyle,
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                    image: AssetImage(
                      'resource/icon/chat.png'
                    ),
                    height: 40,
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}