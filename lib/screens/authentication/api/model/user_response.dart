class UserResponse {
  const UserResponse({
    required this.token,
    required this.expiryDate,
    required this.userId,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        userId: json['localId'],
        token: json['idToken'],
        expiryDate: DateTime.now()
            .add(Duration(seconds: int.tryParse(json['expiresIn']) ?? 0)),
      );

  final String? token;
  final DateTime? expiryDate;
  final String? userId;
}
