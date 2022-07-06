import 'dart:convert';

import 'package:flutter_shop/secrets.dart';
import 'package:http/http.dart';

import '/../util/extensions.dart';
import 'exceptions/authenticate_exception.dart';
import 'exceptions/authentication_input_exception.dart';
import 'model/user_response.dart';

abstract class IAuthenticationApi {
  factory IAuthenticationApi(Client client) => _AuthenticationApi(client);

  ///If the [email] or [password] string is not valid as credentials,
  /// a [AuthenticationInputException] or [AuthenticateException] is thrown.
  Future<UserResponse> signUp({
    required String email,
    required String password,
  });

  ///If the [email] or [password] string is not valid as credentials,
  /// a [AuthenticationInputException] or [AuthenticateException] is thrown.
  Future<UserResponse> logIn({
    required String email,
    required String password,
  });
}

/// Docs https://firebase.google.com/docs/reference/rest/auth
class _AuthenticationApi implements IAuthenticationApi {
  static const _baseUrl = 'https://identitytoolkit.googleapis.com/v1/accounts';

  const _AuthenticationApi(Client client) : _client = client;

  final Client _client;

  @override
  Future<UserResponse> logIn({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$_baseUrl:signInWithPassword?key=$firebaseApiKey');

    return await _handleResponse(
      url: url,
      email: email,
      password: password,
    );
  }

  @override
  Future<UserResponse> signUp({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$_baseUrl:signUp?key=$firebaseApiKey');

    return await _handleResponse(
      url: url,
      email: email,
      password: password,
    );
  }

  Future<UserResponse> _handleResponse({
    required final String email,
    required final String password,
    required final Uri url,
  }) async {
    final response = await _client.post(
      url,
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    if (response.statusCode != 200 || response.body.isEmpty) {
      final responseData = response.body.orEmpty();
      if (responseData.contains('EMAIL_EXISTS')) {
        throw AuthenticationInputException(
          'This email address is already in use.',
        );
      } else if (responseData.contains('INVALID_EMAIL')) {
        throw AuthenticationInputException('This is not a valid email address');
      } else if (responseData.contains('WEAK_PASSWORD')) {
        throw AuthenticationInputException('This password is too weak.');
      } else if (responseData.contains('EMAIL_NOT_FOUND')) {
        throw AuthenticationInputException(
          'Could not find a user with that email.',
        );
      } else if (responseData.contains('INVALID_PASSWORD')) {
        throw AuthenticationInputException('Invalid password.');
      } else {
        throw AuthenticateException(
          'Status code: ${response.statusCode} message: ${response.body}',
        );
      }
    }

    final responseData = jsonDecode(response.body) as Map<String, dynamic>;

    return UserResponse.fromJson(responseData);
  }
}
