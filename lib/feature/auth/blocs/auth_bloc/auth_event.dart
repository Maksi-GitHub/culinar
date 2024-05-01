part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
   const factory AuthEvent.appStarted() = AppStarted;
  const factory AuthEvent.userSignedOut() = UserSignedOut;
}