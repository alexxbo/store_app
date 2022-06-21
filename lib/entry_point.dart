import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/bloc/block_observer.dart';
import 'common/service_locator/injection_container.dart';

Future<void> entryPoint(FutureOr<Widget> Function() builder) async {
  setupServiceLocator();

  await BlocOverrides.runZoned(
    () async => runApp(await builder()),
    blocObserver: AppBlocObserver(),
  );
}
