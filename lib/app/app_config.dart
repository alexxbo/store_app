import 'package:flutter/material.dart';
import 'package:flutter_shop/app/environment.dart';

class AppConfig extends InheritedWidget {
  const AppConfig({
    Key? key,
    required this.environment,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final Environment environment;

  bool get isDevelopment => environment is DevEnvironment;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
