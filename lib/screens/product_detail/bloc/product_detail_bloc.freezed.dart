// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailEvent {
  String get productId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) onStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId)? onStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? onStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedProductDetailEvent value) onStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedProductDetailEvent value)? onStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedProductDetailEvent value)? onStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailEventCopyWith<ProductDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailEventCopyWith(
          ProductDetailEvent value, $Res Function(ProductDetailEvent) then) =
      _$ProductDetailEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$ProductDetailEventCopyWithImpl<$Res>
    implements $ProductDetailEventCopyWith<$Res> {
  _$ProductDetailEventCopyWithImpl(this._value, this._then);

  final ProductDetailEvent _value;
  // ignore: unused_field
  final $Res Function(ProductDetailEvent) _then;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StartedProductDetailEventCopyWith<$Res>
    implements $ProductDetailEventCopyWith<$Res> {
  factory _$$_StartedProductDetailEventCopyWith(
          _$_StartedProductDetailEvent value,
          $Res Function(_$_StartedProductDetailEvent) then) =
      __$$_StartedProductDetailEventCopyWithImpl<$Res>;
  @override
  $Res call({String productId});
}

/// @nodoc
class __$$_StartedProductDetailEventCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res>
    implements _$$_StartedProductDetailEventCopyWith<$Res> {
  __$$_StartedProductDetailEventCopyWithImpl(
      _$_StartedProductDetailEvent _value,
      $Res Function(_$_StartedProductDetailEvent) _then)
      : super(_value, (v) => _then(v as _$_StartedProductDetailEvent));

  @override
  _$_StartedProductDetailEvent get _value =>
      super._value as _$_StartedProductDetailEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$_StartedProductDetailEvent(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartedProductDetailEvent extends _StartedProductDetailEvent {
  const _$_StartedProductDetailEvent(this.productId) : super._();

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductDetailEvent.onStarted(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedProductDetailEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$_StartedProductDetailEventCopyWith<_$_StartedProductDetailEvent>
      get copyWith => __$$_StartedProductDetailEventCopyWithImpl<
          _$_StartedProductDetailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) onStarted,
  }) {
    return onStarted(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId)? onStarted,
  }) {
    return onStarted?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? onStarted,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedProductDetailEvent value) onStarted,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedProductDetailEvent value)? onStarted,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedProductDetailEvent value)? onStarted,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _StartedProductDetailEvent extends ProductDetailEvent {
  const factory _StartedProductDetailEvent(final String productId) =
      _$_StartedProductDetailEvent;
  const _StartedProductDetailEvent._() : super._();

  @override
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$$_StartedProductDetailEventCopyWith<_$_StartedProductDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(Product product) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressProductDetailState value) progress,
    required TResult Function(_SuccessProductDetailState value) success,
    required TResult Function(_ErrorProductDetailState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  final ProductDetailState _value;
  // ignore: unused_field
  final $Res Function(ProductDetailState) _then;
}

/// @nodoc
abstract class _$$_ProgressProductDetailStateCopyWith<$Res> {
  factory _$$_ProgressProductDetailStateCopyWith(
          _$_ProgressProductDetailState value,
          $Res Function(_$_ProgressProductDetailState) then) =
      __$$_ProgressProductDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProgressProductDetailStateCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res>
    implements _$$_ProgressProductDetailStateCopyWith<$Res> {
  __$$_ProgressProductDetailStateCopyWithImpl(
      _$_ProgressProductDetailState _value,
      $Res Function(_$_ProgressProductDetailState) _then)
      : super(_value, (v) => _then(v as _$_ProgressProductDetailState));

  @override
  _$_ProgressProductDetailState get _value =>
      super._value as _$_ProgressProductDetailState;
}

/// @nodoc

class _$_ProgressProductDetailState extends _ProgressProductDetailState {
  const _$_ProgressProductDetailState() : super._();

  @override
  String toString() {
    return 'ProductDetailState.progress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressProductDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(Product product) success,
    required TResult Function(String message) error,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressProductDetailState value) progress,
    required TResult Function(_SuccessProductDetailState value) success,
    required TResult Function(_ErrorProductDetailState value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _ProgressProductDetailState extends ProductDetailState {
  const factory _ProgressProductDetailState() = _$_ProgressProductDetailState;
  const _ProgressProductDetailState._() : super._();
}

/// @nodoc
abstract class _$$_SuccessProductDetailStateCopyWith<$Res> {
  factory _$$_SuccessProductDetailStateCopyWith(
          _$_SuccessProductDetailState value,
          $Res Function(_$_SuccessProductDetailState) then) =
      __$$_SuccessProductDetailStateCopyWithImpl<$Res>;
  $Res call({Product product});
}

/// @nodoc
class __$$_SuccessProductDetailStateCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res>
    implements _$$_SuccessProductDetailStateCopyWith<$Res> {
  __$$_SuccessProductDetailStateCopyWithImpl(
      _$_SuccessProductDetailState _value,
      $Res Function(_$_SuccessProductDetailState) _then)
      : super(_value, (v) => _then(v as _$_SuccessProductDetailState));

  @override
  _$_SuccessProductDetailState get _value =>
      super._value as _$_SuccessProductDetailState;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_SuccessProductDetailState(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_SuccessProductDetailState extends _SuccessProductDetailState {
  const _$_SuccessProductDetailState({required this.product}) : super._();

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailState.success(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessProductDetailState &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessProductDetailStateCopyWith<_$_SuccessProductDetailState>
      get copyWith => __$$_SuccessProductDetailStateCopyWithImpl<
          _$_SuccessProductDetailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(Product product) success,
    required TResult Function(String message) error,
  }) {
    return success(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
  }) {
    return success?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressProductDetailState value) progress,
    required TResult Function(_SuccessProductDetailState value) success,
    required TResult Function(_ErrorProductDetailState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessProductDetailState extends ProductDetailState {
  const factory _SuccessProductDetailState({required final Product product}) =
      _$_SuccessProductDetailState;
  const _SuccessProductDetailState._() : super._();

  Product get product;
  @JsonKey(ignore: true)
  _$$_SuccessProductDetailStateCopyWith<_$_SuccessProductDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorProductDetailStateCopyWith<$Res> {
  factory _$$_ErrorProductDetailStateCopyWith(_$_ErrorProductDetailState value,
          $Res Function(_$_ErrorProductDetailState) then) =
      __$$_ErrorProductDetailStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorProductDetailStateCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res>
    implements _$$_ErrorProductDetailStateCopyWith<$Res> {
  __$$_ErrorProductDetailStateCopyWithImpl(_$_ErrorProductDetailState _value,
      $Res Function(_$_ErrorProductDetailState) _then)
      : super(_value, (v) => _then(v as _$_ErrorProductDetailState));

  @override
  _$_ErrorProductDetailState get _value =>
      super._value as _$_ErrorProductDetailState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorProductDetailState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorProductDetailState extends _ErrorProductDetailState {
  const _$_ErrorProductDetailState(
      {this.message = 'Something went wrong. Please try again later.'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ProductDetailState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorProductDetailState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorProductDetailStateCopyWith<_$_ErrorProductDetailState>
      get copyWith =>
          __$$_ErrorProductDetailStateCopyWithImpl<_$_ErrorProductDetailState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() progress,
    required TResult Function(Product product) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? progress,
    TResult Function(Product product)? success,
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
    required TResult Function(_ProgressProductDetailState value) progress,
    required TResult Function(_SuccessProductDetailState value) success,
    required TResult Function(_ErrorProductDetailState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressProductDetailState value)? progress,
    TResult Function(_SuccessProductDetailState value)? success,
    TResult Function(_ErrorProductDetailState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorProductDetailState extends ProductDetailState {
  const factory _ErrorProductDetailState({final String message}) =
      _$_ErrorProductDetailState;
  const _ErrorProductDetailState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorProductDetailStateCopyWith<_$_ErrorProductDetailState>
      get copyWith => throw _privateConstructorUsedError;
}
