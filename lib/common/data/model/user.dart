import 'package:meta/meta.dart';

import '../../../screens/authentication/api/model/user_response.dart';
import '/../util/extensions.dart';

@immutable
abstract class User {
  @literal
  const factory User.notAuthenticated() = NotAuthenticatedUser;
  const factory User.authenticated({
    required final String token,
    required final DateTime expiryDate,
    required final String userId,
  }) = AuthenticatedUser;

  bool get isAuthenticated;
  bool get isNotAuthenticated;
  AuthenticatedUser? get authenticatedOrNull;

  T when<T extends Object?>({
    required final Function(AuthenticatedUser user) authenticated,
    required final Function() notAuthenticated,
  });
}

@immutable
class NotAuthenticatedUser implements User {
  @literal
  const NotAuthenticatedUser();
  @override
  AuthenticatedUser? get authenticatedOrNull => null;

  @override
  bool get isAuthenticated => false;

  @override
  bool get isNotAuthenticated => true;

  @override
  T when<T extends Object?>({
    required Function(AuthenticatedUser user) authenticated,
    required Function() notAuthenticated,
  }) =>
      notAuthenticated();

  @override
  String toString() => 'User is not authenticated';

  @override
  bool operator ==(final Object other) => other is NotAuthenticatedUser;

  @override
  int get hashCode => 0;
}

@immutable
class AuthenticatedUser implements User {
  const AuthenticatedUser({
    required final this.token,
    required final this.expiryDate,
    required final this.userId,
  });

  final String token;
  final DateTime expiryDate;
  final String userId;

  @override
  AuthenticatedUser? get authenticatedOrNull =>
      isNotAuthenticated ? null : this;

  @override
  bool get isAuthenticated => !isNotAuthenticated;

  @override
  bool get isNotAuthenticated =>
      userId.isEmpty && expiryDate.isBefore(DateTime.now());

  @override
  T when<T extends Object?>({
    required Function(AuthenticatedUser user) authenticated,
    required Function() notAuthenticated,
  }) =>
      authenticated(this);

  @override
  String toString() => 'User('
      'userId: $userId'
      'expiryDate: $expiryDate'
      'token: $token';

  @override
  bool operator ==(final Object other) =>
      other is AuthenticatedUser && userId == other.userId;

  @override
  int get hashCode => userId.hashCode;
}

extension UserMapper on UserResponse {
  User mapToUser() {
    final isAuth = userId != null &&
        expiryDate?.isAfter(DateTime.now()) == true &&
        token != null;

    return isAuth
        ? AuthenticatedUser(
            token: token.orEmpty(),
            expiryDate: expiryDate ?? DateTime.now(),
            userId: userId.orEmpty(),
          )
        : const NotAuthenticatedUser();
  }
}
