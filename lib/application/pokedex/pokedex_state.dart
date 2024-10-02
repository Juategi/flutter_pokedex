part of 'pokedex_cubit.dart';

@freezed
class PokedexState with _$PokedexState {
  const factory PokedexState.loading() = PokedexLoading;
  const factory PokedexState.loaded(
    List<Pokemon> pokemons,
  ) = PokedexLoaded;
  const factory PokedexState.error(String message) = PokedexError;
}
