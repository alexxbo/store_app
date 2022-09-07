import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/shop_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
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
