part of 'pokedex_cubit.dart';

@freezed
class PokedexState with _$PokedexState {
  const factory PokedexState.loading(int progress) = PokedexLoading;
  const factory PokedexState.loaded() = PokedexLoaded;
}
