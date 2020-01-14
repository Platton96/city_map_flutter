import 'package:city_map_flutter/screens/counter_page.dart';
import 'package:city_map_flutter/screens/random_words_page.dart';
import 'package:city_map_flutter/store/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final home = Provider.of<Home>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            RaisedButton(
              child: Text('toCounter'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),
                );
              },    
            ),
            SizedBox(height: 12,),
            RaisedButton(
              child: Text('${home.getRandomButtonText()}'),
              onPressed:home.changeButtonText,    
            )
          ]),
        ));
  }
}
