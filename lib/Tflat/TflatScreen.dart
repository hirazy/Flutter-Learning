import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/Tflat/TflatState.dart';


class TflatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "TflatScreen",
      theme: ThemeData(primaryColor: Colors.green[300]),
      home: TFlatState(),
    );
  }
}