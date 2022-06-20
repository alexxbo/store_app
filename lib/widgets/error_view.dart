import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    Key? key,
    required final String message,
  })  : _message = message,
        super(key: key);

  final String _message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _message,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
