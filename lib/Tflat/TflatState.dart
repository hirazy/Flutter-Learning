import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/Tflat/ui/AccountList.dart';
import 'package:hello_app/models/Account.dart';

class TFlatState extends StatefulWidget {
  @override
  TFLatStateFul createState() => TFLatStateFul();
}

class TFLatStateFul extends State<TFlatState> with WidgetsBindingObserver {
  var _editEmailController = TextEditingController();
  var _editPassWorldController = TextEditingController();

  Account _account = new Account(email: "", password: "");

  List<Account> _list = List<Account>();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _addAccount(){
    _account.createdTime = DateTime.now();
    _list.add(_account);
    _account = Account(email: "", password: "");
    _editEmailController.text = "";
    _editPassWorldController.text = "";
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
    } else if (state == AppLifecycleState.resumed) {}
  }

  void _showBottomAdd() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _editEmailController,
                decoration: InputDecoration(
                    labelText: "Enter you email"),
                onChanged: (text) {
                  _account.email = text;
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _editPassWorldController,
                decoration: InputDecoration(
                    labelText: "Enter you password"),
                onChanged: (text) {
                  _account.password = text;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 50,
                        child: RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "RobotoMono",
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                          onPressed: (){
                        setState(() {
                          _addAccount();
                        });
                          },
                    )),
                  ),
                  Container(
                    width: 20.0,
                  ),
                  Expanded(
                      child: SizedBox(
                        width: 50,
                  child: RaisedButton(
                    color: Colors.red,
                    child: Text("Cancel",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "RobotoMono",
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                        print("Cancel");
                      });
                    },
                  )),
                  )
                ],
              ),
            )
          ]);
        });
  }

  final emailEditingController = TextEditingController();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    Widget main = Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "${_email}",
                            style: TextStyle(fontSize: 25),
                          )),
                      Text(
                        "Item2",
                        style: TextStyle(fontSize: 25),
                      ),
                      Visibility(
                          visible: false,
                          child: Container(
                            child: TextField(
                              controller: _editEmailController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  labelText: "Enter you email"),
                              onChanged: (text) {
                                setState(() {
                                  _account.email = text;
                                });
                              },
                            ),
                          )),
                      Visibility(
                          visible: false,
                          child: Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: TextField(
                              controller: _editPassWorldController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                labelText: "Enter password",
                              ),
                              onChanged: (text) {
                                setState(() {
                                  _account.password = text;
                                });
                              },
                            ),
                          )),
                    ])),
                Icon(Icons.favorite, color: Colors.red),
                Text(
                  "Item2",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            ButtonTheme(
                height: 50,
                child: FlatButton(
                    color: Colors.amber,
                    onPressed: () {
                      setState(() {
                        print(_account.toString());
                        _account.createdTime = DateTime.now();
                        _list.add(_account);
                        _account = Account(email: "", password: "");
                        _editEmailController.text = "";
                        _editPassWorldController.text = "";
                      });

                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text(
                          _list.toString(),
                          style: TextStyle(color: Colors.blue),
                        ),
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.white,
                      ));
                    },
                    child: Text(
                      "Insert Item",
                      style: TextStyle(color: Colors.blueAccent),
                    ))),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            AccountList(list: _list)
          ],
        ));

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 243, 243, 1),
                    image: DecorationImage(
                        // Load image from assets
                        image: AssetImage('assets/images/bg_card.jpg'),
                        // Make the image cover the whole area
                        fit: BoxFit.cover)),
              ),
              Text(
                "Dictionary",
                style: TextStyle(),
              )
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(child: main),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
        tooltip: "Add Account",
        onPressed: () {
          _showBottomAdd();
        },
      ),
    );
  }
}

// Container(
// child: Column(children: [
// Row(children: [
// Container(
// width: double.infinity,
// margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
// // color: Colors.blueAccent,
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// TextField(
// decoration: InputDecoration(
// border: InputBorder.none,
// prefixIcon: Icon(
// Icons.search,
// color: Colors.black87,
// ),
// hintText: "Tra cứu từ Anh Việt - Việt Anh"),
// ),
// IconButton(icon: Icon(Icons.favorite), onPressed: () => {})
// ],
// ),
// ),
// ]),
// Expanded(
// child: ListView(
// children: [
// ListView(
// children: [
// getListTFlat(
// Icons.ac_unit_rounded, context, "sfsds", () => {}),
// getListTFlat(
// Icons.ac_unit_rounded, context, "sfsds", () => {}),
// getListTFlat(
// Icons.ac_unit_rounded, context, "sfsds", () => {}),
// ],
// )
// ],
// )
// ),
// RaisedButton(
// onPressed: () => {
// Fluttertoast.showToast(
// msg: "This is Toast messaget",
// toastLength: Toast.LENGTH_SHORT,
// gravity: ToastGravity.CENTER,
// timeInSecForIosWeb: 1
// )
// },
// child: Text("Cancel",
// style: TextStyle(color: Color.fromRGBO(177, 16, 189, 1.0)),),)
// ])
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: null,
// backgroundColor: Color.fromRGBO(60, 243, 243,  0.6),
// tooltip: 'Increment',
// child: Icon(Icons.search),
// ),
