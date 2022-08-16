import 'package:flutter_shop/app/app.dart';
import 'package:flutter_shop/app/app_config.dart';
import 'package:flutter_shop/app/environment.dart';
import 'package:flutter_shop/entry_point.dart';

void main() {
  const configuredApp = AppConfig(
    environment: DevEnvironment(),
    child: FlutterShop(),
  );

  entryPoint(() => configuredApp);
}
