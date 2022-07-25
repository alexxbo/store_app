// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditProductEventCopyWith<$Res> {
  factory $AddEditProductEventCopyWith(
          AddEditProductEvent value, $Res Function(AddEditProductEvent) then) =
      _$AddEditProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEditProductEventCopyWithImpl<$Res>
    implements $AddEditProductEventCopyWith<$Res> {
  _$AddEditProductEventCopyWithImpl(this._value, this._then);

  final AddEditProductEvent _value;
  // ignore: unused_field
  final $Res Function(AddEditProductEvent) _then;
}

/// @nodoc
abstract class _$$_CreateAddEditProductEventCopyWith<$Res> {
  factory _$$_CreateAddEditProductEventCopyWith(
          _$_CreateAddEditProductEvent value,
          $Res Function(_$_CreateAddEditProductEvent) then) =
      __$$_CreateAddEditProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_CreateAddEditProductEventCopyWith<$Res> {
  __$$_CreateAddEditProductEventCopyWithImpl(
      _$_CreateAddEditProductEvent _value,
      $Res Function(_$_CreateAddEditProductEvent) _then)
      : super(_value, (v) => _then(v as _$_CreateAddEditProductEvent));

  @override
  _$_CreateAddEditProductEvent get _value =>
      super._value as _$_CreateAddEditProductEvent;
}

/// @nodoc

class _$_CreateAddEditProductEvent extends _CreateAddEditProductEvent {
  const _$_CreateAddEditProductEvent() : super._();

  @override
  String toString() {
    return 'AddEditProductEvent.onCreate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAddEditProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onCreate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onCreate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(this);
    }
    return orElse();
  }
}

abstract class _CreateAddEditProductEvent extends AddEditProductEvent {
  const factory _CreateAddEditProductEvent() = _$_CreateAddEditProductEvent;
  const _CreateAddEditProductEvent._() : super._();
}

/// @nodoc
abstract class _$$_EditAddEditProductEventCopyWith<$Res> {
  factory _$$_EditAddEditProductEventCopyWith(_$_EditAddEditProductEvent value,
          $Res Function(_$_EditAddEditProductEvent) then) =
      __$$_EditAddEditProductEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class __$$_EditAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_EditAddEditProductEventCopyWith<$Res> {
  __$$_EditAddEditProductEventCopyWithImpl(_$_EditAddEditProductEvent _value,
      $Res Function(_$_EditAddEditProductEvent) _then)
      : super(_value, (v) => _then(v as _$_EditAddEditProductEvent));

  @override
  _$_EditAddEditProductEvent get _value =>
      super._value as _$_EditAddEditProductEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$_EditAddEditProductEvent(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditAddEditProductEvent extends _EditAddEditProductEvent {
  const _$_EditAddEditProductEvent({required this.productId}) : super._();

  @override
  final String productId;

  @override
  String toString() {
    return 'AddEditProductEvent.onEdit(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditAddEditProductEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$_EditAddEditProductEventCopyWith<_$_EditAddEditProductEvent>
      get copyWith =>
          __$$_EditAddEditProductEventCopyWithImpl<_$_EditAddEditProductEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onEdit(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onEdit?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(this);
    }
    return orElse();
  }
}

abstract class _EditAddEditProductEvent extends AddEditProductEvent {
  const factory _EditAddEditProductEvent({required final String productId}) =
      _$_EditAddEditProductEvent;
  const _EditAddEditProductEvent._() : super._();

  String get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EditAddEditProductEventCopyWith<_$_EditAddEditProductEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedAddEditProductEventCopyWith<$Res> {
  factory _$$_TitleChangedAddEditProductEventCopyWith(
          _$_TitleChangedAddEditProductEvent value,
          $Res Function(_$_TitleChangedAddEditProductEvent) then) =
      __$$_TitleChangedAddEditProductEventCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_TitleChangedAddEditProductEventCopyWith<$Res> {
  __$$_TitleChangedAddEditProductEventCopyWithImpl(
      _$_TitleChangedAddEditProductEvent _value,
      $Res Function(_$_TitleChangedAddEditProductEvent) _then)
      : super(_value, (v) => _then(v as _$_TitleChangedAddEditProductEvent));

  @override
  _$_TitleChangedAddEditProductEvent get _value =>
      super._value as _$_TitleChangedAddEditProductEvent;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TitleChangedAddEditProductEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChangedAddEditProductEvent
    extends _TitleChangedAddEditProductEvent {
  const _$_TitleChangedAddEditProductEvent({required this.title}) : super._();

  @override
  final String title;

  @override
  String toString() {
    return 'AddEditProductEvent.onTitleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChangedAddEditProductEvent &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TitleChangedAddEditProductEventCopyWith<
          _$_TitleChangedAddEditProductEvent>
      get copyWith => __$$_TitleChangedAddEditProductEventCopyWithImpl<
          _$_TitleChangedAddEditProductEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onTitleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onTitleChanged != null) {
      return onTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onTitleChanged != null) {
      return onTitleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChangedAddEditProductEvent extends AddEditProductEvent {
  const factory _TitleChangedAddEditProductEvent(
      {required final String title}) = _$_TitleChangedAddEditProductEvent;
  const _TitleChangedAddEditProductEvent._() : super._();

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TitleChangedAddEditProductEventCopyWith<
          _$_TitleChangedAddEditProductEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PriceChangedAddEditProductEventCopyWith<$Res> {
  factory _$$_PriceChangedAddEditProductEventCopyWith(
          _$_PriceChangedAddEditProductEvent value,
          $Res Function(_$_PriceChangedAddEditProductEvent) then) =
      __$$_PriceChangedAddEditProductEventCopyWithImpl<$Res>;
  $Res call({String price});
}

/// @nodoc
class __$$_PriceChangedAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_PriceChangedAddEditProductEventCopyWith<$Res> {
  __$$_PriceChangedAddEditProductEventCopyWithImpl(
      _$_PriceChangedAddEditProductEvent _value,
      $Res Function(_$_PriceChangedAddEditProductEvent) _then)
      : super(_value, (v) => _then(v as _$_PriceChangedAddEditProductEvent));

  @override
  _$_PriceChangedAddEditProductEvent get _value =>
      super._value as _$_PriceChangedAddEditProductEvent;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_PriceChangedAddEditProductEvent(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PriceChangedAddEditProductEvent
    extends _PriceChangedAddEditProductEvent {
  const _$_PriceChangedAddEditProductEvent({required this.price}) : super._();

  @override
  final String price;

  @override
  String toString() {
    return 'AddEditProductEvent.onPriceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceChangedAddEditProductEvent &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_PriceChangedAddEditProductEventCopyWith<
          _$_PriceChangedAddEditProductEvent>
      get copyWith => __$$_PriceChangedAddEditProductEventCopyWithImpl<
          _$_PriceChangedAddEditProductEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onPriceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onPriceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onPriceChanged != null) {
      return onPriceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onPriceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onPriceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onPriceChanged != null) {
      return onPriceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChangedAddEditProductEvent extends AddEditProductEvent {
  const factory _PriceChangedAddEditProductEvent(
      {required final String price}) = _$_PriceChangedAddEditProductEvent;
  const _PriceChangedAddEditProductEvent._() : super._();

  String get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PriceChangedAddEditProductEventCopyWith<
          _$_PriceChangedAddEditProductEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedAddEditProductEventCopyWith<$Res> {
  factory _$$_DescriptionChangedAddEditProductEventCopyWith(
          _$_DescriptionChangedAddEditProductEvent value,
          $Res Function(_$_DescriptionChangedAddEditProductEvent) then) =
      __$$_DescriptionChangedAddEditProductEventCopyWithImpl<$Res>;
  $Res call({String desc});
}

/// @nodoc
class __$$_DescriptionChangedAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_DescriptionChangedAddEditProductEventCopyWith<$Res> {
  __$$_DescriptionChangedAddEditProductEventCopyWithImpl(
      _$_DescriptionChangedAddEditProductEvent _value,
      $Res Function(_$_DescriptionChangedAddEditProductEvent) _then)
      : super(_value,
            (v) => _then(v as _$_DescriptionChangedAddEditProductEvent));

  @override
  _$_DescriptionChangedAddEditProductEvent get _value =>
      super._value as _$_DescriptionChangedAddEditProductEvent;

  @override
  $Res call({
    Object? desc = freezed,
  }) {
    return _then(_$_DescriptionChangedAddEditProductEvent(
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChangedAddEditProductEvent
    extends _DescriptionChangedAddEditProductEvent {
  const _$_DescriptionChangedAddEditProductEvent({required this.desc})
      : super._();

  @override
  final String desc;

  @override
  String toString() {
    return 'AddEditProductEvent.onDescriptionChanged(desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChangedAddEditProductEvent &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$$_DescriptionChangedAddEditProductEventCopyWith<
          _$_DescriptionChangedAddEditProductEvent>
      get copyWith => __$$_DescriptionChangedAddEditProductEventCopyWithImpl<
          _$_DescriptionChangedAddEditProductEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onDescriptionChanged(desc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onDescriptionChanged?.call(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onDescriptionChanged != null) {
      return onDescriptionChanged(desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onDescriptionChanged != null) {
      return onDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChangedAddEditProductEvent
    extends AddEditProductEvent {
  const factory _DescriptionChangedAddEditProductEvent(
      {required final String desc}) = _$_DescriptionChangedAddEditProductEvent;
  const _DescriptionChangedAddEditProductEvent._() : super._();

  String get desc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedAddEditProductEventCopyWith<
          _$_DescriptionChangedAddEditProductEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageChangedAddEditProductEventCopyWith<$Res> {
  factory _$$_ImageChangedAddEditProductEventCopyWith(
          _$_ImageChangedAddEditProductEvent value,
          $Res Function(_$_ImageChangedAddEditProductEvent) then) =
      __$$_ImageChangedAddEditProductEventCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$$_ImageChangedAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_ImageChangedAddEditProductEventCopyWith<$Res> {
  __$$_ImageChangedAddEditProductEventCopyWithImpl(
      _$_ImageChangedAddEditProductEvent _value,
      $Res Function(_$_ImageChangedAddEditProductEvent) _then)
      : super(_value, (v) => _then(v as _$_ImageChangedAddEditProductEvent));

  @override
  _$_ImageChangedAddEditProductEvent get _value =>
      super._value as _$_ImageChangedAddEditProductEvent;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_ImageChangedAddEditProductEvent(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageChangedAddEditProductEvent
    extends _ImageChangedAddEditProductEvent {
  const _$_ImageChangedAddEditProductEvent({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'AddEditProductEvent.onImageChanged(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageChangedAddEditProductEvent &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ImageChangedAddEditProductEventCopyWith<
          _$_ImageChangedAddEditProductEvent>
      get copyWith => __$$_ImageChangedAddEditProductEventCopyWithImpl<
          _$_ImageChangedAddEditProductEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onImageChanged(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onImageChanged?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onImageChanged != null) {
      return onImageChanged(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onImageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onImageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onImageChanged != null) {
      return onImageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChangedAddEditProductEvent extends AddEditProductEvent {
  const factory _ImageChangedAddEditProductEvent({required final String url}) =
      _$_ImageChangedAddEditProductEvent;
  const _ImageChangedAddEditProductEvent._() : super._();

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ImageChangedAddEditProductEventCopyWith<
          _$_ImageChangedAddEditProductEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitAddEditProductEventCopyWith<$Res> {
  factory _$$_SubmitAddEditProductEventCopyWith(
          _$_SubmitAddEditProductEvent value,
          $Res Function(_$_SubmitAddEditProductEvent) then) =
      __$$_SubmitAddEditProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitAddEditProductEventCopyWithImpl<$Res>
    extends _$AddEditProductEventCopyWithImpl<$Res>
    implements _$$_SubmitAddEditProductEventCopyWith<$Res> {
  __$$_SubmitAddEditProductEventCopyWithImpl(
      _$_SubmitAddEditProductEvent _value,
      $Res Function(_$_SubmitAddEditProductEvent) _then)
      : super(_value, (v) => _then(v as _$_SubmitAddEditProductEvent));

  @override
  _$_SubmitAddEditProductEvent get _value =>
      super._value as _$_SubmitAddEditProductEvent;
}

/// @nodoc

class _$_SubmitAddEditProductEvent extends _SubmitAddEditProductEvent {
  const _$_SubmitAddEditProductEvent() : super._();

  @override
  String toString() {
    return 'AddEditProductEvent.onSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitAddEditProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCreate,
    required TResult Function(String productId) onEdit,
    required TResult Function(String title) onTitleChanged,
    required TResult Function(String price) onPriceChanged,
    required TResult Function(String desc) onDescriptionChanged,
    required TResult Function(String url) onImageChanged,
    required TResult Function() onSubmit,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCreate,
    TResult Function(String productId)? onEdit,
    TResult Function(String title)? onTitleChanged,
    TResult Function(String price)? onPriceChanged,
    TResult Function(String desc)? onDescriptionChanged,
    TResult Function(String url)? onImageChanged,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAddEditProductEvent value) onCreate,
    required TResult Function(_EditAddEditProductEvent value) onEdit,
    required TResult Function(_TitleChangedAddEditProductEvent value)
        onTitleChanged,
    required TResult Function(_PriceChangedAddEditProductEvent value)
        onPriceChanged,
    required TResult Function(_DescriptionChangedAddEditProductEvent value)
        onDescriptionChanged,
    required TResult Function(_ImageChangedAddEditProductEvent value)
        onImageChanged,
    required TResult Function(_SubmitAddEditProductEvent value) onSubmit,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAddEditProductEvent value)? onCreate,
    TResult Function(_EditAddEditProductEvent value)? onEdit,
    TResult Function(_TitleChangedAddEditProductEvent value)? onTitleChanged,
    TResult Function(_PriceChangedAddEditProductEvent value)? onPriceChanged,
    TResult Function(_DescriptionChangedAddEditProductEvent value)?
        onDescriptionChanged,
    TResult Function(_ImageChangedAddEditProductEvent value)? onImageChanged,
    TResult Function(_SubmitAddEditProductEvent value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _SubmitAddEditProductEvent extends AddEditProductEvent {
  const factory _SubmitAddEditProductEvent() = _$_SubmitAddEditProductEvent;
  const _SubmitAddEditProductEvent._() : super._();
}

/// @nodoc
mixin _$AddEditProductState {
  AddEditProductMode get mode => throw _privateConstructorUsedError;
  CreateProduct get product => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        progress,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        inputData,
    required TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)
        error,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        invalid,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressAddEditProductState value) progress,
    required TResult Function(_InputDataAddEditProductState value) inputData,
    required TResult Function(_ErrorAddEditProductState value) error,
    required TResult Function(_InvalidAddEditProductState value) invalid,
    required TResult Function(_SuccessAddEditProductState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditProductStateCopyWith<AddEditProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditProductStateCopyWith<$Res> {
  factory $AddEditProductStateCopyWith(
          AddEditProductState value, $Res Function(AddEditProductState) then) =
      _$AddEditProductStateCopyWithImpl<$Res>;
  $Res call({AddEditProductMode mode, CreateProduct product});
}

/// @nodoc
class _$AddEditProductStateCopyWithImpl<$Res>
    implements $AddEditProductStateCopyWith<$Res> {
  _$AddEditProductStateCopyWithImpl(this._value, this._then);

  final AddEditProductState _value;
  // ignore: unused_field
  final $Res Function(AddEditProductState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddEditProductMode,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProduct,
    ));
  }
}

/// @nodoc
abstract class _$$_ProgressAddEditProductStateCopyWith<$Res>
    implements $AddEditProductStateCopyWith<$Res> {
  factory _$$_ProgressAddEditProductStateCopyWith(
          _$_ProgressAddEditProductState value,
          $Res Function(_$_ProgressAddEditProductState) then) =
      __$$_ProgressAddEditProductStateCopyWithImpl<$Res>;
  @override
  $Res call({AddEditProductMode mode, CreateProduct product});
}

/// @nodoc
class __$$_ProgressAddEditProductStateCopyWithImpl<$Res>
    extends _$AddEditProductStateCopyWithImpl<$Res>
    implements _$$_ProgressAddEditProductStateCopyWith<$Res> {
  __$$_ProgressAddEditProductStateCopyWithImpl(
      _$_ProgressAddEditProductState _value,
      $Res Function(_$_ProgressAddEditProductState) _then)
      : super(_value, (v) => _then(v as _$_ProgressAddEditProductState));

  @override
  _$_ProgressAddEditProductState get _value =>
      super._value as _$_ProgressAddEditProductState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_ProgressAddEditProductState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddEditProductMode,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProduct,
    ));
  }
}

/// @nodoc

class _$_ProgressAddEditProductState extends _ProgressAddEditProductState {
  const _$_ProgressAddEditProductState(
      {this.mode = AddEditProductMode.add,
      this.product = const CreateProduct.empty()})
      : super._();

  @override
  @JsonKey()
  final AddEditProductMode mode;
  @override
  @JsonKey()
  final CreateProduct product;

  @override
  String toString() {
    return 'AddEditProductState.progress(mode: $mode, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressAddEditProductState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_ProgressAddEditProductStateCopyWith<_$_ProgressAddEditProductState>
      get copyWith => __$$_ProgressAddEditProductStateCopyWithImpl<
          _$_ProgressAddEditProductState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        progress,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        inputData,
    required TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)
        error,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        invalid,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        success,
  }) {
    return progress(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
  }) {
    return progress?.call(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(mode, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressAddEditProductState value) progress,
    required TResult Function(_InputDataAddEditProductState value) inputData,
    required TResult Function(_ErrorAddEditProductState value) error,
    required TResult Function(_InvalidAddEditProductState value) invalid,
    required TResult Function(_SuccessAddEditProductState value) success,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _ProgressAddEditProductState extends AddEditProductState {
  const factory _ProgressAddEditProductState(
      {final AddEditProductMode mode,
      final CreateProduct product}) = _$_ProgressAddEditProductState;
  const _ProgressAddEditProductState._() : super._();

  @override
  AddEditProductMode get mode => throw _privateConstructorUsedError;
  @override
  CreateProduct get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressAddEditProductStateCopyWith<_$_ProgressAddEditProductState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputDataAddEditProductStateCopyWith<$Res>
    implements $AddEditProductStateCopyWith<$Res> {
  factory _$$_InputDataAddEditProductStateCopyWith(
          _$_InputDataAddEditProductState value,
          $Res Function(_$_InputDataAddEditProductState) then) =
      __$$_InputDataAddEditProductStateCopyWithImpl<$Res>;
  @override
  $Res call({AddEditProductMode mode, CreateProduct product});
}

/// @nodoc
class __$$_InputDataAddEditProductStateCopyWithImpl<$Res>
    extends _$AddEditProductStateCopyWithImpl<$Res>
    implements _$$_InputDataAddEditProductStateCopyWith<$Res> {
  __$$_InputDataAddEditProductStateCopyWithImpl(
      _$_InputDataAddEditProductState _value,
      $Res Function(_$_InputDataAddEditProductState) _then)
      : super(_value, (v) => _then(v as _$_InputDataAddEditProductState));

  @override
  _$_InputDataAddEditProductState get _value =>
      super._value as _$_InputDataAddEditProductState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_InputDataAddEditProductState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddEditProductMode,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProduct,
    ));
  }
}

/// @nodoc

class _$_InputDataAddEditProductState extends _InputDataAddEditProductState {
  const _$_InputDataAddEditProductState(
      {required this.mode, required this.product})
      : super._();

  @override
  final AddEditProductMode mode;
  @override
  final CreateProduct product;

  @override
  String toString() {
    return 'AddEditProductState.inputData(mode: $mode, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputDataAddEditProductState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_InputDataAddEditProductStateCopyWith<_$_InputDataAddEditProductState>
      get copyWith => __$$_InputDataAddEditProductStateCopyWithImpl<
          _$_InputDataAddEditProductState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        progress,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        inputData,
    required TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)
        error,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        invalid,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        success,
  }) {
    return inputData(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
  }) {
    return inputData?.call(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
    required TResult orElse(),
  }) {
    if (inputData != null) {
      return inputData(mode, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressAddEditProductState value) progress,
    required TResult Function(_InputDataAddEditProductState value) inputData,
    required TResult Function(_ErrorAddEditProductState value) error,
    required TResult Function(_InvalidAddEditProductState value) invalid,
    required TResult Function(_SuccessAddEditProductState value) success,
  }) {
    return inputData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
  }) {
    return inputData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
    required TResult orElse(),
  }) {
    if (inputData != null) {
      return inputData(this);
    }
    return orElse();
  }
}

abstract class _InputDataAddEditProductState extends AddEditProductState {
  const factory _InputDataAddEditProductState(
      {required final AddEditProductMode mode,
      required final CreateProduct product}) = _$_InputDataAddEditProductState;
  const _InputDataAddEditProductState._() : super._();

  @override
  AddEditProductMode get mode => throw _privateConstructorUsedError;
  @override
  CreateProduct get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InputDataAddEditProductStateCopyWith<_$_InputDataAddEditProductState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorAddEditProductStateCopyWith<$Res>
    implements $AddEditProductStateCopyWith<$Res> {
  factory _$$_ErrorAddEditProductStateCopyWith(
          _$_ErrorAddEditProductState value,
          $Res Function(_$_ErrorAddEditProductState) then) =
      __$$_ErrorAddEditProductStateCopyWithImpl<$Res>;
  @override
  $Res call({AddEditProductMode mode, CreateProduct product, String message});
}

/// @nodoc
class __$$_ErrorAddEditProductStateCopyWithImpl<$Res>
    extends _$AddEditProductStateCopyWithImpl<$Res>
    implements _$$_ErrorAddEditProductStateCopyWith<$Res> {
  __$$_ErrorAddEditProductStateCopyWithImpl(_$_ErrorAddEditProductState _value,
      $Res Function(_$_ErrorAddEditProductState) _then)
      : super(_value, (v) => _then(v as _$_ErrorAddEditProductState));

  @override
  _$_ErrorAddEditProductState get _value =>
      super._value as _$_ErrorAddEditProductState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? product = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorAddEditProductState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddEditProductMode,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProduct,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAddEditProductState extends _ErrorAddEditProductState {
  const _$_ErrorAddEditProductState(
      {required this.mode,
      required this.product,
      this.message = 'The product could not be saved. Please try again later.'})
      : super._();

  @override
  final AddEditProductMode mode;
  @override
  final CreateProduct product;
// required final TitleInput title,
// required final PriceInput price,
// required final DescriptionInput desc,
// required final ImageUrlInput imageUrl,
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AddEditProductState.error(mode: $mode, product: $product, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAddEditProductState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorAddEditProductStateCopyWith<_$_ErrorAddEditProductState>
      get copyWith => __$$_ErrorAddEditProductStateCopyWithImpl<
          _$_ErrorAddEditProductState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        progress,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        inputData,
    required TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)
        error,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        invalid,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        success,
  }) {
    return error(mode, product, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
  }) {
    return error?.call(mode, product, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(mode, product, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressAddEditProductState value) progress,
    required TResult Function(_InputDataAddEditProductState value) inputData,
    required TResult Function(_ErrorAddEditProductState value) error,
    required TResult Function(_InvalidAddEditProductState value) invalid,
    required TResult Function(_SuccessAddEditProductState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAddEditProductState extends AddEditProductState {
  const factory _ErrorAddEditProductState(
      {required final AddEditProductMode mode,
      required final CreateProduct product,
      final String message}) = _$_ErrorAddEditProductState;
  const _ErrorAddEditProductState._() : super._();

  @override
  AddEditProductMode get mode => throw _privateConstructorUsedError;
  @override
  CreateProduct get product =>
      throw _privateConstructorUsedError; // required final TitleInput title,
// required final PriceInput price,
// required final DescriptionInput desc,
// required final ImageUrlInput imageUrl,
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorAddEditProductStateCopyWith<_$_ErrorAddEditProductState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidAddEditProductStateCopyWith<$Res>
    implements $AddEditProductStateCopyWith<$Res> {
  factory _$$_InvalidAddEditProductStateCopyWith(
          _$_InvalidAddEditProductState value,
          $Res Function(_$_InvalidAddEditProductState) then) =
      __$$_InvalidAddEditProductStateCopyWithImpl<$Res>;
  @override
  $Res call({AddEditProductMode mode, CreateProduct product});
}

/// @nodoc
class __$$_InvalidAddEditProductStateCopyWithImpl<$Res>
    extends _$AddEditProductStateCopyWithImpl<$Res>
    implements _$$_InvalidAddEditProductStateCopyWith<$Res> {
  __$$_InvalidAddEditProductStateCopyWithImpl(
      _$_InvalidAddEditProductState _value,
      $Res Function(_$_InvalidAddEditProductState) _then)
      : super(_value, (v) => _then(v as _$_InvalidAddEditProductState));

  @override
  _$_InvalidAddEditProductState get _value =>
      super._value as _$_InvalidAddEditProductState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_InvalidAddEditProductState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddEditProductMode,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProduct,
    ));
  }
}

/// @nodoc

class _$_InvalidAddEditProductState extends _InvalidAddEditProductState {
  const _$_InvalidAddEditProductState(
      {required this.mode, required this.product})
      : super._();

  @override
  final AddEditProductMode mode;
  @override
  final CreateProduct product;

  @override
  String toString() {
    return 'AddEditProductState.invalid(mode: $mode, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidAddEditProductState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidAddEditProductStateCopyWith<_$_InvalidAddEditProductState>
      get copyWith => __$$_InvalidAddEditProductStateCopyWithImpl<
          _$_InvalidAddEditProductState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        progress,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        inputData,
    required TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)
        error,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        invalid,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        success,
  }) {
    return invalid(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
  }) {
    return invalid?.call(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(mode, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressAddEditProductState value) progress,
    required TResult Function(_InputDataAddEditProductState value) inputData,
    required TResult Function(_ErrorAddEditProductState value) error,
    required TResult Function(_InvalidAddEditProductState value) invalid,
    required TResult Function(_SuccessAddEditProductState value) success,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _InvalidAddEditProductState extends AddEditProductState {
  const factory _InvalidAddEditProductState(
      {required final AddEditProductMode mode,
      required final CreateProduct product}) = _$_InvalidAddEditProductState;
  const _InvalidAddEditProductState._() : super._();

  @override
  AddEditProductMode get mode => throw _privateConstructorUsedError;
  @override
  CreateProduct get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidAddEditProductStateCopyWith<_$_InvalidAddEditProductState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessAddEditProductStateCopyWith<$Res>
    implements $AddEditProductStateCopyWith<$Res> {
  factory _$$_SuccessAddEditProductStateCopyWith(
          _$_SuccessAddEditProductState value,
          $Res Function(_$_SuccessAddEditProductState) then) =
      __$$_SuccessAddEditProductStateCopyWithImpl<$Res>;
  @override
  $Res call({AddEditProductMode mode, CreateProduct product});
}

/// @nodoc
class __$$_SuccessAddEditProductStateCopyWithImpl<$Res>
    extends _$AddEditProductStateCopyWithImpl<$Res>
    implements _$$_SuccessAddEditProductStateCopyWith<$Res> {
  __$$_SuccessAddEditProductStateCopyWithImpl(
      _$_SuccessAddEditProductState _value,
      $Res Function(_$_SuccessAddEditProductState) _then)
      : super(_value, (v) => _then(v as _$_SuccessAddEditProductState));

  @override
  _$_SuccessAddEditProductState get _value =>
      super._value as _$_SuccessAddEditProductState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_SuccessAddEditProductState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AddEditProductMode,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProduct,
    ));
  }
}

/// @nodoc

class _$_SuccessAddEditProductState extends _SuccessAddEditProductState {
  const _$_SuccessAddEditProductState(
      {this.mode = AddEditProductMode.add,
      this.product = const CreateProduct.empty()})
      : super._();

  @override
  @JsonKey()
  final AddEditProductMode mode;
  @override
  @JsonKey()
  final CreateProduct product;

  @override
  String toString() {
    return 'AddEditProductState.success(mode: $mode, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessAddEditProductState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessAddEditProductStateCopyWith<_$_SuccessAddEditProductState>
      get copyWith => __$$_SuccessAddEditProductStateCopyWithImpl<
          _$_SuccessAddEditProductState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        progress,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        inputData,
    required TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)
        error,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        invalid,
    required TResult Function(AddEditProductMode mode, CreateProduct product)
        success,
  }) {
    return success(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
  }) {
    return success?.call(mode, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddEditProductMode mode, CreateProduct product)? progress,
    TResult Function(AddEditProductMode mode, CreateProduct product)? inputData,
    TResult Function(
            AddEditProductMode mode, CreateProduct product, String message)?
        error,
    TResult Function(AddEditProductMode mode, CreateProduct product)? invalid,
    TResult Function(AddEditProductMode mode, CreateProduct product)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(mode, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProgressAddEditProductState value) progress,
    required TResult Function(_InputDataAddEditProductState value) inputData,
    required TResult Function(_ErrorAddEditProductState value) error,
    required TResult Function(_InvalidAddEditProductState value) invalid,
    required TResult Function(_SuccessAddEditProductState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProgressAddEditProductState value)? progress,
    TResult Function(_InputDataAddEditProductState value)? inputData,
    TResult Function(_ErrorAddEditProductState value)? error,
    TResult Function(_InvalidAddEditProductState value)? invalid,
    TResult Function(_SuccessAddEditProductState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessAddEditProductState extends AddEditProductState {
  const factory _SuccessAddEditProductState(
      {final AddEditProductMode mode,
      final CreateProduct product}) = _$_SuccessAddEditProductState;
  const _SuccessAddEditProductState._() : super._();

  @override
  AddEditProductMode get mode => throw _privateConstructorUsedError;
  @override
  CreateProduct get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessAddEditProductStateCopyWith<_$_SuccessAddEditProductState>
      get copyWith => throw _privateConstructorUsedError;
}
