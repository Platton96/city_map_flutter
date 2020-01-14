import 'package:english_words/english_words.dart';
import 'package:mobx/mobx.dart';

part 'random_words.g.dart';

class RandomWords = _RandomWords with _$RandomWords;

abstract class _RandomWords with Store {
  @observable
  ObservableList<String>  entries = ObservableList<String>();

  @action
  void addItem() {
    entries.add(WordPair.random().asCamelCase);
  }

  void loadItems(){
    entries.add("asdasdasd");
  }
  void goBack() {
    
  }
}