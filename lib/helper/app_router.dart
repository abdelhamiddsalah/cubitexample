import 'package:cubitexample/presentation/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_)=> Home());
      default:
    }
    return null;
  }
}