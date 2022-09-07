// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscribe,
    required TResult Function(ProductsOverviewFilter filter) onFilterChanged,
    required TResult Function(Product product) onFavoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscribeProductsEvent value) onSubscribe,
    required TResult Function(_FilterChangedProductsEvent value)
        onFilterChanged,
    required TResult Function(_FavoriteToggledProductsEvent value)
        onFavoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsOverviewEventCopyWith<$Res> {
  factory $ProductsOverviewEventCopyWith(ProductsOverviewEvent value,
          $Res Function(ProductsOverviewEvent) then) =
      _$ProductsOverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsOverviewEventCopyWithImpl<$Res>
    implements $ProductsOverviewEventCopyWith<$Res> {
  _$ProductsOverviewEventCopyWithImpl(this._value, this._then);

  final ProductsOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(ProductsOverviewEvent) _then;
}

/// @nodoc
abstract class _$$_SubscribeProductsEventCopyWith<$Res> {
  factory _$$_SubscribeProductsEventCopyWith(_$_SubscribeProductsEvent value,
          $Res Function(_$_SubscribeProductsEvent) then) =
      __$$_SubscribeProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscribeProductsEventCopyWithImpl<$Res>
    extends _$ProductsOverviewEventCopyWithImpl<$Res>
    implements _$$_SubscribeProductsEventCopyWith<$Res> {
  __$$_SubscribeProductsEventCopyWithImpl(_$_SubscribeProductsEvent _value,
      $Res Function(_$_SubscribeProductsEvent) _then)
      : super(_value, (v) => _then(v as _$_SubscribeProductsEvent));

  @override
  _$_SubscribeProductsEvent get _value =>
      super._value as _$_SubscribeProductsEvent;
}

/// @nodoc

class _$_SubscribeProductsEvent implements _SubscribeProductsEvent {
  const _$_SubscribeProductsEvent();

  @override
  String toString() {
    return 'ProductsOverviewEvent.onSubscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscribeProductsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscribe,
    required TResult Function(ProductsOverviewFilter filter) onFilterChanged,
    required TResult Function(Product product) onFavoriteToggled,
  }) {
    return onSubscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
  }) {
    return onSubscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
    required TResult orElse(),
  }) {
    if (onSubscribe != null) {
      return onSubscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscribeProductsEvent value) onSubscribe,
    required TResult Function(_FilterChangedProductsEvent value)
        onFilterChanged,
    required TResult Function(_FavoriteToggledProductsEvent value)
        onFavoriteToggled,
  }) {
    return onSubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
  }) {
    return onSubscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
    required TResult orElse(),
  }) {
    if (onSubscribe != null) {
      return onSubscribe(this);
    }
    return orElse();
  }
}

abstract class _SubscribeProductsEvent implements ProductsOverviewEvent {
  const factory _SubscribeProductsEvent() = _$_SubscribeProductsEvent;
}

/// @nodoc
abstract class _$$_FilterChangedProductsEventCopyWith<$Res> {
  factory _$$_FilterChangedProductsEventCopyWith(
          _$_FilterChangedProductsEvent value,
          $Res Function(_$_FilterChangedProductsEvent) then) =
      __$$_FilterChangedProductsEventCopyWithImpl<$Res>;
  $Res call({ProductsOverviewFilter filter});
}

/// @nodoc
class __$$_FilterChangedProductsEventCopyWithImpl<$Res>
    extends _$ProductsOverviewEventCopyWithImpl<$Res>
    implements _$$_FilterChangedProductsEventCopyWith<$Res> {
  __$$_FilterChangedProductsEventCopyWithImpl(
      _$_FilterChangedProductsEvent _value,
      $Res Function(_$_FilterChangedProductsEvent) _then)
      : super(_value, (v) => _then(v as _$_FilterChangedProductsEvent));

  @override
  _$_FilterChangedProductsEvent get _value =>
      super._value as _$_FilterChangedProductsEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_FilterChangedProductsEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProductsOverviewFilter,
    ));
  }
}

/// @nodoc

class _$_FilterChangedProductsEvent implements _FilterChangedProductsEvent {
  const _$_FilterChangedProductsEvent(
      {this.filter = ProductsOverviewFilter.all});

  @override
  @JsonKey()
  final ProductsOverviewFilter filter;

  @override
  String toString() {
    return 'ProductsOverviewEvent.onFilterChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterChangedProductsEvent &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_FilterChangedProductsEventCopyWith<_$_FilterChangedProductsEvent>
      get copyWith => __$$_FilterChangedProductsEventCopyWithImpl<
          _$_FilterChangedProductsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscribe,
    required TResult Function(ProductsOverviewFilter filter) onFilterChanged,
    required TResult Function(Product product) onFavoriteToggled,
  }) {
    return onFilterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
  }) {
    return onFilterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
    required TResult orElse(),
  }) {
    if (onFilterChanged != null) {
      return onFilterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscribeProductsEvent value) onSubscribe,
    required TResult Function(_FilterChangedProductsEvent value)
        onFilterChanged,
    required TResult Function(_FavoriteToggledProductsEvent value)
        onFavoriteToggled,
  }) {
    return onFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
  }) {
    return onFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
    required TResult orElse(),
  }) {
    if (onFilterChanged != null) {
      return onFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _FilterChangedProductsEvent implements ProductsOverviewEvent {
  const factory _FilterChangedProductsEvent(
      {final ProductsOverviewFilter filter}) = _$_FilterChangedProductsEvent;

  ProductsOverviewFilter get filter;
  @JsonKey(ignore: true)
  _$$_FilterChangedProductsEventCopyWith<_$_FilterChangedProductsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoriteToggledProductsEventCopyWith<$Res> {
  factory _$$_FavoriteToggledProductsEventCopyWith(
          _$_FavoriteToggledProductsEvent value,
          $Res Function(_$_FavoriteToggledProductsEvent) then) =
      __$$_FavoriteToggledProductsEventCopyWithImpl<$Res>;
  $Res call({Product product});
}

/// @nodoc
class __$$_FavoriteToggledProductsEventCopyWithImpl<$Res>
    extends _$ProductsOverviewEventCopyWithImpl<$Res>
    implements _$$_FavoriteToggledProductsEventCopyWith<$Res> {
  __$$_FavoriteToggledProductsEventCopyWithImpl(
      _$_FavoriteToggledProductsEvent _value,
      $Res Function(_$_FavoriteToggledProductsEvent) _then)
      : super(_value, (v) => _then(v as _$_FavoriteToggledProductsEvent));

  @override
  _$_FavoriteToggledProductsEvent get _value =>
      super._value as _$_FavoriteToggledProductsEvent;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_FavoriteToggledProductsEvent(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_FavoriteToggledProductsEvent implements _FavoriteToggledProductsEvent {
  const _$_FavoriteToggledProductsEvent({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsOverviewEvent.onFavoriteToggled(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteToggledProductsEvent &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteToggledProductsEventCopyWith<_$_FavoriteToggledProductsEvent>
      get copyWith => __$$_FavoriteToggledProductsEventCopyWithImpl<
          _$_FavoriteToggledProductsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubscribe,
    required TResult Function(ProductsOverviewFilter filter) onFilterChanged,
    required TResult Function(Product product) onFavoriteToggled,
  }) {
    return onFavoriteToggled(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
  }) {
    return onFavoriteToggled?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubscribe,
    TResult Function(ProductsOverviewFilter filter)? onFilterChanged,
    TResult Function(Product product)? onFavoriteToggled,
    required TResult orElse(),
  }) {
    if (onFavoriteToggled != null) {
      return onFavoriteToggled(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscribeProductsEvent value) onSubscribe,
    required TResult Function(_FilterChangedProductsEvent value)
        onFilterChanged,
    required TResult Function(_FavoriteToggledProductsEvent value)
        onFavoriteToggled,
  }) {
    return onFavoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
  }) {
    return onFavoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscribeProductsEvent value)? onSubscribe,
    TResult Function(_FilterChangedProductsEvent value)? onFilterChanged,
    TResult Function(_FavoriteToggledProductsEvent value)? onFavoriteToggled,
    required TResult orElse(),
  }) {
    if (onFavoriteToggled != null) {
      return onFavoriteToggled(this);
    }
    return orElse();
  }
}

abstract class _FavoriteToggledProductsEvent implements ProductsOverviewEvent {
  const factory _FavoriteToggledProductsEvent(
      {required final Product product}) = _$_FavoriteToggledProductsEvent;

  Product get product;
  @JsonKey(ignore: true)
  _$$_FavoriteToggledProductsEventCopyWith<_$_FavoriteToggledProductsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsOverviewState {
  List<Product> get products => throw _privateConstructorUsedError;
  ProductsOverviewFilter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        success,
    required TResult Function(List<Product> products,
            ProductsOverviewFilter filter, String message)
        error,
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        progress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessProductsState value) success,
    required TResult Function(_ErrorProductsState value) error,
    required TResult Function(_ProgressProductsState value) progress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsOverviewStateCopyWith<ProductsOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsOverviewStateCopyWith<$Res> {
  factory $ProductsOverviewStateCopyWith(ProductsOverviewState value,
          $Res Function(ProductsOverviewState) then) =
      _$ProductsOverviewStateCopyWithImpl<$Res>;
  $Res call({List<Product> products, ProductsOverviewFilter filter});
}

/// @nodoc
class _$ProductsOverviewStateCopyWithImpl<$Res>
    implements $ProductsOverviewStateCopyWith<$Res> {
  _$ProductsOverviewStateCopyWithImpl(this._value, this._then);

  final ProductsOverviewState _value;
  // ignore: unused_field
  final $Res Function(ProductsOverviewState) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProductsOverviewFilter,
    ));
  }
}

/// @nodoc
abstract class _$$_SuccessProductsStateCopyWith<$Res>
    implements $ProductsOverviewStateCopyWith<$Res> {
  factory _$$_SuccessProductsStateCopyWith(_$_SuccessProductsState value,
          $Res Function(_$_SuccessProductsState) then) =
      __$$_SuccessProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, ProductsOverviewFilter filter});
}

/// @nodoc
class __$$_SuccessProductsStateCopyWithImpl<$Res>
    extends _$ProductsOverviewStateCopyWithImpl<$Res>
    implements _$$_SuccessProductsStateCopyWith<$Res> {
  __$$_SuccessProductsStateCopyWithImpl(_$_SuccessProductsState _value,
      $Res Function(_$_SuccessProductsState) _then)
      : super(_value, (v) => _then(v as _$_SuccessProductsState));

  @override
  _$_SuccessProductsState get _value => super._value as _$_SuccessProductsState;

  @override
  $Res call({
    Object? products = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_SuccessProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProductsOverviewFilter,
    ));
  }
}

/// @nodoc

class _$_SuccessProductsState extends _SuccessProductsState {
  const _$_SuccessProductsState(
      {required final List<Product> products,
      this.filter = ProductsOverviewFilter.all})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final ProductsOverviewFilter filter;

  @override
  String toString() {
    return 'ProductsOverviewState.success(products: $products, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessProductsState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessProductsStateCopyWith<_$_SuccessProductsState> get copyWith =>
      __$$_SuccessProductsStateCopyWithImpl<_$_SuccessProductsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        success,
    required TResult Function(List<Product> products,
            ProductsOverviewFilter filter, String message)
        error,
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        progress,
  }) {
    return success(products, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
  }) {
    return success?.call(products, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessProductsState value) success,
    required TResult Function(_ErrorProductsState value) error,
    required TResult Function(_ProgressProductsState value) progress,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessProductsState extends ProductsOverviewState {
  const factory _SuccessProductsState(
      {required final List<Product> products,
      final ProductsOverviewFilter filter}) = _$_SuccessProductsState;
  const _SuccessProductsState._() : super._();

  @override
  List<Product> get products;
  @override
  ProductsOverviewFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessProductsStateCopyWith<_$_SuccessProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorProductsStateCopyWith<$Res>
    implements $ProductsOverviewStateCopyWith<$Res> {
  factory _$$_ErrorProductsStateCopyWith(_$_ErrorProductsState value,
          $Res Function(_$_ErrorProductsState) then) =
      __$$_ErrorProductsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product> products, ProductsOverviewFilter filter, String message});
}

/// @nodoc
class __$$_ErrorProductsStateCopyWithImpl<$Res>
    extends _$ProductsOverviewStateCopyWithImpl<$Res>
    implements _$$_ErrorProductsStateCopyWith<$Res> {
  __$$_ErrorProductsStateCopyWithImpl(
      _$_ErrorProductsState _value, $Res Function(_$_ErrorProductsState) _then)
      : super(_value, (v) => _then(v as _$_ErrorProductsState));

  @override
  _$_ErrorProductsState get _value => super._value as _$_ErrorProductsState;

  @override
  $Res call({
    Object? products = freezed,
    Object? filter = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProductsOverviewFilter,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorProductsState extends _ErrorProductsState {
  const _$_ErrorProductsState(
      {final List<Product> products = const <Product>[],
      this.filter = ProductsOverviewFilter.all,
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
  final ProductsOverviewFilter filter;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ProductsOverviewState.error(products: $products, filter: $filter, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorProductsState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorProductsStateCopyWith<_$_ErrorProductsState> get copyWith =>
      __$$_ErrorProductsStateCopyWithImpl<_$_ErrorProductsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        success,
    required TResult Function(List<Product> products,
            ProductsOverviewFilter filter, String message)
        error,
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        progress,
  }) {
    return error(products, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
  }) {
    return error?.call(products, filter, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(products, filter, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessProductsState value) success,
    required TResult Function(_ErrorProductsState value) error,
    required TResult Function(_ProgressProductsState value) progress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorProductsState extends ProductsOverviewState {
  const factory _ErrorProductsState(
      {final List<Product> products,
      final ProductsOverviewFilter filter,
      final String message}) = _$_ErrorProductsState;
  const _ErrorProductsState._() : super._();

  @override
  List<Product> get products;
  @override
  ProductsOverviewFilter get filter;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorProductsStateCopyWith<_$_ErrorProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProgressProductsStateCopyWith<$Res>
    implements $ProductsOverviewStateCopyWith<$Res> {
  factory _$$_ProgressProductsStateCopyWith(_$_ProgressProductsState value,
          $Res Function(_$_ProgressProductsState) then) =
      __$$_ProgressProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, ProductsOverviewFilter filter});
}

/// @nodoc
class __$$_ProgressProductsStateCopyWithImpl<$Res>
    extends _$ProductsOverviewStateCopyWithImpl<$Res>
    implements _$$_ProgressProductsStateCopyWith<$Res> {
  __$$_ProgressProductsStateCopyWithImpl(_$_ProgressProductsState _value,
      $Res Function(_$_ProgressProductsState) _then)
      : super(_value, (v) => _then(v as _$_ProgressProductsState));

  @override
  _$_ProgressProductsState get _value =>
      super._value as _$_ProgressProductsState;

  @override
  $Res call({
    Object? products = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_ProgressProductsState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ProductsOverviewFilter,
    ));
  }
}

/// @nodoc

class _$_ProgressProductsState extends _ProgressProductsState {
  const _$_ProgressProductsState(
      {final List<Product> products = const <Product>[],
      this.filter = ProductsOverviewFilter.all})
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
  final ProductsOverviewFilter filter;

  @override
  String toString() {
    return 'ProductsOverviewState.progress(products: $products, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressProductsState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_ProgressProductsStateCopyWith<_$_ProgressProductsState> get copyWith =>
      __$$_ProgressProductsStateCopyWithImpl<_$_ProgressProductsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        success,
    required TResult Function(List<Product> products,
            ProductsOverviewFilter filter, String message)
        error,
    required TResult Function(
            List<Product> products, ProductsOverviewFilter filter)
        progress,
  }) {
    return progress(products, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
  }) {
    return progress?.call(products, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        success,
    TResult Function(List<Product> products, ProductsOverviewFilter filter,
            String message)?
        error,
    TResult Function(List<Product> products, ProductsOverviewFilter filter)?
        progress,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(products, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessProductsState value) success,
    required TResult Function(_ErrorProductsState value) error,
    required TResult Function(_ProgressProductsState value) progress,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessProductsState value)? success,
    TResult Function(_ErrorProductsState value)? error,
    TResult Function(_ProgressProductsState value)? progress,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _ProgressProductsState extends ProductsOverviewState {
  const factory _ProgressProductsState(
      {final List<Product> products,
      final ProductsOverviewFilter filter}) = _$_ProgressProductsState;
  const _ProgressProductsState._() : super._();

  @override
  List<Product> get products;
  @override
  ProductsOverviewFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressProductsStateCopyWith<_$_ProgressProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
