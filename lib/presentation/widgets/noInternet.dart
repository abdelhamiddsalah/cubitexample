import 'package:cubitexample/helper/colors.dart';
import 'package:flutter/material.dart';

class Nointernet extends StatelessWidget {
  const Nointernet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/undraw_Team_up_re_84ok.png'),
            SizedBox(height: 20,),
            Text('No Internet Connection',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: greyColor),)
          ],
        ),
      ),
    );
  }
}