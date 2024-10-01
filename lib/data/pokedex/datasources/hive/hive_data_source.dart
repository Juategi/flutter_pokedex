import 'package:flutter_pokedex/data/pokedex/datasources/hive/pokemon_hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDataSource {
  final String capturedKey = 'captured';
  final String pokemonBoxName = 'pokemonBox';
  late Box pokemonBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(PokemonHiveAdapter());
    pokemonBox = await Hive.openBox<PokemonHive>(pokemonBoxName);
  }

  Future<void> savePokemon(PokemonHive pokemon) async {
    await pokemonBox.add(pokemon);
  }

  List<PokemonHive> getPokemons() {
    List<PokemonHive> pokemons = [];
    for (int i = 0; i < pokemonBox.length; i++) {
      pokemons.add(pokemonBox.getAt(i));
    }
    return pokemons;
  }

  List<PokemonHive> getCaptured() {
    List<PokemonHive> pokemons = [];
    List<int> ids = pokemonBox.get(capturedKey, defaultValue: []);
    for (int i in ids) {
      pokemons.add(pokemonBox.getAt(i));
    }
    return pokemons;
  }

  PokemonHive getPokemon(int id) {
    return pokemonBox.getAt(id);
  }

  bool isDataSaved() {
    return pokemonBox.isNotEmpty;
  }

  void updateCaptured(List<int> ids) {
    pokemonBox.put(capturedKey, ids);
  }

  //For development purpose
  void clearData() {
    pokemonBox.clear();
  }
}
