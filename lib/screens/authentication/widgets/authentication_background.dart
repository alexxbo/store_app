import 'package:flutter/material.dart';

class AuthenticationBackgroundView extends StatelessWidget {
  const AuthenticationBackgroundView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 240, 243, 247).withOpacity(0.5),
            const Color.fromARGB(255, 69, 212, 234).withOpacity(0.9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0, 1],
        ),
      ),
    );
  }
}
