// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tryAutoLogin,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tryAutoLogin,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryAutoLogin,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TryAutoLogInAuthorizationEvent value)
        tryAutoLogin,
    required TResult Function(_LogoutAuthorizationEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TryAutoLogInAuthorizationEvent value)? tryAutoLogin,
    TResult Function(_LogoutAuthorizationEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryAutoLogInAuthorizationEvent value)? tryAutoLogin,
    TResult Function(_LogoutAuthorizationEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class _$$_TryAutoLogInAuthorizationEventCopyWith<$Res> {
  factory _$$_TryAutoLogInAuthorizationEventCopyWith(
          _$_TryAutoLogInAuthorizationEvent value,
          $Res Function(_$_TryAutoLogInAuthorizationEvent) then) =
      __$$_TryAutoLogInAuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TryAutoLogInAuthorizationEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$$_TryAutoLogInAuthorizationEventCopyWith<$Res> {
  __$$_TryAutoLogInAuthorizationEventCopyWithImpl(
      _$_TryAutoLogInAuthorizationEvent _value,
      $Res Function(_$_TryAutoLogInAuthorizationEvent) _then)
      : super(_value, (v) => _then(v as _$_TryAutoLogInAuthorizationEvent));

  @override
  _$_TryAutoLogInAuthorizationEvent get _value =>
      super._value as _$_TryAutoLogInAuthorizationEvent;
}

/// @nodoc

class _$_TryAutoLogInAuthorizationEvent
    extends _TryAutoLogInAuthorizationEvent {
  const _$_TryAutoLogInAuthorizationEvent() : super._();

  @override
  String toString() {
    return 'AuthorizationEvent.tryAutoLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TryAutoLogInAuthorizationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tryAutoLogin,
    required TResult Function() logout,
  }) {
    return tryAutoLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tryAutoLogin,
    TResult Function()? logout,
  }) {
    return tryAutoLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryAutoLogin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (tryAutoLogin != null) {
      return tryAutoLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TryAutoLogInAuthorizationEvent value)
        tryAutoLogin,
    required TResult Function(_LogoutAuthorizationEvent value) logout,
  }) {
    return tryAutoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TryAutoLogInAuthorizationEvent value)? tryAutoLogin,
    TResult Function(_LogoutAuthorizationEvent value)? logout,
  }) {
    return tryAutoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryAutoLogInAuthorizationEvent value)? tryAutoLogin,
    TResult Function(_LogoutAuthorizationEvent value)? logout,
    required TResult orElse(),
  }) {
    if (tryAutoLogin != null) {
      return tryAutoLogin(this);
    }
    return orElse();
  }
}

abstract class _TryAutoLogInAuthorizationEvent extends AuthorizationEvent {
  const factory _TryAutoLogInAuthorizationEvent() =
      _$_TryAutoLogInAuthorizationEvent;
  const _TryAutoLogInAuthorizationEvent._() : super._();
}

/// @nodoc
abstract class _$$_LogoutAuthorizationEventCopyWith<$Res> {
  factory _$$_LogoutAuthorizationEventCopyWith(
          _$_LogoutAuthorizationEvent value,
          $Res Function(_$_LogoutAuthorizationEvent) then) =
      __$$_LogoutAuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutAuthorizationEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$$_LogoutAuthorizationEventCopyWith<$Res> {
  __$$_LogoutAuthorizationEventCopyWithImpl(_$_LogoutAuthorizationEvent _value,
      $Res Function(_$_LogoutAuthorizationEvent) _then)
      : super(_value, (v) => _then(v as _$_LogoutAuthorizationEvent));

  @override
  _$_LogoutAuthorizationEvent get _value =>
      super._value as _$_LogoutAuthorizationEvent;
}

/// @nodoc

class _$_LogoutAuthorizationEvent extends _LogoutAuthorizationEvent {
  const _$_LogoutAuthorizationEvent() : super._();

  @override
  String toString() {
    return 'AuthorizationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogoutAuthorizationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tryAutoLogin,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? tryAutoLogin,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryAutoLogin,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TryAutoLogInAuthorizationEvent value)
        tryAutoLogin,
    required TResult Function(_LogoutAuthorizationEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TryAutoLogInAuthorizationEvent value)? tryAutoLogin,
    TResult Function(_LogoutAuthorizationEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryAutoLogInAuthorizationEvent value)? tryAutoLogin,
    TResult Function(_LogoutAuthorizationEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutAuthorizationEvent extends AuthorizationEvent {
  const factory _LogoutAuthorizationEvent() = _$_LogoutAuthorizationEvent;
  const _LogoutAuthorizationEvent._() : super._();
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizedAuthorizationState value) authorized,
    required TResult Function(_NotAuthorizedAuthorizationState value)
        notAuthorized,
    required TResult Function(_InProgressAuthorizationState value) inProgress,
    required TResult Function(_ErrorAuthorizationState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;
}

/// @nodoc
abstract class _$$_AuthorizedAuthorizationStateCopyWith<$Res> {
  factory _$$_AuthorizedAuthorizationStateCopyWith(
          _$_AuthorizedAuthorizationState value,
          $Res Function(_$_AuthorizedAuthorizationState) then) =
      __$$_AuthorizedAuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizedAuthorizationStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_AuthorizedAuthorizationStateCopyWith<$Res> {
  __$$_AuthorizedAuthorizationStateCopyWithImpl(
      _$_AuthorizedAuthorizationState _value,
      $Res Function(_$_AuthorizedAuthorizationState) _then)
      : super(_value, (v) => _then(v as _$_AuthorizedAuthorizationState));

  @override
  _$_AuthorizedAuthorizationState get _value =>
      super._value as _$_AuthorizedAuthorizationState;
}

/// @nodoc

class _$_AuthorizedAuthorizationState extends _AuthorizedAuthorizationState {
  const _$_AuthorizedAuthorizationState() : super._();

  @override
  String toString() {
    return 'AuthorizationState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizedAuthorizationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizedAuthorizationState value) authorized,
    required TResult Function(_NotAuthorizedAuthorizationState value)
        notAuthorized,
    required TResult Function(_InProgressAuthorizationState value) inProgress,
    required TResult Function(_ErrorAuthorizationState value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizedAuthorizationState extends AuthorizationState {
  const factory _AuthorizedAuthorizationState() =
      _$_AuthorizedAuthorizationState;
  const _AuthorizedAuthorizationState._() : super._();
}

/// @nodoc
abstract class _$$_NotAuthorizedAuthorizationStateCopyWith<$Res> {
  factory _$$_NotAuthorizedAuthorizationStateCopyWith(
          _$_NotAuthorizedAuthorizationState value,
          $Res Function(_$_NotAuthorizedAuthorizationState) then) =
      __$$_NotAuthorizedAuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAuthorizedAuthorizationStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_NotAuthorizedAuthorizationStateCopyWith<$Res> {
  __$$_NotAuthorizedAuthorizationStateCopyWithImpl(
      _$_NotAuthorizedAuthorizationState _value,
      $Res Function(_$_NotAuthorizedAuthorizationState) _then)
      : super(_value, (v) => _then(v as _$_NotAuthorizedAuthorizationState));

  @override
  _$_NotAuthorizedAuthorizationState get _value =>
      super._value as _$_NotAuthorizedAuthorizationState;
}

/// @nodoc

class _$_NotAuthorizedAuthorizationState
    extends _NotAuthorizedAuthorizationState {
  const _$_NotAuthorizedAuthorizationState() : super._();

  @override
  String toString() {
    return 'AuthorizationState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotAuthorizedAuthorizationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizedAuthorizationState value) authorized,
    required TResult Function(_NotAuthorizedAuthorizationState value)
        notAuthorized,
    required TResult Function(_InProgressAuthorizationState value) inProgress,
    required TResult Function(_ErrorAuthorizationState value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorizedAuthorizationState extends AuthorizationState {
  const factory _NotAuthorizedAuthorizationState() =
      _$_NotAuthorizedAuthorizationState;
  const _NotAuthorizedAuthorizationState._() : super._();
}

/// @nodoc
abstract class _$$_InProgressAuthorizationStateCopyWith<$Res> {
  factory _$$_InProgressAuthorizationStateCopyWith(
          _$_InProgressAuthorizationState value,
          $Res Function(_$_InProgressAuthorizationState) then) =
      __$$_InProgressAuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressAuthorizationStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_InProgressAuthorizationStateCopyWith<$Res> {
  __$$_InProgressAuthorizationStateCopyWithImpl(
      _$_InProgressAuthorizationState _value,
      $Res Function(_$_InProgressAuthorizationState) _then)
      : super(_value, (v) => _then(v as _$_InProgressAuthorizationState));

  @override
  _$_InProgressAuthorizationState get _value =>
      super._value as _$_InProgressAuthorizationState;
}

/// @nodoc

class _$_InProgressAuthorizationState extends _InProgressAuthorizationState {
  const _$_InProgressAuthorizationState() : super._();

  @override
  String toString() {
    return 'AuthorizationState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgressAuthorizationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
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
    required TResult Function(_AuthorizedAuthorizationState value) authorized,
    required TResult Function(_NotAuthorizedAuthorizationState value)
        notAuthorized,
    required TResult Function(_InProgressAuthorizationState value) inProgress,
    required TResult Function(_ErrorAuthorizationState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressAuthorizationState extends AuthorizationState {
  const factory _InProgressAuthorizationState() =
      _$_InProgressAuthorizationState;
  const _InProgressAuthorizationState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorAuthorizationStateCopyWith<$Res> {
  factory _$$_ErrorAuthorizationStateCopyWith(_$_ErrorAuthorizationState value,
          $Res Function(_$_ErrorAuthorizationState) then) =
      __$$_ErrorAuthorizationStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorAuthorizationStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_ErrorAuthorizationStateCopyWith<$Res> {
  __$$_ErrorAuthorizationStateCopyWithImpl(_$_ErrorAuthorizationState _value,
      $Res Function(_$_ErrorAuthorizationState) _then)
      : super(_value, (v) => _then(v as _$_ErrorAuthorizationState));

  @override
  _$_ErrorAuthorizationState get _value =>
      super._value as _$_ErrorAuthorizationState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorAuthorizationState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAuthorizationState extends _ErrorAuthorizationState {
  const _$_ErrorAuthorizationState({this.message = 'Something went wrong'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthorizationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAuthorizationState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorAuthorizationStateCopyWith<_$_ErrorAuthorizationState>
      get copyWith =>
          __$$_ErrorAuthorizationStateCopyWithImpl<_$_ErrorAuthorizationState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? inProgress,
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
    required TResult Function(_AuthorizedAuthorizationState value) authorized,
    required TResult Function(_NotAuthorizedAuthorizationState value)
        notAuthorized,
    required TResult Function(_InProgressAuthorizationState value) inProgress,
    required TResult Function(_ErrorAuthorizationState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedAuthorizationState value)? authorized,
    TResult Function(_NotAuthorizedAuthorizationState value)? notAuthorized,
    TResult Function(_InProgressAuthorizationState value)? inProgress,
    TResult Function(_ErrorAuthorizationState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthorizationState extends AuthorizationState {
  const factory _ErrorAuthorizationState({final String message}) =
      _$_ErrorAuthorizationState;
  const _ErrorAuthorizationState._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorAuthorizationStateCopyWith<_$_ErrorAuthorizationState>
      get copyWith => throw _privateConstructorUsedError;
}
