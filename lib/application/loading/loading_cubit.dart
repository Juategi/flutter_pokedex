import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.dart';
part 'loading_cubit.freezed.dart';

class LoadingCubit extends Cubit<LoadingState> {
  final PokedexRepository _pokedexRepository;
  LoadingCubit(this._pokedexRepository) : super(const LoadingState.loading(0));

  Future<void> fetchData() async {
    await for (final progress in _pokedexRepository.fetchData()) {
      progress.fold(
        (failure) => emit(LoadingState.error(failure.message)),
        (progress) {
          if (progress == 100) {
            emit(const LoadingState.loaded());
          } else {
            emit(LoadingState.loading(progress));
          }
        },
      );
    }
  }
}
