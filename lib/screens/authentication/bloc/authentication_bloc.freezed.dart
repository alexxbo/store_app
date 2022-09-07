// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String password) onRepeatPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function() onSubmit,
    required TResult Function() onSwitchMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedAuthenticationEvent value)
        onPasswordChanged,
    required TResult Function(_RepeatPasswordChangedAuthenticationEvent value)
        onRepeatPasswordChanged,
    required TResult Function(_EmailChangedAuthenticationEvent value)
        onEmailChanged,
    required TResult Function(_SubmitAuthenticationEvent value) onSubmit,
    required TResult Function(_SwitchModeAuthenticationEvent value)
        onSwitchMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_PasswordChangedAuthenticationEventCopyWith<$Res> {
  factory _$$_PasswordChangedAuthenticationEventCopyWith(
          _$_PasswordChangedAuthenticationEvent value,
          $Res Function(_$_PasswordChangedAuthenticationEvent) then) =
      __$$_PasswordChangedAuthenticationEventCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedAuthenticationEventCopyWith<$Res> {
  __$$_PasswordChangedAuthenticationEventCopyWithImpl(
      _$_PasswordChangedAuthenticationEvent _value,
      $Res Function(_$_PasswordChangedAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$_PasswordChangedAuthenticationEvent));

  @override
  _$_PasswordChangedAuthenticationEvent get _value =>
      super._value as _$_PasswordChangedAuthenticationEvent;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_PasswordChangedAuthenticationEvent(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChangedAuthenticationEvent
    extends _PasswordChangedAuthenticationEvent {
  const _$_PasswordChangedAuthenticationEvent({required this.password})
      : super._();

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChangedAuthenticationEvent &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedAuthenticationEventCopyWith<
          _$_PasswordChangedAuthenticationEvent>
      get copyWith => __$$_PasswordChangedAuthenticationEventCopyWithImpl<
          _$_PasswordChangedAuthenticationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String password) onRepeatPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function() onSubmit,
    required TResult Function() onSwitchMode,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedAuthenticationEvent value)
        onPasswordChanged,
    required TResult Function(_RepeatPasswordChangedAuthenticationEvent value)
        onRepeatPasswordChanged,
    required TResult Function(_EmailChangedAuthenticationEvent value)
        onEmailChanged,
    required TResult Function(_SubmitAuthenticationEvent value) onSubmit,
    required TResult Function(_SwitchModeAuthenticationEvent value)
        onSwitchMode,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChangedAuthenticationEvent extends AuthenticationEvent {
  const factory _PasswordChangedAuthenticationEvent(
      {required final String password}) = _$_PasswordChangedAuthenticationEvent;
  const _PasswordChangedAuthenticationEvent._() : super._();

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedAuthenticationEventCopyWith<
          _$_PasswordChangedAuthenticationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RepeatPasswordChangedAuthenticationEventCopyWith<$Res> {
  factory _$$_RepeatPasswordChangedAuthenticationEventCopyWith(
          _$_RepeatPasswordChangedAuthenticationEvent value,
          $Res Function(_$_RepeatPasswordChangedAuthenticationEvent) then) =
      __$$_RepeatPasswordChangedAuthenticationEventCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$_RepeatPasswordChangedAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_RepeatPasswordChangedAuthenticationEventCopyWith<$Res> {
  __$$_RepeatPasswordChangedAuthenticationEventCopyWithImpl(
      _$_RepeatPasswordChangedAuthenticationEvent _value,
      $Res Function(_$_RepeatPasswordChangedAuthenticationEvent) _then)
      : super(_value,
            (v) => _then(v as _$_RepeatPasswordChangedAuthenticationEvent));

  @override
  _$_RepeatPasswordChangedAuthenticationEvent get _value =>
      super._value as _$_RepeatPasswordChangedAuthenticationEvent;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_RepeatPasswordChangedAuthenticationEvent(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RepeatPasswordChangedAuthenticationEvent
    extends _RepeatPasswordChangedAuthenticationEvent {
  const _$_RepeatPasswordChangedAuthenticationEvent({required this.password})
      : super._();

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.onRepeatPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepeatPasswordChangedAuthenticationEvent &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_RepeatPasswordChangedAuthenticationEventCopyWith<
          _$_RepeatPasswordChangedAuthenticationEvent>
      get copyWith => __$$_RepeatPasswordChangedAuthenticationEventCopyWithImpl<
          _$_RepeatPasswordChangedAuthenticationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String password) onRepeatPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function() onSubmit,
    required TResult Function() onSwitchMode,
  }) {
    return onRepeatPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
  }) {
    return onRepeatPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onRepeatPasswordChanged != null) {
      return onRepeatPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedAuthenticationEvent value)
        onPasswordChanged,
    required TResult Function(_RepeatPasswordChangedAuthenticationEvent value)
        onRepeatPasswordChanged,
    required TResult Function(_EmailChangedAuthenticationEvent value)
        onEmailChanged,
    required TResult Function(_SubmitAuthenticationEvent value) onSubmit,
    required TResult Function(_SwitchModeAuthenticationEvent value)
        onSwitchMode,
  }) {
    return onRepeatPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
  }) {
    return onRepeatPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onRepeatPasswordChanged != null) {
      return onRepeatPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _RepeatPasswordChangedAuthenticationEvent
    extends AuthenticationEvent {
  const factory _RepeatPasswordChangedAuthenticationEvent(
          {required final String password}) =
      _$_RepeatPasswordChangedAuthenticationEvent;
  const _RepeatPasswordChangedAuthenticationEvent._() : super._();

  String get password;
  @JsonKey(ignore: true)
  _$$_RepeatPasswordChangedAuthenticationEventCopyWith<
          _$_RepeatPasswordChangedAuthenticationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedAuthenticationEventCopyWith<$Res> {
  factory _$$_EmailChangedAuthenticationEventCopyWith(
          _$_EmailChangedAuthenticationEvent value,
          $Res Function(_$_EmailChangedAuthenticationEvent) then) =
      __$$_EmailChangedAuthenticationEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_EmailChangedAuthenticationEventCopyWith<$Res> {
  __$$_EmailChangedAuthenticationEventCopyWithImpl(
      _$_EmailChangedAuthenticationEvent _value,
      $Res Function(_$_EmailChangedAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$_EmailChangedAuthenticationEvent));

  @override
  _$_EmailChangedAuthenticationEvent get _value =>
      super._value as _$_EmailChangedAuthenticationEvent;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_EmailChangedAuthenticationEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChangedAuthenticationEvent
    extends _EmailChangedAuthenticationEvent {
  const _$_EmailChangedAuthenticationEvent({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.onEmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChangedAuthenticationEvent &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedAuthenticationEventCopyWith<
          _$_EmailChangedAuthenticationEvent>
      get copyWith => __$$_EmailChangedAuthenticationEventCopyWithImpl<
          _$_EmailChangedAuthenticationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String password) onRepeatPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function() onSubmit,
    required TResult Function() onSwitchMode,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedAuthenticationEvent value)
        onPasswordChanged,
    required TResult Function(_RepeatPasswordChangedAuthenticationEvent value)
        onRepeatPasswordChanged,
    required TResult Function(_EmailChangedAuthenticationEvent value)
        onEmailChanged,
    required TResult Function(_SubmitAuthenticationEvent value) onSubmit,
    required TResult Function(_SwitchModeAuthenticationEvent value)
        onSwitchMode,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedAuthenticationEvent extends AuthenticationEvent {
  const factory _EmailChangedAuthenticationEvent(
      {required final String email}) = _$_EmailChangedAuthenticationEvent;
  const _EmailChangedAuthenticationEvent._() : super._();

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedAuthenticationEventCopyWith<
          _$_EmailChangedAuthenticationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitAuthenticationEventCopyWith<$Res> {
  factory _$$_SubmitAuthenticationEventCopyWith(
          _$_SubmitAuthenticationEvent value,
          $Res Function(_$_SubmitAuthenticationEvent) then) =
      __$$_SubmitAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_SubmitAuthenticationEventCopyWith<$Res> {
  __$$_SubmitAuthenticationEventCopyWithImpl(
      _$_SubmitAuthenticationEvent _value,
      $Res Function(_$_SubmitAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$_SubmitAuthenticationEvent));

  @override
  _$_SubmitAuthenticationEvent get _value =>
      super._value as _$_SubmitAuthenticationEvent;
}

/// @nodoc

class _$_SubmitAuthenticationEvent extends _SubmitAuthenticationEvent {
  const _$_SubmitAuthenticationEvent() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.onSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitAuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String password) onRepeatPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function() onSubmit,
    required TResult Function() onSwitchMode,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
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
    required TResult Function(_PasswordChangedAuthenticationEvent value)
        onPasswordChanged,
    required TResult Function(_RepeatPasswordChangedAuthenticationEvent value)
        onRepeatPasswordChanged,
    required TResult Function(_EmailChangedAuthenticationEvent value)
        onEmailChanged,
    required TResult Function(_SubmitAuthenticationEvent value) onSubmit,
    required TResult Function(_SwitchModeAuthenticationEvent value)
        onSwitchMode,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _SubmitAuthenticationEvent extends AuthenticationEvent {
  const factory _SubmitAuthenticationEvent() = _$_SubmitAuthenticationEvent;
  const _SubmitAuthenticationEvent._() : super._();
}

/// @nodoc
abstract class _$$_SwitchModeAuthenticationEventCopyWith<$Res> {
  factory _$$_SwitchModeAuthenticationEventCopyWith(
          _$_SwitchModeAuthenticationEvent value,
          $Res Function(_$_SwitchModeAuthenticationEvent) then) =
      __$$_SwitchModeAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SwitchModeAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_SwitchModeAuthenticationEventCopyWith<$Res> {
  __$$_SwitchModeAuthenticationEventCopyWithImpl(
      _$_SwitchModeAuthenticationEvent _value,
      $Res Function(_$_SwitchModeAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$_SwitchModeAuthenticationEvent));

  @override
  _$_SwitchModeAuthenticationEvent get _value =>
      super._value as _$_SwitchModeAuthenticationEvent;
}

/// @nodoc

class _$_SwitchModeAuthenticationEvent extends _SwitchModeAuthenticationEvent {
  const _$_SwitchModeAuthenticationEvent() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.onSwitchMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchModeAuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String password) onRepeatPasswordChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function() onSubmit,
    required TResult Function() onSwitchMode,
  }) {
    return onSwitchMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
  }) {
    return onSwitchMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String password)? onRepeatPasswordChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function()? onSubmit,
    TResult Function()? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onSwitchMode != null) {
      return onSwitchMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedAuthenticationEvent value)
        onPasswordChanged,
    required TResult Function(_RepeatPasswordChangedAuthenticationEvent value)
        onRepeatPasswordChanged,
    required TResult Function(_EmailChangedAuthenticationEvent value)
        onEmailChanged,
    required TResult Function(_SubmitAuthenticationEvent value) onSubmit,
    required TResult Function(_SwitchModeAuthenticationEvent value)
        onSwitchMode,
  }) {
    return onSwitchMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
  }) {
    return onSwitchMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedAuthenticationEvent value)?
        onPasswordChanged,
    TResult Function(_RepeatPasswordChangedAuthenticationEvent value)?
        onRepeatPasswordChanged,
    TResult Function(_EmailChangedAuthenticationEvent value)? onEmailChanged,
    TResult Function(_SubmitAuthenticationEvent value)? onSubmit,
    TResult Function(_SwitchModeAuthenticationEvent value)? onSwitchMode,
    required TResult orElse(),
  }) {
    if (onSwitchMode != null) {
      return onSwitchMode(this);
    }
    return orElse();
  }
}

abstract class _SwitchModeAuthenticationEvent extends AuthenticationEvent {
  const factory _SwitchModeAuthenticationEvent() =
      _$_SwitchModeAuthenticationEvent;
  const _SwitchModeAuthenticationEvent._() : super._();
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationMode get mode => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  PasswordInput get repeatPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)
        error,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        success,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        progress,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        inputData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorAuthenticationState value) error,
    required TResult Function(_SuccessAuthenticationState value) success,
    required TResult Function(_ProgressAuthenticationState value) progress,
    required TResult Function(_InputDataAuthenticationState value) inputData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {AuthenticationMode mode,
      EmailInput email,
      PasswordInput password,
      PasswordInput repeatPassword});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_ErrorAuthenticationStateCopyWith(
          _$_ErrorAuthenticationState value,
          $Res Function(_$_ErrorAuthenticationState) then) =
      __$$_ErrorAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthenticationMode mode,
      EmailInput email,
      PasswordInput password,
      PasswordInput repeatPassword,
      String message});
}

/// @nodoc
class __$$_ErrorAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_ErrorAuthenticationStateCopyWith<$Res> {
  __$$_ErrorAuthenticationStateCopyWithImpl(_$_ErrorAuthenticationState _value,
      $Res Function(_$_ErrorAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_ErrorAuthenticationState));

  @override
  _$_ErrorAuthenticationState get _value =>
      super._value as _$_ErrorAuthenticationState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorAuthenticationState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAuthenticationState extends _ErrorAuthenticationState {
  const _$_ErrorAuthenticationState(
      {required this.mode,
      this.email = const EmailInput.dirty(),
      this.password = const PasswordInput.dirty(),
      this.repeatPassword = const PasswordInput.dirty(),
      this.message = 'Could not authenticate you. Please try again later.'})
      : super._();

  @override
  final AuthenticationMode mode;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final PasswordInput repeatPassword;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(mode: $mode, email: $email, password: $password, repeatPassword: $repeatPassword, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAuthenticationState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorAuthenticationStateCopyWith<_$_ErrorAuthenticationState>
      get copyWith => __$$_ErrorAuthenticationStateCopyWithImpl<
          _$_ErrorAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)
        error,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        success,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        progress,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        inputData,
  }) {
    return error(mode, email, password, repeatPassword, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
  }) {
    return error?.call(mode, email, password, repeatPassword, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(mode, email, password, repeatPassword, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorAuthenticationState value) error,
    required TResult Function(_SuccessAuthenticationState value) success,
    required TResult Function(_ProgressAuthenticationState value) progress,
    required TResult Function(_InputDataAuthenticationState value) inputData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthenticationState extends AuthenticationState {
  const factory _ErrorAuthenticationState(
      {required final AuthenticationMode mode,
      final EmailInput email,
      final PasswordInput password,
      final PasswordInput repeatPassword,
      final String message}) = _$_ErrorAuthenticationState;
  const _ErrorAuthenticationState._() : super._();

  @override
  AuthenticationMode get mode;
  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  PasswordInput get repeatPassword;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorAuthenticationStateCopyWith<_$_ErrorAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_SuccessAuthenticationStateCopyWith(
          _$_SuccessAuthenticationState value,
          $Res Function(_$_SuccessAuthenticationState) then) =
      __$$_SuccessAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthenticationMode mode,
      EmailInput email,
      PasswordInput password,
      PasswordInput repeatPassword});
}

/// @nodoc
class __$$_SuccessAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_SuccessAuthenticationStateCopyWith<$Res> {
  __$$_SuccessAuthenticationStateCopyWithImpl(
      _$_SuccessAuthenticationState _value,
      $Res Function(_$_SuccessAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_SuccessAuthenticationState));

  @override
  _$_SuccessAuthenticationState get _value =>
      super._value as _$_SuccessAuthenticationState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(_$_SuccessAuthenticationState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
    ));
  }
}

/// @nodoc

class _$_SuccessAuthenticationState extends _SuccessAuthenticationState {
  const _$_SuccessAuthenticationState(
      {required this.mode,
      this.email = const EmailInput.dirty(),
      this.password = const PasswordInput.dirty(),
      this.repeatPassword = const PasswordInput.dirty()})
      : super._();

  @override
  final AuthenticationMode mode;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final PasswordInput repeatPassword;

  @override
  String toString() {
    return 'AuthenticationState.success(mode: $mode, email: $email, password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessAuthenticationState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessAuthenticationStateCopyWith<_$_SuccessAuthenticationState>
      get copyWith => __$$_SuccessAuthenticationStateCopyWithImpl<
          _$_SuccessAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)
        error,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        success,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        progress,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        inputData,
  }) {
    return success(mode, email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
  }) {
    return success?.call(mode, email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(mode, email, password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorAuthenticationState value) error,
    required TResult Function(_SuccessAuthenticationState value) success,
    required TResult Function(_ProgressAuthenticationState value) progress,
    required TResult Function(_InputDataAuthenticationState value) inputData,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessAuthenticationState extends AuthenticationState {
  const factory _SuccessAuthenticationState(
      {required final AuthenticationMode mode,
      final EmailInput email,
      final PasswordInput password,
      final PasswordInput repeatPassword}) = _$_SuccessAuthenticationState;
  const _SuccessAuthenticationState._() : super._();

  @override
  AuthenticationMode get mode;
  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  PasswordInput get repeatPassword;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessAuthenticationStateCopyWith<_$_SuccessAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProgressAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_ProgressAuthenticationStateCopyWith(
          _$_ProgressAuthenticationState value,
          $Res Function(_$_ProgressAuthenticationState) then) =
      __$$_ProgressAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthenticationMode mode,
      EmailInput email,
      PasswordInput password,
      PasswordInput repeatPassword});
}

/// @nodoc
class __$$_ProgressAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_ProgressAuthenticationStateCopyWith<$Res> {
  __$$_ProgressAuthenticationStateCopyWithImpl(
      _$_ProgressAuthenticationState _value,
      $Res Function(_$_ProgressAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_ProgressAuthenticationState));

  @override
  _$_ProgressAuthenticationState get _value =>
      super._value as _$_ProgressAuthenticationState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(_$_ProgressAuthenticationState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
    ));
  }
}

/// @nodoc

class _$_ProgressAuthenticationState extends _ProgressAuthenticationState {
  const _$_ProgressAuthenticationState(
      {required this.mode,
      this.email = const EmailInput.dirty(),
      this.password = const PasswordInput.dirty(),
      this.repeatPassword = const PasswordInput.dirty()})
      : super._();

  @override
  final AuthenticationMode mode;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final PasswordInput repeatPassword;

  @override
  String toString() {
    return 'AuthenticationState.progress(mode: $mode, email: $email, password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressAuthenticationState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ProgressAuthenticationStateCopyWith<_$_ProgressAuthenticationState>
      get copyWith => __$$_ProgressAuthenticationStateCopyWithImpl<
          _$_ProgressAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)
        error,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        success,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        progress,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        inputData,
  }) {
    return progress(mode, email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
  }) {
    return progress?.call(mode, email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(mode, email, password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorAuthenticationState value) error,
    required TResult Function(_SuccessAuthenticationState value) success,
    required TResult Function(_ProgressAuthenticationState value) progress,
    required TResult Function(_InputDataAuthenticationState value) inputData,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _ProgressAuthenticationState extends AuthenticationState {
  const factory _ProgressAuthenticationState(
      {required final AuthenticationMode mode,
      final EmailInput email,
      final PasswordInput password,
      final PasswordInput repeatPassword}) = _$_ProgressAuthenticationState;
  const _ProgressAuthenticationState._() : super._();

  @override
  AuthenticationMode get mode;
  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  PasswordInput get repeatPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressAuthenticationStateCopyWith<_$_ProgressAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputDataAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_InputDataAuthenticationStateCopyWith(
          _$_InputDataAuthenticationState value,
          $Res Function(_$_InputDataAuthenticationState) then) =
      __$$_InputDataAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthenticationMode mode,
      EmailInput email,
      PasswordInput password,
      PasswordInput repeatPassword});
}

/// @nodoc
class __$$_InputDataAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_InputDataAuthenticationStateCopyWith<$Res> {
  __$$_InputDataAuthenticationStateCopyWithImpl(
      _$_InputDataAuthenticationState _value,
      $Res Function(_$_InputDataAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_InputDataAuthenticationState));

  @override
  _$_InputDataAuthenticationState get _value =>
      super._value as _$_InputDataAuthenticationState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(_$_InputDataAuthenticationState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
    ));
  }
}

/// @nodoc

class _$_InputDataAuthenticationState extends _InputDataAuthenticationState {
  const _$_InputDataAuthenticationState(
      {this.mode = AuthenticationMode.login,
      this.email = const EmailInput.dirty(),
      this.password = const PasswordInput.dirty(),
      this.repeatPassword = const PasswordInput.dirty()})
      : super._();

  @override
  @JsonKey()
  final AuthenticationMode mode;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final PasswordInput repeatPassword;

  @override
  String toString() {
    return 'AuthenticationState.inputData(mode: $mode, email: $email, password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputDataAuthenticationState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  _$$_InputDataAuthenticationStateCopyWith<_$_InputDataAuthenticationState>
      get copyWith => __$$_InputDataAuthenticationStateCopyWithImpl<
          _$_InputDataAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)
        error,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        success,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        progress,
    required TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)
        inputData,
  }) {
    return inputData(mode, email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
  }) {
    return inputData?.call(mode, email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AuthenticationMode mode,
            EmailInput email,
            PasswordInput password,
            PasswordInput repeatPassword,
            String message)?
        error,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        success,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        progress,
    TResult Function(AuthenticationMode mode, EmailInput email,
            PasswordInput password, PasswordInput repeatPassword)?
        inputData,
    required TResult orElse(),
  }) {
    if (inputData != null) {
      return inputData(mode, email, password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorAuthenticationState value) error,
    required TResult Function(_SuccessAuthenticationState value) success,
    required TResult Function(_ProgressAuthenticationState value) progress,
    required TResult Function(_InputDataAuthenticationState value) inputData,
  }) {
    return inputData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
  }) {
    return inputData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorAuthenticationState value)? error,
    TResult Function(_SuccessAuthenticationState value)? success,
    TResult Function(_ProgressAuthenticationState value)? progress,
    TResult Function(_InputDataAuthenticationState value)? inputData,
    required TResult orElse(),
  }) {
    if (inputData != null) {
      return inputData(this);
    }
    return orElse();
  }
}

abstract class _InputDataAuthenticationState extends AuthenticationState {
  const factory _InputDataAuthenticationState(
      {final AuthenticationMode mode,
      final EmailInput email,
      final PasswordInput password,
      final PasswordInput repeatPassword}) = _$_InputDataAuthenticationState;
  const _InputDataAuthenticationState._() : super._();

  @override
  AuthenticationMode get mode;
  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  PasswordInput get repeatPassword;
  @override
  @JsonKey(ignore: true)
  _$$_InputDataAuthenticationStateCopyWith<_$_InputDataAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}
