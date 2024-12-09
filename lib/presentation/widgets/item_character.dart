// ignore_for_file: sort_child_properties_last

import 'package:cubitexample/data/model/Characters.dart';
import 'package:cubitexample/helper/routes.dart';
import 'package:flutter/material.dart';

class ItemCharacter extends StatelessWidget {
   final Character character; 
  const ItemCharacter({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, characterDetails, arguments: character);
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4)
        ),
        child: Hero(
          tag: character.id.toString(),
          child: GridTile(child: Container(
            child: character.image!.isNotEmpty?FadeInImage.assetNetwork(
              placeholder: 'assets/images/Animation - 1733339570677.gif',
             image: character.image.toString(),fit: BoxFit.cover,):Image.asset('assets/images/Brain 1.png'),
             
          ),footer: Container(
            alignment: Alignment.bottomCenter,
            color: Colors.black54,
            width: double.infinity,child: Text(character.name.toString(),style: TextStyle(color: Colors.white,fontSize: 16,
            fontWeight: FontWeight.bold,height: 1.3
            ),overflow: TextOverflow.ellipsis,),),),
        ),
      ),
    );
  }
}