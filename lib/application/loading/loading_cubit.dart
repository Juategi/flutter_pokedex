import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/core/strings.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'loading_state.dart';
part 'loading_cubit.freezed.dart';

class LoadingCubit extends Cubit<LoadingState> {
  final PokedexRepository _pokedexRepository;
  final player = AudioPlayer();
  LoadingCubit(this._pokedexRepository) : super(const LoadingState.loading(0));

  Future<void> fetchData() async {
    await player.setAsset(Images.loadingSound);
    player.setVolume(0.3);
    player.play();
    await for (final progress in _pokedexRepository.fetchData()) {
      progress.fold(
        (failure) {
          emit(LoadingState.error(failure.message));
          player.stop();
        },
        (progress) {
          if (progress == 100) {
            player.stop();
            emit(const LoadingState.loaded());
          } else {
            emit(LoadingState.loading(progress));
          }
        },
      );
    }
  }
}
