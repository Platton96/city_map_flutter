import 'package:flutter/material.dart';

class Counter with ChangeNotifier {

Counter(this._counter);

  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;
  int _counter;

  void increament() {
     _counter++;
    notifyListeners();
  }

  void goBack() {
    
  }
}