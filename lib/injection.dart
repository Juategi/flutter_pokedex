import 'package:flutter_pokedex/application/loading/loading_cubit.dart';
import 'package:flutter_pokedex/data/pokedex/datasources/pokeapi/pokeapi_data_source.dart';
import 'package:flutter_pokedex/data/pokedex/datasources/hive/hive_data_source.dart';
import 'package:flutter_pokedex/data/pokedex/pokedex_repository_impl.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:get_it/get_it.dart';

class Injection {
  Future setUp() async {
    PokeApiDataSource pokeApiDataSource = PokeApiDataSource();
    HiveDataSource hiveDataSource = HiveDataSource();
    await hiveDataSource.init();
    PokedexRepository pokedexRepository =
        PokedexRepositoryImpl(pokeApiDataSource, hiveDataSource);

    LoadingCubit loadingCubit = LoadingCubit(pokedexRepository);

    GetIt.I.registerSingleton<PokedexRepository>(pokedexRepository);
    GetIt.I.registerSingleton<LoadingCubit>(loadingCubit);
  }
}
