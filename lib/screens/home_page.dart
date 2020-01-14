import 'package:city_map_flutter/screens/counter_page.dart';
import 'package:city_map_flutter/screens/random_words_page.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            RaisedButton(
              child: Text(wordPair.asPascalCase),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),
                );
              },    
            ),
            SizedBox(height: 12,),
            RaisedButton(
              child: Text(wordPair.asPascalCase),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RandomWords()),
                );
              },    
            )
          ]),
        ));
  }
}
