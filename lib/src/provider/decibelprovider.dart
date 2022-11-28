import 'package:flutter/cupertino.dart';

class DecibelProvider extends ChangeNotifier {
  double _decibel = 0.0;
  set setDecibel(double decibell) {
    _decibel = decibell;
    notifyListeners();
  }

  get decibel {
    return _decibel;
  }
}
