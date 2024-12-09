// ignore_for_file: deprecated_member_use

import 'package:cubitexample/data/model/Characters.dart';
import 'package:cubitexample/helper/colors.dart';
import 'package:cubitexample/presentation/widgets/silverlist.dart';
import 'package:flutter/material.dart';

class CharacterDetailsBody extends StatelessWidget {
  const CharacterDetailsBody({super.key, required this.char});
  final Character char;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: CustomScrollView(
        slivers: [
          sliverappbar(),
          silverlist(
            char: char,
            text: 'Gender : ',
            value: char.gender ?? 'Unknown',
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20), // This SizedBox should be inside SliverToBoxAdapter
          ),
          silverlist(
            char: char,
            text: 'Location : ',
            value: char.location?.name ?? 'Unknown',
          ),
          silverlist(char: char, text: 'Species : ', value: char.species ?? 'Unknown'),
          silverlist(char: char, text: 'Status : ', value: char.status ?? 'Unknown'),
          SliverToBoxAdapter(
            child: SizedBox(height: 500), // Wrap SizedBox inside SliverToBoxAdapter
          ),
        ],
      ),
    );
  }

  SliverAppBar sliverappbar() {
    return SliverAppBar(
      expandedHeight: 500, // Adjusts height responsively
      pinned: true,
      stretch: true,
      centerTitle: true,
      backgroundColor: greyColor,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          char.name ?? 'Unknown Character', // Fallback for name
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        background: Hero(
          tag: char.id.toString(),
          child: char.image != null
              ? Image.network(char.image!, fit: BoxFit.cover)
              : Image.asset('assets/default_image.jpg', fit: BoxFit.cover), // Default image
        ),
      ),
    );
  }
}
