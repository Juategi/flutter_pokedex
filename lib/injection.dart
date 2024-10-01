import 'package:flutter_pokedex/data/core/http_service.dart';
import 'package:flutter_pokedex/data/pokedex/datasources/hive_data_source.dart';
import 'package:flutter_pokedex/data/pokedex/pokedex_repository_impl.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:get_it/get_it.dart';

class Injection {
  Future setUp() async {
    HttpService httpService = HttpService();
    HiveDataSource hiveDataSource = HiveDataSource();
    await hiveDataSource.init();
    PokedexRepository pokedexRepository =
        PokedexRepositoryImpl(httpService, hiveDataSource);

    GetIt.I.registerSingleton<PokedexRepository>(pokedexRepository);
  }
}
