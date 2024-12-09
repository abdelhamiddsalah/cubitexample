// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:cubitexample/data/model/Characters.dart';
import 'package:cubitexample/helper/colors.dart';

class silverlist extends StatelessWidget {
  const silverlist({
    super.key,
    required this.char, required this.text, required this.value,
  });

  final Character char;
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate(
      [
        Container(
          padding: EdgeInsets.only(top:8),
          margin: EdgeInsets.fromLTRB(14, 14, 10, 10),
          color: greyColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
           children: [
           RichText(text: TextSpan(
            children: [
              TextSpan(
                text: text,
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)
              ),
              TextSpan(
                 text: value,
            style: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 16)
              )
            ],
            
           ),
          
           )
           ],
          ),
        )
      ]
    ));
  }
}
