import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget{
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  CustomDialog(this.title, this.content, this.callback, [this.actionText = "Reset"]);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Title(
        child: Text(title),
      ),
      content: Text(content),
      actions: [
        FlatButton(onPressed: callback, child: Text(actionText, style: TextStyle(),))
      ],
    );
  }

}