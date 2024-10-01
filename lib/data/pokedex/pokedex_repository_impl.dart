import 'package:dartz/dartz.dart';
import 'package:flutter_pokedex/core/settings.dart';
import 'package:flutter_pokedex/data/pokedex/datasources/pokeapi/pokeapi_data_source.dart';
import 'package:flutter_pokedex/data/pokedex/datasources/hive/hive_data_source.dart';
import 'package:flutter_pokedex/data/pokedex/mappers/pokemon_mapper.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_failure.dart';

class PokedexRepositoryImpl implements PokedexRepository {
  final PokeApiDataSource _pokeApiDataSource;
  final HiveDataSource _hiveDataSource;

  PokedexRepositoryImpl(this._pokeApiDataSource, this._hiveDataSource);

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
          final pokemonDto = await _pokeApiDataSource.getPokemon(i);
          final pokemonHive = PokemonMapper.toHive(pokemonDto);
          pokemons.add(PokemonMapper.toDomain(pokemonHive));
          //We catch the data in the local storage
          _hiveDataSource.savePokemon(pokemonHive);
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
      final pokemons = _hiveDataSource.getCaptured();
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
