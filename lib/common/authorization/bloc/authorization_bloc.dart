import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/authorization_repository.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

//TODO implement: autoLogOut;
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

  Future<void> _logout(
    _LogoutAuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    try {
      emit(const AuthorizationState.inProgress());
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
      emit(const AuthorizationState.authorized());
    } else {
      emit(const AuthorizationState.notAuthorized());
    }
  }
}
