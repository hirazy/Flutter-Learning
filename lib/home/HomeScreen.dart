import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      home: HomeStateFul()
    );
  }

  Future<void> fetchUserOrder() {
    // Imagine that this function is fetching user info from another service or database.
    return Future.delayed(Duration(seconds: 10), () => print('Large Latte'));
  }
}

class HomeStateFul extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    

  }

}

