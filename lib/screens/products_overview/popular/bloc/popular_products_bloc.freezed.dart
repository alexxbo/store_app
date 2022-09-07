// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedPopularProductsEvent value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedPopularProductsEvent value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedPopularProductsEvent value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularProductsEventCopyWith<$Res> {
  factory $PopularProductsEventCopyWith(PopularProductsEvent value,
          $Res Function(PopularProductsEvent) then) =
      _$PopularProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularProductsEventCopyWithImpl<$Res>
    implements $PopularProductsEventCopyWith<$Res> {
  _$PopularProductsEventCopyWithImpl(this._value, this._then);

  final PopularProductsEvent _value;
  // ignore: unused_field
  final $Res Function(PopularProductsEvent) _then;
}

/// @nodoc
abstract class _$$_StartedPopularProductsEventCopyWith<$Res> {
  factory _$$_StartedPopularProductsEventCopyWith(
          _$_StartedPopularProductsEvent value,
          $Res Function(_$_StartedPopularProductsEvent) then) =
      __$$_StartedPopularProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedPopularProductsEventCopyWithImpl<$Res>
    extends _$PopularProductsEventCopyWithImpl<$Res>
    implements _$$_StartedPopularProductsEventCopyWith<$Res> {
  __$$_StartedPopularProductsEventCopyWithImpl(
      _$_StartedPopularProductsEvent _value,
      $Res Function(_$_StartedPopularProductsEvent) _then)
      : super(_value, (v) => _then(v as _$_StartedPopularProductsEvent));

  @override
  _$_StartedPopularProductsEvent get _value =>
      super._value as _$_StartedPopularProductsEvent;
}

/// @nodoc

class _$_StartedPopularProductsEvent implements _StartedPopularProductsEvent {
  const _$_StartedPopularProductsEvent();

  @override
  String toString() {
    return 'PopularProductsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedPopularProductsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedPopularProductsEvent value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedPopularProductsEvent value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedPopularProductsEvent value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedPopularProductsEvent implements PopularProductsEvent {
  const factory _StartedPopularProductsEvent() = _$_StartedPopularProductsEvent;
}

/// @nodoc
mixin _$PopularProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products, String message) error,
    required TResult Function(List<Product> products) success,
    required TResult Function() inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorPopularProductsState value) error,
    required TResult Function(_SuccessPopularProductsState value) success,
    required TResult Function(_InProgressPopularProductsState value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularProductsStateCopyWith<$Res> {
  factory $PopularProductsStateCopyWith(PopularProductsState value,
          $Res Function(PopularProductsState) then) =
      _$PopularProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularProductsStateCopyWithImpl<$Res>
    implements $PopularProductsStateCopyWith<$Res> {
  _$PopularProductsStateCopyWithImpl(this._value, this._then);

  final PopularProductsState _value;
  // ignore: unused_field
  final $Res Function(PopularProductsState) _then;
}

/// @nodoc
abstract class _$$_ErrorPopularProductsStateCopyWith<$Res> {
  factory _$$_ErrorPopularProductsStateCopyWith(
          _$_ErrorPopularProductsState value,
          $Res Function(_$_ErrorPopularProductsState) then) =
      __$$_ErrorPopularProductsStateCopyWithImpl<$Res>;
  $Res call({List<Product> products, String message});
}

/// @nodoc
class __$$_ErrorPopularProductsStateCopyWithImpl<$Res>
    extends _$PopularProductsStateCopyWithImpl<$Res>
    implements _$$_ErrorPopularProductsStateCopyWith<$Res> {
  __$$_ErrorPopularProductsStateCopyWithImpl(
      _$_ErrorPopularProductsState _value,
      $Res Function(_$_ErrorPopularProductsState) _then)
      : super(_value, (v) => _then(v as _$_ErrorPopularProductsState));

  @override
  _$_ErrorPopularProductsState get _value =>
      super._value as _$_ErrorPopularProductsState;

  @override
  $Res call({
    Object? products = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorPopularProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorPopularProductsState extends _ErrorPopularProductsState {
  const _$_ErrorPopularProductsState(
      {final List<Product> products = const [],
      this.message = 'Something went wrong. Please try again later.'})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'PopularProductsState.error(products: $products, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorPopularProductsState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorPopularProductsStateCopyWith<_$_ErrorPopularProductsState>
      get copyWith => __$$_ErrorPopularProductsStateCopyWithImpl<
          _$_ErrorPopularProductsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products, String message) error,
    required TResult Function(List<Product> products) success,
    required TResult Function() inProgress,
  }) {
    return error(products, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
  }) {
    return error?.call(products, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(products, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorPopularProductsState value) error,
    required TResult Function(_SuccessPopularProductsState value) success,
    required TResult Function(_InProgressPopularProductsState value) inProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPopularProductsState extends PopularProductsState {
  const factory _ErrorPopularProductsState(
      {final List<Product> products,
      final String message}) = _$_ErrorPopularProductsState;
  const _ErrorPopularProductsState._() : super._();

  List<Product> get products;
  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorPopularProductsStateCopyWith<_$_ErrorPopularProductsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessPopularProductsStateCopyWith<$Res> {
  factory _$$_SuccessPopularProductsStateCopyWith(
          _$_SuccessPopularProductsState value,
          $Res Function(_$_SuccessPopularProductsState) then) =
      __$$_SuccessPopularProductsStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$$_SuccessPopularProductsStateCopyWithImpl<$Res>
    extends _$PopularProductsStateCopyWithImpl<$Res>
    implements _$$_SuccessPopularProductsStateCopyWith<$Res> {
  __$$_SuccessPopularProductsStateCopyWithImpl(
      _$_SuccessPopularProductsState _value,
      $Res Function(_$_SuccessPopularProductsState) _then)
      : super(_value, (v) => _then(v as _$_SuccessPopularProductsState));

  @override
  _$_SuccessPopularProductsState get _value =>
      super._value as _$_SuccessPopularProductsState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_SuccessPopularProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_SuccessPopularProductsState extends _SuccessPopularProductsState {
  const _$_SuccessPopularProductsState({required final List<Product> products})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'PopularProductsState.success(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessPopularProductsState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessPopularProductsStateCopyWith<_$_SuccessPopularProductsState>
      get copyWith => __$$_SuccessPopularProductsStateCopyWithImpl<
          _$_SuccessPopularProductsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products, String message) error,
    required TResult Function(List<Product> products) success,
    required TResult Function() inProgress,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorPopularProductsState value) error,
    required TResult Function(_SuccessPopularProductsState value) success,
    required TResult Function(_InProgressPopularProductsState value) inProgress,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessPopularProductsState extends PopularProductsState {
  const factory _SuccessPopularProductsState(
      {required final List<Product> products}) = _$_SuccessPopularProductsState;
  const _SuccessPopularProductsState._() : super._();

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$_SuccessPopularProductsStateCopyWith<_$_SuccessPopularProductsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressPopularProductsStateCopyWith<$Res> {
  factory _$$_InProgressPopularProductsStateCopyWith(
          _$_InProgressPopularProductsState value,
          $Res Function(_$_InProgressPopularProductsState) then) =
      __$$_InProgressPopularProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressPopularProductsStateCopyWithImpl<$Res>
    extends _$PopularProductsStateCopyWithImpl<$Res>
    implements _$$_InProgressPopularProductsStateCopyWith<$Res> {
  __$$_InProgressPopularProductsStateCopyWithImpl(
      _$_InProgressPopularProductsState _value,
      $Res Function(_$_InProgressPopularProductsState) _then)
      : super(_value, (v) => _then(v as _$_InProgressPopularProductsState));

  @override
  _$_InProgressPopularProductsState get _value =>
      super._value as _$_InProgressPopularProductsState;
}

/// @nodoc

class _$_InProgressPopularProductsState
    extends _InProgressPopularProductsState {
  const _$_InProgressPopularProductsState() : super._();

  @override
  String toString() {
    return 'PopularProductsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressPopularProductsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products, String message) error,
    required TResult Function(List<Product> products) success,
    required TResult Function() inProgress,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, String message)? error,
    TResult Function(List<Product> products)? success,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorPopularProductsState value) error,
    required TResult Function(_SuccessPopularProductsState value) success,
    required TResult Function(_InProgressPopularProductsState value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorPopularProductsState value)? error,
    TResult Function(_SuccessPopularProductsState value)? success,
    TResult Function(_InProgressPopularProductsState value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressPopularProductsState extends PopularProductsState {
  const factory _InProgressPopularProductsState() =
      _$_InProgressPopularProductsState;
  const _InProgressPopularProductsState._() : super._();
}
