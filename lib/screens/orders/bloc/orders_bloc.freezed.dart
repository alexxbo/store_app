// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrdersEvent value) fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrdersEvent value)? fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrdersEvent value)? fetchOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;
}

/// @nodoc
abstract class _$$_FetchOrdersEventCopyWith<$Res> {
  factory _$$_FetchOrdersEventCopyWith(
          _$_FetchOrdersEvent value, $Res Function(_$_FetchOrdersEvent) then) =
      __$$_FetchOrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchOrdersEventCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
    implements _$$_FetchOrdersEventCopyWith<$Res> {
  __$$_FetchOrdersEventCopyWithImpl(
      _$_FetchOrdersEvent _value, $Res Function(_$_FetchOrdersEvent) _then)
      : super(_value, (v) => _then(v as _$_FetchOrdersEvent));

  @override
  _$_FetchOrdersEvent get _value => super._value as _$_FetchOrdersEvent;
}

/// @nodoc

class _$_FetchOrdersEvent extends _FetchOrdersEvent {
  const _$_FetchOrdersEvent() : super._();

  @override
  String toString() {
    return 'OrdersEvent.fetchOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchOrdersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOrders,
  }) {
    return fetchOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchOrders,
  }) {
    return fetchOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOrders,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrdersEvent value) fetchOrders,
  }) {
    return fetchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrdersEvent value)? fetchOrders,
  }) {
    return fetchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrdersEvent value)? fetchOrders,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders(this);
    }
    return orElse();
  }
}

abstract class _FetchOrdersEvent extends OrdersEvent {
  const factory _FetchOrdersEvent() = _$_FetchOrdersEvent;
  const _FetchOrdersEvent._() : super._();
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() empty,
    required TResult Function(List<OrderItem> orders) success,
    required TResult Function(List<OrderItem> orders, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressOrdersState value) inProgress,
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_SuccessOrdersState value) success,
    required TResult Function(_ErrorOrdersState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;
}

/// @nodoc
abstract class _$$_InProgressOrdersStateCopyWith<$Res> {
  factory _$$_InProgressOrdersStateCopyWith(_$_InProgressOrdersState value,
          $Res Function(_$_InProgressOrdersState) then) =
      __$$_InProgressOrdersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressOrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$$_InProgressOrdersStateCopyWith<$Res> {
  __$$_InProgressOrdersStateCopyWithImpl(_$_InProgressOrdersState _value,
      $Res Function(_$_InProgressOrdersState) _then)
      : super(_value, (v) => _then(v as _$_InProgressOrdersState));

  @override
  _$_InProgressOrdersState get _value =>
      super._value as _$_InProgressOrdersState;
}

/// @nodoc

class _$_InProgressOrdersState extends _InProgressOrdersState {
  const _$_InProgressOrdersState() : super._();

  @override
  String toString() {
    return 'OrdersState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgressOrdersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() empty,
    required TResult Function(List<OrderItem> orders) success,
    required TResult Function(List<OrderItem> orders, String message) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
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
    required TResult Function(_InProgressOrdersState value) inProgress,
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_SuccessOrdersState value) success,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressOrdersState extends OrdersState {
  const factory _InProgressOrdersState() = _$_InProgressOrdersState;
  const _InProgressOrdersState._() : super._();
}

/// @nodoc
abstract class _$$_EmptyOrdersStateCopyWith<$Res> {
  factory _$$_EmptyOrdersStateCopyWith(
          _$_EmptyOrdersState value, $Res Function(_$_EmptyOrdersState) then) =
      __$$_EmptyOrdersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyOrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$$_EmptyOrdersStateCopyWith<$Res> {
  __$$_EmptyOrdersStateCopyWithImpl(
      _$_EmptyOrdersState _value, $Res Function(_$_EmptyOrdersState) _then)
      : super(_value, (v) => _then(v as _$_EmptyOrdersState));

  @override
  _$_EmptyOrdersState get _value => super._value as _$_EmptyOrdersState;
}

/// @nodoc

class _$_EmptyOrdersState extends _EmptyOrdersState {
  const _$_EmptyOrdersState() : super._();

  @override
  String toString() {
    return 'OrdersState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyOrdersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() empty,
    required TResult Function(List<OrderItem> orders) success,
    required TResult Function(List<OrderItem> orders, String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressOrdersState value) inProgress,
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_SuccessOrdersState value) success,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyOrdersState extends OrdersState {
  const factory _EmptyOrdersState() = _$_EmptyOrdersState;
  const _EmptyOrdersState._() : super._();
}

/// @nodoc
abstract class _$$_SuccessOrdersStateCopyWith<$Res> {
  factory _$$_SuccessOrdersStateCopyWith(_$_SuccessOrdersState value,
          $Res Function(_$_SuccessOrdersState) then) =
      __$$_SuccessOrdersStateCopyWithImpl<$Res>;
  $Res call({List<OrderItem> orders});
}

/// @nodoc
class __$$_SuccessOrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$$_SuccessOrdersStateCopyWith<$Res> {
  __$$_SuccessOrdersStateCopyWithImpl(
      _$_SuccessOrdersState _value, $Res Function(_$_SuccessOrdersState) _then)
      : super(_value, (v) => _then(v as _$_SuccessOrdersState));

  @override
  _$_SuccessOrdersState get _value => super._value as _$_SuccessOrdersState;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_$_SuccessOrdersState(
      orders: orders == freezed
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$_SuccessOrdersState extends _SuccessOrdersState {
  const _$_SuccessOrdersState({required final List<OrderItem> orders})
      : _orders = orders,
        super._();

  final List<OrderItem> _orders;
  @override
  List<OrderItem> get orders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.success(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessOrdersState &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessOrdersStateCopyWith<_$_SuccessOrdersState> get copyWith =>
      __$$_SuccessOrdersStateCopyWithImpl<_$_SuccessOrdersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() empty,
    required TResult Function(List<OrderItem> orders) success,
    required TResult Function(List<OrderItem> orders, String message) error,
  }) {
    return success(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
  }) {
    return success?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressOrdersState value) inProgress,
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_SuccessOrdersState value) success,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessOrdersState extends OrdersState {
  const factory _SuccessOrdersState({required final List<OrderItem> orders}) =
      _$_SuccessOrdersState;
  const _SuccessOrdersState._() : super._();

  List<OrderItem> get orders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessOrdersStateCopyWith<_$_SuccessOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorOrdersStateCopyWith<$Res> {
  factory _$$_ErrorOrdersStateCopyWith(
          _$_ErrorOrdersState value, $Res Function(_$_ErrorOrdersState) then) =
      __$$_ErrorOrdersStateCopyWithImpl<$Res>;
  $Res call({List<OrderItem> orders, String message});
}

/// @nodoc
class __$$_ErrorOrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$$_ErrorOrdersStateCopyWith<$Res> {
  __$$_ErrorOrdersStateCopyWithImpl(
      _$_ErrorOrdersState _value, $Res Function(_$_ErrorOrdersState) _then)
      : super(_value, (v) => _then(v as _$_ErrorOrdersState));

  @override
  _$_ErrorOrdersState get _value => super._value as _$_ErrorOrdersState;

  @override
  $Res call({
    Object? orders = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorOrdersState(
      orders: orders == freezed
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorOrdersState extends _ErrorOrdersState {
  const _$_ErrorOrdersState(
      {final List<OrderItem> orders = const <OrderItem>[],
      this.message = 'Something went wrong. Please try again later.'})
      : _orders = orders,
        super._();

  final List<OrderItem> _orders;
  @override
  @JsonKey()
  List<OrderItem> get orders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OrdersState.error(orders: $orders, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorOrdersState &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorOrdersStateCopyWith<_$_ErrorOrdersState> get copyWith =>
      __$$_ErrorOrdersStateCopyWithImpl<_$_ErrorOrdersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() empty,
    required TResult Function(List<OrderItem> orders) success,
    required TResult Function(List<OrderItem> orders, String message) error,
  }) {
    return error(orders, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
  }) {
    return error?.call(orders, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? empty,
    TResult Function(List<OrderItem> orders)? success,
    TResult Function(List<OrderItem> orders, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(orders, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgressOrdersState value) inProgress,
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_SuccessOrdersState value) success,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgressOrdersState value)? inProgress,
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_SuccessOrdersState value)? success,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorOrdersState extends OrdersState {
  const factory _ErrorOrdersState(
      {final List<OrderItem> orders,
      final String message}) = _$_ErrorOrdersState;
  const _ErrorOrdersState._() : super._();

  List<OrderItem> get orders => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorOrdersStateCopyWith<_$_ErrorOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
