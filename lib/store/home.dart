import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Home with ChangeNotifier {
  Home(this._randomButtonText);

  getRandomButtonText() => _randomButtonText;
  setRandomButtonText(int counter) => _randomButtonText = _randomButtonText;

  String _randomButtonText;
  
  void changeButtonText() {
    _randomButtonText = WordPair.random().asCamelCase;
    notifyListeners();
  }

  void goBack() {}
}
