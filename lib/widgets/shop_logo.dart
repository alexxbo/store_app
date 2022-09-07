import 'dart:math' as math;

import 'package:flutter/material.dart';

class ShopLogoView extends StatelessWidget {
  const ShopLogoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 94,
        ),
        transform: Matrix4.rotationZ(-8 * math.pi / 180)..translate(-15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.secondary,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black26,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: const [
            Text(
              'Flutter',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 50,
                fontFamily: 'Anton',
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'Shop',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
                fontFamily: 'Anton',
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
