import 'package:cubitexample/helper/routes.dart';
import 'package:cubitexample/presentation/screens/character_details.dart';
import 'package:cubitexample/presentation/screens/home.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_)=> Home());
      case characterDetails:
        return MaterialPageRoute(builder: (_)=> CharacterDetails());
      default:
    }
    return null;
  }
}