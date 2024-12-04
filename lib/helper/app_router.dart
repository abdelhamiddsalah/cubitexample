import 'package:cubitexample/bussiness_logic/cubit/charcterss_cubit.dart';
import 'package:cubitexample/data/api_services/dio_consumer.dart';
import 'package:cubitexample/data/repositries/repositriy.dart';
import 'package:cubitexample/helper/routes.dart';
import 'package:cubitexample/presentation/screens/character_details.dart';
import 'package:cubitexample/presentation/screens/home.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late Repository repository;
  late CharcterssCubit charcterssCubit;

  AppRouter() {
    repository = Repository(apiConsumer: DioConsumer(dio: Dio()));
    charcterssCubit = CharcterssCubit(repository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => CharcterssCubit(repository),
                child: Home(),
              ),
        );
      case characterDetails:
        return MaterialPageRoute(builder: (_) => CharacterDetails());
      default:
    }
    return null;
  }
}
