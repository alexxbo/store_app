part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  const factory AuthenticationEvent.onPasswordChanged({
    required String password,
  }) = _PasswordChangedAuthenticationEvent;

  const factory AuthenticationEvent.onRepeatPasswordChanged({
    required String password,
  }) = _RepeatPasswordChangedAuthenticationEvent;

  const factory AuthenticationEvent.onEmailChanged({
    required String email,
  }) = _EmailChangedAuthenticationEvent;

  const factory AuthenticationEvent.onSubmit() = _SubmitAuthenticationEvent;

  const factory AuthenticationEvent.onSwitchMode() =
      _SwitchModeAuthenticationEvent;
}
