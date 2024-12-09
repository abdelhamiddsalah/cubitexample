import 'package:cubitexample/bussiness_logic/cubit/charcterss_cubit.dart';
import 'package:cubitexample/presentation/widgets/item_character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListviewInHome extends StatelessWidget {
  const ListviewInHome({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharcterssCubit, CharcterssState>(
      builder: (context, state) {
        if (state is CharcterssLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CharcterssLoaded) {
          final characters = state.character;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: characters.length,
            itemBuilder: (context, index) {
              return ItemCharacter(character: characters[index]);
            },
          );
        } else if (state is CharcterssFailure) {
          return Center(
            child: Text(
              "Failed to load characters: ${state.error}",
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else {
          return const Center(
            child: Text("No data available"),
          );
        }
      },
    );
  }
}
