import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/test_ui/tflatui.dart';

class TFlat extends StatelessWidget {
  const TFlat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TFlat",
      home: TFlatUI(),
    );
  }
}






