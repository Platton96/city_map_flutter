import 'package:city_map_flutter/screens/counter_page.dart';
import 'package:city_map_flutter/screens/home_page.dart';

enum Pages {
  home,
  counter,
}

final pageDictionary = {
  Pages.home : HomePage(),
  Pages.counter : CounterPage()
};

getPage(Pages page)
{
  
}