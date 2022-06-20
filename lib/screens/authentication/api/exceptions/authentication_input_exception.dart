class AuthenticationInputException implements Exception {
  final String message;

  AuthenticationInputException(this.message);

  @override
  String toString() {
    return message;
  }
}
