// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String productId) onRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String productId)? onRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String productId)? onRemove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedProductsEvent value) onStarted,
    required TResult Function(_RemoveProductProductsEvent value) onRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedProductsEvent value)? onStarted,
    TResult Function(_RemoveProductProductsEvent value)? onRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedProductsEvent value)? onStarted,
    TResult Function(_RemoveProductProductsEvent value)? onRemove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductsEventCopyWith<$Res> {
  factory $UserProductsEventCopyWith(
          UserProductsEvent value, $Res Function(UserProductsEvent) then) =
      _$UserProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProductsEventCopyWithImpl<$Res>
    implements $UserProductsEventCopyWith<$Res> {
  _$UserProductsEventCopyWithImpl(this._value, this._then);

  final UserProductsEvent _value;
  // ignore: unused_field
  final $Res Function(UserProductsEvent) _then;
}

/// @nodoc
abstract class _$$_StartedProductsEventCopyWith<$Res> {
  factory _$$_StartedProductsEventCopyWith(_$_StartedProductsEvent value,
          $Res Function(_$_StartedProductsEvent) then) =
      __$$_StartedProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedProductsEventCopyWithImpl<$Res>
    extends _$UserProductsEventCopyWithImpl<$Res>
    implements _$$_StartedProductsEventCopyWith<$Res> {
  __$$_StartedProductsEventCopyWithImpl(_$_StartedProductsEvent _value,
      $Res Function(_$_StartedProductsEvent) _then)
      : super(_value, (v) => _then(v as _$_StartedProductsEvent));

  @override
  _$_StartedProductsEvent get _value => super._value as _$_StartedProductsEvent;
}

/// @nodoc

class _$_StartedProductsEvent extends _StartedProductsEvent {
  const _$_StartedProductsEvent() : super._();

  @override
  String toString() {
    return 'UserProductsEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartedProductsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String productId) onRemove,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String productId)? onRemove,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String productId)? onRemove,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedProductsEvent value) onStarted,
    required TResult Function(_RemoveProductProductsEvent value) onRemove,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedProductsEvent value)? onStarted,
    TResult Function(_RemoveProductProductsEvent value)? onRemove,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedProductsEvent value)? onStarted,
    TResult Function(_RemoveProductProductsEvent value)? onRemove,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _StartedProductsEvent extends UserProductsEvent {
  const factory _StartedProductsEvent() = _$_StartedProductsEvent;
  const _StartedProductsEvent._() : super._();
}

/// @nodoc
abstract class _$$_RemoveProductProductsEventCopyWith<$Res> {
  factory _$$_RemoveProductProductsEventCopyWith(
          _$_RemoveProductProductsEvent value,
          $Res Function(_$_RemoveProductProductsEvent) then) =
      __$$_RemoveProductProductsEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class __$$_RemoveProductProductsEventCopyWithImpl<$Res>
    extends _$UserProductsEventCopyWithImpl<$Res>
    implements _$$_RemoveProductProductsEventCopyWith<$Res> {
  __$$_RemoveProductProductsEventCopyWithImpl(
      _$_RemoveProductProductsEvent _value,
      $Res Function(_$_RemoveProductProductsEvent) _then)
      : super(_value, (v) => _then(v as _$_RemoveProductProductsEvent));

  @override
  _$_RemoveProductProductsEvent get _value =>
      super._value as _$_RemoveProductProductsEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$_RemoveProductProductsEvent(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveProductProductsEvent extends _RemoveProductProductsEvent {
  const _$_RemoveProductProductsEvent(this.productId) : super._();

  @override
  final String productId;

  @override
  String toString() {
    return 'UserProductsEvent.onRemove(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveProductProductsEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveProductProductsEventCopyWith<_$_RemoveProductProductsEvent>
      get copyWith => __$$_RemoveProductProductsEventCopyWithImpl<
          _$_RemoveProductProductsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String productId) onRemove,
  }) {
    return onRemove(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String productId)? onRemove,
  }) {
    return onRemove?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String productId)? onRemove,
    required TResult orElse(),
  }) {
    if (onRemove != null) {
      return onRemove(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedProductsEvent value) onStarted,
    required TResult Function(_RemoveProductProductsEvent value) onRemove,
  }) {
    return onRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedProductsEvent value)? onStarted,
    TResult Function(_RemoveProductProductsEvent value)? onRemove,
  }) {
    return onRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedProductsEvent value)? onStarted,
    TResult Function(_RemoveProductProductsEvent value)? onRemove,
    required TResult orElse(),
  }) {
    if (onRemove != null) {
      return onRemove(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductProductsEvent extends UserProductsEvent {
  const factory _RemoveProductProductsEvent(final String productId) =
      _$_RemoveProductProductsEvent;
  const _RemoveProductProductsEvent._() : super._();

  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RemoveProductProductsEventCopyWith<_$_RemoveProductProductsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProductsState {
  List<Product> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) progress,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressUserProductsState value) progress,
    required TResult Function(_SuccessUserProductsState value) success,
    required TResult Function(_ErrorUserProductsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProductsStateCopyWith<UserProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductsStateCopyWith<$Res> {
  factory $UserProductsStateCopyWith(
          UserProductsState value, $Res Function(UserProductsState) then) =
      _$UserProductsStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$UserProductsStateCopyWithImpl<$Res>
    implements $UserProductsStateCopyWith<$Res> {
  _$UserProductsStateCopyWithImpl(this._value, this._then);

  final UserProductsState _value;
  // ignore: unused_field
  final $Res Function(UserProductsState) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProgressUserProductsStateCopyWith<$Res>
    implements $UserProductsStateCopyWith<$Res> {
  factory _$$_ProgressUserProductsStateCopyWith(
          _$_ProgressUserProductsState value,
          $Res Function(_$_ProgressUserProductsState) then) =
      __$$_ProgressUserProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$$_ProgressUserProductsStateCopyWithImpl<$Res>
    extends _$UserProductsStateCopyWithImpl<$Res>
    implements _$$_ProgressUserProductsStateCopyWith<$Res> {
  __$$_ProgressUserProductsStateCopyWithImpl(
      _$_ProgressUserProductsState _value,
      $Res Function(_$_ProgressUserProductsState) _then)
      : super(_value, (v) => _then(v as _$_ProgressUserProductsState));

  @override
  _$_ProgressUserProductsState get _value =>
      super._value as _$_ProgressUserProductsState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_ProgressUserProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProgressUserProductsState extends _ProgressUserProductsState {
  const _$_ProgressUserProductsState(
      {final List<Product> products = const <Product>[]})
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
  String toString() {
    return 'UserProductsState.progress(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressUserProductsState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_ProgressUserProductsStateCopyWith<_$_ProgressUserProductsState>
      get copyWith => __$$_ProgressUserProductsStateCopyWithImpl<
          _$_ProgressUserProductsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) progress,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products, String message) error,
  }) {
    return progress(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
  }) {
    return progress?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressUserProductsState value) progress,
    required TResult Function(_SuccessUserProductsState value) success,
    required TResult Function(_ErrorUserProductsState value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _ProgressUserProductsState extends UserProductsState {
  const factory _ProgressUserProductsState({final List<Product> products}) =
      _$_ProgressUserProductsState;
  const _ProgressUserProductsState._() : super._();

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressUserProductsStateCopyWith<_$_ProgressUserProductsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessUserProductsStateCopyWith<$Res>
    implements $UserProductsStateCopyWith<$Res> {
  factory _$$_SuccessUserProductsStateCopyWith(
          _$_SuccessUserProductsState value,
          $Res Function(_$_SuccessUserProductsState) then) =
      __$$_SuccessUserProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$$_SuccessUserProductsStateCopyWithImpl<$Res>
    extends _$UserProductsStateCopyWithImpl<$Res>
    implements _$$_SuccessUserProductsStateCopyWith<$Res> {
  __$$_SuccessUserProductsStateCopyWithImpl(_$_SuccessUserProductsState _value,
      $Res Function(_$_SuccessUserProductsState) _then)
      : super(_value, (v) => _then(v as _$_SuccessUserProductsState));

  @override
  _$_SuccessUserProductsState get _value =>
      super._value as _$_SuccessUserProductsState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_SuccessUserProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_SuccessUserProductsState extends _SuccessUserProductsState {
  const _$_SuccessUserProductsState({required final List<Product> products})
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
    return 'UserProductsState.success(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessUserProductsState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessUserProductsStateCopyWith<_$_SuccessUserProductsState>
      get copyWith => __$$_SuccessUserProductsStateCopyWithImpl<
          _$_SuccessUserProductsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) progress,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products, String message) error,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
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
    required TResult Function(_ProgressUserProductsState value) progress,
    required TResult Function(_SuccessUserProductsState value) success,
    required TResult Function(_ErrorUserProductsState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessUserProductsState extends UserProductsState {
  const factory _SuccessUserProductsState(
      {required final List<Product> products}) = _$_SuccessUserProductsState;
  const _SuccessUserProductsState._() : super._();

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessUserProductsStateCopyWith<_$_SuccessUserProductsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorUserProductsStateCopyWith<$Res>
    implements $UserProductsStateCopyWith<$Res> {
  factory _$$_ErrorUserProductsStateCopyWith(_$_ErrorUserProductsState value,
          $Res Function(_$_ErrorUserProductsState) then) =
      __$$_ErrorUserProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, String message});
}

/// @nodoc
class __$$_ErrorUserProductsStateCopyWithImpl<$Res>
    extends _$UserProductsStateCopyWithImpl<$Res>
    implements _$$_ErrorUserProductsStateCopyWith<$Res> {
  __$$_ErrorUserProductsStateCopyWithImpl(_$_ErrorUserProductsState _value,
      $Res Function(_$_ErrorUserProductsState) _then)
      : super(_value, (v) => _then(v as _$_ErrorUserProductsState));

  @override
  _$_ErrorUserProductsState get _value =>
      super._value as _$_ErrorUserProductsState;

  @override
  $Res call({
    Object? products = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorUserProductsState(
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

class _$_ErrorUserProductsState extends _ErrorUserProductsState {
  const _$_ErrorUserProductsState(
      {final List<Product> products = const <Product>[],
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
    return 'UserProductsState.error(products: $products, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorUserProductsState &&
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
  _$$_ErrorUserProductsStateCopyWith<_$_ErrorUserProductsState> get copyWith =>
      __$$_ErrorUserProductsStateCopyWithImpl<_$_ErrorUserProductsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) progress,
    required TResult Function(List<Product> products) success,
    required TResult Function(List<Product> products, String message) error,
  }) {
    return error(products, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
  }) {
    return error?.call(products, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? progress,
    TResult Function(List<Product> products)? success,
    TResult Function(List<Product> products, String message)? error,
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
    required TResult Function(_ProgressUserProductsState value) progress,
    required TResult Function(_SuccessUserProductsState value) success,
    required TResult Function(_ErrorUserProductsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressUserProductsState value)? progress,
    TResult Function(_SuccessUserProductsState value)? success,
    TResult Function(_ErrorUserProductsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUserProductsState extends UserProductsState {
  const factory _ErrorUserProductsState(
      {final List<Product> products,
      final String message}) = _$_ErrorUserProductsState;
  const _ErrorUserProductsState._() : super._();

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorUserProductsStateCopyWith<_$_ErrorUserProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
