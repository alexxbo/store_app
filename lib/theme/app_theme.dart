import 'package:flutter/material.dart';

import '../util/custom_route.dart';

ThemeData appTheme(ThemeData parentThemeData) {
  return ThemeData(
      fontFamily: 'Lato',
      colorScheme: parentThemeData.colorScheme.copyWith(
        primary: Colors.cyan,
        onSecondary: Colors.lime,
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadePageTransitionsBuilder(),
          TargetPlatform.iOS: FadePageTransitionsBuilder(),
        },
      ));
}
