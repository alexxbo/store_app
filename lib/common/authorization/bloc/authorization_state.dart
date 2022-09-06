part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const AuthorizationState._();

  const factory AuthorizationState.authorized() = _AuthorizedAuthorizationState;

  const factory AuthorizationState.notAuthorized() =
      _NotAuthorizedAuthorizationState;

  const factory AuthorizationState.inProgress() = _InProgressAuthorizationState;

  const factory AuthorizationState.error({
    @Default('Something went wrong') final String message,
  }) = _ErrorAuthorizationState;

  bool get inProgress => maybeMap<bool>(
        orElse: () => false,
        inProgress: (_) => true,
      );
}
