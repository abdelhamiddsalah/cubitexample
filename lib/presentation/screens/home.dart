// ignore_for_file: deprecated_member_use

import 'package:cubitexample/helper/colors.dart';
import 'package:cubitexample/presentation/widgets/listview_in_home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        backgroundColor: yellowColor,
        title: Text('Characters'),  // Use title for the main text
        actions: [
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListviewInHome(),
    );
  }
}

