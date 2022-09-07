class AuthenticateException implements Exception {
  AuthenticateException(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}
