import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_app/route/routing_constants.dart';
import 'package:hello_app/route/router.dart' as router;

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Splash",
      onGenerateRoute: router.generateRoute,
      initialRoute: SplashRoute,
      home: SplashFul(),
    );
  }
}

class SplashFul extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<StatefulWidget> {

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Visibility(
                visible: !loading,
                child: IconButton(
                    icon: Icon(Icons.ac_unit),
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "This is Toast messaget",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1);
                      setState(() {
                        loading = !loading;
                        Future.delayed(Duration(milliseconds: 1000), () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Home()));
                          Navigator.pushNamed(context, HomeRoute);
                        });
                      });
                    }))
          ],
        ),
        body: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                child: loading
                    ? CircularProgressIndicator()
                    : Text(
                        "No task to do",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'RobotoMono',
                        ),
                      ),
              ),
            ),
            Expanded(
                flex: 10,
                child: Container(
                  color: Colors.green,
                  height: 100,
                )),
            SizedBox(
              width: 100,
              height: 100,
            ),
            Expanded(
                flex: 5,
                child: Text(
                  "Show Text",
                ))
          ],
        ));
  }
}
