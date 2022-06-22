class BankData {

  String? nickName;
  String? bankName;
  String? number;
  int? amount;

  BankData({
    this.nickName,
    this.bankName,
    this.number,
    this.amount
  });

  BankData.fromJson(Map<String, dynamic> json) {
    nickName = json['nickName'];
    bankName = json['bankName'];
    number = json['number'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nickName'] = nickName;
    data['bankName'] = bankName;
    data['number'] = number;
    data['amount'] = amount;
    return data;
  }
}