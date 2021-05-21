import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  Answer( this.title) ;
  final String title;


  void _click(){
      print("Click");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: RaisedButton(
        color: Colors.blue,
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        onPressed: null,
        child: Text("Alo1234$title", style: TextStyle(color: Colors.black),),
      ),
    );
  }
  
}