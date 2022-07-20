import 'package:flutter_shop/app/app_config.dart';
import 'package:flutter_shop/app/environment.dart';

import 'app/app.dart';
import 'entry_point.dart';

void main() {
  const configuredApp = AppConfig(
    environment: DevEnvironment(),
    child: FlutterShop(),
  );

  entryPoint(() => configuredApp);
}
