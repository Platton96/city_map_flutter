import 'package:city_map_flutter/store/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatefulWidget {
  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Provider Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Selector<Counter, int>(
              builder: (context, data, child) {
                print("object");
                return Text('${counter.value}');
              },
              selector: (buildContext, counter) => counter.value,
            ),
            Text(
              '${counter.value}',
              style: const TextStyle(fontSize: 40),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('back', style: TextStyle(fontSize: 20)),
            ),
            RaisedButton(
              onPressed: counter.changeButtonText,
              child: const Text('randomWords', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increament,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
