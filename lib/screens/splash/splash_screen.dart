import 'package:flutter/material.dart';

import '../../widgets/shop_logo.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ShopLogoView(),
            SizedBox(height: 54),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
