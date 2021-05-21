import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/Tflat/TflatScreen.dart';
import 'package:hello_app/detail/DetailScreen.dart';
import 'package:hello_app/route/routing_constants.dart';
import 'package:hello_app/splash/Splash.dart';

import '../home/Home.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashRoute:
      return MaterialPageRoute(builder: (context)=> Splash());
    case HomeRoute:
      return MaterialPageRoute(builder: (context)=> Home());
    case TflatRoute:
      return MaterialPageRoute(builder: (context)=> TflatScreen());
    case DetailRoute:
      return MaterialPageRoute(builder: (context)=> DetailScreen());
    default:
      return MaterialPageRoute(builder: (context)=> Home());
  }
}