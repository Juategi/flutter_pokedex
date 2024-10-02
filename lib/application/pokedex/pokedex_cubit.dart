import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_state.dart';
part 'pokedex_cubit.freezed.dart';

class PokedexCubit extends Cubit<PokedexState> {
  final PokedexRepository _pokedexRepository;
  PokedexCubit(this._pokedexRepository) : super(const PokedexState.loading());

  void getPokemons() {
    final result = _pokedexRepository.getAllPokemons();
    result.fold(
      (failure) => emit(PokedexState.error(failure.message)),
      (pokemons) => emit(PokedexState.loaded(pokemons)),
    );
  }
}
