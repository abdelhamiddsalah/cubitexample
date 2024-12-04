import 'package:cubitexample/data/api_services/api_consumer.dart';
import 'package:cubitexample/data/api_services/endpoints.dart';
import 'package:cubitexample/data/model/Characters.dart';

class Repositriy {
  final ApiConsumer apiConsumer;

  Repositriy({required this.apiConsumer});
  getCharacters() async{
  final CharacterResponse= await apiConsumer.get('${Endpoints.baseUrl}${Endpoints.endpoint}');
   return (CharacterResponse as List).map((element)=>Character.fromJson(element)).toList();
  }
}