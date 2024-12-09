import 'package:cubitexample/data/model/Characters.dart';
import 'package:cubitexample/presentation/widgets/character_details_body.dart';
import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({super.key, required this.character});
final Character character;
  @override
  Widget build(BuildContext context) {
    return CharacterDetailsBody(char: character,);
  }
}