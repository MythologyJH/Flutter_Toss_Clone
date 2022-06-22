import 'bank_data.dart';

class Property {

  String? uid;
  String? additionalDate;
  bool? bookMark;
  bool? isShow;
  BankData? bankData;

  Property({
    this.uid,
    this.additionalDate,
    this.bookMark,
    this.isShow,
    this.bankData
  });

  Property.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    additionalDate = json['additionalDate'];
    bookMark = json['bookMark'];
    isShow = json['isShow'];
    bankData = json['bankData'] != null
      ? BankData.fromJson(json['bankData'])
      : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['additionalDate'] = additionalDate;
    data['bookMark'] = bookMark;
    data['isShow'] = isShow;
    if (bankData != null) {
      data['bankData'] = bankData!.toJson();
    }
    return data;
  }
}