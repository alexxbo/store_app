import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('$transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (error is HttpException) {
      log('error: HttpException, message ${error.message} bloc: $bloc stackTrace: $stackTrace');
    } else {
      log('error: $error bloc: $bloc stackTrace: $stackTrace');
    }
  }
}
