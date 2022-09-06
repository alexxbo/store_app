import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/app_config.dart';
import 'package:flutter_shop/common/bloc/block_observer.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/util/logging/logger.dart';

Future<void> entryPoint(FutureOr<AppConfig> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  // Don't allow landscape mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) {
      exit(1);
    }

    logger.e(
      tag: 'FlutterError',
      message: details.exceptionAsString(),
      error: details.exception,
      stackTrace: details.stack,
    );
  };

  await runZonedGuarded(
    () async {
      final app = await builder();
      setupServiceLocator(app.environment);

      await BlocOverrides.runZoned(
        () async => runApp(app),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => logger.e(
      message: '${error.runtimeType}',
      error: error,
      stackTrace: stackTrace,
    ),
  );
}
