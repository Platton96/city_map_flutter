import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {

Counter(this._value);

  int get value => _value;
  set(int value) => _value = value;
  int _value;

  String _randomWords="randomWords";

  String get randomWords => _randomWords;
  void increament() {
     _value++;
    notifyListeners();
  }
  
    void changeButtonText() {
    _randomWords = WordPair.random().asCamelCase;
    notifyListeners();
  }

  void goBack() {
    
  }
}