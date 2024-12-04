// ignore_for_file: non_constant_identifier_names

import 'package:cubitexample/data/api_services/api_consumer.dart';
import 'package:cubitexample/data/api_services/endpoints.dart';
import 'package:cubitexample/data/model/Characters.dart';

class Repository {
  final ApiConsumer apiConsumer;

  Repository({required this.apiConsumer});

  Future<List<Character>> getCharacters() async {
    try {
      final response = await apiConsumer.get('${Endpoints.baseUrl}${Endpoints.endpoint}');
      if (response != null && response['results'] != null) {
        final List<dynamic> results = response['results'];
        return results.map((element) => Character.fromJson(element)).toList();
      } else {
        throw Exception('No results found');
      }
    } catch (e) {
      throw Exception('Failed to load characters: $e');
    }
  }
}