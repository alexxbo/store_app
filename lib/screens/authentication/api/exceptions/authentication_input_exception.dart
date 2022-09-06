class AuthenticationInputException implements Exception {
  AuthenticationInputException(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}
