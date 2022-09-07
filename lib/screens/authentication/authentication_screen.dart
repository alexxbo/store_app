import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/authorization/bloc/authorization_bloc.dart';
import 'package:flutter_shop/common/data/storage/user_storage.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/l10n/localization.dart';
import 'package:flutter_shop/screens/authentication/api/authentication_api.dart';
import 'package:flutter_shop/screens/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_shop/screens/authentication/data/authentication_repository.dart';
import 'package:flutter_shop/screens/authentication/widgets/authentication_background.dart';
import 'package:flutter_shop/util/logging/logger_intercepter.dart';
import 'package:flutter_shop/widgets/shop_logo.dart';
import 'package:http_interceptor/http/intercepted_client.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const AuthenticationBackgroundView(),
          SingleChildScrollView(
            child: SizedBox(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ShopLogoView(),
                  Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    child: RepositoryProvider<IAuthenticationRepository>(
                      create: (context) => IAuthenticationRepository(
                        api: IAuthenticationApi(
                          InterceptedClient.build(
                            interceptors: [
                              LoggerInterceptor(),
                            ],
                          ),
                        ),
                        storage: IUserStorage(),
                      ),
                      child: BlocProvider<AuthenticationBloc>(
                        create: (context) => AuthenticationBloc(
                          locator.get<IAuthenticationRepository>(),
                        ),
                        child: const AuthCard(),
                      ),
                    ),
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

class AuthCard extends StatelessWidget {
  const AuthCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final deviceSize = MediaQuery.of(context).size;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 8,
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 450),
            constraints: BoxConstraints(
              maxHeight: state.isLoginMode ? 360 : 420,
            ),
            width: deviceSize.width * 0.75,
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _EmailInput(),
                  _PasswordInput(),
                  _RepeatPasswordInput(),
                  const SizedBox(
                    height: 20,
                  ),
                  _SubmitButton(),
                  TextButton(
                    onPressed: () => _switchAuthMode(context),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 4,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    child: Text(
                      state.isLoginMode
                          ? localization.authentication_instead(
                              localization.authentication_login,
                            )
                          : localization.authentication_instead(
                              localization.authentication_signup,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _switchAuthMode(BuildContext context) {
    context
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.onSwitchMode());
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        final errorMessage = state.whenOrNull(
          error: (mode, email, password, repeatPassword, message) => message,
        );
        _showErrorMessage(errorMessage, context);

        if (state.isSuccess) {
          context
              .read<AuthorizationBloc>()
              .add(const AuthorizationEvent.tryAutoLogin());
        }
      },
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          progress: (mode, email, password, repeatPassword) =>
              const CircularProgressIndicator(),
          orElse: () => ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              textStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () => _submit(context),
            child: Text(
              state.isLoginMode
                  ? localization.authentication_login
                  : localization.authentication_signup,
            ),
          ),
        );
      },
    );
  }

  void _submit(BuildContext context) {
    context
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.onSubmit());
  }

  void _showErrorMessage(String? message, BuildContext context) {
    if (message != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('authenticationForm_emailInput'),
          decoration: InputDecoration(
            labelText: localization.authentication_email,
            errorText: state.isEmailValid
                ? null
                : localization.authentication_invalidEmail,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: (email) => context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.onEmailChanged(email: email)),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('authenticationForm_passwordInput'),
          decoration: InputDecoration(
            labelText: localization.authentication_password,
            errorText: state.isPasswordValid
                ? null
                : localization.authentication_shortPassword,
          ),
          obscureText: true,
          onChanged: (password) => context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.onPasswordChanged(password: password)),
        );
      },
    );
  }
}

class _RepeatPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return AnimatedContainer(
          constraints: BoxConstraints(
            maxHeight: state.isLoginMode ? 0 : 120,
          ),
          duration: const Duration(milliseconds: 1000),
          child: AnimatedOpacity(
            opacity: state.isLoginMode ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 500),
            child: TextField(
              key: const Key('authenticationForm_repeatPasswordInput'),
              enabled: !state.isLoginMode,
              decoration: InputDecoration(
                labelText: localization.authentication_confirmPassword,
                errorText: state.isRepeatPasswordValid
                    ? null
                    : localization.authentication_NotMatchConfirmPassword,
              ),
              obscureText: true,
              onChanged: (password) => context.read<AuthenticationBloc>().add(
                    AuthenticationEvent.onRepeatPasswordChanged(
                      password: password,
                    ),
                  ),
            ),
          ),
        );
      },
    );
  }
}
