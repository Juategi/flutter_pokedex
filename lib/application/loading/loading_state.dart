part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.loading(int progress) = Loading;
  const factory LoadingState.loaded() = Loaded;
  const factory LoadingState.error(String message) = LoadingError;
}
