import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_failure.dart';

abstract class PokedexRepository {
  Future<Either<PokemonFailure, List<Pokemon>>> getAllPokemons();
  Future<Either<PokemonFailure, List<Pokemon>>> getCapturedPokemons();
  Future<Either<PokemonFailure, Pokemon>> getPokemon(int id);
}
