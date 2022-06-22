
import 'package:toss/model/bank_data.dart';

import 'model/property.dart';

List<Property> bankDummyList = [
  Property(
    uid: 'i20dxm20dfh20xla',
    additionalDate: '2022-06-16 12:00:00.000',
    bookMark: true,
    isShow: true,
    bankData: BankData(
      nickName: '입출금통장',
      bankName: 'kakaoBank',
      number: '1293038202742',
      amount: 5730230493
    )
  ),
  Property(
    uid: 'ao40cmdxpdfe8md',
    additionalDate: '2022-06-16 13:00:00.000',
    bookMark: false,
    isShow: true,
    bankData: BankData(
      nickName: '입출금통장',
      bankName: 'nhBank',
      number: '03201020382',
      amount: 4930000
    )
  ),
  Property(
    uid: 'y029xmsdlsma834b2ld',
    additionalDate: '2022-06-16 14:00:00.000',
    bookMark: false,
    isShow: true,
    bankData: BankData(
      nickName: '적금',
      bankName: 'kbBank',
      number: '102938403',
      amount: 704930000
    )
  ),
];