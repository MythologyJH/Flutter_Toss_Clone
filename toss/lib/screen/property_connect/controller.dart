import 'package:flutter/material.dart';

class PropertyConnectController {

  // static final PropertyConnectController _instance = PropertyConnectController._internal();

  // factory PropertyConnectController() => _instance;

  // PropertyConnectController._internal() {}

  ValueNotifier<List<String>> _chooseListProvider = ValueNotifier<List<String>>([]);

  ValueNotifier<List<String>> get readChooseNotifier => _chooseListProvider;

  void addChooseValue({
    required String value,
  }) {
    _chooseListProvider.value.add(value);

    _chooseListProvider.notifyListeners();
  }

  void removeChooseValue({
    required String value
  }) {
    _chooseListProvider.value.removeWhere((element) => element == value);

    _chooseListProvider.notifyListeners();
  }

  bool isCheck({
    required String value
  }) {
    print(_chooseListProvider.value.contains(value));
    return _chooseListProvider.value.contains(value);
  }
}