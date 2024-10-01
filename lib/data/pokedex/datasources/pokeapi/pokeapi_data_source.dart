import 'package:flutter_pokedex/data/pokedex/datasources/pokeapi/pokemon_dto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokeApiDataSource {
  final String baseUrl = 'https://pokeapi.co/api/v2/pokemon/';
  Future<PokemonDto> getPokemon(int id) async {
    var uri = Uri.parse(baseUrl + id.toString());
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return PokemonDto.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
