import 'package:flutter/material.dart';

class RemittanceAccount extends StatelessWidget {
  
  const RemittanceAccount({Key? key}) : super(key: key);

  final TextStyle _textStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22
  );

  final TextStyle _labelStyle = const TextStyle(
    fontSize: 18
  );

  final EdgeInsetsGeometry _contentsPadding = const EdgeInsets.symmetric(
    horizontal: 0,
    vertical: 0
  );
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 10
      ),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: '은행 선택',
              labelStyle: _labelStyle,
              suffixIcon: Icon(
                Icons.keyboard_arrow_down
              ),
              isDense: true,
              contentPadding: _contentsPadding
            ),
            style: _textStyle,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: '계좌번호 입력',
              labelStyle: _labelStyle,
              isDense: true,
              contentPadding: _contentsPadding
            ),
            style: _textStyle,
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }
}