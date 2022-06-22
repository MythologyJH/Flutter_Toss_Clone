class Stock {

  String? name;
  int? lastPrice;
  int? additionalPersonal;

  Stock({
    this.name,
    this.lastPrice,
    this.additionalPersonal
  });

  Stock.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lastPrice = json['lastPrice'];
    additionalPersonal = json['additionalPersonal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['lastPrice'] = lastPrice;
    data['additionalPersonal'] = additionalPersonal;
    return data;
  }
}