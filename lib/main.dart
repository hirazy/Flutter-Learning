import 'package:flutter/material.dart';
import 'package:hello_app/Tflat/TflatScreen.dart';
import 'package:hello_app/splash/Splash.dart';
import 'package:hello_app/step/Stepper.dart';
import 'package:hello_app/test_ui/tflat.dart';
import 'package:hello_app/test_ui/tflatui.dart';

import 'card/item_test.dart';
import 'home/Home.dart';

void main() {
  runApp(
      MaterialApp(
          title: "Home",
          theme: ThemeData(primaryColor: Colors.green[300]),
          home: TflatScreen()
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.
                primarySwatch: Colors.deepOrange,
              ),
              home: MyHomePage(title: 'Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    void _log() {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.search),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
