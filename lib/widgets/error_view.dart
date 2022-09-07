import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required final String message,
    Key? key,
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
