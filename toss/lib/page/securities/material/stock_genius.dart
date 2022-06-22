import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

import '../../../util/none_scroll_effect.dart';

class StockGenius extends StatelessWidget {

  StockGenius({Key? key}) : super(key: key);

  final Map<String, dynamic> _parents = {
    '고양이': 'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
    '고양이': 'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
    '고양이': 'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
    '고양이': 'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
    '고양이': 'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
    '고양이': 'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '주식천재 따라사기',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  textScaleFactor: 1.2,
                ),
                SizedBox(height: 5),
                Text(
                  '먼저 부자가 된 그들의 선택은?',
                  style: TextStyle(
                    color: lightSubTextColor,
                    fontWeight: FontWeight.w600
                  ),
                  textScaleFactor: 0.85,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: ScrollConfiguration(
              behavior: NoneScrollEffect(),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    right: index == 4 ? 25 : 0
                  ),
                  child: _card(
                    imagePath: _parents.values.toList()[0],
                    name: _parents.keys.toList()[0]
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _card({
    required String imagePath,
    required String name,
  }) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: lightIconColor,
          backgroundImage: NetworkImage(
            imagePath
          ),
          radius: 50,
        ),
        const SizedBox(height: 15),
        Text(
          name,
          style: const TextStyle(
            color: lightSubTextColor,
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}