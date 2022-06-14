import 'dart:async';

import '../../data/storage/user_storage.dart';
import '../../model/user.dart';

abstract class IAuthorizationRepository {
  factory IAuthorizationRepository({
    required final IUserStorage storage,
  }) =>
      _AuthorizationRepository(storage: storage);

  Future<User> getUser();

  Future<void> logout();
}

class _AuthorizationRepository implements IAuthorizationRepository {
  _AuthorizationRepository({
    required final IUserStorage storage,
  }) : _storage = storage;

  final IUserStorage _storage;

  User? _user;

  @override
  Future<User> getUser() async {
    if (_user != null) {
      return _user ?? const NotAuthenticatedUser();
    }

    final user = await _storage.getSavedUser();

    if (user == null) return const NotAuthenticatedUser();

    final expiryDate = user.expiryDate;

    if (expiryDate.isBefore(DateTime.now())) {
      _removeUser();

      return const NotAuthenticatedUser();
    }

    return user;
  }

  @override
  Future<void> logout() async {
    _user = null;
    await _storage.removeSavedUser();
  }

  Future<void> _removeUser() async {
    await _storage.removeSavedUser();
  }
}
