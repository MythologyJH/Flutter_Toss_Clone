import 'package:flutter/material.dart';
import 'package:toss/util/color.dart';
import 'package:toss/util/text_style.dart';

class RowTileButton extends StatelessWidget {

  final String iconPath;
  final String buttonText;
  final VoidCallback onTap;
  final String? subTitleText;
  final bool isArrowIconActive;
  final bool isArrowIconColorAlpha;
  final String? arrowIconLabel;

  const RowTileButton({
    required this.iconPath,
    required this.buttonText,
    required this.onTap,
    this.subTitleText,
    this.isArrowIconActive = false,
    this.isArrowIconColorAlpha  = false,
    this.arrowIconLabel,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 15,
            right: 20,
            left: 20
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(
                      iconPath
                    ),
                    height: 30,
                  ),
                  const SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        buttonText,
                        style: lightBoldStyle,
                        textScaleFactor: 1.1,
                      ),
                      subTitleText == null
                        ? Container()
                        : Text(
                            subTitleText!,
                            style: const TextStyle(
                              color: lightSubTextColor,
                              fontWeight: FontWeight.w500
                            ),
                            textScaleFactor: 0.8,
                        )
                    ],
                  ),
                ],
              ),
              isArrowIconActive
                ? Row(
                    children: [
                      arrowIconLabel != null
                        ? Text(
                            arrowIconLabel!,
                            style: const TextStyle(
                              color: lightHighlightTextColor,
                              fontWeight: FontWeight.w600
                            ),
                            textScaleFactor: 0.9,
                         ) : Container(),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: isArrowIconColorAlpha ? lightIconColor : lightSubTextColor,
                      ),
                    ],
                ) : Container()
            ],
          ),
        ),
      ),
    );
  }
}