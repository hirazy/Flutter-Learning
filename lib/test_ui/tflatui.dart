import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/answer/answer.dart';

class TFlatUI extends StatefulWidget {
  @override
  TFlatUIState createState() => TFlatUIState();
}

class TFlatUIState extends State<StatefulWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          title: Text("TFLAT"),
        ),
        body: Container(
          child: Column(
            children: [
              Answer("GGGGG"),
              ElevatedButton(
                  child: Text(
                    "Using the Raleway font from the awesome_package",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        package: 'assets',
                        color: Colors.red,
                        backgroundColor: Colors.greenAccent),
                  ),
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('Undo Email'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          print("GG");
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  })
            ],
          ),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);

                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: null),

    );
  }
}
