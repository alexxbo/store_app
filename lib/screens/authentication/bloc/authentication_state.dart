part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.error({
    required final AuthenticationMode mode,
    @Default(EmailInput.dirty()) final EmailInput email,
    @Default(PasswordInput.dirty()) final PasswordInput password,
    @Default(PasswordInput.dirty()) final PasswordInput repeatPassword,
    @Default('Could not authenticate you. Please try again later.')
        final String message,
  }) = _ErrorAuthenticationState;

  const factory AuthenticationState.success({
    required final AuthenticationMode mode,
    @Default(EmailInput.dirty()) final EmailInput email,
    @Default(PasswordInput.dirty()) final PasswordInput password,
    @Default(PasswordInput.dirty()) final PasswordInput repeatPassword,
  }) = _SuccessAuthenticationState;

  const factory AuthenticationState.progress({
    required final AuthenticationMode mode,
    @Default(EmailInput.dirty()) final EmailInput email,
    @Default(PasswordInput.dirty()) final PasswordInput password,
    @Default(PasswordInput.dirty()) final PasswordInput repeatPassword,
  }) = _ProgressAuthenticationState;

  const factory AuthenticationState.inputData({
    @Default(AuthenticationMode.login) final AuthenticationMode mode,
    @Default(EmailInput.dirty()) final EmailInput email,
    @Default(PasswordInput.dirty()) final PasswordInput password,
    @Default(PasswordInput.dirty()) final PasswordInput repeatPassword,
  }) = _InputDataAuthenticationState;

  const AuthenticationState._();

  bool get isEmailValid => email.valid;

  bool get isPasswordValid => password.valid;

  bool get isRepeatPasswordValid => password.value == repeatPassword.value;

  bool get isLoginMode => mode == AuthenticationMode.login;

  bool get isSuccess => maybeWhen(
        success: (mode, email, password, repeatPassword) => true,
        orElse: () => false,
      );
}

enum AuthenticationMode { signup, login }
