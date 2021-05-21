import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_app/models/ListTitle.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeLess(),
    );
  }
}

class HomeLess extends StatefulWidget {
  @override
  Home_State createState() => Home_State();
}

class Home_State extends State<HomeLess> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  int count = 0;

  void changeCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: new Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              title: Text("Home"),
            ),
            body: Center(
              child: Column(
                children: [
                  Container(
                      child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.ballot_outlined),
                          onPressed: changeCount),
                      ElevatedButton(child: Text("Pika"), onPressed: null),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Show!!",
                            style: GoogleFonts.pacifico(),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(Icons.ballot_outlined), onPressed: () {}),
                      Text(
                        "Hide!!" + count.toString(),
                        textAlign: TextAlign.center,
                      ),
                      text()
                    ],
                  )
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Container(
                height: 50.0,
              ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                tooltip: "Add",
                onPressed: () {
                  _openBottomSheet(context);
                }),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  Widget text() {
    var text = new Text(
      "assasa",
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: new TextStyle(
          color: Colors.deepPurple,
          fontSize: 18.00,
          fontFamily: "Font1",
          fontWeight: FontWeight.bold),
    );

    return new Row(
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.all(10.0),
          child: new Icon(Icons.ac_unit, color: Colors.black26),
        ),
        text
      ],
    );
  }

  Future<void> fetchUserOrder() {
    return Future.delayed(Duration(seconds: 2), () => print('Large Latte'));
  }

  void _openBottomSheet(context) {
    // ignore: missing_return
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            padding: EdgeInsets.all(5),
            child: Wrap(
              children: [
                getListTitle(Icons.more, Colors.black45, "More", context, () {
                  print("more");
                  Navigator.of(context).pop();
                }),
                getListTitle(Icons.favorite, Colors.pink, "Favourites", context,
                    () {
                  print("favorite");
                  Navigator.of(context).pop();
                }),
                getListTitle(Icons.account_box, Colors.blue, "Profile", context,
                    () {
                  print("blue");
                  Navigator.of(context).pop();
                }),
                Divider(
                  thickness: 2.0,
                  height: 10.0,
                ),
                getListTitle(Icons.exit_to_app, null, "Logout", context, () {
                  print("exit_to_app");
                  Navigator.of(context).pop();
                })
              ],
            ),
          );
        });
  }
}
