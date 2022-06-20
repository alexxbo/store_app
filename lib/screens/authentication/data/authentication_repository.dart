import 'dart:async';

import '../../../common/data/storage/user_storage.dart';
import '../../../common/data/model/user.dart';
import '../api/authentication_api.dart';
import '../api/model/user_response.dart';
import 'exception/invalid_user_exception.dart';

abstract class IAuthenticationRepository {
  factory IAuthenticationRepository({
    required final IAuthenticationApi api,
    required final IUserStorage storage,
  }) =>
      _AuthRepository(storage: storage, api: api);

  Future<AuthenticatedUser> signup({
    required final String email,
    required final String password,
  });

  Future<AuthenticatedUser> login({
    required final String email,
    required final String password,
  });
}

class _AuthRepository implements IAuthenticationRepository {
  _AuthRepository({
    required final IUserStorage storage,
    required final IAuthenticationApi api,
  })  : _storage = storage,
        _api = api;

  final IUserStorage _storage;
  final IAuthenticationApi _api;

  @override
  Future<AuthenticatedUser> login({
    required String email,
    required String password,
  }) async {
    final userResponse = await _api.logIn(email: email, password: password);

    return await _handleResponse(userResponse);
  }

  @override
  Future<AuthenticatedUser> signup({
    required String email,
    required String password,
  }) async {
    final userResponse = await _api.signUp(email: email, password: password);

    return await _handleResponse(userResponse);
  }

  Future<AuthenticatedUser> _handleResponse(
    final UserResponse userResponse,
  ) async {
    final user = userResponse.mapToUser();

    if (user is AuthenticatedUser) {
      await _storage.saveUser(user);

      return user;
    }

    throw InvalidUserException();
  }
}
