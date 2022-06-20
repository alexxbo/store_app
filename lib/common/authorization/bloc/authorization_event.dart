part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const AuthorizationEvent._();

  const factory AuthorizationEvent.tryAutoLogin() =
      _TryAutoLogInAuthorizationEvent;

  const factory AuthorizationEvent.logout() = _LogoutAuthorizationEvent;
}
