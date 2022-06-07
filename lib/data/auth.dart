import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '/util/extensions.dart';
import '/screens/auth/exceptions/weak_password_exception.dart';
import '/screens/auth/exceptions/authenticate_exception.dart';
import '/screens/auth/exceptions/Email_not_found_exception.dart';
import '/screens/auth/exceptions/email_exist_exception.dart';
import '/screens/auth/exceptions/invalid_email_exception.dart';
import '/screens/auth/exceptions/invalid_password_exception.dart';

/// Docs https://firebase.google.com/docs/reference/rest/auth

const String _USER_DATA_KEY = 'user_data_key';

class Auth with ChangeNotifier {
  static const _BASE_URL = 'https://identitytoolkit.googleapis.com/v1/accounts';
  static const _API_KEY = 'AIzaSyAYZHqDYBz5h8C-97UmYxunH6WY87qjMUc';

  String? _token;
  DateTime? _expiryDate;
  String? _userId;
  Timer? timer;

  bool get isAuth {
    return _expiryDate?.isAfter(DateTime.now()) == true && _token != null;
  }

  String? get token {
    if (_expiryDate?.isBefore(DateTime.now()) == true) {
      return null;
    } else {
      return _token;
    }
  }

  String? get userId {
    return _userId;
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$_BASE_URL:signUp?key=$_API_KEY');
    final response = await http.post(url,
        body: jsonEncode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    await _handleResponse(response, url);
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$_BASE_URL:signInWithPassword?key=$_API_KEY');
    final response = await http.post(url,
        body: jsonEncode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));

    await _handleResponse(response, url);
  }

  Future<void> _handleResponse(http.Response response, Uri url) async {
    if (response.statusCode != 200) {
      print(jsonDecode(response.body));
      final responseData = response.body.orEmpty();

      if (responseData.contains('EMAIL_EXISTS')) {
        throw EmailExistException();
      } else if (responseData.contains('INVALID_EMAIL')) {
        throw InvalidEmailException();
      } else if (responseData.contains('WEAK_PASSWORD')) {
        throw WeakPasswordException();
      } else if (responseData.contains('EMAIL_NOT_FOUND')) {
        throw EmailNotFoundException();
      } else if (responseData.contains('INVALID_PASSWORD')) {
        throw InvalidPasswordException();
      } else {
        throw AuthenticateException(
            'Status code: ${response.statusCode} message: ${response.body}');
      }
    } else {
      final responseData = jsonDecode(response.body) as Map<String, dynamic>;
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      _expiryDate = DateTime.now().add(Duration(hours: 1));
      _autoLogout();
      notifyListeners();

      final preferences = await SharedPreferences.getInstance();
      final userData = jsonEncode({
        'token': _token,
        'userId': _userId,
        'expiryDate': _expiryDate?.toIso8601String(),
      });
      await preferences.setString(_USER_DATA_KEY, userData);
    }
  }

  void logout() async {
    timer?.cancel();
    timer = null;
    _token = null;
    _userId = null;
    _expiryDate = null;
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    notifyListeners();
  }

  Future<bool> tryAutoLogIn() async {
    final preferences = await SharedPreferences.getInstance();
    if (!preferences.containsKey(_USER_DATA_KEY)) return false;

    final data = jsonDecode(preferences.getString(_USER_DATA_KEY)!)
        as Map<String, dynamic>;
    final expiryDate = DateTime.parse(data['expiryDate']);

    if (expiryDate.isBefore(DateTime.now())) return false;

    _token = data['token'];
    _userId = data['userId'];
    _expiryDate = expiryDate;
    notifyListeners();
    _autoLogout();
    return true;
  }

  void _autoLogout() {
    if (timer != null) {
      timer?.cancel();
    }
    final timeToExpiry = _expiryDate?.difference(DateTime.now()).inSeconds ?? 0;
    timer = Timer(Duration(seconds: timeToExpiry), logout);
  }
}
