import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/detail/DetailState.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Detail",
      home: DetailState(),
    );
  }

}