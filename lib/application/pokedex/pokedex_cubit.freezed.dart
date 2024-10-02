// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokedexState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Pokemon> pokemons)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokedexLoading value) loading,
    required TResult Function(PokedexLoaded value) loaded,
    required TResult Function(PokedexError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokedexLoading value)? loading,
    TResult? Function(PokedexLoaded value)? loaded,
    TResult? Function(PokedexError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokedexLoading value)? loading,
    TResult Function(PokedexLoaded value)? loaded,
    TResult Function(PokedexError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res, PokedexState>;
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res, $Val extends PokedexState>
    implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PokedexLoadingImplCopyWith<$Res> {
  factory _$$PokedexLoadingImplCopyWith(_$PokedexLoadingImpl value,
          $Res Function(_$PokedexLoadingImpl) then) =
      __$$PokedexLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PokedexLoadingImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexLoadingImpl>
    implements _$$PokedexLoadingImplCopyWith<$Res> {
  __$$PokedexLoadingImplCopyWithImpl(
      _$PokedexLoadingImpl _value, $Res Function(_$PokedexLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PokedexLoadingImpl implements PokedexLoading {
  const _$PokedexLoadingImpl();

  @override
  String toString() {
    return 'PokedexState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PokedexLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Pokemon> pokemons)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokedexLoading value) loading,
    required TResult Function(PokedexLoaded value) loaded,
    required TResult Function(PokedexError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokedexLoading value)? loading,
    TResult? Function(PokedexLoaded value)? loaded,
    TResult? Function(PokedexError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokedexLoading value)? loading,
    TResult Function(PokedexLoaded value)? loaded,
    TResult Function(PokedexError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PokedexLoading implements PokedexState {
  const factory PokedexLoading() = _$PokedexLoadingImpl;
}

/// @nodoc
abstract class _$$PokedexLoadedImplCopyWith<$Res> {
  factory _$$PokedexLoadedImplCopyWith(
          _$PokedexLoadedImpl value, $Res Function(_$PokedexLoadedImpl) then) =
      __$$PokedexLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Pokemon> pokemons});
}

/// @nodoc
class __$$PokedexLoadedImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexLoadedImpl>
    implements _$$PokedexLoadedImplCopyWith<$Res> {
  __$$PokedexLoadedImplCopyWithImpl(
      _$PokedexLoadedImpl _value, $Res Function(_$PokedexLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
  }) {
    return _then(_$PokedexLoadedImpl(
      null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokedexLoadedImpl implements PokedexLoaded {
  const _$PokedexLoadedImpl(final List<Pokemon> pokemons)
      : _pokemons = pokemons;

  final List<Pokemon> _pokemons;
  @override
  List<Pokemon> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'PokedexState.loaded(pokemons: $pokemons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexLoadedImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemons));

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexLoadedImplCopyWith<_$PokedexLoadedImpl> get copyWith =>
      __$$PokedexLoadedImplCopyWithImpl<_$PokedexLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Pokemon> pokemons)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokedexLoading value) loading,
    required TResult Function(PokedexLoaded value) loaded,
    required TResult Function(PokedexError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokedexLoading value)? loading,
    TResult? Function(PokedexLoaded value)? loaded,
    TResult? Function(PokedexError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokedexLoading value)? loading,
    TResult Function(PokedexLoaded value)? loaded,
    TResult Function(PokedexError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PokedexLoaded implements PokedexState {
  const factory PokedexLoaded(final List<Pokemon> pokemons) =
      _$PokedexLoadedImpl;

  List<Pokemon> get pokemons;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokedexLoadedImplCopyWith<_$PokedexLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PokedexErrorImplCopyWith<$Res> {
  factory _$$PokedexErrorImplCopyWith(
          _$PokedexErrorImpl value, $Res Function(_$PokedexErrorImpl) then) =
      __$$PokedexErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PokedexErrorImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexErrorImpl>
    implements _$$PokedexErrorImplCopyWith<$Res> {
  __$$PokedexErrorImplCopyWithImpl(
      _$PokedexErrorImpl _value, $Res Function(_$PokedexErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PokedexErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokedexErrorImpl implements PokedexError {
  const _$PokedexErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PokedexState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexErrorImplCopyWith<_$PokedexErrorImpl> get copyWith =>
      __$$PokedexErrorImplCopyWithImpl<_$PokedexErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Pokemon> pokemons) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Pokemon> pokemons)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Pokemon> pokemons)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokedexLoading value) loading,
    required TResult Function(PokedexLoaded value) loaded,
    required TResult Function(PokedexError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokedexLoading value)? loading,
    TResult? Function(PokedexLoaded value)? loaded,
    TResult? Function(PokedexError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokedexLoading value)? loading,
    TResult Function(PokedexLoaded value)? loaded,
    TResult Function(PokedexError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PokedexError implements PokedexState {
  const factory PokedexError(final String message) = _$PokedexErrorImpl;

  String get message;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokedexErrorImplCopyWith<_$PokedexErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
