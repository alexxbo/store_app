class UserResponse {
  const UserResponse({
    required final this.token,
    required final this.expiryDate,
    required final this.userId,
  });

  final String? token;
  final DateTime? expiryDate;
  final String? userId;

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        userId: json['localId'],
        token: json['idToken'],
        expiryDate: DateTime.now()
            .add(Duration(seconds: int.tryParse(json['expiresIn']) ?? 0)),
      );
}
