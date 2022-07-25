import 'package:flutter/material.dart';
import 'package:flutter_shop/util/logging/logger.dart';

extension StringEmpty on String? {
  String orEmpty() {
    return this ?? '';
  }
}

extension ListEmpty<T> on List<T>? {
  List<T> orEmpty() {
    return this ?? <T>[];
  }
}

extension AsyncSnapshotState on AsyncSnapshot<Object?> {
  bool get isDone => connectionState == ConnectionState.done;

  bool get isWaiting => connectionState == ConnectionState.waiting;
}

extension BuildContextX on BuildContext {
  void showMessage(String? message) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    if (message != null) {
      ScaffoldMessenger.of(this)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(message)),
        );
    }
  }
}

extension FutureExtensions on Future {
  Future onErrorMessage(
    BuildContext context, {
    String message = 'Some thing went wrong',
  }) {
    return catchError((error) {
      logger.e(message: 'error ${error.toString()}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    });
  }
}
