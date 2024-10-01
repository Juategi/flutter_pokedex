import 'package:dartz/dartz.dart';
import 'package:flutter_pokedex/core/settings.dart';
import 'package:flutter_pokedex/data/core/http_service.dart';
import 'package:flutter_pokedex/data/pokedex/datasources/hive_data_source.dart';
import 'package:flutter_pokedex/data/pokedex/entities/pokemon_dto.dart';
import 'package:flutter_pokedex/data/pokedex/pokemon_mapper.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_failure.dart';

class PokedexRepositoryImpl implements PokedexRepository {
  final String baseUrl = 'https://pokeapi.co/api/v2/pokemon/';
  final HttpService _httpService;
  final HiveDataSource _hiveDataSource;

  PokedexRepositoryImpl(this._httpService, this._hiveDataSource);

  @override
  Future<Either<PokemonFailure, List<Pokemon>>> getAllPokemons() async {
    try {
      List<Pokemon> pokemons = [];
      // If the data is saved in the local storage, we return it
      if (_hiveDataSource.isDataSaved()) {
        final pokemonDtos = _hiveDataSource.getPokemons();
        pokemons = pokemonDtos.map((e) => PokemonMapper.toDomain(e)).toList();
      }
      // If the data is not saved, we fetch it from the API
      else {
        for (int i = 1; i <= Settings.maxPokemons; i++) {
          final result = await _httpService.get('$baseUrl$i');
          final pokemonDto =
              PokemonMapper.toHiveDto(PokemonDto.fromJson(result));
          pokemons.add(PokemonMapper.toDomain(pokemonDto));
          //We catch the data in the local storage
          _hiveDataSource.savePokemon(pokemonDto);
        }
      }
      return Right(pokemons);
    } on Exception catch (e) {
      return Left(PokemonFailure(e.toString()));
    }
  }

  /* We get captured pokemons and pokemon details from the local storage, 
  because we assume that the data has been fetched already */
  @override
  Either<PokemonFailure, List<Pokemon>> getCapturedPokemons() {
    if (_hiveDataSource.isDataSaved()) {
      final pokemons = _hiveDataSource.getPokemonsByIds();
      return Right(pokemons.map((e) => PokemonMapper.toDomain(e)).toList());
    }
    return Left(PokemonFailure("No data saved"));
  }

  @override
  Either<PokemonFailure, Pokemon> getPokemon(int id) {
    if (_hiveDataSource.isDataSaved()) {
      final pokemon = _hiveDataSource.getPokemon(id);
      return Right(PokemonMapper.toDomain(pokemon));
    }
    return Left(PokemonFailure("No data saved"));
  }
}
