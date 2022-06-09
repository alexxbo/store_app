import 'package:flutter/material.dart';

mixin ProgressState<T extends StatefulWidget> on State<T> {
  bool _inProgress = false;

  bool get inProgress => _inProgress;

  void showProgress(bool show) {
    setState(() {
      _inProgress = show;
    });
  }
}
