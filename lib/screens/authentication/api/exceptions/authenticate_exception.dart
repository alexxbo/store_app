class AuthenticateException implements Exception {
  final String message;

  AuthenticateException(this.message);

  @override
  String toString() {
    return message;
  }
}
