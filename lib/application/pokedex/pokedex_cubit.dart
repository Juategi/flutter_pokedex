import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_state.dart';
part 'pokedex_cubit.freezed.dart';

class PokedexCubit extends Cubit<PokedexState> {
  final PokedexRepository _pokedexRepository;
  PokedexCubit(this._pokedexRepository) : super(const PokedexState.loading(0));
}
