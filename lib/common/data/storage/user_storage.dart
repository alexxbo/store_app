import 'dart:convert';

import 'package:flutter_shop/common/data/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IUserStorage {
  factory IUserStorage() => _UserPreferencesStorage();

  Future<AuthenticatedUser?> getSavedUser();

  Future<void> saveUser(AuthenticatedUser user);

  Future<void> removeSavedUser();
}

class _UserPreferencesStorage implements IUserStorage {
  static const String _userKey = 'user_data_key';

  @override
  Future<AuthenticatedUser?> getSavedUser() async {
    final preferences = await SharedPreferences.getInstance();
    if (!preferences.containsKey(_userKey)) {
      return null;
    }

    final data =
        jsonDecode(preferences.getString(_userKey)!) as Map<String, dynamic>;
    final expiryDate = DateTime.parse(data['expiryDate']);

    if (expiryDate.isBefore(DateTime.now())) {
      await removeSavedUser();

      return null;
    }

    final user = AuthenticatedUser(
      userId: data['userId'],
      token: data['token'],
      expiryDate: expiryDate,
    );

    return user;
  }

  @override
  Future<void> saveUser(AuthenticatedUser user) async {
    final preferences = await SharedPreferences.getInstance();
    final userData = jsonEncode({
      'token': user.token,
      'userId': user.userId,
      'expiryDate': user.expiryDate.toIso8601String(),
    });
    await preferences.setString(_userKey, userData);
  }

  @override
  Future<void> removeSavedUser() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
