import 'package:flutter/material.dart';

class CounterLogic extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void increase() {
    if(_counter < 20){
      _counter += 2;
      notifyListeners();
    }
  }

  void decrease() {
    if(_counter > 0){
      _counter -= 2;
      notifyListeners();
    }
  }
}
