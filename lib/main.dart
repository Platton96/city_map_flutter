import 'package:city_map_flutter/screens/counter_page.dart';
import 'package:city_map_flutter/screens/home_page.dart';
import 'package:city_map_flutter/store/counter.dart';
import 'package:city_map_flutter/store/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter(0)),
        ChangeNotifierProvider(create: (context) => Home("randomTex"))
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}



