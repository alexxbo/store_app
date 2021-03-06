import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../api/exceptions/authentication_input_exception.dart';
import '../data/authentication_repository.dart';
import 'model/email_input.dart';
import 'model/password_input.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(final IAuthenticationRepository repository)
      : _repository = repository,
        super(const AuthenticationState.inputData()) {
    on<AuthenticationEvent>(
      (event, emit) => event.map<Future<void>>(
        onSubmit: (event) => _submit(event, emit),
        onPasswordChanged: (event) => _passwordChanged(event, emit),
        onRepeatPasswordChanged: (event) => _repeatPasswordChanged(event, emit),
        onEmailChanged: (event) => _emailChanged(event, emit),
        onSwitchMode: (event) => _switchMode(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IAuthenticationRepository _repository;

  Future<void> _submit(
    _SubmitAuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    var validate = Formz.validate([state.email, state.password]).isValid;

    if (!validate) {
      emit(AuthenticationState.error(
        mode: state.mode,
        email: state.email,
        password: state.password,
        message: 'Enter all data please.',
      ));

      return;
    }

    try {
      emit(AuthenticationState.progress(
        mode: state.mode,
        email: state.email,
        password: state.password,
      ));

      if (state.isLoginMode) {
        await _repository.login(
          email: state.email.value,
          password: state.password.value,
        );
      } else {
        await _repository.signup(
          email: state.email.value,
          password: state.password.value,
        );
      }

      emit(AuthenticationState.success(
        mode: state.mode,
        email: state.email,
        password: state.password,
      ));
    } on AuthenticationInputException catch (error) {
      emit(AuthenticationState.error(
        mode: state.mode,
        email: state.email,
        password: state.password,
        message: error.message,
      ));
    } on Object catch (_) {
      emit(AuthenticationState.error(
        mode: state.mode,
        email: state.email,
        password: state.password,
        message: 'Could not authenticate you. Please try again later.',
      ));
      rethrow;
    }
  }

  Future<void> _emailChanged(
    _EmailChangedAuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.inputData(
      mode: state.mode,
      email: EmailInput.dirty(event.email),
      password: state.password,
    ));
  }

  Future<void> _passwordChanged(
    _PasswordChangedAuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.inputData(
      mode: state.mode,
      email: state.email,
      password: PasswordInput.dirty(event.password),
    ));
  }

  Future<void> _repeatPasswordChanged(
    _RepeatPasswordChangedAuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.inputData(
      mode: state.mode,
      email: state.email,
      password: state.password,
      repeatPassword: PasswordInput.dirty(event.password),
    ));
  }

  Future<void> _switchMode(
    _SwitchModeAuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    final switchedMode = state.mode == AuthenticationMode.login
        ? AuthenticationMode.signup
        : AuthenticationMode.login;

    emit(state.copyWith(mode: switchedMode));
  }
}
