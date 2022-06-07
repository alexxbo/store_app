import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/data/auth.dart';
import '/util/extensions.dart';
import 'exceptions/Email_not_found_exception.dart';
import 'exceptions/email_exist_exception.dart';
import 'exceptions/invalid_email_exception.dart';
import 'exceptions/invalid_password_exception.dart';
import 'exceptions/weak_password_exception.dart';

enum AuthMode { Sign_up, Login }

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';

  const AuthScreen();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 240, 243, 247).withOpacity(0.5),
                  Color.fromARGB(255, 69, 212, 234).withOpacity(0.9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 1],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 94.0),
                      transform: Matrix4.rotationZ(-8 * pi / 180)
                        ..translate(-15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.secondary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Text(
                            'Flutter',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 50,
                              fontFamily: 'Anton',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'Shop',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontFamily: 'Anton',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    child: AuthCard(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthCard extends StatefulWidget {
  const AuthCard({
    Key? key,
  }) : super(key: key);

  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();

  late AnimationController _controller;
  late Animation<Size> _animationHeight;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );
    _animationHeight = Tween<Size>(
      begin: Size(double.infinity, 260),
      end: Size(double.infinity, 320),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _opacityAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _animationHeight.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 8.0,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 450),
          curve: Curves.linear,
          height: _animationHeight.value.height,
          constraints: BoxConstraints(minHeight: _animationHeight.value.height),
          width: deviceSize.width * 0.75,
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'E-Mail'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value != null &&
                          (value.isEmpty || !value.contains('@'))) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _authData['email'] = value.orEmpty();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value != null &&
                          (value.isEmpty || value.length < 5)) {
                        return 'Password is too short!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _authData['password'] = value.orEmpty();
                    },
                  ),
                  AnimatedContainer(
                    constraints: BoxConstraints(
                        minHeight: 0,
                        maxHeight: _authMode == AuthMode.Sign_up ? 120 : 0),
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear,
                    child: FadeTransition(
                      opacity: _opacityAnimation,
                      child: TextFormField(
                        enabled: _authMode == AuthMode.Sign_up,
                        decoration:
                            InputDecoration(labelText: 'Confirm Password'),
                        obscureText: true,
                        validator: _authMode == AuthMode.Sign_up
                            ? (value) {
                                if (value != _passwordController.text) {
                                  return 'Passwords do not match!';
                                }
                                return null;
                              }
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  if (_isLoading)
                    CircularProgressIndicator()
                  else
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 8.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        primary: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: _submit,
                      child: Text(
                        _authMode == AuthMode.Login ? 'LOGIN' : 'SIGN UP',
                      ),
                    ),
                  TextButton(
                    onPressed: _switchAuthMode,
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        textStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary)),
                    child: Text(
                        '${_authMode == AuthMode.Login ? 'SIGN UP' : 'LOGIN'} INSTEAD'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void _submit() {
    if (_formKey.currentState?.validate() == false) {
      // Invalid!
      return;
    }
    _formKey.currentState?.save();
    _showProgress(true);
    final Future result;
    if (_authMode == AuthMode.Login) {
      result = context.read<Auth>().logIn(
            email: _authData['email'].orEmpty(),
            password: _authData['password'].orEmpty(),
          );
    } else {
      result = context.read<Auth>().signUp(
            email: _authData['email'].orEmpty(),
            password: _authData['password'].orEmpty(),
          );
    }

    result
        .catchError((error) => _onError(error))
        .whenComplete(() => {_showProgress(false)});
  }

  void _onError(error) {
    final String message;
    if (error is EmailExistException) {
      message = 'This email address is already in use.';
    } else if (error is InvalidEmailException) {
      message = 'This is not a valid email address';
    } else if (error is WeakPasswordException) {
      message = 'This password is too weak.';
    } else if (error is EmailNotFoundException) {
      message = 'Could not find a user with that email.';
    } else if (error is InvalidPasswordException) {
      message = 'Invalid password.';
    } else {
      message = 'Could not authenticate you. Please try again later.';
    }
    print(error.toString());
    print(message);
    showShackBar(message);
  }

  void _showProgress(bool show) {
    setState(() {
      _isLoading = show;
    });
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Sign_up;
      });
      _controller.forward();
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
      _controller.reverse();
    }
  }
}
