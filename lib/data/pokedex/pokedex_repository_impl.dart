import 'package:dartz/dartz.dart';
import 'package:flutter_pokedex/data/core/http_service.dart';
import 'package:flutter_pokedex/data/pokedex/pokemon_dto.dart';
import 'package:flutter_pokedex/data/pokedex/pokemon_mapper.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_failure.dart';

class PokedexRepositoryImpl implements PokedexRepository {
  final String baseUrl = 'https://pokeapi.co/api/v2/pokemon/';
  final HttpService _httpService;

  PokedexRepositoryImpl(this._httpService);

  @override
  Future<Either<PokemonFailure, List<Pokemon>>> getAllPokemons() async {
    try {
      //Hay que hacer 151 gets
      final result = await _httpService.get('$baseUrl?limit=151&offset=0');
      final pokemonList = result['results'] as List;
      print(pokemonList);
      final pokemon = pokemonList
          .map(
              (pokemon) => PokemonMapper.toDomain(PokemonDto.fromJson(pokemon)))
          .toList();
      return Right(pokemon);
    } on Exception catch (e) {
      return Left(PokemonFailure(e.toString()));
    }
  }

  @override
  Future<Either<PokemonFailure, List<Pokemon>>> getCapturedPokemons() {
    // TODO: implement getCapturedPokemons
    throw UnimplementedError();
  }

  @override
  Future<Either<PokemonFailure, Pokemon>> getPokemon(int id) {
    // TODO: implement getPokemon
    throw UnimplementedError();
  }
}
