import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/authorization_repository.dart';

part 'authorization_bloc.freezed.dart';

part 'authorization_event.dart';

part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc(final IAuthorizationRepository repository)
      : _repository = repository,
        super(const AuthorizationState.inProgress()) {
    on<AuthorizationEvent>(
      (event, emit) => event.map<Future<void>>(
        logout: (event) => _logout(event, emit),
        tryAutoLogin: (event) => _tryAutoLogin(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
    add(const AuthorizationEvent.tryAutoLogin());
  }

  final IAuthorizationRepository _repository;
  Timer? timer;

  @override
  Future<void> close() {
    _clearTimer();

    return super.close();
  }

  Future<void> _logout(
    _LogoutAuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    try {
      emit(const AuthorizationState.inProgress());
      _clearTimer();
      await _repository.logout();
      emit(const AuthorizationState.notAuthorized());
    } on Object catch (_) {
      emit(const AuthorizationState.error());
      rethrow;
    } finally {
      final user = await _repository.getUser();
      if (user.isAuthenticated) {
        emit(const AuthorizationState.authorized());
      } else {
        emit(const AuthorizationState.notAuthorized());
      }
    }
  }

  Future<void> _tryAutoLogin(
    _TryAutoLogInAuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    emit(const AuthorizationState.inProgress());
    final user = await _repository.getUser();
    if (user.isAuthenticated) {
      _autoLogout(user.authenticatedOrNull?.expiryDate);
      emit(const AuthorizationState.authorized());
    } else {
      emit(const AuthorizationState.notAuthorized());
    }
  }

  void _autoLogout(DateTime? expiryDate) {
    timer?.cancel();

    final timeToExpiry = expiryDate?.difference(DateTime.now()).inSeconds ?? 0;
    timer = Timer(Duration(seconds: timeToExpiry), () {
      add(const AuthorizationEvent.logout());
    });
  }

  void _clearTimer() {
    timer?.cancel();
    timer = null;
  }
}
