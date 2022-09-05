import 'package:flutter_shop/app/app.dart';
import 'package:flutter_shop/app/app_config.dart';
import 'package:flutter_shop/app/environment.dart';
import 'package:flutter_shop/entry_point.dart';

Future<void> main() async {
  const configuredApp = AppConfig(
    environment: ProdEnvironment(),
    child: FlutterShop(),
  );

  entryPoint(() => configuredApp);
}
