// ignore_for_file: deprecated_member_use
import 'package:cubitexample/helper/colors.dart';
import 'package:cubitexample/presentation/widgets/listview_in_home.dart';
import 'package:cubitexample/presentation/widgets/noInternet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        backgroundColor: yellowColor,
        title: const Text('Characters'),
        actions: [
          IconButton(
            onPressed: () {
              // Add functionality for search
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          List<ConnectivityResult> connectivity,
          Widget child,
        ) {
          final bool connected = !connectivity.contains(ConnectivityResult.none);
          return connected ?  ListviewInHome() : const Nointernet();
        },
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
