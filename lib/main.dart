// ignore_for_file: camel_case_types

import 'package:cubitexample/helper/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(cartons(appRouter: AppRouter(),));
}

class cartons extends StatelessWidget {
  const cartons({super.key, required this.appRouter});
 final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      title: 'Flutter Demo',
    );
  }
}
