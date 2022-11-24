import 'package:flutter/cupertino.dart';

class EnableButton extends ChangeNotifier {
  bool _enable = false;

  get getEnable {
    return _enable;
  }

  set setEnable(bool enable) {
    _enable = enable;
    notifyListeners();
  }
}
