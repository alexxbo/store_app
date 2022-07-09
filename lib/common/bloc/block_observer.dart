import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/util/logging/logger.dart';

class AppBlocObserver extends BlocObserver {
  static const String _tag = 'BlocObserver';
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger.d(tag: _tag, message: 'onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (error is HttpException) {
      logger.e(
        tag: _tag,
        message: 'bloc: ${bloc.runtimeType} -> ${error.message}',
        error: error,
        stackTrace: stackTrace,
      );
    } else {
      logger.e(
        tag: _tag,
        message: '${bloc.runtimeType}',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
