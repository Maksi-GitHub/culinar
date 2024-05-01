part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(MyUser user) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
