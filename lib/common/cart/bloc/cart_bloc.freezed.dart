// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addProduct,
    required TResult Function(String productId) removeProduct,
    required TResult Function(String productId) reduceQuantityOrRemoveProduct,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductCartEvent value) addProduct,
    required TResult Function(_RemoveProductCartEvent value) removeProduct,
    required TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)
        reduceQuantityOrRemoveProduct,
    required TResult Function(_ClearCartEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$_AddProductCartEventCopyWith<$Res> {
  factory _$$_AddProductCartEventCopyWith(_$_AddProductCartEvent value,
          $Res Function(_$_AddProductCartEvent) then) =
      __$$_AddProductCartEventCopyWithImpl<$Res>;
  $Res call({String productId, String title, double price});
}

/// @nodoc
class __$$_AddProductCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_AddProductCartEventCopyWith<$Res> {
  __$$_AddProductCartEventCopyWithImpl(_$_AddProductCartEvent _value,
      $Res Function(_$_AddProductCartEvent) _then)
      : super(_value, (v) => _then(v as _$_AddProductCartEvent));

  @override
  _$_AddProductCartEvent get _value => super._value as _$_AddProductCartEvent;

  @override
  $Res call({
    Object? productId = freezed,
    Object? title = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_AddProductCartEvent(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AddProductCartEvent extends _AddProductCartEvent {
  const _$_AddProductCartEvent(
      {required this.productId, required this.title, required this.price})
      : super._();

  @override
  final String productId;
  @override
  final String title;
  @override
  final double price;

  @override
  String toString() {
    return 'CartEvent.addProduct(productId: $productId, title: $title, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductCartEvent &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_AddProductCartEventCopyWith<_$_AddProductCartEvent> get copyWith =>
      __$$_AddProductCartEventCopyWithImpl<_$_AddProductCartEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addProduct,
    required TResult Function(String productId) removeProduct,
    required TResult Function(String productId) reduceQuantityOrRemoveProduct,
    required TResult Function() clear,
  }) {
    return addProduct(productId, title, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
  }) {
    return addProduct?.call(productId, title, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(productId, title, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductCartEvent value) addProduct,
    required TResult Function(_RemoveProductCartEvent value) removeProduct,
    required TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)
        reduceQuantityOrRemoveProduct,
    required TResult Function(_ClearCartEvent value) clear,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProductCartEvent extends CartEvent {
  const factory _AddProductCartEvent(
      {required final String productId,
      required final String title,
      required final double price}) = _$_AddProductCartEvent;
  const _AddProductCartEvent._() : super._();

  String get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddProductCartEventCopyWith<_$_AddProductCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveProductCartEventCopyWith<$Res> {
  factory _$$_RemoveProductCartEventCopyWith(_$_RemoveProductCartEvent value,
          $Res Function(_$_RemoveProductCartEvent) then) =
      __$$_RemoveProductCartEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class __$$_RemoveProductCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_RemoveProductCartEventCopyWith<$Res> {
  __$$_RemoveProductCartEventCopyWithImpl(_$_RemoveProductCartEvent _value,
      $Res Function(_$_RemoveProductCartEvent) _then)
      : super(_value, (v) => _then(v as _$_RemoveProductCartEvent));

  @override
  _$_RemoveProductCartEvent get _value =>
      super._value as _$_RemoveProductCartEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$_RemoveProductCartEvent(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveProductCartEvent extends _RemoveProductCartEvent {
  const _$_RemoveProductCartEvent(this.productId) : super._();

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.removeProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveProductCartEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveProductCartEventCopyWith<_$_RemoveProductCartEvent> get copyWith =>
      __$$_RemoveProductCartEventCopyWithImpl<_$_RemoveProductCartEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addProduct,
    required TResult Function(String productId) removeProduct,
    required TResult Function(String productId) reduceQuantityOrRemoveProduct,
    required TResult Function() clear,
  }) {
    return removeProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
  }) {
    return removeProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductCartEvent value) addProduct,
    required TResult Function(_RemoveProductCartEvent value) removeProduct,
    required TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)
        reduceQuantityOrRemoveProduct,
    required TResult Function(_ClearCartEvent value) clear,
  }) {
    return removeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
  }) {
    return removeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductCartEvent extends CartEvent {
  const factory _RemoveProductCartEvent(final String productId) =
      _$_RemoveProductCartEvent;
  const _RemoveProductCartEvent._() : super._();

  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RemoveProductCartEventCopyWith<_$_RemoveProductCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReduceQuantityOrRemoveProductCartEventCopyWith<$Res> {
  factory _$$_ReduceQuantityOrRemoveProductCartEventCopyWith(
          _$_ReduceQuantityOrRemoveProductCartEvent value,
          $Res Function(_$_ReduceQuantityOrRemoveProductCartEvent) then) =
      __$$_ReduceQuantityOrRemoveProductCartEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class __$$_ReduceQuantityOrRemoveProductCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_ReduceQuantityOrRemoveProductCartEventCopyWith<$Res> {
  __$$_ReduceQuantityOrRemoveProductCartEventCopyWithImpl(
      _$_ReduceQuantityOrRemoveProductCartEvent _value,
      $Res Function(_$_ReduceQuantityOrRemoveProductCartEvent) _then)
      : super(_value,
            (v) => _then(v as _$_ReduceQuantityOrRemoveProductCartEvent));

  @override
  _$_ReduceQuantityOrRemoveProductCartEvent get _value =>
      super._value as _$_ReduceQuantityOrRemoveProductCartEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$_ReduceQuantityOrRemoveProductCartEvent(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReduceQuantityOrRemoveProductCartEvent
    extends _ReduceQuantityOrRemoveProductCartEvent {
  const _$_ReduceQuantityOrRemoveProductCartEvent(this.productId) : super._();

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.reduceQuantityOrRemoveProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReduceQuantityOrRemoveProductCartEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$_ReduceQuantityOrRemoveProductCartEventCopyWith<
          _$_ReduceQuantityOrRemoveProductCartEvent>
      get copyWith => __$$_ReduceQuantityOrRemoveProductCartEventCopyWithImpl<
          _$_ReduceQuantityOrRemoveProductCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addProduct,
    required TResult Function(String productId) removeProduct,
    required TResult Function(String productId) reduceQuantityOrRemoveProduct,
    required TResult Function() clear,
  }) {
    return reduceQuantityOrRemoveProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
  }) {
    return reduceQuantityOrRemoveProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (reduceQuantityOrRemoveProduct != null) {
      return reduceQuantityOrRemoveProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductCartEvent value) addProduct,
    required TResult Function(_RemoveProductCartEvent value) removeProduct,
    required TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)
        reduceQuantityOrRemoveProduct,
    required TResult Function(_ClearCartEvent value) clear,
  }) {
    return reduceQuantityOrRemoveProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
  }) {
    return reduceQuantityOrRemoveProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
    required TResult orElse(),
  }) {
    if (reduceQuantityOrRemoveProduct != null) {
      return reduceQuantityOrRemoveProduct(this);
    }
    return orElse();
  }
}

abstract class _ReduceQuantityOrRemoveProductCartEvent extends CartEvent {
  const factory _ReduceQuantityOrRemoveProductCartEvent(
      final String productId) = _$_ReduceQuantityOrRemoveProductCartEvent;
  const _ReduceQuantityOrRemoveProductCartEvent._() : super._();

  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ReduceQuantityOrRemoveProductCartEventCopyWith<
          _$_ReduceQuantityOrRemoveProductCartEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearCartEventCopyWith<$Res> {
  factory _$$_ClearCartEventCopyWith(
          _$_ClearCartEvent value, $Res Function(_$_ClearCartEvent) then) =
      __$$_ClearCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_ClearCartEventCopyWith<$Res> {
  __$$_ClearCartEventCopyWithImpl(
      _$_ClearCartEvent _value, $Res Function(_$_ClearCartEvent) _then)
      : super(_value, (v) => _then(v as _$_ClearCartEvent));

  @override
  _$_ClearCartEvent get _value => super._value as _$_ClearCartEvent;
}

/// @nodoc

class _$_ClearCartEvent extends _ClearCartEvent {
  const _$_ClearCartEvent() : super._();

  @override
  String toString() {
    return 'CartEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addProduct,
    required TResult Function(String productId) removeProduct,
    required TResult Function(String productId) reduceQuantityOrRemoveProduct,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addProduct,
    TResult Function(String productId)? removeProduct,
    TResult Function(String productId)? reduceQuantityOrRemoveProduct,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductCartEvent value) addProduct,
    required TResult Function(_RemoveProductCartEvent value) removeProduct,
    required TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)
        reduceQuantityOrRemoveProduct,
    required TResult Function(_ClearCartEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductCartEvent value)? addProduct,
    TResult Function(_RemoveProductCartEvent value)? removeProduct,
    TResult Function(_ReduceQuantityOrRemoveProductCartEvent value)?
        reduceQuantityOrRemoveProduct,
    TResult Function(_ClearCartEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearCartEvent extends CartEvent {
  const factory _ClearCartEvent() = _$_ClearCartEvent;
  const _ClearCartEvent._() : super._();
}

/// @nodoc
mixin _$CartState {
  List<CartModel> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartModel> items) full,
    required TResult Function(List<CartModel> items) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CartModel> items)? full,
    TResult Function(List<CartModel> items)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartModel> items)? full,
    TResult Function(List<CartModel> items)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullCartState value) full,
    required TResult Function(_EmptyCartState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullCartState value)? full,
    TResult Function(_EmptyCartState value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullCartState value)? full,
    TResult Function(_EmptyCartState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<CartModel> items});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_FullCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$_FullCartStateCopyWith(
          _$_FullCartState value, $Res Function(_$_FullCartState) then) =
      __$$_FullCartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CartModel> items});
}

/// @nodoc
class __$$_FullCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_FullCartStateCopyWith<$Res> {
  __$$_FullCartStateCopyWithImpl(
      _$_FullCartState _value, $Res Function(_$_FullCartState) _then)
      : super(_value, (v) => _then(v as _$_FullCartState));

  @override
  _$_FullCartState get _value => super._value as _$_FullCartState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_FullCartState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_FullCartState extends _FullCartState {
  const _$_FullCartState({required final List<CartModel> items})
      : _items = items,
        super._();

  final List<CartModel> _items;
  @override
  List<CartModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState.full(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullCartState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_FullCartStateCopyWith<_$_FullCartState> get copyWith =>
      __$$_FullCartStateCopyWithImpl<_$_FullCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartModel> items) full,
    required TResult Function(List<CartModel> items) empty,
  }) {
    return full(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CartModel> items)? full,
    TResult Function(List<CartModel> items)? empty,
  }) {
    return full?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartModel> items)? full,
    TResult Function(List<CartModel> items)? empty,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullCartState value) full,
    required TResult Function(_EmptyCartState value) empty,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullCartState value)? full,
    TResult Function(_EmptyCartState value)? empty,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullCartState value)? full,
    TResult Function(_EmptyCartState value)? empty,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }
}

abstract class _FullCartState extends CartState {
  const factory _FullCartState({required final List<CartModel> items}) =
      _$_FullCartState;
  const _FullCartState._() : super._();

  @override
  List<CartModel> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FullCartStateCopyWith<_$_FullCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$_EmptyCartStateCopyWith(
          _$_EmptyCartState value, $Res Function(_$_EmptyCartState) then) =
      __$$_EmptyCartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CartModel> items});
}

/// @nodoc
class __$$_EmptyCartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_EmptyCartStateCopyWith<$Res> {
  __$$_EmptyCartStateCopyWithImpl(
      _$_EmptyCartState _value, $Res Function(_$_EmptyCartState) _then)
      : super(_value, (v) => _then(v as _$_EmptyCartState));

  @override
  _$_EmptyCartState get _value => super._value as _$_EmptyCartState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_EmptyCartState(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_EmptyCartState extends _EmptyCartState {
  const _$_EmptyCartState({final List<CartModel> items = const <CartModel>[]})
      : _items = items,
        super._();

  final List<CartModel> _items;
  @override
  @JsonKey()
  List<CartModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState.empty(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmptyCartState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyCartStateCopyWith<_$_EmptyCartState> get copyWith =>
      __$$_EmptyCartStateCopyWithImpl<_$_EmptyCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartModel> items) full,
    required TResult Function(List<CartModel> items) empty,
  }) {
    return empty(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CartModel> items)? full,
    TResult Function(List<CartModel> items)? empty,
  }) {
    return empty?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartModel> items)? full,
    TResult Function(List<CartModel> items)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullCartState value) full,
    required TResult Function(_EmptyCartState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullCartState value)? full,
    TResult Function(_EmptyCartState value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullCartState value)? full,
    TResult Function(_EmptyCartState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyCartState extends CartState {
  const factory _EmptyCartState({final List<CartModel> items}) =
      _$_EmptyCartState;
  const _EmptyCartState._() : super._();

  @override
  List<CartModel> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCartStateCopyWith<_$_EmptyCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
