import 'package:flutter/material.dart';

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

extension ContextExtension on State {
  void showShackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

extension FutureExtensions on Future {
  Future onErrorMessage(
    BuildContext context, {
    String message = 'Some thing went wrong',
  }) {
    return catchError((error) {
      print('error ${error.toString()}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    });
  }
}
