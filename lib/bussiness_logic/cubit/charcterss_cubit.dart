// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:cubitexample/data/model/Characters.dart';
import 'package:cubitexample/data/repositries/repositriy.dart';

part 'charcterss_state.dart';

class CharcterssCubit extends Cubit<CharcterssState> {
  final Repository repositriy;
  CharcterssCubit(this.repositriy) : super(CharcterssInitial());

 Future<dynamic> AllCharacters()async{
   try {
    emit(CharcterssLoading());
  final response=await repositriy.getCharacters();
  emit(CharcterssLoaded(character: response));
} on Exception catch (e) {
 emit(CharcterssFailure(error: e.toString()));
}
  }
}
