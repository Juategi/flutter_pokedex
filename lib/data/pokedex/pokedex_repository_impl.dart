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
  final PokemonFailure _pokemonFailureNoDataSaved =
      PokemonFailure("No data saved");
  PokedexRepositoryImpl(this._pokeApiDataSource, this._hiveDataSource);

  @override
  Stream<Either<PokemonFailure, int>> fetchData() async* {
    try {
      List<Pokemon> pokemons = [];
      await _hiveDataSource.clearData();
      // If the data is saved in the local storage, we return the progress as 100
      if (_hiveDataSource.isDataSaved()) {
        yield const Right(100);
      }
      // If the data is not saved, we fetch it from the API the first time the app is opened
      else {
        for (int i = 1; i <= Settings.maxPokemons; i++) {
          final pokemonDto = await _pokeApiDataSource.getPokemon(i);
          final pokemonHive = PokemonMapper.toHive(pokemonDto);
          pokemons.add(PokemonMapper.toDomain(pokemonHive));
          //We catch the data in the local storage
          await _hiveDataSource.savePokemon(pokemonHive);
          //We yield the progress
          yield Right(((i / Settings.maxPokemons) * 100).toInt());
        }
      }
    } on Exception catch (e) {
      yield Left(PokemonFailure(e.toString()));
    }
  }

  @override
  Either<PokemonFailure, List<Pokemon>> getAllPokemons() {
    try {
      if (_hiveDataSource.isDataSaved()) {
        final pokemonHives = _hiveDataSource.getPokemons();
        List<Pokemon> pokemons = pokemonHives
            .map((pokemon) => PokemonMapper.toDomain(pokemon))
            .toList();
        return Right(pokemons);
      }
      return Left(_pokemonFailureNoDataSaved);
    } on Exception catch (e) {
      return Left(PokemonFailure(e.toString()));
    }
  }

  @override
  Either<PokemonFailure, List<Pokemon>> getCapturedPokemons() {
    try {
      if (_hiveDataSource.isDataSaved()) {
        final pokemons = _hiveDataSource.getCaptured();
        return Right(pokemons
            .map((pokemon) => PokemonMapper.toDomain(pokemon))
            .toList());
      }
      return Left(_pokemonFailureNoDataSaved);
    } on Exception catch (e) {
      return Left(PokemonFailure(e.toString()));
    }
  }

  @override
  Either<PokemonFailure, Pokemon> getPokemon(int id) {
    try {
      if (_hiveDataSource.isDataSaved()) {
        final pokemon = _hiveDataSource.getPokemon(id);
        return Right(PokemonMapper.toDomain(pokemon));
      }
      return Left(_pokemonFailureNoDataSaved);
    } on Exception catch (e) {
      return Left(PokemonFailure(e.toString()));
    }
  }
}
