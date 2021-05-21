import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item_Test extends StatelessWidget {
  String urlImg = "";
  String content = "";

  Item_Test(this.urlImg, this.content);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Item",
      home: CardItem(this.urlImg, this.content),
    );
  }
}

class CardItem extends StatefulWidget {
  String urlImg = "";
  String content = "";

  CardItem(this.urlImg, this.content);

  @override
  CardItemFul createState() => CardItemFul(this.urlImg, this.content);
}

class CardItemFul extends State<StatefulWidget> {
  String urlImg = "";
  String content = "";

  CardItemFul(this.urlImg, this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset('assets/images1/bg_card'),
          Text(
            content,
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          Center(
              child: Row(
            children: [
              // TextButton("", onPressed: onPressed, child: child)
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print("onPressed" + content);
                      },
                      child: const Text('Gradient'),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
